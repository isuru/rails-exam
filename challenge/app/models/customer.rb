class Customer < ActiveRecord::Base
  has_many :charges

  validates :first_name, presence: true

  def name
    "#{first_name}#{last_name.blank? ? ''  : ' ' + self.last_name}"
  end
end
