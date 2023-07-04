class Discussion < ApplicationRecord
  belongs_to :user
  belongs_to :channel

  def formatted_likes
    "#{likes} Likes"
  end
end
