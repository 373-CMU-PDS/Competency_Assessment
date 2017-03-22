FactoryGirl.define do

  # Competency factory set up
  factory :competency do
    name "Communication"
    description "Take the Communication assessment to see how well you perform in the Communication Competency."
    active true
  end

  # Level factory set up
  factory :level do
    name "Champion"
    description "The highest level of indicators."
    ranking 1
    active true
  end

  # Question factory set up
  factory :question do
    question "When I have something to say, I prepare by organizing my thoughts and outlining my intention."
    question_number 2
    active true
  end

  # User factory set up
  factory :user do
    username "admin"
    password "password"
    #TODO Add these in with user controllers
    #password_confirmation "password"
    active true
  end

  # Indicator factory set up
  factory :indicator do
    association :competency
    association :level
    description "Able to identify common nonverbal cues."
    active true
  end

  # Paradigm factory set up
  factory :paradigm do
    name "Build Understanding"
    description "Books that help you understand what you're buildling"
    ranking 1
    active true
  end

  # Resource factory set up
  factory :resource do
    association :paradigm
    title "Communication Skills for Dummies"
    link "www.google.com"
    active true
  end

end
