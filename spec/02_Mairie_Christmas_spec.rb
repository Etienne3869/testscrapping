require_relative '../lib/Mairie_Christmas.rb'

describe "the mail_scrapper function" do
    it "should return an array" do
        expect(mail_scrapper(doc,ville)).to be(Array)
    end
end