class Career < ActiveRecord::Base
  has_many :scopes
  has_many :subjects, :through => :scopes
  has_many :teachers, :through => :scopes
end
