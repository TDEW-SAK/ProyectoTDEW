class Subject < ActiveRecord::Base
  has_many :scopes
  has_many :careers, :through => :scopes
  has_many :teachers, :through => :scopes
end