require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test "draft article should not be active" do
    draft_article = Article.new(title: "test", content: "content", status: :draft)
    assert_not draft_article.active?
  end

  test "public article should be active" do
    public_article = Article.new(title: "test", content: "content", status: :opened)
    assert public_article.active?
  end

  test "article disabled by admin should not be active" do
    article_disabled_by_admin = Article.new(title: "test", content: "content", status: :closed_by_admin)
    assert_not article_disabled_by_admin.active?
  end
end
