class Dog < ApplicationRecord
  has_many :employees

  def num_of_employees
    self.employees.count
  end
end
