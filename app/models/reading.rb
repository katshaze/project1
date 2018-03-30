# == Schema Information
#
# Table name: readings
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  book_id    :integer
#  to_read    :boolean
#  reading    :boolean
#  read       :boolean
#  stars      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Reading < ApplicationRecord
  belongs_to :user 
  belongs_to :book
end
