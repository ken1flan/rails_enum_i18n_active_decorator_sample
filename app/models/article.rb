class Article < ActiveRecord::Base
  STATUS_DRAFT = 0
  STATUS_PUBLIC = 1
  STATUS_DISABLED_BY_ADMIN = 2

  STATUS_LABELS = {
    STATUS_DRAFT => "下書き",
    STATUS_PUBLIC => "公開中",
    STATUS_DISABLED_BY_ADMIN => "管理者により非公開中",
  }

  def active?
    status == STATUS_PUBLIC
  end

  def status_label
    STATUS_LABELS[status]
  end
end
