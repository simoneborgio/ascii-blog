class User < ActiveRecord::Base

  has_many :articles, dependent: :restrict_with_exception

  validates :username, presence: true, uniqueness: true, length: {minimum: 3}
  validates :password, presence: true, confirmation: true
  validates :role, presence: true, numericality: true, inclusion: {in: 0..100}
  validates :email, presence: true, uniqueness: true #, format: { with: /\A([^@\s])@((?:[-a-z0-9]+\\.)[a-z]{2,})\z/i, on: :create }

  @@roles = {
      :owner => 0,
      :administrator => 20,
      :editor => 40
  }

  def self.authenticate(username, password)
    user = User.find_by_username(username)
    if user.present?
      return user if user.password == password
    end

    nil
  end

  def is_owner?
    self.role <= @@roles[:owner]
  end

  def is_admin?
    self.role <= @@roles[:administrator]
  end

  def is_editor?
    self.role <= @@roles[:editor]
  end
end
