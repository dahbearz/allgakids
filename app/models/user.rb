class User < ActiveRecord::Base
  acts_as_authentic do |c|
    c.login_field = :username
  end

  has_many :tweets, :dependent => :destroy
  attr_accessible :username, :email,:password, :password_confirmation, :tweets_attributes
  accepts_nested_attributes_for :tweets
end
