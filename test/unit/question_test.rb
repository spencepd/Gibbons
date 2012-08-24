require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  fixtures :questions, :question_groups

  test "questions must not be empty" do
    question = Question.new(label:  questions(:one).label,
                            question_type:  questions(:one).question_type)
    question.questionGroup = question_groups(:education)
    
    assert question.valid?
    assert_equal("Question One", question.label)
    assert_equal("Education Label", question.questionGroup.label)
  end
end
