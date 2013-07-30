Dir["#{File.dirname(__FILE__)}/fixtures/*.rb"].each {|file| require file }
require "#{File.dirname(__FILE__)}/../lib/jsoner"

describe Jsoner do
  
  it "should match data from json of fixtures" do
    Jsoner.parse(table_str).should == json
  end

  it "should parse file including table" do
    Jsoner.parse("#{File.dirname(__FILE__)}/fixtures/table.html").should == json
  end

  it "should raise error when having no full table in HTML file" do
    expect{ Jsoner.parse("#{File.dirname(__FILE__)}/fixtures/table_extend.html")}.to raise_error Jsoner::NotFullTable
  end

  context "data parsed" do
    it "it is HTML file" do
      Jsoner.filter("#{File.dirname(__FILE__)}/fixtures/table.html").should == table_str
    end

    it "it is  String" do
      Jsoner.filter("<table></table>").should == "<table></table>"
    end
  end
end
