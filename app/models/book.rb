# == Schema Information
#
# Table name: books
#
#  id          :integer          not null, primary key
#  title       :text
#  author      :text
#  image       :text
#  link        :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  description :text
#

class Book < ApplicationRecord
  has_many :readings, :dependent => :destroy # delete a book, also delete the reading iwth that book_id

  # validates :unique_id, :uniqueness => true
end
