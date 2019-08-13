class Services::GetProductDetailsFromAsin
  attr_reader :asin, :doc

  def initialize(params)
    @asin = params[:asin]
    @doc = parsed_doc
  end

  def rank
    rank_and_category.first[1..-1]
  end

  def category
    rank_and_category.drop(2).join(" ")
  end
  
  def dimensions
    product_details_hash["Product Dimensions"] || product_details_hash["Package Dimensions"]
  end
  
  private
  
  def rank_and_category # because they are in the same cell, "Best Sellers Rank"
    product_details_hash["Best Sellers Rank"].split("(").first.split(" ")
  end

  def product_details_hash
    details = {}

    doc.css('#prodDetails table tr').each do |el|
      key = el.css('th').text.strip
      value = el.css('td').text.strip

      details[key] = value
    end

    details
  end

  def parsed_doc
    url = "https://www.amazon.com/dp/#{asin}"
    Services::GetHtmlDocFromUrl.new({url: url}).doc
  end

end