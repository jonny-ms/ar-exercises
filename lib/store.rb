class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }
  validate :must_carry_apparel

  before_destroy :disallow_store_destruction

  def must_carry_apparel
    unless mens_apparel || womens_apparel
      errors.add(:mens_and_womens_apparel, "must sell at least one")
    end
  end

  private
    def disallow_store_destruction
      if employees.count > 0
        errors.add :base, "Cannot delete a store with employees!"
        throw(:abort)
      end
    end
end
