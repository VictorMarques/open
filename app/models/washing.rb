class Washing < ActiveRecord::Base
  attr_accessible :automovel_id, :type_id
  belongs_to :automovel
  belongs_to :type
end
