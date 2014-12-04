class Article < ActiveRecord::Base
  belongs_to :author
  validates_presence_of :title, :author_id, :body
end
