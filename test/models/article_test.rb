require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  test "draft article should not be active" do
    draft_article = Article.new(title: "test", content: "content", status: Article::STATUS_DRAFT)
    assert_not draft_article.active?
  end

  test "public article should be active" do
    public_article = Article.new(title: "test", content: "content", status: Article::STATUS_PUBLIC)
    assert public_article.active?
  end

  test "article disabled by admin should not be active" do
    article_disabled_by_admin = Article.new(title: "test", content: "content", status: Article::STATUS_DISABLED_BY_ADMIN)
    assert_not article_disabled_by_admin.active?
  end
end
