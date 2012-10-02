require 'test_helper'
require 'question_group_helper.rb'

class QuestionGroupHelperTest < ActionView::TestCase
  include QuestionGroupHelper
  test "question parameters are returned" do
    params = {"question_group_id:1.question_id:2.question_answer_id:3" => "Hello"}
    answers = parse_answers(params)
    assert answers.is_a?(Enumerable)
    assert_equal 1, answers.count
    assert_equal 1, answers[0].question_group_id
    assert_equal 2, answers[0].question_id
    assert_equal 3, answers[0].question_answer_id
    assert_equal "Hello", answers[0].answer
  end
  
  test "get_max_group" do
    params = {"question_group_id:1.question_id:2.question_answer_id:3" => "Hello"}
    answers = parse_answers(params)
    
    assert_equal 1, get_max_group(answers)
  end

  test "get_max_group max is tie" do
    params = {"question_group_id:1.question_id:2.question_answer_id:3" => "Hello",
              "question_group_id:6.question_id:7.question_answer_id:8" => "Hello"}
    answers = parse_answers(params)
    
    assert_equal 1, get_max_group(answers)
  end
  
end
