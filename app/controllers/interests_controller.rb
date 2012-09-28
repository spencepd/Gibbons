class InterestsController < ApplicationController
  skip_before_filter :authorize

  def index
    # TODO: EXPIRE session 
    
    @groups = QuestionGroup.where(:group_type => ["EDUCATION", "HEALTH"])
  end

  def save_answers
    groups = Hash.new(0)
    
    params.each do |key, value|      
      if key =~ /^g.*/
        tmp_hash = key.split(/\./).inject(Hash.new{|h,k| h[k]=[]}) do |h, s|
          v,k = s.split(/_id/)
          h[v] << k
          h
        end
        puts "tmp is #{tmp_hash}"
        groups[tmp_hash["group"]] += 1
        
        # TODO: persist user answers to db
      end
    end

    puts "max key is #{groups.key(groups.values.max).first}"
    
    survey = Survey.create(:answer_row => groups.key(groups.values.max).first)
    puts "groups is #{groups}"
    puts "SurveyId is: #{survey.id}"
    
    redirect_to disposition_url
  end
end
