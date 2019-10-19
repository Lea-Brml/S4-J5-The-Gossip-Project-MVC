require 'pry'
require 'csv'
require 'json'


class Gossip

  attr_accessor :author, :content


  def initialize(author, content)

    @author = author
    @content = content

  end


  def save_csv

    CSV.open("db/gossip.csv","a") do |csv|
        csv << [author, content]
            end

  end


  def save_json


    File.open("db/gossip.json","a") do |f|             # w pour écrire et modifier, a pour écrire et lire (donc ne suppirme pas)
      f.write([author, content].to_json)
    end


  end




end
