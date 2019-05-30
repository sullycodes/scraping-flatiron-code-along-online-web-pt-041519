require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './course.rb'

class Scraper
  
  def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end
  
  def get_page 
    #open-uri call
      # doc = open("http://learn-co-curriculum.github.io/site-for-scraping/courses")
    #nokogiri call using doc variable 
      # doc = Nokogiri::HTML(doc)
    #combined
      doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
      
      
      
      
  end
  
  def get_courses
	  get_page.css(".post")
	end
	
	# I need to iterate through get_courses
	def make_courses
		# get_courses.each do |
	end
	
	def test 
	 a = get_page.css(".post").first.css("h2").text
	 b = get_page.css(".post").first.css(".date").text
	 c = get_page.css(".post").first.css("p").text
	 d = get_page.css(".post")
	 puts d
	end
  
end


a = Scraper.new.test
puts a