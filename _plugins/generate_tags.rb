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
      @name = "#{tag_slug}.md"

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

  class CategoryPageGenerator < Generator
    safe false

    # @see http://www.minddust.com/post/tags-and-categories-on-github-pages/
    def generate(site)

      just_tags = site.tags.select { |i| i[0] }.sort { |a, b| a[0] <=> b[0] }

      tag_hash = {}
      tag_name_hash = {}
      tag_array = []
      just_tags.each do |tag|
        tag_hash[tag[0].parameterize] = tag[0]
        tag_name_hash[tag[0]] = tag[0].parameterize
        tag_array.push({'slug' => tag[0].parameterize, 'name' => tag[0]})
      end

      # write yaml file
      File.open(File.join('_data', 'tags.yml'), 'w') { |f| f.write tag_array.to_yaml }
      File.open(File.join('_data', 'tagshash.yml'), 'w') { |f| f.write tag_hash.to_yaml }
      File.open(File.join('_data', 'tagsnamehash.yml'), 'w') { |f| f.write tag_name_hash.to_yaml }

      dir = site.config['tag_dir'] || 'tag'
      FileUtils.mkpath File.join(site.source, dir)
      site.tags.each do |tag|
        site.pages << TagPage.new(site, site.source, dir, tag[0])
      end
    end
  end

end