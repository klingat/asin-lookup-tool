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
    product_details_row(0).css('td').text.strip
  end
  
  private
  
  def rank_and_category # because they are in the same cell
    product_details_row(8).css('td span')[1].text.strip.split("(").first.split(" ")
  end

  def product_details_row(row)
    doc.css('#prodDetails table tr')[row]
  end

  def parsed_doc
    url = "https://www.amazon.com/dp/#{asin}"
    Services::GetHtmlDocFromUrl.new({url: url}).doc
  end

end