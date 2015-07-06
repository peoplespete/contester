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

rivers = []

agent = Mechanize.new
agent.get('http://www.americanwhitewater.org/content/River/state-summary/state/TN/') do |page|
  nodes = agent.page / '.river-list'

  river_rows = nodes.css(".river-list tr")[1..-1]
  rivers = river_rows.map do |river_row|
    river = {}
    river[:name] = river_row.css('.rivername').first.children.first.to_s.gsub(/\n+|\r+/, "\n").squeeze("\n").strip
    river[:section] = river_row.css('.river-section a').first.children.first.to_s[/[a-zA-Z].+/]
    river[:class] = river_row.children[5].children.first.to_s
    river[:level] = river_row.css('.leftpad.rc').first.children[2].to_s.lstrip
    river
  end

end

  # MAKE THIS LAST PART MUCH BETTER, IT SHOULD BE COMPLETELY CONFIGURABLE< THIS LEVEL THIS CLASS ETC

puts "What class will you run?"

levels = rivers.map{|riv| riv[:level] }.uniq
levels.each_with_index do |level, i|
  puts " #{i}) #{level}"
end

acceptable_levels = levels[STDIN.gets.chomp.to_i..-1]

puts "so you'll do #{acceptable_levels}"
puts rivers.select{|river| acceptable_levels.include? river[:level] }

