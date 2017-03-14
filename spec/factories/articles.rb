FactoryGirl.define do
  factory :article do
    title "Article title"
    text "Article text"

    # create factory named article_with comment
    # for article with few comments
    factory :article_with_comments do
      # after article created
      after :create do |article, evaluator|
        # create list with 3 comments
        create_list :comment, 3, article: article
      end
    end

  end
end
