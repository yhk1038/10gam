require 'creek'
class UtilController < ApplicationController
  
  # REGION = ""
  
  def self.take_school_list()
    # (1..164).to_a.each do |i|
      # i = 2
      # doc = Nokogiri::HTML(open('http://www.studyholic.com/mid/School_TotalList_mid.asp?page=2'))
      page_uri  = "http://www.studyholic.com/mid/School_TotalList_mid.asp?page=2"
      # page_uri  = "http://stackoverflow.com/questions/4188677/ruby-on-rails-3-incompatible-character-encodings-utf-8-and-ascii-8bit-with-i18"
      html_doc  = Nokogiri::HTML(Net::HTTP.get(URI(page_uri)))
      puts html_doc.css('#tbl_lttl')
      # html_doc.css('table#tbl_list tbody tr').each do |line|
      #   puts line
      # end
    # end
  end
  
  def self.list()
    creek = Creek::Book.new "/static/schools.xlsx"
    sheet = creek.sheets[0]
    
    sheet.rows.each do |row|
      puts row # => {"A1"=>"Content 1", "B1"=>nil, C1"=>nil, "D1"=>"Content 3"}
    end
    
    sheet.rows_with_meta_data.each do |row|
      puts row # => {"collapsed"=>"false", "customFormat"=>"false", "customHeight"=>"true", "hidden"=>"false", "ht"=>"12.1", "outlineLevel"=>"0", "r"=>"1", "cells"=>{"A1"=>"Content 1", "B1"=>nil, C1"=>nil, "D1"=>"Content 3"}}
    end
    
    sheet.state   # => 'visible'
    sheet.name    # => 'Sheet1'
    sheet.rid     # => 'rId2'
  end
end
