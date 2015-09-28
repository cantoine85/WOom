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

  has_attached_file :picture,
    styles: { medium: "300x300>", thumb: "100x100>" }

  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/

  # Create global variable
  CATEGORIES = ['sweetlife', 'culture', 'cinéma', 'balade', 'la vie en rose', 'spectacle', 'musique', 'voyage', 'exposition', 'sensation', 'fun', 'sport', 'plaisir', 'spiritualité', 'food', 'engagement']

end
