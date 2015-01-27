require 'spec_helper'

describe InterviewQuestions::Request do

  it 'defines a class for request' do
    expect{ InterviewQuestions::Request}.to_not raise_error
  end
  
  it "creates a constructor to accept inputs" do
    expect{ InterviewQuestions::Request.new({a: 1})}.to_not raise_error
  end

  # Read attributes accessor
  it "assigns the url and body attributes to request" do
    request = InterviewQuestions::Request.new({ url: 'http://www.foo.com', body: '<xml></xml>' })
    expect(request.url).to eq("http://www.foo.com")
    expect(request.body).to eq("<xml></xml>")
  end

  it "sends an http call to the url" do
    stub_request(:post, "http://www.foo.com/").with(:body => "<xml></xml>").to_return(:status => 200, :body => "<xml></xml>", :headers => {})
    request = InterviewQuestions::Request.new({ url: 'http://www.foo.com', body: '<xml></xml>' })
    expect(request.run.body).to eq("<xml></xml>")
  end

end
