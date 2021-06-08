# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Data taken from: https://www.aph.gov.au/senate/los

candidate_list = [
	[	"Eric", "Abetz", "Liberal Party of Australia", "Tasmania", 1	],
	[	"Alex", "Antic", "Liberal Party of Australia", "South Australia", 2	],
	[	"Wendy", "Askew", "Liberal Party of Australia", "Tasmania", 3	],
	[	"Tim", "Ayres", "Australian Labor Party", "New South Wales", 4	],
	[	"Catryna", "Bilyk", "Australian Labor Party", "Tasmania", 5	],
	[	"Simon", "Birmingham", "Liberal Party of Australia", " South Australia", 6	],
	[	"Andrew", "Bragg", "Liberal Party of Australia", "New South Wales", 7	],
	[	"Slade", "Brockman", "Liberal Party of Australia", "Western Australia", 8	],
	[	"Carol", "Brown", "Australian Labor Party", " Tasmania", 9	],
	[	"Matthew", "Canavan", "The Nationals", "Queensland", 10	],
	[	"Kim", "Carr", "Australian Labor Party", "Victoria", 11	],
	[	"Michaelia", "Cash", "Liberal Party of Australia", "Western Australia", 12	],
	[	"Claire", "Chandler", "Liberal Party of Australia", "Tasmania", 13	],
	[	"Anthony", "Chisholm", "Australian Labor Party", "Queensland", 14	],
	[	"Raff", "Ciccone", "Australian Labor Party", "Victoria", 15	],
	[	"Richard", "Colbeck", "Liberal Party of Australia", "Tasmania", 16	],
	[	"Perin", "Davey", "The Nationals", "New South Wales", 17	],
	[	"Jonathon", "Duniam", "Liberal Party of Australia", "Tasmania", 18	],
	[	"Don", "Farrell", "Australian Labor Party", "South Australia", 19	],
	[	"Mehreen", "Faruqi", "Australian Greens", "New South Wales", 20	],
	[	"David", "Fawcett", "Liberal Party of Australia", "South Australia", 21	],
	[	"Concetta", "Fierravanti-Wells", "Liberal Party of Australia", "New South Wales", 22	],
	[	"Alex", "Gallacher", "Australian Labor Party", "South Australia", 23	],
	[	"Katy", "Gallagher", "Australian Labor Party", "Australian Capital Territory", 24	],
	[	"Nita", "Green", "Australian Labor Party", "Queensland", 25	],
	[	"Stirling", "Griff", "Centre Alliance", "South Australia", 26	],
	[	"Pauline", "Hanson", "Pauline Hanson's One Nation", "Queensland", 27	],
	[	"Sarah", "Hanson-Young", "Australian Greens", "South Australia", 28	],
	[	"Sarah", "Henderson", "Liberal Party of Australia", "Victoria", 29	],
	[	"Hollie", "Hughes", "Liberal Party of Australia", "New South Wales", 30	],
	[	"Jane", "Hume", "Liberal Party of Australia", "Victoria", 31	],
	[	"Kristina", "Keneally", "Australian Labor Party", "New South Wales", 32	],
	[	"Kimberley", "Kitching", "Australian Labor Party", "Victoria", 33	],
	[	"Jacqui", "Lambie", "Jacqui Lambie Network", "Tasmania", 34	],
	[	"Sue", "Lines", "Australian Labor Party", "Western Australia", 35	],
	[	"Jenny", "McAllister", "Australian Labor Party", "New South Wales", 36	],
	[	"Malarndirri", "McCarthy", "Australian Labor Party", "Northern Territory", 37	],
	[	"Susan", "McDonald", "The Nationals", "Queensland", 38	],
	[	"James", "McGrath", "Liberal Party of Australia", "Queensland", 39	],
	[	"Bridget", "McKenzie", "The Nationals", "Victoria", 40	],
	[	"Nick", "McKim", "Australian Greens", "Tasmania", 41	],
	[	"Andrew", "McLachlan", "Liberal Party of Australia", "South Australia", 42	],
	[	"Sam", "McMahon", "Country Liberal Party", "Northern Territory", 43	],
	[	"Jim", "Molan", "Liberal Party of Australia", "New South Wales", 44	],
	[	"Deborah", "O'Neill", "Australian Labor Party", "New South Wales", 45	],
	[	"Matt", "O'Sullivan", "Liberal Party of Australia", "Western Australia", 46	],
	[	"Marise", "Payne", "Liberal Party of Australia", "New South Wales", 47	],
	[	"Helen", "Polley", "Australian Labor Party", "Tasmania", 48	],
	[	"Gerard", "Rennick", "Liberal Party of Australia", "Queensland", 49	],
	[	"Linda", "Reynolds", "Liberal Party of Australia", "Western Australia", 50	],
	[	"Janet", "Rice", "Australian Greens", "Victoria", 51	],
	[	"Malcolm", "Roberts", "Pauline Hanson's One Nation", "Queensland", 52	],
	[	"Anne", "Ruston", "Liberal Party of Australia", "South Australia", 53	],
	[	"Scott", "Ryan", "Liberal Party of Australia", "Victoria", 54	],
	[	"Paul", "Scarr", "Liberal Party of Australia", "Queensland", 55	],
	[	"Zed", "Seselja", "Liberal Party of Australia", "Australian Capital Territory", 56	],
	[	"Tony", "Sheldon", "Australian Labor Party", "New South Wales", 57	],
	[	"Rachel", "Siewert", "Australian Greens", "Western Australia", 58	],
	[	"Ben", "Small", "Liberal Party of Australia", "Western Australia", 59	],
	[	"Dean", "Smith", "Liberal Party of Australia", "Western Australia", 60	],
	[	"Marielle", "Smith", "Australian Labor Party", "South Australia", 61	],
	[	"Jordon", "Steele-John", "Australian Greens", "Western Australia", 62	],
	[	"Glenn", "Sterle", "Australian Labor Party", "Western Australia", 63	],
	[	"Amanda", "Stoker", "Liberal Party of Australia", "Queensland", 64	],
	[	"Anne", "Urquhart", "Australian Labor Party", "Tasmania", 65	],
	[	"David", "Van", "Liberal Party of Australia", "Victoria", 66	],
	[	"Jess", "Walsh", "Australian Labor Party", "Victoria", 67	],
	[	"Larissa", "Waters", "Australian Greens", "Queensland", 68	],
	[	"Penny", "Wong", "Australian Labor Party", "South Australia", 69	]
]

candidate_list.each do |first_name, last_name, associated_party, state, candidate_id|
	Candidate.create( :first_name => first_name, :last_name => last_name, :associated_party => associated_party, :state => state, :id => candidate_id )
end
