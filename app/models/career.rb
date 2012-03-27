class Career < ActiveRecord::Base
	has_and_belongs_to_many :subjects
	has_many :evaluations
end
