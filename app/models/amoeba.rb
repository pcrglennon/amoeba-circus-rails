class Amoeba < ActiveRecord::Base
  belongs_to :talent
  has_many :acts_amoebas
  has_many :acts, :through => :acts_amoebas

  def talent_name
    self.talent ? self.talent.name : "None"
  end

  def split
    Amoeba.create(:name => "#{name} C1", :generation => generation + 1, :talent => talent, :acts => acts)
    Amoeba.create(:name => "#{name} C2", :generation => generation + 1, :talent => talent, :acts => acts)
    self.destroy
  end

end
