#MAINEVENTTYPES
INSERT INTO event_types(eventtype_name,eventtype_level,eventtype_image_link) VALUES
#1
('Social','A','https://raw.githubusercontent.com/MilaneseNightingale/MainEventTypeImages/Sunaina/Images/SOCIAL.png'),
#2
('Science and Technical','A','https://raw.githubusercontent.com/MilaneseNightingale/MainEventTypeImages/Sunaina/Images/TECHNICAL.jpg'),
#3
('Trips','A','https://raw.githubusercontent.com/MilaneseNightingale/MainEventTypeImages/Sunaina/Images/TRIP.jpg'),
#4
('Cultural','A','https://raw.githubusercontent.com/MilaneseNightingale/MainEventTypeImages/Sunaina/Images/CULTURAL.jpg'),
#5
('Educational','A','https://raw.githubusercontent.com/MilaneseNightingale/MainEventTypeImages/Sunaina/Images/EDUCATIONAL.jpg'),
#6
('Holidays and Festivals','A','https://raw.githubusercontent.com/MilaneseNightingale/MainEventTypeImages/Sunaina/Images/HOLIDAYS.jpg'),
#7
('Workshops','A','https://raw.githubusercontent.com/MilaneseNightingale/MainEventTypeImages/Sunaina/Images/WORKSHOPS.jpg'),
#8
('Exhibitions','A','https://raw.githubusercontent.com/MilaneseNightingale/MainEventTypeImages/Sunaina/Images/EXHIBITIONS.jpg'),
#9
('Seminars and Conferences','A','https://raw.githubusercontent.com/MilaneseNightingale/MainEventTypeImages/Sunaina/Images/SEMINARS.jpg');

#SOCIAL
INSERT INTO event_types(eventtype_name,eventtype_level) VALUES
('Birthdays','B'),				#10
('Marriage','B'),				#11
('Anniversary','B'),			#12
('House Warming','-'),			#13
('Death','B'),					#14
('Baby Showers','-'),			#15
('Parties','B'),				#16
('Marathons','-'),				#17
('Dates','-'),					#18
('Work Out','B');				#19

#TECHNICAL AND SCIENCE
INSERT INTO event_types(eventtype_name,eventtype_level) VALUES
('Competitions','-'),			#20
('Sessions','-'),				#21
('Paper Presentations','-'),	#22
('Hackathons','-'),				#23
('Competitive Coding','-'),		#24
('Quizes','-'),					#25
('Robotics','-'),				#26
('Gaming','-'),					#27
('Science Fairs','-'),			#28
('Project Displays','-');		#29

#TRIPS
INSERT INTO event_types(eventtype_name,eventtype_level) VALUES
('Picnics','B'),				#30
('Road Trips','B'),				#31
('Trekking','-'),				#32
('Office Outings','-'),			#33
('School Trips','-'),			#34
('Bachelor Trips','-'),			#35
('Piligrimages','-'),			#36
('Visits','B'),					#37
('Normal Trips','-');			#38

#CULTURAL
INSERT INTO event_types(eventtype_name,eventtype_level) VALUES
('Dance shows','B'),			#39
('Music shows','B'),			#40
('Artworks','-'),				#41
('Let\'s shoot','B'),			#42
('Religious','-');				#43

#Educational
INSERT INTO event_types(eventtype_name,eventtype_level) VALUES
('Skits and Plays','-'),		#44
('Dance and music Dramas','-'), #45
('Choir','-'),					#46
('Educational Trips','-'),		#47
('Important Days','B'),			#48
('Fests','B');					#49

#HOLIDAYS
INSERT INTO event_types(eventtype_name,eventtype_level) VALUES
('Festivals','B'),				#50
('Public Holidays','B');		#51

#WORKSHOPS AND EXHIBITIONS
INSERT INTO event_types(eventtype_name,eventtype_level) VALUES
('Design Thinking','-'),		#52
('Dance','-'),					#53
('Music','-'),					#54
('Robotics','-'),				#55
('Science','-'),				#56
('Art','-'),					#57
('Gardening','-'),				#58
('Mechanical','-'),				#59
('Electrical','-'),				#60
('Biotechnology','-'),			#61
('Medical','-'),				#62
('Photography','-');			#63

#EXHIBITIONS
INSERT INTO event_types(eventtype_name,eventtype_level) VALUES
('Fashion Shows','-'),			#64
('Jewellery','-'),				#65
('Flower Shows','-'),			#66
('Accessory','-');				#67

#SEMINARS AND CONFERENCES
INSERT INTO event_types(eventtype_name,eventtype_level) VALUES
('Doctor\'s Conferences','-'),	#68
('Teacher\'s Conferences','-'),	#69
('Board Meetings','-'),			#70
('Nurse\'s Conferences','-'),	#71
('Technical Seminars','-'),		#72
('Scientific Seminars','-'),	#73
('Educational Seminars','-');	#74

#BIRTHDAYS 10
INSERT INTO event_types(eventtype_name,eventtype_level) VALUES
('Kids','-'),					#75
('Teens','-'),					#76
('Adults','-'),					#77
('Special','-');				#78

#MARRIAGES 11
INSERT INTO event_types(eventtype_name,eventtype_level) VALUES
('Hindu','C'),					#79
('Muslim','C'),					#80
('Christian','-'),				#81
('Sikh','-'),					#82
('Others','-');					#83

#ANNIVERSARY 12
INSERT INTO event_types(eventtype_name,eventtype_level) VALUES
('Marriage Anniversary','-'),		#84
('Work Anniversary','-'),			#85
('Death Anniversary','-'),			#86
('Relationship Anniversary','-'),	#87
('Annual Days','C');				#88

#DEATHS 14
INSERT INTO event_types(eventtype_name,eventtype_level) VALUES
('Hindu Deaths','-'),			#89	
('Muslim Deaths','-'),			#90
('Christian Deaths','-'),		#91
('Others Deaths','-');			#92

#PARTIES 16
INSERT INTO event_types(eventtype_name,eventtype_level) VALUES
('Lets Get Rocking','-'),		#93
('Get Togethers','-'),			#94
('Kitty Parties','-'),			#95
('Sleep Overs','-'),			#96
('Office Celebrations','-'),	#97
('Achievement Parties','-'),	#98
('Bachelor Parties','-');		#99

#WORK OUTS 19
INSERT INTO event_types(eventtype_name,eventtype_level) VALUES
('Power Yoga','-'),				#100
('Zumba','-'),					#101
('Yoga','-'),					#102
('Gym','-'),					#103
('Laughter Sessions','-'),		#104
('Walk in the park','-'),		#105
('Jogging','-');				#106

#PICNICS 30
INSERT INTO event_types(eventtype_name,eventtype_level) VALUES
('Friends','-'),				#107
('Family','-'),					#108
('Kids','-');					#109

#VISITS 37
INSERT INTO event_types(eventtype_name,eventtype_level) VALUES
('World Tours','-'),			#110
('Sightseeing','-'),			#111
('Shopping','-'),				#112
('Casual Visits','-'),			#113
('Shifting','-'),				#114
('Wanderlust','-');				#115

#DANCE 39 and MUSIC 40
INSERT INTO event_types(eventtype_name,eventtype_level) VALUES
('Festivals','-'),				#116
('Shows','-'),					#117
('Music Concerts','-'),			#118
('Music Gigs','-'),				#119
('DJ Shows','-');				#120

#LETS SHOOT 42
INSERT INTO event_types(eventtype_name,eventtype_level) VALUES
('Photo Shoot','-'),				#121
('Photography Competitions','-');	#122

#FESTS 49
INSERT INTO event_types(eventtype_name,eventtype_level) VALUES
('College Fests','-'),			#123
('Project Fairs','-'),			#124
('Science Fests','-'),			#125
('Technology Fests','-');		#126

#FESTIVALS 50
INSERT INTO event_types(eventtype_name,eventtype_level) VALUES
('Onam','-'),					#127
('Sankranti','-'),				#128
('Holi','-'),					#129
('Janmashtami','-'),			#130
('Ganesh Chaturti','-'),		#131
('Dussehra','-'),				#132
('Rakshabandhan','-'),			#133
('Deepavali','-'),				#134
('Bhai duj','-'),				#135
('Ram Navami','-'),				#136
('Chhat Puja','-'),				#137
('Akshaya Tritiya','-'),		#138
('Ramzan','-'),					#139
('Bakr-id','-'),				#140
('Muharram','-'),				#141
('Id-e-Milad','-'),				#142
('Shabbe-e-barat','-'),			#143
('Good Friday','-'),			#144
('Easter','-'),					#145
('Christmas','-'),				#146
('Mondy Thursday','-');			#147

#IMPORTANT DAYS 48
INSERT INTO event_types(eventtype_name,eventtype_level) VALUES
('Annual Day','-'),				#148
('Sports Day','-'),				#149
('Graduation Day','-');			#150

#PUBLIC HOLIDAYS 51
INSERT INTO event_types(eventtype_name,eventtype_level) VALUES
('New year\'s Day','-'),		#151
('Republic Day','-'),			#152
('Valentine\'s Day','-'),		#153
('Teacher\'s Day','-'),			#154
('Children\'s Day','-'),		#155
('Independence Day','-'),		#156
('Gandhi Jayanti','-'),			#157
('Martyr\'s Day','-'),			#158
('Men\'s Day','-'),				#159
('Women\'s Day','-'),			#160
('Science Day','-'),			#161
('Mother\'s Day','-'),			#162
('Father\'s Day','-'),			#163
('Halloween','-');				#164

#HINDU 79
INSERT INTO event_types(eventtype_name,eventtype_level) VALUES
('Engagement','-'),				#165
('Haldi','-'),					#166
('Sangeet','-'),				#167
('Reception','-'),				#168
('Marriage','-'),				#169
('Mehndi','-');					#170

#MUSLIM 80
INSERT INTO event_types(eventtype_name,eventtype_level) VALUES
('Nikah','-'),					#171
('Rukhsakti','-'),				#172
('Qubool','-');					#173

#ANNUAL DAYS 88
INSERT INTO event_types(eventtype_name,eventtype_level) VALUES
('School Annual Day','-'),		#174
('College Annual Day','-'),		#175
('Office Annual Day','-'),		#176
('Malls Anniversary','-'),		#177
('Shops Anniversary','-');		#178

#SPORTS 179
INSERT INTO event_types(eventtype_name,eventtype_level) VALUES
('Sky Diving','-'),				#180 tennis shoes or sneakers
('Paragliding','-'),			#181
('Archery','-'),				#182 shot put shoes
('Badminton','-'),				#183
('Table tennis','-'),			#184
('Tennis','-'),					#185
('Throwball','-'),				#186 volley ball shoes
('Volleyball','-'),			#187
('Basketball','-'),				#188
('Baseball','-'),				#189
('Cricket','-'),				#190
('Cheerleading','-'),			#191
('Gymnastics','-'),				#192
('Skateboarding','-'),			#193
('Sky Surfing','-'),			#194
('Snowboarding','-'),			#195
('Surfing','-'),				#196
('Dodgeball','-'),				#197
('Ice Climbing','-'),			#198
('Mountaineering','-'),			#199
('Rock Climbing','-'),			#200
('Hiking','-'),					#201
('Rope Climbing','-'),			#202
('Cycling','-'),				#203
('Wrestling','-'),				#204
('Sumo','-'),					#205
('Boxing','-'),					#206
('Karate','-'),					#207
('Kick Boxing','-'),			#208
('Kung fu','-'),				#209
('Taekwondo','-'),				#210
('Mixed Martial Arts','-'),		#211
('Autoracing ','-'),			#212
('Laser Tag','-'),				#213
('Paintball','-'),				#214
('Carrom','-'),					#215
('Billards','-'),				#216
('Snooker','-'),				#217
('Foosball','-'),				#218
('Horse Racing','-'),			#219
('Polo','-'),					#220
('Fishing','-'),				#221
('Golf','-'),					#222
('Football','-'),				#223
('Rugby','-'),					#224
('Trapeze','-'),				#225
('Handball','-'),				#226
('Hunting','-'),				#227
('Ice Hockey','-'),				#228
('Figure Skating','-'),			#229
('Robot Combat','-'),			#230
('Ropping','-'),				#231
('Sprint','-'),					#232
('Hurdles','-'),				#233
('Relay','-'),					#234
('Sailing','-'),				#235
('Skiing','-'),					#236
('Hockey','-'),					#237
('Parkour','-'),				#238
('Squash','-'),					#239
('Rafting','-'),				#240
('Swimming','-'),				#241
('Dirt Track Racing','-'),		#242
('Drag Racing','-'),			#243
('Road Racing','-'),			#244
('Chess','-'),					#245
('Weightlifting','-'),			#246
('Diving','-');					#247
#ROAD TRIP 31
INSERT INTO event_types(eventtype_name,eventtype_level) VALUES
('Bike Trip','-'),				#248
('Car Trip','-');				#249

#179
INSERT INTO event_types(eventtype_name,eventtype_level,eventtype_image_link) VALUES
('Sports','A','https://raw.githubusercontent.com/MilaneseNightingale/MainEventTypeImages/Sunaina/Images/SPORTS.jpg');



INSERT INTO relation_between_eventtypes(maineventtype_id,subeventtype_id) VALUES
(1,10),
(1,11),
(1,12),
(1,13),
(1,14),
(1,15),
(1,16),
(1,18),
(1,19),
(2,20),
(2,21),
(2,22),
(2,23),
(2,24),
(2,25),
(2,26),
(2,27),
(2,28),
(2,29),
(3,30),
(3,31),
(3,32),
(3,33),
(3,34),
(3,35),
(3,36),
(3,37),
(3,38),
(4,39),
(4,40),
(4,41),
(4,42),
(4,43),
(5,44),
(5,45),
(5,46),
(5,47),
(5,48),
(5,49),
(6,50),
(6,51),
(7,52),
(7,53),
(7,54),
(7,55),
(7,56),
(7,57),
(7,58),
(7,59),
(7,60),
(7,61),
(7,62),
(8,53),
(8,54),
(8,55),
(8,56),
(8,57),
(8,58),
(8,59),
(8,60),
(8,61),
(8,62),
(8,63),
(8,64),
(8,65),
(8,66),
(8,67),
(9,68),
(9,69),
(9,70),
(9,71),
(9,72),
(9,73),
(9,74),
(10,75),
(10,76),
(10,77),
(10,78),
(11,79),
(11,80),
(11,81),
(11,82),
(11,83),
(12,84),
(12,85),
(12,86),
(12,87),
(12,88),
(14,89),
(14,90),
(14,91),
(14,92),
(16,93),
(16,94),
(16,95),
(16,96),
(16,97),
(16,98),
(16,99),
(19,100),
(19,101),
(19,102),
(19,103),
(19,104),
(19,105),
(19,106),
(30,107),
(30,108),
(30,109),
(37,110),
(37,111),
(37,112),
(37,113),
(37,114),
(37,115),
(39,116),
(39,117),
(40,116),
(40,117),
(40,118),
(40,119),
(40,120),
(42,121),
(42,122),
(49,123),
(49,124),
(49,125),
(49,126),
(50,127),
(50,128),
(50,129),
(50,130),
(50,131),
(50,132),
(50,133),
(50,134),
(50,135),
(50,136),
(50,137),
(50,138),
(50,139),
(50,140),
(50,141),
(50,142),
(50,143),
(50,144),
(50,145),
(50,146),
(50,147),
(48,148),
(48,149),
(48,150),
(51,151),
(51,152),
(51,153),
(51,154),
(51,155),
(51,156),
(51,157),
(51,158),
(51,159),
(51,160),
(51,161),
(51,162),
(51,163),
(51,164),
(79,165),
(79,166),
(79,167),
(79,168),
(79,169),
(79,170),
(80,171),
(80,172),
(80,173),
(88,174),
(88,175),
(88,176),
(88,177),
(88,178),
(179,17),
(179,180),
(179,181),
(179,182),
(179,183),
(179,184),
(179,185),
(179,186),
(179,187),
(179,188),
(179,189),
(179,190),
(179,191),
(179,192),
(179,193),
(179,194),
(179,195),
(179,196),
(179,197),
(179,198),
(179,199),
(179,200),
(179,201),
(179,202),
(179,203),
(179,204),
(179,205),
(179,206),
(179,207),
(179,208),
(179,209),
(179,210),
(179,211),
(179,212),
(179,213),
(179,214),
(179,215),
(179,216),
(179,217),
(179,218),
(179,219),
(179,220),
(179,221),
(179,222),
(179,223),
(179,224),
(179,225),
(179,226),
(179,227),
(179,228),
(179,229),
(179,230),
(179,231),
(179,232),
(179,233),
(179,234),
(179,235),
(179,236),
(179,237),
(179,238),
(179,239),
(179,240),
(179,241),
(179,242),
(179,243),
(179,244),
(179,245),
(179,246),
(179,247),
(31,248),
(31,249);