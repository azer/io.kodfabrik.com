desc 'Generate tags page'

task :tags do
  puts "Generating tags..."
  require 'rubygems'
  require 'jekyll'
  include Jekyll::Filters
  
  options = Jekyll.configuration({})
  site = Jekyll::Site.new(options)
  site.read_posts('')
  site.categories.sort.each do |category, posts|
    html = ''
    html << <<-CONTENT
---
layout: default
title: Postings tagged "#{category}"
---
    <div class="Nav"> 
      <span class='Arrow'>&#8227;</span> 
      <a href="http://kodfabrik.com">Homepage</a> 
      <span class='Arrow'>&#8227;</span> 
      <a href='/'>Blog</a>
      <span class='Arrow'>&#8227;</span>
      Tags
      <span class='Arrow'>&#8227;</span> 
      #{category}
    </div>
    {% for page in site.categories.#{category} %}
      {% include post.html %}
    {% endfor %}
    CONTENT

    File.open("tags/#{category}.html", 'w+') do |file|
      file.puts html
    end
  end

  html = '<div class="TagCloud">'
  site.categories.sort.each do |category, posts|
    rank = Integer(posts.count*1.5)
    size = 14+rank
    rgb = [rand(150),rand(150),rand(150)]
    rgb[rand(3)] += rank*20
    html << "<a href='/tags/#{category}.html' class='Tag' style='font-size:#{size}px; color:rgb(#{rgb[0]},#{rgb[1]},#{rgb[2]})'>#{category}</a> "
  end
  html << '</div>'
  File.open("_includes/tagcloud.html",'w+') do |file|
    file.puts html
  end

  puts 'Done.'

end

