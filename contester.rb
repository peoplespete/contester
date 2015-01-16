#!/usr/bin/env ruby

# The part that activates bundler in your app
require 'bundler/setup'

# require your gems as usual
require 'awesome_print'
require 'mechanize'
require 'clipboard'
require 'colorize'
require 'pry'



a = Mechanize.new { |agent|
  agent.user_agent_alias = 'Mac Safari'
}

a.get('http://google.com/') do |page|
  binding.pry
  search_result = page.form_with(:id => 'gbqfq') do |search|
    search.q = 'Hello world'
  end.submit

  search_result.links.each do |link|
    puts link.text
  end
end
