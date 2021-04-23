require_relative '../lib/01_projetscrap.rb'

describe "the dark trader function" do
    it "should return an answer" do
        expect(global_scrap).not_to be_nil
    end
    it "should be an Hash" do
        expect(global_scrap).to be_a(Hash)
    end
end