# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cj = Amoeba.create(:name => "CJ", :generation => 1)
zach = Amoeba.create(:name => "Zach", :generation => 1)
catherine = Amoeba.create(:name => "Catherine", :generation => 1)
will = Amoeba.create(:name => "Will", :generation => 1)
cj_jr = Amoeba.create(:name => "CJ Jr.", :generation => 2)
cjina = Amoeba.create(:name => "CJ-ina", :generation => 2)
katerina = Amoeba.create(:name => "Katerina", :generation => 2)
kathy = Amoeba.create(:name => "Kathy", :generation => 2)
cj_iii = Amoeba.create(:name => "CJ III", :generation => 3)
cj_jr_jr = Amoeba.create(:name => "CJ Jr Jr", :generation => 3)

clown = Talent.create(:name => "Clown")
acrobat = Talent.create(:name => "Acrobat")
juggler = Talent.create(:name => "Juggler")
freak = Talent.create(:name => "Freak")

child_scaring_contest_balancing_act = Act.create(:name => "Child Scaring Contest and Balancing Act", :date => (1).days.from_now)
trapeze_show = Act.create(:name => "Trapeze Show", :date => (4).days.from_now)
juggle_rap_battle = Act.create(:name => "Juggle/Rap Battle", :date => (1).week.from_now)
freak_show = Act.create(:name => "Freak Show", :date => (12).days.from_now)

cj.talent = clown
cj_jr.talent = clown
cjina.talent = clown
cj_iii.talent = clown
cj_jr_jr.talent = clown

zach.talent = acrobat

catherine.talent = juggler
katerina.talent = juggler
kathy.talent = juggler

will.talent = freak

child_scaring_contest_balancing_act.amoebas << [cj, cj_jr, cjina, cj_iii, cj_jr_jr, zach]
trapeze_show.amoebas << zach
juggle_rap_battle.amoebas << [catherine, katerina, kathy]
freak_show.amoebas << will