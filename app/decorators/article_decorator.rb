# coding: utf-8
module ArticleDecorator
  def status_label
    t("articles.statuses.#{status}")
  end

  def status_labels
    Article.statuses.map {|k, v| [t("articles.statuses.#{k}"), k] }
  end
end
