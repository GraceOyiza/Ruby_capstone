require_relative '../lib/scraper.rb'


describe Electronic do

    let(:sample) { (Electronic.new) }
  
      it "should return the length of titles when scrapped" do
        sample.scrape
        expect(sample.count).to eq(48)
      end

end