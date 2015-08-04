# Mark's blog

A jekyll and Github pages powered personal blog.

Uses the [Lagom theme](https://github.com/swanson/lagom) by [@swanson](https://github.com/swanson).

## Creating a new post

New posts are created in `/_posts`, named in the format `yyyy-mm-dd-title`, where title is an alphanumeric dash-separated string.
Drafts can be created in `/_drafts`, using the same file name format.

TO preview the website, which includes the ability to generate pages as they are edited, run

    jekyll serve --safe

The safe flag ensures it replicates the way Github pages works.

This blog uses a custom generator to add support for tags. Before commiting and pushing in git, run

    jekyll build
    
This will ensure the files for tags are generated and included in the live site.

To be extra correct, set `safe` to `true` in `_config.yml` before commiting.