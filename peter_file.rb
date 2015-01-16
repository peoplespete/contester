#!/usr/bin/env ruby

# The part that activates bundler in your app
# require 'bundler/setup'

# require your gems as usual
# require 'awesome_print'
require 'mechanize'
# require 'clipboard'
# require 'colorize'
require 'pry'

agent = Mechanize.new

url = "http://contestbee.com"

agent.get(url)

first_page = agent.page.dup

link_to_trip_for_four = first_page.links[3]

# changing the page you're on to the next page
# the title of the page is different
agent.page.

=begin
[13] pry(main)> first_page.links[3]
=> #<Mechanize::Page::Link
 "Win A Trip For Four To Orlando!"
 "http://www.contestbee.com/2015/01/15/win-a-trip-for-four-to-orlando-4/">

first_page.methods - first_page.class.methods
instance methods

Class Methods on Mechanize Page
[7] pry(main)> first_page.class.methods - Class.methods
=> [:charset,
 :charset_from_content_type,
 :def_delegator,
 :def_delegators,
 :def_instance_delegator,
 :def_instance_delegators,
 :delegate,
 :elements_with,
 :instance_delegate,
 :meta_charset,
 :meta_content_type,
 :response_header_charset]
=end 

binding.pry
