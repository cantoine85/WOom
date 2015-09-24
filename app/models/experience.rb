class Experience < ActiveRecord::Base

  # Associations
  belongs_to :user

  has_many :children_experiences, class_name: "Experience",
                                  foreign_key: "parent_experience_id"
  belongs_to :parent_experience, class_name: "Experience"

  has_many :relayed_experiences, class_name: "Experience",
                                  foreign_key: "initial_experience_id"
  belongs_to :initial_experience, class_name: "Experience"

  # Validations
  validates :title, :user_id, :status, presence: true
  validates :title, length: { minimum:3}

end
