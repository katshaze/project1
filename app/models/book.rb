# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  title      :text
#  author     :text
#  image      :text
#  link       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Book < ApplicationRecord
  has_many :readings
end
