# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :madlib_solution do
    text "MyText"
    madlib nil
  end
end
