require 'test_helper'

class QuestionAnswerTest < ActiveSupport::TestCase
  fixtures :questions, :question_answers

  test "question answers must not be empty" do
    questionAnswer = QuestionAnswer.new(label:  question_answers(:one).label)
    questionAnswer.question = questions(:one)
    
    assert questionAnswer.valid?
    assert_equal("Answer One", questionAnswer.label)
    assert_equal("Question One", questionAnswer.question.label)
  end
end
