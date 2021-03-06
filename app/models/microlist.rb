class Microlist < ActiveRecord::Base
  attr_accessible :content
  belongs_to :user

  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 200 }


  default_scope order: 'microlists.created_at DESC'

end
