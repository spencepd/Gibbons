class InterestsController < ApplicationController
  skip_before_filter :authorize

  def index
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
      end
    end

    puts "groups is #{groups}"
    
    redirect_to disposition_url
  end
end
