require 'HTTParty'
require 'nokogiri'

# 
class Services::GetHtmlDocFromUrl
  attr_reader :url

  def initialize(params)
    @url = params[:url]
  end

  def doc
    # binding.pry
    response = HTTParty.get(url, {
      headers: {
        "User-Agent" => "Httparty",
        "Accept" => "text/html"
      }
    })
    Nokogiri::HTML(response)
  end

end

# response = HTTParty.get('https://www.amazon.com/dp/B0013BKDO8', {
#   headers: {"User-Agent" => "Httparty"}
# })

# doc = Nokogiri::HTML.parse(response)

# doc.css('#prodDetails table > tr:nth-child(3) td:first.a-size-base')

# //*[@id="prodDetails"]/div[2]/div[1]/div/div[2]/div/div/table/tbody/tr[2]/td[2]
# # response = HTTParty.get("www.amazon.com/dp/B0013BKDO8", {
# #   headers: {"User-Agent" => "Httparty"}
# # })