---
layout: post
title: Exploring Digital Ocean and Dokku
tags:
- web dev
- cloud
- heroku
- hosting
---

I recently needed to host two websites: one using node.js and one a Ruby on Rails site.
I do have an account with [bluehost](http://www.bluehost.com/), although setting up recent node and Rails sites on bluehost
is something I've attempted in the past, and it was rather difficult.

Instead, I gave [heroku](https://www.heroku.com/) at go. It went quite well, I was particularly pleased at the deployment process.
However, I could see that the [prices](https://www.heroku.com/pricing) could quickly build up, particularly as 
I needed at database and potentially a number of other [add-ons](https://elements.heroku.com/addons).
I had a look around for other options, and I found a 
[list of cloud services for Rails](https://www.airpair.com/ruby-on-rails/posts/rails-host-comparison-aws-digitalocean-heroku-engineyard), 
ranging from Platform as a Service (PaaS) to Infrastructure as a Service (IaaS).

I liked the look of the Digital Ocean (DO) droplet pricing ($10/month for a 30GB SSD with 1GB RAM). 
I then quickly found [Dokku](http://progrium.viewdocs.io/dokku/):

> The smallest PaaS implementation you've ever seen

> Docker powered mini-Heroku in around 200 lines of Bash

I thought I'd give it a go, and I've been quickly hooked. There are quite a few blog posts about setting up
Dokku on Digital Ocean. Some of the ones I made use of are:

 - [Digital Ocean Dokku tutorial](https://www.digitalocean.com/community/tutorials/how-to-use-the-digitalocean-dokku-application)
 - [Deploying to Digital Ocean with Dokku](http://thewebivore.com/tutorial-deploying-dokku-to-digitalocean-for-excellent-deploying-goodness/)
 - [Make your own Heroku](http://rogerstringer.com/2015/05/13/make-your-own-heroku)

Here's my take, from a new DO droplet to a running server with deployed applications.

## Steps

In this tutorial

    local$

Indicates the command is to be run on the local machine, while

    $

means the command is to be run on the droplet.


## Initialise

Let's get going! Keep the [Dokku documentation](http://progrium.viewdocs.io/dokku/installation/)
handy, you'll most likely want to consult it at some point.

1. Launch a DO droplet with Dokku and Ubuntu 14.04.
1. I'd suggest making the droplet name match the domain name that will be used.
1. Go to `http://<droplet-ip>`.
1. Fill in public key with your personal public key.
1. Set the domain name. This is [recommended to be a subdomain](http://progrium.viewdocs.io/dokku/dns/). You don't have to,
   however things will work much better if you do. An IP address makes it impossible to use sub-sub-domains. For example, I used `from.anotherbyte.net`.
1. Tick `Use virtualhost naming for apps` only if you set a domain name.
1. Click `Finish Setup`

If you choose not to use the Dokku application image from Digital Ocean, don't forget to 
[add your public key to Dokku](http://progrium.viewdocs.io/dokku/application-deployment/#user-content-deploying-to-server-over-ssh).

    local$ cat ~/.ssh/id_rsa.pub | ssh [sudouser]@[yourdomain].com "sudo sshcommand acl-add dokku [description]"

## DNS

You'll need to set some DNS records:

 - 'A' record named `<subdomain>` with droplet IP address (e.g. `from`).
 - 'A' record named `*.<subdomain>` with droplet IP address (e.g. `*.from`).

## Set up droplet

Now we can set up the droplet. These steps are a condensed version of the 
[Digital Ocean Ubuntu set up guide](https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-14-04).

### Create a non-root user

Using the root user for everything is really not a great idea.

    local$ ssh root@<droplet-ip>
    $ apt-get update
    $ adduser <user name>

Make sure you set a strong password for the user, and don't lose it! You'll need it for `dokku` commands.

    $ gpasswd -a <user name> sudo
    $ su - <user name>
    $ cd ~
    $ mkdir .ssh
    $ chmod 700 .ssh
    $ vi .ssh/authorized_keys
    
Add your personal public key to the `authorized_keys` file.
    
    $ chmod 600 .ssh/authorized_keys
    $ exit
    
### Disable password and root login by editing ssh config

It is better if root is not allowed to log in at all.

	$ vi /etc/ssh/sshd_config
	
Disable password logins and root login by changing these lines:
	
	PasswordAuthentication no
	PermitRootLogin no

Restart the ssh service so the changes take effect

	$ service ssh restart
	
Check that `<user name>` can log in before exiting the ssh session.
Keep the root session open until you confirm that you can run sudo.

Start a new console session and log in as the new user:

	local$ ssh <user name>@<droplet-ip or host name>
    $ sudo apt-get update
    $ sudo apt-get dist-upgrade
	
If that works, exit the root ssh session.

### Configure firewall

Ensure ssh logins are allowed

	$ sudo ufw allow ssh
	
Also allow ports 80 (http) and 443 (https) for web traffic
	
	$ sudo ufw allow 80/tcp
	$ sudo ufw allow 443/tcp
	
Check the exceptions

	$ sudo ufw show added
	
Enable the firewall

	$ sudo ufw enable

### Configure Time

Set time zone by following the instructions to choose your timezone

	$ sudo dpkg-reconfigure tzdata

Install NTP sync so the system clock stays at the correct time 

	$ sudo apt-get install ntp

### Create a swapfile

There may not be one in the Ubuntu droplet, which I found odd.

	$ sudo fallocate -l <RAM x 2>G /swapfile
	$ sudo chmod 600 /swapfile
	$ sudo mkswap /swapfile
	$ sudo swapon /swapfile
	$ sudo sh -c 'echo "/swapfile none swap sw 0 0" >> /etc/fstab'

## Set host name

If the droplet's host name is the same as the domain name, there is nothing to do.

Otherwise, these tutorials might be helpful:

- [Digital Ocean setting hostname and FQDN](https://github.com/DigitalOcean-User-Projects/Articles-and-Tutorials/blob/master/set_hostname_fqdn_on_ubuntu_centos.md)
- [Digital Ocean hostname](https://www.digitalocean.com/community/tutorials/how-to-set-up-a-host-name-with-digitalocean)
- [Digital Ocean virtual server](https://www.digitalocean.com/community/tutorials/how-to-create-your-first-digitalocean-droplet-virtual-server)
- [Digital Ocean community question about Ubuntu FQDN](https://www.digitalocean.com/community/questions/how-to-set-fqdn-in-ubuntu)

## Deploy

Now to deploy an application to dokku! For example:

    local$ mkdir ~/projects
    local$ cd  ~/projects
    local$ git clone <git url>
    local$ cd ./<application name>
    
You'll need to set a new git remote.
    
    local$ git remote -v
    local$ git remote add dokku dokku@<subdomain>:<application name>
    local$ git push dokku master

If the deploy was successful, have a look at the website at

    http://<application name>.<subdomain>

### Application setting

YOu might need to set some application settings, such a Rails `secret_key_base` or a database connection string.
I chose to do this via environment variables. This is not my preferred method, but it was quick and simple.
Set [configuration vars](http://progrium.viewdocs.io/dokku/configuration-management/) like this:

    $ dokku config:set power-outages secret_token=<long string of characters> secret_key_base=<long string of characters>

### Add a database

Some applications need a database. I'm a fan of Postgres.
Add the dokku postgresql plugin and create a database

    $ sudo dokku plugin:install https://github.com/dokku/dokku-postgres.git postgres
    $ export POSTGRES_IMAGE="postgres"
    $ export POSTGRES_IMAGE_VERSION="9.4.4"
    $ dokku postgres:create <application name>-db
    $ dokku postgres:link <application name>-db <application name>

Then set the databse connection string as a configuration setting:

    $ dokku config:set DATABASE_URL="postgres://<db user>:<db pass>@<dokku ip>:<db port>/<db name>"

For a Rails application, you may need to run migrations:

    $ dokku run <application name> bundle exec rake db:migrate

## Finished

There we go, from creating a Digital Ocean droplet to deploying an application.