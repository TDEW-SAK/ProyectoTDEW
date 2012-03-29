class Scope < ActiveRecord::Base
  belongs_to :career
  belongs_to :teacher
  belongs_to :subject
  has_one :evaluation
end
