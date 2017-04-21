class Job < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :city, presence: true
  validates :company, presence: true
  validates :category, presence: true


  def publish!
    self.is_hidden = false
    self.save
  end

  def hide!
    self.is_hidden = true
    self.save
  end

  belongs_to :user
  has_many :posts
  has_many :resumes

end
