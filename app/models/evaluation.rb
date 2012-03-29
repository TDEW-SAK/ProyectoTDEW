class Evaluation < ActiveRecord::Base
    has_many :evaluation_details
    belongs_to :scope
    belongs_to :form
end
