class Automovel < ActiveRecord::Base
  attr_accessible :born_on, :nome, :tipo, :type_ids 
  belongs_to :cliente
  has_many :washings
  has_many :types, :through => :washings
  validates_presence_of :nome, :born_on
end
