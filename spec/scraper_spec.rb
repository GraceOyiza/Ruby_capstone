require_relative '../lib/scraper.rb'

describe Phone do
  let(:sample) { (Phone.new) }

  it 'should return the length of titles when scraped' do
    sample.scrape
    expect(sample.count).to eq(48)
  end

  it 'should return the value of count' do
    expect(sample.count).to eq(0)
  end
end
