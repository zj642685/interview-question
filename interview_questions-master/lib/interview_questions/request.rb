module InterviewQuestions
  class Request
    $param
    def initialize(param)
      @url=param[:url]
      @body=param[:body]
      $param=param
    end
    def url
      return @url
    end
    def body
      return @body
    end
    def run
      return Request.new($param)
    end
  end
end
