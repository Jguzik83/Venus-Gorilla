
user1 = User.create(first_name: 'Jason', last_name: 'Chung', username: 'Venus', password: '1234', email: 'jc1234@gmail.com')

user2 = User.create(first_name: 'George', last_name: 'Guzik', username: 'Pluto', password: '1234', email: 'gg1234@gmail.com')

survey1 = Survey.create(title: 'Ice Cream', description: 'Ice cream is such a great dessert. We want to find out more about your interests and selections.', owner_id: 1)

survey2 = Survey.create(title: 'Programming', description: 'Let us know your best practices for writing code.', owner_id: 2)

question1 = Question.create(q_name: 'What is your favorite flavor ice cream?', survey_id: 1)

question2 = Question.create(q_name: 'What topping do you enjoy most?', survey_id: 1)

question3 = Question.create(q_name: 'What programming language do you use most often?', survey_id: 2)

question4 = Question.create(q_name: 'What web application framework do you prefer?', survey_id:2)

choice1 = Choice.create(c_name: 'Vanilla', question_id: 1)

choice2 = Choice.create(c_name: 'Chocolate', question_id: 1)

choice3 = Choice.create(c_name: 'Cookie Dough', question_id: 1)

choice4 = Choice.create(c_name: 'Cookies & Cream', question_id: 1)

choice5 = Choice.create(c_name: 'Oreos', question_id: 2)

choice6 = Choice.create(c_name: 'Reeses PB Cups', question_id: 2)

choice7 = Choice.create(c_name: 'M&M', question_id: 2)

choice8 = Choice.create(c_name: 'Caramel', question_id: 2)

choice9 = Choice.create(c_name: 'Ruby', question_id: 3)

choice10 = Choice.create(c_name: 'Javascript', question_id: 3)

choice11 = Choice.create(c_name: 'Python', question_id: 3)

choice12 = Choice.create(c_name: 'PHP', question_id: 3)

choice13 = Choice.create(c_name: 'Rails', question_id: 4)

choice14 = Choice.create(c_name: 'Sinatra', question_id: 4)

choice15 = Choice.create(c_name: 'Meteor', question_id: 4)

choice16 = Choice.create(c_name: 'Ninja', question_id: 4)

survey = UserSurvey.create(user_id: 1, survey_id: 1)

SurveyChoice.create(question_id: 1, choice_id: 1, user_survey_id: 1)

SurveyChoice.create(question_id: 2, choice_id: 5, user_survey_id: 1)

survey.update_attributes(completed: true)


