class Evaluation < ActiveRecord::Base
    has_many :evaluation_details

    belongs_to :teacher
    belongs_to :subject
    belongs_to :career
    belongs_to :user
end
