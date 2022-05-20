# Polymorphic association

The key to dry code! A polymorphic association consists of a model that can be related to multiple other models. Instead of having separate tables for post_likes and comment_likes, we have the ability to combine them into one likes table and connect it to both posts and comments.

My previous projects have all included single associations. This is my first practice using this type of association.

## About this project

We are keeping this simple. We have users, users have many posts, users and posts have many comments, and posts and comments have many likes.

![Schema](https://i.imgur.com/Do5vVJt.png)

Our key is likes - likes need to be created by 1 user and made for either a post or a comment. This is the polymorphic association, a like may belong to a post OR a comment.

In my posts show, I rendered all the information about the post, the user who created the post, the likes on the post, the comments on the post, as well as the likes on the comments. I doubt all of this would need to be rendered in a real world setting, but this is just a proof a concept. With this, I'd be able to expand to just include a customm ethod of "like_count" to my posts or comments if I wanted to.

![Posts Show](https://i.imgur.com/guADXMw.png?1)

## Resources used

[Creating Polymorphic relationships in Ruby on Rails](https://www.culttt.com/2016/01/13/creating-polymorphic-relationships-in-ruby-on-rails) by Philip Brown

[Rails Techniques: Using Polymorphic Associations](https://semaphoreci.com/blog/2017/08/16/polymorphic-associations-in-rails.html) by Jovan Ivanovic
