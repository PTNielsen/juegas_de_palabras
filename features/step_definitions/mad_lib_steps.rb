When /^I fill in the text:$/ do |string|
  fill_in("text", :with => string)
end

Then /^I should see the following fields:$/ do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end
