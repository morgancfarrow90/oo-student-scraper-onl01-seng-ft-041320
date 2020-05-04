require 'open-uri'
require 'pry'

class Scraper
  
  attr_accessor :name, :location, :profile_url,  :twitterurl, :linkedinurl, :githuburl, :blogurl, :profile_quote, :bio

  def self.scrape_index_page(index_url)
    page = Nokogiri::HTML(open("https://learn-co-curriculum.github.io/student-scraper-test-page/index.html"))
    students = []

    page.css("div.student-card").each do |student|
      name = student.css("h4.student-name").text
      location = student.css("p.student-location").text
      profile_url = student.css("a").attribute("href").value
      student_info = {:name => name,
                :location => location,
                :profile_url => profile_url}
      students << student_info
      end
    students
   end

  def self.scrape_profile_page(profile_url)
    personalpage = Nokogiri::HTTP(open("profile_url"))
    student_profiles = []
    
    personalpage.css("div.main-wrapper.profile").each do |profile|
      twitterurl = profile.css("a").attribute("href").value
    profile_info = {:twitterurl => twitterurl, :linkedinurl =>linkedinurl, :githuburl => githuburl, :blogurl => blogurl, :profile_quote => profile_quote, :bio => bio}
  end

end

