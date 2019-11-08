class Charge < ActiveRecord::Base
  belongs_to :customer

  validates :customer_id, presence: true
  after_create :record_created

  scope :paid, -> { where(paid: true) }
  scope :refunded, -> { where(refunded: true) }

  private

  def record_created
    self.update_column(:created, self.created_at.to_i)
  end
end
