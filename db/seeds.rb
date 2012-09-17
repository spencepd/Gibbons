# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

Charity.delete_all
Charity.create(name: 'American Red Cross',
  description: 'Helping people prevent, prepare for and respond to emergencies',
  overall: 59.64,
  financial: 55.35,
  accountability: 70.00)
# . . .
Charity.create(name: 'World Vision',
  description: 'Building a better world for children',
  overall: 64.60,
  financial: 62.98,
  accountability: 67.00)
  
User.delete_all
User.create(name: 'Rob',
            password_digest: BCrypt::Password.create('R0b'))
User.create(name: 'Paul',
            password_digest: BCrypt::Password.create('P4ul'))
User.create(name: 'Stacy',
            password_digest: BCrypt::Password.create('St4cy'))
            
QuestionGroup.delete_all
@group1 = QuestionGroup.create(group_type: 'EDUCATION', label: 'Education')
@group2 = QuestionGroup.create(group_type: 'HEALTH', label: 'Health and Well Being')
@group3 = QuestionGroup.create(group_type: 'DISASTER', label: 'Disaster Relief')
@group4 = QuestionGroup.create(group_type: 'INFRASTRUCTURE', label: 'Third World Infrastructure')

Question.delete_all
@q1 = Question.create(label: 'Please select the education related interests:', question_type: 'MULTICHOICE', question_group_id: @group1.id)
@q2 = Question.create(label: 'Please select the health related interests:', question_type: 'MULTICHOICE', question_group_id: @group2.id)
@q3 = Question.create(label: 'Please select the disaster related interests:', question_type: 'MULTICHOICE', question_group_id: @group3.id)
@q4 = Question.create(label: 'Please select the third world related interests:', question_type: 'MULTICHOICE', question_group_id: @group4.id)

QuestionAnswer.delete_all
@a1 = QuestionAnswer.create(label: 'Education of Children', question_id: @q1.id)
@a2 = QuestionAnswer.create(label: 'Education of Young Adults', question_id: @q1.id)
@a3 = QuestionAnswer.create(label: 'Education in General', question_id: @q1.id)
@a4 = QuestionAnswer.create(label: 'Third World Countries', question_id: @q2.id)
@a5 = QuestionAnswer.create(label: 'Fight against Cancer', question_id: @q2.id)
@a6 = QuestionAnswer.create(label: 'Aging related diseases', question_id: @q2.id)
@a7 = QuestionAnswer.create(label: 'International Disasters', question_id: @q3.id)
@a8 = QuestionAnswer.create(label: 'Local Disasters (US)', question_id: @q3.id)
@a9 = QuestionAnswer.create(label: 'Water Treatment', question_id: @q4.id)
@a10 = QuestionAnswer.create(label: 'Power Production', question_id: @q4.id)
@a11 = QuestionAnswer.create(label: 'Agriclture', question_id: @q4.id)

