require 'open-uri'
require 'nokogiri'

class InciScraper
  def initialize
  end
  
  def get_urls(page)
    html_file = open("https://incidecoder.com/search?query=water&activetab=products&ppage=#{page}").read
    html_doc = Nokogiri::HTML(html_file)
    product_link = html_doc.search('.paddingbl').first
    urls = product_link.search('a').map do |link|
      link.first[1]
    end
    urls.pop
    return urls
  end
  
  def get_product_info(url)
    html_file = open("https://incidecoder.com#{url}").read
    html_doc = Nokogiri::HTML(html_file)
    product_details = html_doc.search('.detailpage')
      brand = product_details.search('#product-brand-title').inner_text.strip
      product = product_details.search('#product-title').inner_text
      description = product_details.search('#product-details').inner_text.strip
      img = product_details.search('#product-main-image img').first["src"]
      
      element_2 = html_doc.search('#showmore-section-ingredlist-short')
      ingredients_array = element_2.search(' span').inner_text.split(',').map { |item| item.strip }
      
      
      @product = {brand: brand, product: product, img: img, ingredients: ingredients_array, description: description}
    @product

  end
end

scraper = InciScraper.new
scraper_array = (1..10).to_a
results_array = []
scraper_array.each do |page|
  scraper.get_urls(page).each do |url|
    results_array << scraper.get_product_info(url)
  end
end



