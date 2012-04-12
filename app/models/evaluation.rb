class Evaluation < ActiveRecord::Base
    has_many :evaluation_details
    belongs_to :teacher
    belongs_to :user
    belongs_to :form
    accepts_nested_attributes_for :evaluation_details
end
