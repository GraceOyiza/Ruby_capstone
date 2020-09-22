require_relative '../lib/scraper.rb'

describe Electronic do
  let(:sample) { (Electronic.new) }

  it 'should return the length of titles when scraped' do
    sample.scrape
    expect(sample.count).to eq(48)
  end

  it 'should return the value of count' do
    expect(sample.count).to eq(0)
  end
end
