# frozen_string_literal: true

# NGROK checker and setter
# Applicable to development only
#
#
# If NGROK is not running
# -> provide option to exit or continue
# -> if user enters 'y' or 'Y'
# --> this script returns early
# -> if user enters anything but 'y' or 'Y'
# --> process is aborted
#
# If NGROK is running
# get URI by parsing http://localhost:4040/api/tunnels

return unless Rails.env.development?

require 'net/http'
require 'uri'
require 'colorize'

uri = URI.parse('http://localhost:4040/api/tunnels')

begin
  response = Net::HTTP.get_response(uri)
rescue Errno::ECONNREFUSED
  puts '====>> It seems NGROK is not running. Do you want to continue? (Y/n)'

  input = gets.strip
  continue_without_ngrok = %w[Y y].include? input

  abort('==>> Shutting down') unless continue_without_ngrok
end

return if continue_without_ngrok

json = JSON.parse(response.body).deep_symbolize_keys!
tunnels = json[:tunnels]

# just in case there are multiple tunnels, find the one listening on localhost:3000
forwarding = tunnels.select { |t| t[:config][:addr] = 'http://localhost:3000' }.first[:public_url]

Ceremonial::Application.config.hosts << forwarding.tr('https://', '')

puts '====>> Allowable hosts array now includes NGROK forwarding.'.colorize(:magenta)
puts '====>> Set the Wufoo Webhook:'.colorize(:magenta)
puts 'https://mywestmichiganwedding.wufoo.com/integrations/our-wedding-ceremony'.colorize(color: :black, background: :white)
puts '====>> To this value:'.colorize(:magenta)
puts "#{forwarding}/receive".colorize(color: :black, background: :white)
