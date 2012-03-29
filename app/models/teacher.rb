class Teacher < ActiveRecord::Base
  has_many :scopes
  has_many :careers, :through => :scopes
  has_many :subjects, :through => :scopes
end
