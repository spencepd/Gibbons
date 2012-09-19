class Survey < ActiveRecord::Base
  attr_accessible :answer_column, :answer_row, :email_address
end
