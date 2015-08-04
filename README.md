# Mark's blog

A jekyll and Github pages powered personal blog.

Uses the [Lagom theme](https://github.com/swanson/lagom) by [@swanson](https://github.com/swanson).

## Creating a new post

New posts are created in `/_posts`, named in the format `yyyy-mm-dd-title`, where title is an alphanumeric dash-separated string.
Drafts can be created in `/_drafts`, using the same file name format.

The website can be previewed and regenerated as the pages are edited. First, make some changes to the `/_config.yml` file:

    - safe: false
    
Then add `tag/*` to the `exclude` array.

Then start the jekyll server:

    bundle exec jekyll serve --safe

The safe flag ensures it replicates the way Github pages works.

This blog uses a custom generator to add support for tags. 

Before uploading, build the entire site, including running the custom generator:

    bundle exec jekyll build

This will ensure the files for tags are generated and included in the live site.

## Deploying to live site

First, undo the changes to the `/config.yml` file:

    - safe: true

Remove `tag/*` from the `exclude` array.