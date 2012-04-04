class Evaluation < ActiveRecord::Base
    has_many :evaluation_details
    belongs_to :teacher
    belongs_to :user
    belongs_to :form
end
