FactoryGirl.define do
  factory :comment do
    author "Comment author"
    sequence(:body) { |n| "comment body #{n}" }    
  end
end