require 'nokogiri'
require 'httparty'
require 'byebug'

class Scraper
    
    def self.contestant_info
        url = "https://en.wikipedia.org/wiki/List_of_Love_Island_(2015_TV_series)_contestants"
        unparsed_page = HTTParty.get(url)

        parsed_page = Nokogiri::HTML(unparsed_page)

        contestant_text = parsed_page.css("#mw-content-text > div > table:nth-child(8) > tbody > tr")
           
        contestant_array = []

        contestant_text.each do |contestant|
            text = {
                season: contestant.css("td:nth-child(1)").text,
                name: contestant.css("td:nth-child(2)").text,
                age: contestant.css("td:nth-child(3)").text, 
                hometown: contestant.css("td:nth-child(4)").text,
                occupation: contestant.css("td:nth-child(5)").text,
                status: contestant.css("td:nth-child(6)").text,
            }
            contestant_array << text
        end
        # contestant_array
        newArray = []
        contestant_array.each do |contestant| 
            if !contestant.value?("")
            newArray << contestant
            end
        end
        newArray
    end 

end 
# end of class