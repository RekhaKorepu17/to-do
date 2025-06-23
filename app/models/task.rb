class Task < ApplicationRecord
  validates :title, presence: true, length: { minimum: 1 }
  
  scope :completed, -> { where(completed: true) }
  scope :pending, -> { where(completed: false) }
  
  after_initialize :set_default_completed, if: :new_record?
  
  private
  
  def set_default_completed
    self.completed ||= false
  end
end