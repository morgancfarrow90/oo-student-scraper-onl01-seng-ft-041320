require 'open-uri'
require 'pry'

class Scraper
  
  attr_accessor :name, :location, :profile_url

  def self.scrape_index_page(index_url)
    students = {}
    doc = Nokogiri::HTTP(open(https://learn-co-curriculum.github.io/student-scraper-test-page/index.html))
    
    
  
    end
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

