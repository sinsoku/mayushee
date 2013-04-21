class User < ActiveRecord::Base
  extend Enumerize
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :duties
  has_many :projects, through: :duties
  has_many :roles, through: :duties

  validate :login, presence: true, length: { maximum: 20 }
  validate :role, presence: true

  enumerize :role, in: %w[admin develop test]
end
