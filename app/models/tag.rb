class Tag

  # Module inclusion
  include Mongoid::Document

  # Collection
  field :name, type: String

  # Validations
  validates :name, uniqueness: true, presence: true

  # Association
  has_and_belongs_to_many :todos

end