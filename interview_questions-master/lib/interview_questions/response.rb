require "nokogiri"

module InterviewQuestions
  class Response
    def initialize(param)
      @param=param
    end
    def parse_body
      return Nokogiri::XML(@param)
    end
    def gauge_score
      @score
      doc=parse_body
      result=doc.xpath("//BSB/APPLICANT/SCORE/MAIN[@JF]")
      result.each do |x|
        @score=x.attr("JF")
        puts @score
      end
      return @score
    end
  end
end



