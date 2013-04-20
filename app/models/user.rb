class User < ActiveRecord::Base
  extend Enumerize
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :duties
  has_many :projects, through: :duties

  validate :login, presence: true, length: { maximum: 20 }

  enumerize :role, in: %w[admin develop test]
end
