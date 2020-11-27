# frozen_string_literal: true

require 'pry'

# Author: Martinique Dolce
# Course: Flatiron School 2020, November 9 - 20201, April 2021
# Contact: me@martidolce.com | https://modis.martidolce.com
# author.rb
class Author
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    post
  end

  def posts
    Post.all.select { |post| post.author == self }
  end

  def self.post_count
    Post.all.count
  end
end
