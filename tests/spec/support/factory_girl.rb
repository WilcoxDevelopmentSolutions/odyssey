# spec/support/factory_girl.rb

FactoryGirl.definition_file_paths = [
    File.join(Rails.root, "tests", "spec", "factories")
]

FactoryGirl.find_definitions

