class Customer < ActiveRecord::Base
  has_many :charges

  validates :first_name, presence: true

end
