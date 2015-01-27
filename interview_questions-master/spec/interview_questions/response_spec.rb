require 'spec_helper'

describe InterviewQuestions::Response do

  it 'defines a class for response' do
    expect{ InterviewQuestions::Response}.to_not raise_error
  end

  it "creates a constructor to accept raw body" do
    expect{ InterviewQuestions::Response.new("foo")}.to_not raise_error
  end

  it "takes an xml response and converts into Nokogiri XML Document" do
    file = File.read(File.expand_path(File.join(File.dirname(__FILE__), '..', 'support', 'happy_response.xml')))
    response = InterviewQuestions::Response.new(file)
    expect(response.parse_body).to be_a_kind_of(Nokogiri::XML::Document)
  end

  it "finds the gauge score at xpath '//BSB/APPLICANT/SCORE/MAIN/@JF' and returns the value" do
    file = File.read(File.expand_path(File.join(File.dirname(__FILE__), '..', 'support', 'happy_response.xml')))
    response = InterviewQuestions::Response.new(file)
    expect(response.gauge_score).to eq("650")
  end
end
