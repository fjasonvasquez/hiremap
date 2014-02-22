require 'spec_helper'

describe Startup::Job do
  it 'is valid with a title and angellist_url' do
  job = Startup::Job.new(
  	title: 'Venture Hacker',
  	angellist_url: 'http://angel.co/angellist/jobs/97')
  expect(job).to be_valid
end


  it 'is invalid without a title' do
  expect(Startup::Job.new(title: nil)).to have(1).errors_on(:title)
	end

  it 'is invalid without an angellist_url' do
  	expect(Startup::Job.new(angellist_url: nil)).to have(1).errors_on(:angellist_url)
	end
end

