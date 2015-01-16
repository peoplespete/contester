#!/usr/bin/env ruby
require 'rubygems'

# The part that activates bundler in your app
require 'bundler/setup'

# require your gems as usual
require 'awesome_print'
require 'mechanize'
require 'clipboard'
require 'colorize'
require 'pry'




# # a = Mechanize.new
#   binding.pry
#   # Click the login link
#   # login_page = a.click(page.link_with(:text => /Log In/))

#   # # Submit the login form
#   # my_page = login_page.form_with(:action => '/account/login.php') do |f|
#   #   f.form_loginname  = ARGV[0]
#   #   f.form_pw         = ARGV[1]
#   # end.click_button

#   # my_page.links.each do |link|
#   #   text = link.text.strip
#   #   next unless text.length > 0
#   #   puts text
#   # end
# end

# a.page is the one you are on
a = Mechanize.new
a.get('http://www.contestbee.com/') do |page|
  link = page.links.select do |link|
    link.uri.to_s.downcase.include?("twitter")
    # link.text.downcase.include?("twitter")
  end.first
  binding.pry
  puts page.title
end
# page = mechanize.get('http://stackoverflow.com/')
