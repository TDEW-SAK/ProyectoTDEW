class Form < ActiveRecord::Base
  has_many :items
  has_many :evaluations
end
