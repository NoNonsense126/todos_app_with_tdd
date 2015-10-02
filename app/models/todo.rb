class Todo < ActiveRecord::Base
  validates :title, presence: true

  def complete?
    completed_at.present?
  end

  def complete!
    update_attributes(completed_at: Time.now)
  end

  def mark_incomplete!
    update_attributes(completed_at: nil)
  end
end