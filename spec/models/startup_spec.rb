require 'spec_helper'

describe Startup do
  it 'is valid with a name and angellist_url' do
  	startup = Startup.new(name: 'General Assembly', 
  		angellist_url: 'https://angel.co/general-assembly')
		expect(startup).to be_valid	
  end

  it 'is invalid without a name' do
  	expect(Startup.new(name: nil)).to have(1).errors_on(:name)
  end

  it 'is invalid without an angellist_url' do
  	expect(Startup.new(angellist_url: nil)).to have(1).errors_on(:angellist_url)
end
end
