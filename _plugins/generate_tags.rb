require 'yaml'
require 'active_support/inflector'

I18n.enforce_available_locales = false

module Jekyll

  class TagPage < Page
    def initialize(site, base, dir, tag_info)
      tag_slug = tag_info.parameterize
      tag = tag_info
      @site = site
      @base = base
      @dir = dir
      @name = "#{tag_slug}.html"

      process(@name)

      file_content = "---
layout: tag
title: #{tag}
tag: #{tag_slug}
permalink: /tag/#{tag_slug}/
---"

      File.open(File.join(dir, @name), 'w') { |f| f.write file_content }

      # ensure expected methods are run
      read_yaml(File.join(base, dir), @name)
      data.default_proc = proc do |hash, key|
        site.frontmatter_defaults.find(File.join(dir, name), type, key)
      end
    end
  end

  class TagPageGenerator < Generator
    safe false

    # @see http://www.minddust.com/post/tags-and-categories-on-github-pages/
    def generate(site)

      site_tags = site.tags.select { |i| i[0] }.sort { |a, b| format_tag_slug(a[0]) <=> format_tag_slug(b[0]) }
      site_posts = site.posts

      # gather tag info
      tags_slug_keys = {}
      site_tags.each do |tag_info|
        tag_slug, tag_name = tag_info_from_info(tag_info)
        posts = tag_info[1]
        post_count = posts.size

        if tags_slug_keys.include?(tag_slug)
          tags_slug_keys[tag_slug]['post_count'] += post_count
          tags_slug_keys[tag_slug]['posts'] += posts.map { |p| format_post(p) }
        else
          tag_info = {
              'slug' => tag_slug,
              'name' => tag_name,
              'post_count' => post_count,
              'posts' => posts.map { |p| format_post(p) }}

          tags_slug_keys[tag_slug] = tag_info
        end
      end

      # collect tag names and slugs for each post
      all_posts = {}
      site_posts.each do |post|
        posts_tags = {}
        post.data['tags'].each do |raw_tag_name|
          tag_slug, tag_name = tag_info_from_name(raw_tag_name)
          posts_tags[tag_slug] = tag_name
        end
        all_posts[post.id] = format_post(post)
        all_posts[post.id]['tags'] = posts_tags
      end

      # write yaml files
      write_yaml('custom_tags_slug_keys', tags_slug_keys)
      write_yaml('custom_post_tags', all_posts)

      # create individual tag pages
      dir = site.config['tag_dir'] || 'tag'
      FileUtils.mkpath File.join(site.source, dir)
      site.tags.each do |tag|
        site.pages << TagPage.new(site, site.source, dir, tag[0])
      end
    end

    private

    def tag_info_from_name(tag_name)
      tag_slug = format_tag_slug(tag_name)
      tag_name = format_tag_name(tag_name)
      [tag_slug, tag_name]
    end

    def format_tag_slug(tag_name)
      tag_name.to_s.parameterize.downcase
    end

    def format_tag_name(tag_name)
      tag_name.to_s.downcase
    end

    def tag_info_from_info(tag_info)
      tag_info_from_name(tag_info[0])
    end

    def write_yaml(file_name, content)
      File.open(File.join('_data', "#{file_name}.yml"), 'w') { |f| f.write content.to_yaml }
    end

    def format_post(post)
      {'url' => post.url, 'date' => post.date, 'title' => post.title}
    end

  end

end