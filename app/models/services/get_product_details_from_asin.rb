class Services::GetProductDetailsFromAsin
  attr_reader :asin, :doc

  def initialize(params)
    @asin = params[:asin]
    @doc = parsed_doc
  end

  def name
    product_name
  end

  def rank
    return "" if rank_and_category.nil?
    rank_and_category.first[1..-1]
  end

  def category
    return "" if rank_and_category.nil?
    rank_and_category.drop(2).join(" ")
  end
  
  def dimensions
    product_details_hash["Product Dimensions"] || product_details_hash["Package Dimensions"]
  end
  
  private
  
  def rank_and_category # because they are in the same cell, "Best Sellers Rank"
    extracted_text = ""

    product_details_hash.each do |k, v| 
      if k.include? "Best Sellers Rank"
        extracted_text = v
      end
    end

    extracted_text.split("(").first.split(" ") unless extracted_text.empty?
  end

  def product_details_hash
    details = {}

    doc.css('#prodDetails table tr').each do |el|
      if el.css('th').empty?
        key = el.css('td').first.text.strip
        value = el.css('td').last.text.strip
      else
        key = el.css('th').text.strip
        value = el.css('td').text.strip
      end

      details[key] = value
    end

    details
  end

  def product_name
    doc.css('#productTitle').text
  end

  def parsed_doc
    url = "https://www.amazon.com/dp/#{asin}"
    Services::GetHtmlDocFromUrl.new({url: url}).doc
  end

end