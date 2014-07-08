class Amoeba < ActiveRecord::Base
  belongs_to :talent
  has_many :acts_amoebas
  has_many :acts, :through => :acts_amoebas
end
