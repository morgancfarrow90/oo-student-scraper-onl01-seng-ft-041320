require 'open-uri'
require 'pry'

class Scraper
  
  attr_accessor :name, :location, :profile_url

  def self.scrape_index_page(index_url)
    students = {}
    doc = Nokogiri::HTTP(open(https://learn-co-curriculum.github.io/student-scraper-test-page/index.html))
    
    student = self.new
    student.name = doc.search('h4.student-name').text 
    student.location = doc.search('p.student-location').text
    student.profile_url = doc.search('a.href').text
    
    
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

