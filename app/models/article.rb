class Article < ActiveRecord::Base
  enum status: { draft: 0, opened: 1, closed_by_admin: 2 }

  def active?
    opened?
  end

  def inactive?
    !opened?
  end
end
