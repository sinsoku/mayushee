# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sprint do
    start_on "2013-04-21"
    finish_on "2013-04-21"
    number_of_workdays 1
    demo_meeting "MyString"
    scrum_meeting "MyString"
    retrospective_meeting "MyString"
    estimated_focus_factor 1.5
    retrospective_report "MyText"
    project nil
  end
end
