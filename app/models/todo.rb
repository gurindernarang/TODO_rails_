class Todo

  # Modules inclusion
  include Mongoid::Document
  include Mongoid::Timestamps

  # Constants
  STATUS_INITIALIZED, STATUS_STARTED, STATUS_FINISHED = STATUS = %w(initialized started finished)

  #Collection fields
  field :title , type: String
  field :status, type: String,  default: Todo::STATUS_INITIALIZED

  # Validations
  validates_presence_of :title, :status
  #validates :title, :presence => true

  # Associations
  has_and_belongs_to_many :tags
end