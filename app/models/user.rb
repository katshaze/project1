# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string
#  email           :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#

class User < ApplicationRecord
  has_secure_password
  has_many :readings

  validates :email, :presence => true, :uniqueness => true # this means that it will treat blank email as an error
  validates :username, :presence => true, :uniqueness => true
end
