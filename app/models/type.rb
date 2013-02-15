class Type < ActiveRecord::Base
  attr_accessible :nome
    has_many :washings
  has_many :automovels, :through => :washings

end
