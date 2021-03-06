# Robiboard
My wife wanted a private, visual, web-based bookmarking tool with nested categories.

A sort of Pinterest with unlimited, nested private boards.

Here it is (features/screenshots):

- Homepage with endless scrolling with every bookmark you added
![Robiboard Homepage](https://raw.github.com/shatsar/Robiboard/master/doc/homepage.png)

- Add a new bookmark with local image or a remote url [powered by paperclip](https://github.com/thoughtbot/paperclip)
![Robiboard Add Bookmark](https://raw.github.com/shatsar/Robiboard/master/doc/new_bookmark.png)


- Add nested categories
![Robiboard Add Category](https://raw.github.com/shatsar/Robiboard/master/doc/new_category.png)


Browsing your bookmarks will be visual (via thumbnails), easy and flexible:

* scroll your Robiboard's homepage
* browse by categories: you will be able to browse your categories' tree and see every bookmark in the current category
* search: the inserted keyword will be matched against bookmarks descriptions and categories names


## Tech
It is a rails 3 app, with bootstrap, jquery, masonry, will_paginate, paperclip.
Mainly crafted with VIM.

## Run
It is a rails 3 app, so you can clone it, run `bundle install` and `rails server`
