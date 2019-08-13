require 'HTTParty'
require 'nokogiri'

# 
class Services::GetHtmlDocFromUrl
  attr_reader :url

  def initialize(params)
    @url = params[:url]
  end

  def doc
    response = HTTParty.get(url, {
      headers: {
        "User-Agent" => "Httparty"
      }
    })
    Nokogiri::HTML(response)
  end

end