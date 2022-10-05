# frozen_srting_literal: true

require 'uri'
require 'net/http'

# Data Generator
module DataGen
  def print_error(common: false)
    if common == true
      'Error while fetching url!'
    else
      'I am trapped in a social media factory send help'
    end
  end

  def data_generate
    data = { twitter: nil,facebook: nil,instagram: nil }
    twitter = URI('https://takehome.io/twitter')
    facebook = URI('https://takehome.io/facebook')
    instagram = URI('https://takehome.io/instagram')

    res_twitter = Net::HTTP.get_response(twitter)
    data[:twitter] = if res_twitter.is_a?(Net::HTTPSuccess)
                       JSON.parse(res_twitter.body)
                     elsif res_twitter.is_a?(Net::HTTPInternalServerError)
                       print_error
                     else
                       print_error(common: true)
                     end

    res_facebook = Net::HTTP.get_response(facebook)
    data[:facebook] = if res_facebook.is_a?(Net::HTTPSuccess)
                        JSON.parse(res_facebook.body)
                      elsif res_facebook.is_a?(Net::HTTPInternalServerError)
                        print_error
                      else
                        print_error(common: true)
                      end

    res_instagram = Net::HTTP.get_response(instagram)
    data[:instagram] = if res_instagram.is_a?(Net::HTTPSuccess)
                         JSON.parse(res_instagram.body)
                       elsif res_instagram.is_a?(Net::HTTPInternalServerError)
                         print_error
                       else
                         print_error(common: true)
                       end

    data
  end
end
