--[[ Lua code. See documentation: https://api.tabletopsimulator.com/ --]]
-- Lua code Written by Chimalli
--------------------------------------------------------------------------------
--------------------------------Global Variables--------------------------------
--------------------------------------------------------------------------------
Heroes = {
  {  Name = 'Argent Adept',
  guid = 'c28669',
  Deck = 'dfe821',
  Set = "DE"
  },
  {  Name = 'Absolute Zero',
  guid = '3a16b1',
  Deck = '5fdbb7',
  Set = "DE"
  },
  {  Name = 'Bunker',
  guid = '61741b',
  Deck = '3a6b60',
  Set = "DE"
  },
  {  Name = 'Captain Cosmic',
  guid = '0d7a90',
  Deck = '17aeff',
  Set = "DE"
  },
  {  Name = 'Fanatic',
  guid = '8ddf40',
  Deck = '0052d5',
  Set = "DE"
  },
  {  Name = 'Haka',
  guid = '9afc05',
  Deck = 'e31b7a',
  Set = "DE"
  },
  {  Name = 'Legacy',
  guid = 'bc2caf',
  Deck = '5bf6dc',
  Set = "DE"
  },
  {  Name = 'Ra',
  guid = 'aeed36',
  Deck = 'dc4435',
  Set = "DE"
  },
  {  Name = 'Tachyon',
  guid = '0a1ef1',
  Deck = '099ffe',
  Set = "DE"
  },
  {  Name = 'Tempest',
  guid = '527c25',
  Deck = 'dfd871',
  Set = "DE"
  },
  {  Name = 'Unity',
  guid = 'c861bb',
  Deck = 'cab1ad',
  Set = "DE"
  },
  {  Name = 'Wraith',
  guid = '6826b1',
  Deck = '37dece',
  Set = "DE"
  },
  {  Name = 'Alpha',
  guid = '9ba5ec',
  Deck = '2e98b8',
  Set = "RCR"
  },
  {  Name = 'Expatriette',
  guid = '839b3a',
  Deck = '1fba6d',
  Set = "RCR"
  },
  {  Name = 'The Harpy',
  guid = 'af097c',
  Deck = '4c080a',
  Set = "RCR"
  },
  {  Name = 'Mr. Fixer',
  guid = 'c99558',
  Deck = 'c2b489',
  Set = "RCR"
  },
  {  Name = 'Nightmist',
  guid = 'a07c5a',
  Deck = '8cc9a5',
  Set = "RCR"
  },
  {  Name = 'Setback',
  guid = 'addf28',
  Deck = '03cc85',
  Set = "RCR"
  },
  {  Name = 'Chrono-Ranger',
  guid = '8ff06f',
  Deck = 'dc116a',
  Set = "Dis"
  },
  {  Name = 'Darkstrife and Painstake',
  guid = 'c22023',
  guid2 = '16175d',
  Deck = 'df9866',
  Set = "Dis"
  },
  {  Name = 'KNYFE',
  guid = '95a80e',
  Deck = '4134b1',
  Set = "Dis"
  },
  {  Name = 'Omnitron-X',
  guid = '0c3a4f',
  Deck = '96cfed',
  Set = "Dis"
  },
  {  Name = 'Parse',
  guid = '919ed4',
  Deck = '4dea9b',
  Set = "Dis"
  },
  {  Name = 'Visionary',
  guid = '677d54',
  Deck = '2e9c31',
  Deck2 = 'd1cdee',
  Set = "Dis"
  },
  {  Name = 'Random',
  Set = "None"
  }
}

Villains = {
  {
  Name = 'Akash\'Bhuta',
  Card = '62c31d',
  Deck = 'ec4e7f',
  Name1 = 'Akash\'Bhuta',
  Health = 200,
  Setup1 = 'Primeval Limb',
  Setup1_Count = 1,
  Set = "DE"
  },
  {
  Name = 'Baron Blade',
  Card = 'aa17db',
  Deck = '2cf850',
  Name1 = 'Baron Blade',
  Health = 40,
  Setup1 = 'Mobile Defense Platform',
  Setup1_Count = 'Special',
  Setup1_Special = 1,
  Set = "DE"
  },
  {
  Name = 'Citizen Dawn',
  Card = 'ec3350',
  Deck = 'b82795',
  Name1 = 'Citizen Dawn',
  Health = 80,
  Setup1 = 'Citizen',
  Setup1_Count = 1,
  Set = "DE"
  },
  {
  Name = 'The Matriarch',
  Card = 'db5779',
  Deck = 'b150e0',
  Name1 = 'The Matriarch',
  Health = 70,
  Setup1 = 'Mask of the Matriarch',
  Setup1_Count = 'Special',
  Setup1_Special = 1,
  Set = "DE"
  },
  {
  Name = 'Omnitron',
  Card = 'd55968',
  Deck = '0d4aef',
  Name1 = 'Omnitron',
  Health = 100,
  Setup1 = 'Device',
  Setup1_Count = 'Special',
  Setup1_Special = 1,
  Setup2 = 'Ongoing',
  Setup2_Count = 'Special',
  Setup2_Special = 1,
  Set = "DE"
  },
  {
  Name = 'Grand Warlord Voss',
  Card = 'a23f69',
  Deck = '1014d3',
  Name1 = 'Grand Warlord Voss',
  Health = 90,
  Setup1 = 'Gene Bound',
  Setup1_Count = 0,
  Set = "DE"
  },
  {
  Name = 'Ambuscade',
  Card = '680be9',
  Deck = 'dd9cd6',
  Name1 = 'Ambuscade',
  Health = 70,
  Setup1 = 'Device',
  Setup1_Count = 2,
  Setup1_Special = 0,
  Setup2 = '',
  Setup2_Count = 'Special',
  Setup2_Special = 0,
  Set = "RCR"
  },
  {
  Name = 'Apex',
  Card = 'ba5dc7',
  Deck = 'e87d0d',
  Name1 = 'Apex',
  Health = 50,
  Setup1 = 'Werewolf',
  Setup1_Count = 2,
  Set = "RCR"
  },
  {
  Name = 'Fey Court',
  Card = '5530c4',
  Deck = '6b57ab',
  Name1 = 'The Dagda',
  Health = 55,
  Name2 = 'The Morrigan',
  Health2 = 65,
  Setup1 = 'Advisor',
  Setup1_Count = 'Special',
  Setup1_Special = 1,
  Setup2 = 'Courtier',
  Setup2_Count = 1,
  Setup_Tokens = 4,
  Set = "RCR"
  },
  {
  Name = 'Gloomweaver',
  Card = 'bd7893',
  Deck = '352947',
  Name1 = 'Gloomweaver',
  Health = 100,
  Setup1 = 'Relic',
  Setup1_Count = 'Special',
  Setup1_Special = 1,
  Setup2 = 'Cultists',
  Setup2_Count = 2,
  Set = "RCR"
  },
  {
  Name = 'Kismet',
  Card = '76da63',
  Deck = 'a0a174',
  Name1 = 'Kismet',
  Health = 77,
  Setup1 = 'Adhin Talisman',
  Setup1_Count = 'Special',
  Setup1_Special = 1,
  Set = "RCR"
  --[[Setup2 = 'Unlucky',
  Setup2_Count = 2]]
  },
  {
  Name = 'The Organization',
  Card = '70f86a',
  Deck = '09ab09',
  Deck2 = '5513f3',
  Name1 = 'The Chairman',
  Health = 40,
  Name2 = 'The Operative',
  Health2 = 45,
  Setup1 = 'Underboss',
  Setup1_Count = 2,
  Setup2 = 'Thug',
  Setup2_Count = 1,
  Set = "RCR"
  },
  {
  Name = 'Plague Rat',
  Card = 'cf0bf0',
  Deck = 'fcb111',
  Name1 = 'Plague Rat',
  Health = 90,
  Setup1 = 'Plague Locus',
  Setup1_Count = 'Special',
  Setup1_Special = 1,
  Set = "RCR"
  },
  {
  Name = 'Spite',
  Card = 'ad6faa',
  Deck = '13dfea',
  Name1 = 'Spite',
  Health = 65,
  Setup1 = 'Bystander',
  Setup1_Count = 2,
  Setup2 = 'Ongoing',
  Setup2_Count = 'Special',
  Setup2_Special = 1,
  Set = "RCR"
  },
  {
  Name = 'TerrorForm',
  Card = '910e01',
  Deck = '5d3e37',
  Name1 = 'TerrorForm',
  Health = 200,
  Setup1 = 'Access',
  Setup1_Count = 'Special',
  Setup1_Special = 1,
  Setup2 = 'Device',
  Setup2_Count = 'Special',
  Setup2_Special = 1,
  Set = "RCR"
  },
  {
  Name = 'Apostate',
  Card = 'ff1c57',
  Deck = '5f69b9',
  Name1 = 'Apostate',
  Health = 66,
  Setup1 = 'Relic',
  Setup1_Count = 'Special',
  Setup1_Special = 2,
  Setup1_Not = 'Relic Spirit',
  Setup2 = 'Ongoing',
  Setup2_Count = '0',
  Set = "Dis"
  },
  {
  Name = 'Dreamer',
  Card = 'fc3ebb',
  Deck = '84a346',
  Name1 = 'Dreamer',
  Health = 6,
  Setup1 = 'Nightmare',
  Setup1_Count = 1,
  Set = "Dis"
  },
  {
  Name = 'Ennead',
  Card = '7aaebd',
  Deck = '0b04ae',
  Deck2 = 'faa698',
  Name1 = 'Ennead',
  Health = -1,
  Setup1 = 'Relic',
  Setup1_Count = 0,
  --Setup1_Special = 0,
  --SetupS = 'Target',
  --SetupS_Count = 1,
  Set = "Dis"
  },
  {
  Name = 'Grimm',
  Card = 'c4d309',
  Deck = '9c8e5f',
  Name1 = 'Grimm',
  Health = 120,
  Setup1 = 'The Story Unfolds',
  Setup1_Count = 'Special',
  Setup1_Special = 1,
  Setup2 = 'Learn the True Name',
  Setup2_Count = 'Special',
  Setup2_Special = 1,
  Set = "Dis"
  },
  {
  Name = 'Iron Legacy',
  Card = '4df801',
  Deck = '58e581',
  Name1 = 'Iron Legacy',
  Health = 32,
  Setup1 = 'Ongoing',
  Setup1_Count = 1,
  Set = "Dis"
  },
  {
  Name = 'La Capitan',
  Card = '099f74',
  Deck = 'a083f1',
  Name1 = 'La Capitan',
  Health = 80,
  Setup1 = 'La Paradoja Magnifica',
  Setup1_Count = 'Special',
  Setup1_Special = 1,
  Setup2 = 'Crew',
  Setup2_Count = 2,
  Set = "Dis"
  },
  {
  Name = 'Miss Information',
  Card = 'd63224',
  Deck = '139d6d',
  Name1 = 'Miss Information',
  Health = 12,
  Health_flip = 50,
  Setup1 = 'Distraction',
  Setup1_Count = 1,
  Set = "Dis"
  },
  {
  Name = 'Necrosis',
  Card = 'f4d0cd',
  Deck = '257771',
  Name1 = 'Necrosis',
  Health = 70,
  Setup1 = 'Ongoing',
  Setup1_Count = 2,
  --Setup1_Special = 1,
  --Setup2 = 'Ongoing',
  --Setup2_Count = 2,
  Set = "Dis"
  },
  {
  Name = 'Ruler of Aeternus',
  Card = '0cd1fd',
  Deck = '75fac9',
  Name1 = 'Ruler of Aeternus',
  Health = -1,
  Setup1 = 'Prince',
  Setup1_Count = 1,
  --Setup1_Special = 1,
  Setup2 = 'Demon',
  Setup2_Count = 2,
  Setup2_Not = 'Prince',
  --Setup3 = 'Burden of the Crown',
  --Setup3_count = 'Special',
  --Setup3_Special = 1,
  Set = "Dis"
  },
  {
  Name = "Random",
  Set = "None"
  },
  {
  Name = 'Training Bot',
  Card = '62e4fc',
  Deck = 'c83b8a',
  Name1 = 'Training Bot',
  Health = 30,
  Setup1_Count = 'Special',
  Setup1_Special = 0,
  Set = "None"
  }
}

Environments = {
  {
  Name = 'Freedom Tower',
  Deck = '8e30ce',
  Set = "DE"
  },
  {
  Name = 'Magmaria',
  Deck = 'df1f07',
  Set = "DE"
  },
  {
  Name = 'Ruins of Atlantis',
  Deck = 'e6c55f',
  Set = "DE"
  },
  {
  Name = 'Insula Primalis',
  Deck = '3530d0',
  Set = "DE"
  },
  {
  Name = 'Megalopolis',
  Deck = '5691e8',
  Set = "DE"
  },
  {
  Name = 'Wagner Mars Base',
  Deck = '170d3b',
  Set = "DE"
  },
  {
  Name = 'Diamond Manor',
  Deck = '33aa8d',
  Set = "RCR"
  },
  {
  Name = 'Pike Industrial Complex',
  Deck = '886c0e',
  Set = "RCR"
  },
  {
  Name = 'Realm of Discord',
  Deck = '284c70',
  Set = "RCR"
  },
  {
  Name = 'Rook City',
  Deck = 'c65fe8',
  Set = "RCR"
  },
  {
  Name = 'Temple of Zhu Long',
  Deck = '88fa17',
  Set = "RCR"
  },
  {
  Name = 'Aeternus',
  Deck = '14c0df',
  Set = "Dis"
  },
  {
  Name = 'The Block',
  Deck = '271bc4',
  Set = "Dis"
  },
  {
  Name = 'The Final Wasteland',
  Deck = '143b5a',
  Set = "Dis"
  },
  {
  Name = 'Silver Gulch 1883',
  Deck = 'd0e48d',
  Set = "Dis"
  },
  {
  Name = 'Tomb of Anubis',
  Deck = '606d78',
  Set = "Dis"
  },
  {
  Name = 'Random',
  Set = "None"
  }
}

Events = {
  {
  Name = 'Apr 1968 - Moonfall',
  Card = '0495a9',
  Villain = 'Baron Blade',
  --Environment = 'Ruins of Atlantis',
  Tooltip = 'Story Event',
  Set_Collection = 0,
  Set = "DE"
  },
  {
  Name = 'Mar 1975 -CE Mad Bomber Blade',
  Card = 'd65c08',
  Villain = 'Baron Blade',
  --Environment = 'Megalopolis',
  Tooltip = 'Critical Event',
  Set_Collection = 1,
  Name1 = 'Bomber Blade',
  Set_Health = 60,
  Setup1 = 'any',
  Setup1_Count = 2,
  Setup1_Position = {38, 1.7, 25.6},
  Setup1_Rotation = {180,0,0},
  Set = "DE"
  },
  {
  Name = 'May 1987 - Wayward Sun',
  Card = '647373',
  Villain = 'Citizen Dawn',
  --Environment = 'Insula Primalis',
  Tooltip = 'Story Event',
  Set_Collection = 1,
  Set = "DE"
  },
  {
  Name = 'Nov 1999 -CE Sunrise',
  Card = '9941a0',
  Villain = 'Citizen Dawn',
  --Environment = 'Megalopolis',
  Tooltip = 'Critical Event',
  Set_Collection = 2,
  Name1 = 'Sunrise Dawn',
  Set_Health = 100,
  Setup1 = 'Channel the Eclipse',
  Setup1_Count = 'Special',
  Setup1_Special = 1,
  Setup2 = 'Citizen',
  Setup2_Count = 2,
  Set = "DE"
  },
  {
  Name = 'Dec 1986 - Invasion of Earth',
  Card = '4f5137',
  Villain = 'Grand Warlord Voss',
  --Environment = '',
  Tooltip = 'Story Event',
  Set_Collection = 2,
  Set = "DE"
  },
  {
  Name = 'Mar 1999 -CE Strike Force Invasion',
  Card = '677b61',
  Villain = 'Grand Warlord Voss',
  --Environment = '',
  Tooltip = 'Critical Event',
  Set_Collection = 3,
  Name1 = 'Censor',
  Set_Health = 30,
  Setup1 = 'Thorathian',
  Setup1_Count = 'Special',
  Setup1_Special = 1,
  Setup2 = 'Device',
  Setup2_Count = 'Special',
  Setup2_Special = 1,
  Set = "DE"
  },
  {
  Name = 'Apr 1976 - Singularity',
  Card = 'dafacb',
  Villain = 'Omnitron',
  --Environment = '',
  Tooltip = 'Story Event',
  Set_Collection = 1,
  Set = "DE"
  },
  {
  Name = 'Apr 1984 -CE Deus Ex Machina',
  Card = '6a3338',
  Villain = 'Omnitron',
  --Environment = '',
  Tooltip = 'Critical Event',
  Set_Collection = 3,
  Name1 = 'Cosmic Omnitron',
  Set_Health = 100,
  Setup1 = 'any',
  Setup1_Count = 'Special',
  Setup1_Special = 1,
  Setup1_Position = {14, 3, 31},
  Setup1_Rotation = {180,90,0},
  Setup2 = 'Ongoing',
  Setup2_Count = 'Special',
  Setup2_Special = 1,
  Set = "DE"
  },
  {
  Name = 'Oct 1998 - Night\'s Plutonian Shore',
  Card = 'c7913c',
  Villain = 'The Matriarch',
  --Environment = '',
  Tooltip = 'Story Event',
  Set_Collection = 2,
  Set = "DE"
  },
  {
  Name = 'Nov 2007 -CE A Murder Most Fowl',
  Card = '0f854d',
  Villain = 'The Matriarch',
  --Environment = '',
  Tooltip = 'Critical Event',
  Set_Collection = 2,
  Name1 = 'Mocktriarch',
  Name1 = 'Mocktriarch',
  Set_Health = 117,
  Setup1 = 'Mask of the Matriarch',
  Setup1_Count = 'Special',
  Setup1_Special = 1,
  Setup2 = 'Carrion Fields',
  Setup2_Count = 'Special',
  Setup2_Special = 2,
  Setup2_Position = {14, 3, 31},
  Setup2_Rotation = {180,90,0},
  Set = "DE"
  },
  {
  Name = 'Jan 1986 - Mother Earth',
  Card = '19f325',
  Villain = 'Akash\'Bhuta',
  --Environment = '',
  Tooltip = 'Story Event',
  Set_Collection = 1,
  Set = "DE"
  },
  {
  Name = 'Sep 1996 -CE Earth, Inc.',
  Card = 'fcc39f',
  Villain = 'Akash\'Bhuta',
  --Environment = '',
  Tooltip = 'Critical Event',
  Set_Collection = 2,
  Name1 = 'Akash\'Mecha',
  Set_Health = 165,
  Setup1 = 'Harsh Renewal',
  Setup1_Count = 'Special',
  Setup1_Special = 2,
  Setup1_Position = {14, 3, 31},
  Setup1_Rotation = {180,90,0},
  Set = "DE"
  },
-- RCR Events
 {
  Name = 'Apr 1988 - To Hunt a Hero',
  Card = 'c28881',
  Villain = 'Ambuscade',
  --Environment = '',
  Tooltip = 'Story Event',
  Set_Collection = 1,
  Set = "RCR"
  },
  {
  Name = 'Mar 2000 -CE La Gloire',
  Card = 'fb75cb',
  Villain = 'Ambuscade',
  --Environment = '',
  Tooltip = 'Critical Event',
  Set_Collection = 2,
  Name1 = 'Vainglorious Ambuscade',
  Set_Health = 60,
  Setup1 = 'Amush',
  Setup1_Count = 'Special',
  Setup1_Special = 0,
  Setup1_Position = {14, 3, 31},
  Setup1_Rotation = {180,90,0},
  Set = "RCR"
  },
  {
  Name = 'Apr 2010 - Throne to the Wolves',
  Card = '098aa9',
  Villain = 'Apex',
  --Environment = '',
  Tooltip = 'Story Event',
  Set_Collection = 2,
  Set = "RCR"
  },
  {
  Name = 'Apr 2011 -CE The Strength of the Wolf',
  Card = 'eff817',
  Villain = 'Apex',
  --Environment = '',
  Tooltip = 'Critical Event',
  Set_Collection = 2,
  Name1 = 'Blood Magic Apex',
  Set_Health = 60,
  Setup1 = 'Vampire',
  Setup1_Count = 'Special',
  Setup1_Special = 1,
  Set = "RCR"
  },
  {
  Name = 'Jul 2002 - The Curse of the Fey Court',
  Card = 'db665b',
  Villain = 'Fey Court',
  --Environment = '',
  Tooltip = 'Story Event',
  Set_Collection = 1,
  Set = "RCR"
  },
  {
  Name = 'DEC 2011 -CE A Winter\'s Engagement',
  Card = '3819e1',
  Villain = 'Fey Court',
  --Environment = '',
  Tooltip = 'Critical Event',
  Set_Collection = 2,
  Name1 = 'War-Girded Dagda and Morrigan',
  Set_Health = 120,
  Setup1 = 'Target',
  Setup1_Count = 1,
  Set = "RCR"
  },
  {
  Name = 'Oct 1973 - Fabric of Despair',
  Card = '32a159',
  Villain = 'Gloomweaver',
  --Environment = '',
  Tooltip = 'Story Event',
  Set_Collection = 1,
  Set = "RCR"
  },
  {
  Name = 'Sep 1993 -CE Diamonds are Forever',
  Card = '771616',
  Villain = 'Gloomweaver',
  --Environment = '',
  Tooltip = 'Critical Event',
  Set_Collection = 3,
  Name1 = 'Soultaker Gloomweaver',
  Set_Health = 0,
  Setup1 = 'Relic',
  Setup1_Count = 'Special',
  Setup1_Special = 5,
  Setup1_Position = {14, 3, 31},
  Setup1_Rotation = {180,90,0},
  Setup2 = 'Chosen',
  Setup2_Count = 2,
  Set = "RCR"
  },
  {
  Name = 'Nov 1997 - Run of Luck',
  Card = '2666cf',
  Villain = 'Kismet',
  --Environment = '',
  Tooltip = 'Story Event',
  Set_Collection = 1,
  Set = "RCR"
  },
  {
  Name = 'Apr 2007 -CE Waves of Fortune',
  Card = 'c0f4de',
  Villain = 'Kismet',
  --Environment = '',
  Tooltip = 'Critical Event',
  Set_Collection = 3,
  Name1 = 'Empowered Kismet',
  Set_Health = 99,
  Setup1 = 'Relic',
  Setup1_Count = 'Special',
  Setup1_Special = 1,
  Setup1_Position = {14, 3, 31},
  Setup1_Rotation = {180,90,0},
  SetupE = 'any',
  SetupE_Count = 'Special',
  SetupE_Special = 1,
  Set = "RCR"
  },
  {
  Name = 'Jan 1990 - Built in a Day',
  Card = 'fe5d97',
  Villain = 'The Organization',
  --Environment = '',
  Tooltip = 'Story Event',
  Set_Collection = 1,
  Set = "RCR"
  },
  {
  Name = 'Nov 1973 -CE The Making of the Organization',
  Card = '751310',
  Villain = 'The Organization',
  --Environment = '',
  Tooltip = 'Critical Event',
  Set_Collection = 2,
  Name1 = 'The Bear',
  Set_Health = 60,
  Setup1 = 'Thug',
  Setup1_Count = 0,
  Set = "RCR"
  },
  {
  Name = 'Aug 1988 - Dominion of the Plague Rat',
  Card = 'eaeb5b',
  Villain = 'Plague Rat',
  --Environment = '',
  Tooltip = 'Story Event',
  Set_Collection = 2,
  Set = "RCR"
  },
  {
  Name = 'Jun 2001 -CE The Plagued Horde',
  Card = 'e41373',
  Villain = 'Plague Rat',
  --Environment = '',
  Tooltip = 'Critical Event',
  Set_Collection = 2,
  Name1 = 'Doctor Toxica',
  Set_Health = 80,
  Setup1 = 'Infection',
  Setup1_Count = 'Special',
  Setup1_Special = 0,
  Set = "RCR"
  --[[Setup2 = 'Infection',
  Setup2_Count = 0,
  Setup2_Position = {14, 3, 31},
  Setup2_Rotation = {180,90,0}]]
  },
  {
  Name = 'Aug 1983 - Prelude of the Soulless',
  Card = '85fd49',
  Villain = 'Spite',
  --Environment = '',
  Tooltip = 'Story Event',
  Set_Collection = 1,
  Set = "RCR"
  },
  {
  Name = 'Jun 1994 -CE Abomination of Desolation',
  Card = '2058e0',
  Villain = 'Spite',
  --Environment = '',
  Tooltip = 'Critical Event',
  Set_Collection = 3,
  Name1 = 'Abomination Spite',
  Set_Health = 100,
  Setup1 = 'Ongoing',
  Setup1_Count = 2,
  Set = "RCR"
  },
  {
  Name = 'Apr 2002 - The Terrorform Mark II',
  Card = 'e65aa4',
  Villain = 'TerrorForm',
  --Environment = '',
  Tooltip = 'Story Event',
  Set_Collection = 2,
  Set = "RCR"
  },
  {
  Name = 'Nov 2008 -CE Terror\'s True Form',
  Card = 'ee7fef',
  Villain = 'TerrorForm',
  --Environment = '',
  Tooltip = 'Critical Event',
  Set_Collection = 3,
  Name1 = 'The Terrorform MK III',
  Set_Health = 150,
  Setup1 = 'target',
  Setup1_Count = 1,
  Set = "RCR"
  --[[Setup2 = 'Access',
  Setup2_Count = -5,
  Setup2_Position = {14, 3, 31},
  Setup2_Rotation = {180,90,0}]]
  },
  {
  Name = 'The Deceiver',
  Card = '4ac5ea',
  Villain = 'Apostate',
  --Environment = '',
  Tooltip = 'Story Event',
  Set_Collection = 2,
  Set = "DIS"
  },
  {
  Name = 'Master of Blood',
  Card = '8b7d1f',
  Villain = 'Apostate',
  --Environment = '',
  Tooltip = 'Critical Event',
  Set_Collection = 3,
  Name1 = 'Extremeverse Apostate',
  Set_Health = 99,
  Setup1 = 'Ongoing',
  Setup1_Count = 'Special',
  Setup1_Special = 6,
  Setup1_Position = {14, 3, 31},
  Setup1_Rotation = {180,90,0},
  Setup2 = 'any',
  Setup2_Not = 'One Shot',
  Setup2_Count = 2,
  Set = "DIS"
  },
  {
  Name = 'Nightmare World',
  Card = 'd52507',
  Villain = 'Dreamer',
  --Environment = '',
  Tooltip = 'Story Event',
  Set_Collection = 1,
  Set = "DIS"
  },
  {
  Name = 'Terror Externalized',
  Card = 'dfdbd3',
  Villain = 'Dreamer',
  --Environment = '',
  Tooltip = 'Critical Event',
  Set_Collection = 1,
  Name1 = 'Mister Jitters',
  Set_Health = 70,
  Setup1 = 'Tend to the Child',
  Setup1_Count = 'Special',
  Setup1_Special = 2,
  Setup1_Position = {14, 3, 31},
  Setup1_Rotation = {180,90,0},
  Set = "DIS"
  },
  {
  Name = 'Teller of Tales',
  Card = '3c012d',
  Villain = 'Grimm',
  --Environment = '',
  Tooltip = 'Story Event',
  Set_Collection = 1,
  Set = "DIS"
  },
  {
  Name = 'Harvest Lord Grimm',
  Card = '2e4805',
  Villain = 'Grimm',
  --Environment = '',
  Tooltip = 'Critical Event',
  Set_Collection = 2,
  Set = "DIS",
  Name1 = 'Grimm',
  Set_Health = 90,
  Setup1 = 'The Story Unfolds',
  Setup1_Count = 'Special',
  Setup1_Count = 1,
  Setup1_Position = {14, 3, 31},
  Setup1_Rotation = {180,90,0},
  Setup2 = 'Learn the True Name',
  Setup2_Count = 'Special',
  Setup2_Count = 1,
  Setup3 = 'Plot Armor',
  Setup3_Count = 'Special',
  Setup3_Count = 1
  },
  {
  Name = 'The Final Legacy',
  Card = 'f9956d',
  Villain = 'Iron Legacy',
  --Environment = '',
  Tooltip = 'Story Event',
  Set_Collection = 1,
  Set = "DIS"
  },
  {
  Name = 'Mayhem and Chaos for All',
  Card = '807670',
  Villain = 'Iron Legacy',
  --Environment = '',
  Tooltip = 'Critical Event',
  Set_Collection = 3,
  Name1 = 'Legacy of Destruction',
  Set_Health = 100,
  Setup1 = 'The New Order',
  Setup1_Count = 'Special',
  Setup1_Special = 2,
  Setup1_Position = {14, 3, 31},
  Setup1_Rotation = {180,90,0},
  Setup2 = 'Ongoing',
  Setup2_Count = 'Special',
  Setup2_Special = 1,
  Set = "DIS",
  SetupE = 'any',
  SetupE_Not = 'One Shot',
  SetupE_Count = 1,
  },
  {
  Name = 'Tides of Time',
  Card = '246202',
  Villain = 'La Capitan',
  --Environment = '',
  Tooltip = 'Story Event',
  Set_Collection = 1,
  Set = "DIS"
  },
  {
  Name = 'Fractured by the Sliver of Creation',
  Card = '201bd0',
  Villain = 'La Capitan',
  --Environment = '',
  Tooltip = 'Critical Event',
  Set_Collection = 2,
  Name1 = 'La Capitan',
  Set_Health = 30,
  Setup1 = 'A Fine Vessel',
  Setup1_Count = 'Special',
  Setup1_Special = 2,
  Setup1_Position = {14, 3, 31},
  Setup1_Rotation = {180,90,0},
  Setup2 = 'La Paradoja Magnifica',
  Setup2_Count = 'Special',
  Setup2_Special = 1,
  Set = "DIS",
  },
  {
  Name = 'Administrative Assassin',
  Card = 'c6b78e',
  Villain = 'Miss Information',
  --Environment = '',
  Tooltip = 'Story Event',
  Set_Collection = 1,
  Set = "DIS"
  },
  {
  Name = 'Kidnapped by Evil Doers',
  Card = '0b0c28',
  Card_Position = {-25,1,14.1},
  Villain = '',
  --Environment = '',
  Tooltip = 'Story Event',
  Set_Collection = 1,
  Name1 = 'Aminia Twain',
  Set_Health = 8,
  DeckCE = '139d6d',
  Setup1 = '',
  Setup1_Count = 'Special',
  Setup1_Special = 0,
  Set = "DIS",
  },
  {
  Name = 'Atrophy Case',
  Card = '6da381',
  Villain = 'Necrosis',
  --Environment = '',
  Tooltip = 'Story Event',
  Set_Collection = 1,
  Set = "DIS"
  },
  {
  Name = 'Life Contaminated',
  Card = 'd15143',
  Villain = 'Necrosis',
  --Environment = '',
  Tooltip = 'Critical Event',
  Set_Collection = 2,
  Name1 = 'Smog-Husk Necrosis',
  Set_Health = 90,
  Setup1 = '',
  Setup1_Count = 'Special',
  Setup1_Special = 0,
  -- Setup1 = 'Atrophic Radiance',
  -- Setup1_Count = 'Special',
  -- Setup1_Special = 1,
  -- Setup1_Position = {14, 3, 31},
  -- Setup1_Rotation = {180,90,0},
  -- Setup2 = "Ongoing",
  -- Setup2_Count = 'Special',
  -- Setup2_Special = 1,
  Set = "DIS",
  },
  {
  Name = 'Dread Will, Manifested',
  Card = '9960c8',
  Villain = 'Ruler of Aeternus',
  --Environment = '',
  Tooltip = 'Story Event',
  Set_Collection = 1,
  Set = "DIS"
  },
  {
  Name = 'Torment Personified',
  Card = '4da327',
  Villain = 'Ruler of Aeternus',
  --Environment = '',
  Tooltip = 'Critical Event',
  Set_Collection = 3,
  Name1 = 'Aeternus Made Flesh',
  Set_Health = 100,
  Setup1 = 'Prince',
  Setup1_Count = 0,
  Setup2 = 'Violent Uprising',
  Setup2_Count = 'Special',
  Setup2_Special = 1,
  Setup2_Position = {14, 3, 31},
  Setup2_Rotation = {180,90,0},
  Setup3 = 'Regime Change',
  Setup3_Count = 'Special',
  Setup3_Special = 2,
  Setup3_Position = {14, 3, 31},
  Setup3_Rotation = {180,90,0},
  Set = "DIS",
  },
  {
  Name = 'War of Heliopolis',
  Card = 'ae005e',
  Villain = 'Ennead',
  --Environment = '',
  Tooltip = 'Story Event',
  Set_Collection = 1,
  Set = "DIS"
  },
  {
  Name = 'The Might of the Nile',
  Card = '489160',
  Villain = 'Ennead',
  --Environment = '',
  Tooltip = 'Critical Event',
  Set_Collection = 3,
  Name1 = 'Sobek',
  Set_Health = 90,
  Setup1 = 'Relic',
  Setup1_Count = 'Special',
  Setup1_Special = 9,
  Setup1_Position = {14, 3, 31},
  Setup1_Rotation = {180,0,0},
  SetupS1 = 'Sun',
  SetupS1_Count = 'Special',
  SetupS1_Special = 1,
  SetupS2 = 'Hand',
  SetupS2_Count = 'Special',
  SetupS2_Special = 1,
  SetupS3 = 'Anhk',
  SetupS3_Count = 'Special',
  SetupS3_Special = 1,
  Set = "DIS",
  },
  {
  Name = 'Random',
  Villain = 'Random',
  Set = "None"
  },
  {
  Name = 'Training Bot',
  Card = '8b8553',
  Villain = 'Training Bot',
  Environment = 'None',
  Tooltip = 'Story Event',
  Set_Collection = 0,
  Set = "None"
  },
}

Collections = {
{
Name = 'Moonfall',
Card = '0495a9',
Set = "DE"
},
{
Name = 'Wayward Sun',
Card = '647373',
Set = "DE"
},
{
Name = 'Invasion of Earth',
Card = '4f5137',
Set = "DE"
},
{
Name = 'Singularity',
Card = 'dafacb',
Set = "DE"
},
{
Name = 'Night\'s Plutonian Shore',
Card = 'c7913c',
Set = "DE"
},
{
Name = 'Mother Earth',
Card = '19f325',
Set = "DE"
},
{
Name = 'To Hunt a Hero',
Card = 'c28881',
Set = "RCR"
},
{
Name = 'Throne to the Wolves',
Card = '098aa9',
Set = "RCR"
},
{
Name = 'Curse of the Fey Court',
Card = 'db665b',
Set = "RCR"
},
{
Name = 'Fabric of Despair',
Card = '32a159',
Set = "RCR"
},
{
Name = 'Run of Luck',
Card = '2666cf',
Set = "RCR"
},
{
Name = 'Built in a Day',
Card = 'fe5d97',
Set = "RCR"
},
{
Name = 'Dominion of the Plague Rat',
Card = 'eaeb5b',
Set = "RCR"
},
{
Name = 'Prelude of the Soulless',
Card = '85fd49',
Set = "RCR"
},
{
Name = 'The Terrorform Mark II',
Card = 'e65aa4',
Set = "RCR"
},
{
Name = 'The Deceiver',
Card = '4ac5ea',
Set = "DIS"
},
{
Name = 'Nightmare World',
Card = 'd52507',
Set = "DIS"
},
{
Name = 'Teller of Tales',
Card = '3c012d',
Set = "DIS"
},
{
Name = 'The Final Legacy',
Card = 'f9956d',
Set = "DIS"
},
{
Name = 'Tides of Time',
Card = '246202',
Set = "DIS"
},
{
Name = 'Administrative Assassin',
Card = 'c6b78e',
Set = "DIS"
},
{
Name = 'Atrophy Case',
Card = '6da381',
Set = "DIS"
},
{
Name = 'Dread Will, Manifested',
Card = '9960c8',
Set = "DIS"
},
{
Name = 'War of Heliopolis',
Card = 'ae005e',
Set = "DIS"
},
{
Name = 'I\'m not taking anymore',
Set = "None"
}
}

---independent Variables
--Bag GUIDs
Hero_Bag = 'feb56f'
Environment_Bag = '591be9'
Villain_Bag = '7a077d'
Event_Bag = '80f7e2'

--Game Start Counts
Hero_Count = 0
Variant_Count = 0
Environment_Count = 0
Villain_Count = 0
Event_Count = 0
Collection_Count = 0
Game_Start = false

--Index Id for Villain and Event
Villain_Index = nil
Environment_Index = nil
Event_Index = 1

--event collections area
Collection_Zone = '96e5f0'
Collection_Modifier = 0
--environment and villain zones
Environment_Zone = {56.05,1,27.5}
Villain_Zone = {-1,1,27.5}

--Variants per player
Player_Variants = {}
--Turn Order
Player_turn = 6
Round_tracker = 0
--Keyword to Discover card
Card_Discover = nil
--Health Tracker Tablet
Health_Tracker = {}
--checks to see how the players want to track Health
Toggle_mouse_clicks = false

Player_Zone = {
['Red'] = {-75,1,-23.75},
['Yellow'] = {-37,1,-23.75},
['Green'] = {2.85,1,-23.75},
['Blue'] = {37,1,-23.75},
['Purple'] = {73.15,1,-23.75}
}

Villain_Tracker_guid = nil
Player_Health = {
['Red'] = '42cce3',
['Yellow'] = 'ace966',
['Green'] = '66f3fd',
['Blue'] = 'c0b90e',
['Purple'] = '0f1c64'
}

--Tokens are infinite bags and take token to pointer Position
Tokens = {
[1] = '25daee', -- 1 damage
[2] = '3933ef', -- 5 damage
[3] = '692d74', -- 10 damage
[4] = 'adb86a', -- -1 damage dealt to this target
[5] = 'ec8068', -- -1 damage dealt by this target
[6] = 'ca8c2f', -- immune to damage
[7] = 'c67756', -- +1 damage dealt to this target
[8] = '0f78d3', -- +1 damage dealt by this target
[9] = 'adcef1'  -- cannot deal damage
}

Players_Active = {
[1] = {
  Color = 'Red',
  Active = false,
  Name = nil,
  Deck = nil
  },
[2] = {
  Color = 'Yellow',
  Active = false,
  Name = nil,
  Deck = nil
  },
[3] = {
  Color = 'Green',
  Active = false,
  Name = nil,
  Deck = nil
  },
[4] = {
  Color = 'Blue',
  Active = false,
  Name = nil,
  Deck = nil
  },
[5] = {
  Color = 'Purple',
  Active = false,
  Name = nil,
  Deck = nil
},
[6] = {
  Color = nil,
  Active = true,
  Name = 'the environment'
},
[7] = {
  Color = nil,
  Active = true,
  Name = 'Villain'
  }
}

GameExpansions = {
['DE_V_toggle'] = 'True',
['DE_E_toggle'] = 'True',
['DE_C_toggle'] = 'True',
['RCR_V_toggle'] = 'True',
['RCR_E_toggle'] = 'True',
['RCR_C_toggle'] = 'True',
['Dis_V_toggle'] = 'True',
['Dis_E_toggle'] = 'True',
['Dis_C_toggle'] = 'False',
['Exp4_V_toggle'] = 'False',
['Exp4_E_toggle'] = 'False',
['Exp4_C_toggle'] = 'False',
['Exp5_V_toggle'] = 'False',
['Exp5_E_toggle'] = 'False',
['Exp5_C_toggle'] = 'False',
['Exp6_V_toggle'] = 'False',
['Exp6_E_toggle'] = 'False',
['Exp6_C_toggle'] = 'False',
['DE_Red_H_toggle'] = 'True',
['RCR_Red_H_toggle'] = 'True',
['Dis_Red_H_toggle'] = 'True',
['Exp4_Red_H_toggle'] = 'False',
['Exp5_Red_H_toggle'] = 'False',
['Exp6_Red_H_toggle'] = 'False',
['DE_Yellow_H_toggle'] = 'True',
['RCR_Yellow_H_toggle'] = 'True',
['Dis_Yellow_H_toggle'] = 'True',
['Exp4_Yellow_H_toggle'] = 'False',
['Exp5_Yellow_H_toggle'] = 'False',
['Exp6_Yellow_H_toggle'] = 'False',
['DE_Green_H_toggle'] = 'True',
['RCR_Green_H_toggle'] = 'True',
['Dis_Green_H_toggle'] = 'True',
['Exp4_Green_H_toggle'] = 'False',
['Exp5_Green_H_toggle'] = 'False',
['Exp6_Green_H_toggle'] = 'False',
['DE_Blue_H_toggle'] = 'True',
['RCR_Blue_H_toggle'] = 'True',
['Dis_Blue_H_toggle'] = 'True',
['Exp4_Blue_H_toggle'] = 'False',
['Exp5_Blue_H_toggle'] = 'False',
['Exp6_Blue_H_toggle'] = 'False',
['DE_Purple_H_toggle'] = 'True',
['RCR_Purple_H_toggle'] = 'True',
['Dis_Purple_H_toggle'] = 'True',
['Exp4_Purple_H_toggle'] = 'False',
['Exp5_Purple_H_toggle'] = 'False',
['Exp6_Purple_H_toggle'] = 'False'
}

Display_H = true
Display_V = true
Display_E = true
Start_Time = Time.time

--------------------------------------------------------------------------------
--------------------------------On Save/Load Function--------------------------------
--------------------------------------------------------------------------------
function onSave()
  Health_Tracker_Sort()
  save_state = {
    ['Health_Tracker'] = Health_Tracker,
    ['Players_Active'] = Players_Active,
    ['Player_turn'] = Player_turn,
    ['Round_tracker'] = Round_tracker
  }
  --print(save_state)
  return JSON.encode(save_state)
end

function onLoad(saved_state)
decoded_state = JSON.decode(saved_state)

if decoded_state.Players_Active != null then
  Players_Active = decoded_state.Players_Active
  Player_turn = decoded_state.Player_turn
  Round_tracker = decoded_state.Round_tracker
  Game_Start = true
end

if decoded_state.Health_Tracker != null then
  Health_Tracker = decoded_state.Health_Tracker

  Health_Tracker_Sort()
  for target in ipairs(Health_Tracker) do

    object = getObjectFromGUID(Health_Tracker[target].guid)
    --print(Health_Tracker[target].Description)
    if string.find(string.upper(Health_Tracker[target].Description), string.upper('target')) then
        object.createButton({
          label=Health_Tracker[target].Health,
          click_function="add_subtract",
          tooltip='Default is: \n Left Click to Decrease.\nRight Click to Increase.',
          function_owner=self,
          position={0,0.15,3},
          height=600,
          width=600,
          alignment = 3,
          scale={x=1.5, y=1.5, z=1.5},
          font_size=600,
          font_color={1,1,1,95},
          color={0,0,0,1}
        })


      elseif string.find(string.upper(Health_Tracker[target].Description), string.upper('hero CC')) then
        object.createButton({
            label=Health_Tracker[target].Health,
            click_function="add_subtract",
            tooltip='Default is: \n Left Click to Decrease.\nRight Click to Increase.',
            function_owner=self,
            position={0,0.15,-2.8},
            height=600,
            width=600,
            alignment = 3,
            scale={x=1.5, y=1.5, z=1.5},
            font_size=600,
            font_color={1,1,1,95},
            color={0,0,0.50,1}
          })

        elseif string.find(string.upper(Health_Tracker[target].Description), string.upper('Villain')) then
            object.createButton({
              label=Health_Tracker[target].Health,
              click_function="add_subtract",
              tooltip='Default is: \n Left Click to Decrease.\nRight Click to Increase.',
              function_owner=self,
              position={0,0.35,0},
              height=1000,
              width=1000,
              alignment = 3,
              scale={x=1.5, y=1.5, z=1.5},
              font_size=1000,
              --font_color={1,1,1,95},
              color={1,1,1,1}
            })
      end
  end
end

for _,player in ipairs(Player.getPlayers()) do
  Player[player.color].lookAt({
    position = getObjectFromGUID('cabd39').getPosition(),
    pitch = 55,
    distance = 40
  })
end

broadcastToAll('The Keyword search can be used for the Discover, Collect, Salvage, and Summon.' ..
                '\n You can use any keyword on a card, certain card names, or the target keyword.', Table)

addHotkey('Discover Card', function(player_color, deck) Discover_Card(player_color, deck) end, false)
addHotkey('Collect/Salvage/Summon Card', function(player_color, deck) Search_Cards(player_color, deck) end, false)
--addHotkey('Postion', function(player, deck) locate_pointer(player, deck) end, false)
addHotkey('Next Turn', function(player_color) Color_Change(player_color) end, false)

Hero_reverse_table()

button_params = {
  'f9d904',
  'Reverse HP clicks',
  'Reverses the left and right click functions \n for the HP trackers',
  'Toggle_clicks',
  5700,
  1000,
  1500
}
Create_Button(button_params)

button_params = {
  '5df5d1',
  'Start Game',
  'Click me to start the game.',
  'Normal_Game',
  5000,
  1000,
  1500
}
start_button = getObjectFromGUID('5df5d1')
if start_button != null then
  Create_Button(button_params)
end
end

--------------------------------------------------------------------------------
---------------------------------Start Game-------------------------------------
--------------------------------------------------------------------------------

function Normal_Game(button, player_color)

if Hero_Count != Variant_Count then
  broadcastToAll('One or more players needs to pick a hero variant')
  return
end

if Collection_Count > 0 then
  broadcastToAll('Choose collections or click you don\'t need any')
  return
end

broadcastToAll('For this game H = ' .. Hero_Count)

--Determines if it's an event that changes Setup
if Event_Count < 2 then
  Setup_Table = Villains[Villain_Index]
  Event_Card = Events[Event_Index].Card
else
  Setup_Table = Events[Event_Index]
  Event_Card = Setup_Table.Card
end
---------------------------------------------------

Villain_Card = getObjectFromGUID(Villains[Villain_Index].Card)
Villain_Deck = getObjectFromGUID(Villains[Villain_Index].Deck)
if Villains[Villain_Index].Deck2 != nil then
    Villain_Side_Deck = getObjectFromGUID(Villains[Villain_Index].Deck2)
end


if Setup_Table.Name != 'Training Bot' then
  Environment_Deck = getObjectFromGUID(Environments[Environment_Index].Deck)
end

Send_to = Villain_Zone
Position_adjust = -9.5

--Pulls the first conditional Setup cards
--Param 1 Setup
if Setup_Table.Setup1_Count == 'Special' then
  Setup1_count = Setup_Table.Setup1_Special
else
  Setup1_count = Hero_Count - Setup_Table.Setup1_Count
end

Setup1_remove = Setup_Table.Setup1_Not
Setup1_deck = Setup_Table.Setup1
for i = #Villain_Deck.getObjects(),1,-1 do
  if Setup1_count == 0 then
    break
  else
    if (string.find(string.upper(Villain_Deck.getObjects()[i].description), string.upper(Setup1_deck))
          or string.find(string.upper(Villain_Deck.getObjects()[i].name), string.upper(Setup1_deck))
          or Setup1_deck == 'any')
          and Setup1_count > 0 then

        --When looking for any remove will limit the results
        if Setup_Table.Setup1_Not != nil then
          if (string.find(string.upper(Villain_Deck.getObjects()[i].description), string.upper(Setup1_remove))
          or string.find(string.upper(Villain_Deck.getObjects()[i].name), string.upper(Setup1_remove)))
          then goto continue
          end
        end
        --looks for unique Setup requirements
        if Setup_Table.Setup1_Position == nil then
          Setup_Position = Vec_sum(Send_to, {Position_adjust, 0, -11.4})
          Position_adjust = Position_adjust + 5.7
        else
          Setup_Position = Setup_Table.Setup1_Position
        end
          Take_Params = {
            position  = Setup_Position,
            rotation  = Setup1_rotation,
            index     = i-1,
            flip      = true,
            smooth    = false
          }
        Villain_Deck.takeObject(Take_Params)
        Setup1_count = Setup1_count - 1

        ::continue::
      end
    end
  end

--Setup_Search(Villain_Deck, Setup1_deck, Setup1_count, Setup1_remove, Setup1_Position, Setup1_rotation)
  --Pulls the second Setup cards
Setup_Search(Villain_Deck, Setup_Table.Setup2, Setup2_count, Setup_Table.Setup2_Not, Setup_Table.Setup2_Position, Setup_Table.Setup2_rotation, Setup_Table.Setup2_Special)
--Pulls the third Setup cards
Setup_Search(Villain_Deck, Setup_Table.Setup3, Setup3_count, Setup_Table.Setup3_Not, Setup_Table.Setup3_Position, Setup_Table.Setup3_rotation, Setup_Table.Setup3_Special)
--Pulls the fourth Setup cards
Setup_Search(Villain_Deck, Setup_Table.Setup4, Setup4_count, Setup_Table.Setup4_Not, Setup_Table.Setup4_Position, Setup_Table.Setup4_rotation, Setup_Table.Setup4_Special)
--Pulls the Side Deck Setup cards
--May need to prep these variables, unsure
if Villain_Side_Deck ~= nil then
  Setup_Search(Villain_Side_Deck, Setup_Table.SetupS1, SetupS1_count, Setup_Table.SetupS1_Not, Setup_Table.SetupS1_Position, Setup_Table.SetupS1_rotation, Setup_Table.SetupS1_Special)
  Setup_Search(Villain_Side_Deck, Setup_Table.SetupS2, SetupS2_count, Setup_Table.SetupS2_Not, Setup_Table.SetupS2_Position, Setup_Table.SetupS2_rotation, Setup_Table.SetupS2_Special)
  Setup_Search(Villain_Side_Deck, Setup_Table.SetupS3, SetupS3_count, Setup_Table.SetupS3_Not, Setup_Table.SetupS3_Position, Setup_Table.SetupS3_rotation, Setup_Table.SetupS3_Special)
end
    --Pulls the Reverse Hero Counting Setup cards
    --Reverse Hero Counting Setup (i.e. #-H)
if Setup_Table.SetupH_Count == nil then
  SetupH_count = 0
  SetupH_deck = 0
elseif Setup_Table.SetupH_Count == 'Special' then
  SetupH_count = Setup_Table.SetupH_Special
else
  SetupH_count = Setup_Table.SetupH_Count - Hero_Count
end

if Setup_Table.SetupH_Rotation == nil then
  SetupH_rotation = {0,180,0}
else
  SetupH_rotation = Setup_Table.SetupH_Rotation
end

SetupH_remove = Setup_Table.SetupH_Not
SetupH_deck = Setup_Table.SetupH
for i = #Villain_Deck.getObjects(),1,-1 do
  if SetupH_count == 0 then
    break
  else
    if (string.find(string.upper(Villain_Deck.getObjects()[i].description), string.upper(SetupH_deck))
            or string.find(string.upper(Villain_Deck.getObjects()[i].name), string.upper(SetupH_deck)))
            and SetupH_count > 0 then

        if SetupH_remove != nil then
          if (string.find(string.upper(Villain_Deck.getObjects()[i].description), string.upper(SetupH_remove))
          or string.find(string.upper(Villain_Deck.getObjects()[i].name), string.upper(SetupH_remove)))
          then goto continue
          end
        end
        --looks for unique Setup requirements
        if Setup_Table.SetupH_Position == nil then
          Setup_Position = Vec_sum(Send_to, {Position_adjust,0,-11.4})
          Position_adjust = Position_adjust + 5.7
        else
          Setup_Position = Setup_Table.SetupH_Position
        end
        Take_Params = {
          position  = Setup_Position,
          rotation  = SetupH_rotation,
          index     = i-1,
          flip      = true,
          smooth    = false
        }
        Villain_Deck.takeObject(Take_Params)
        SetupH_count = SetupH_count - 1

        ::continue::
      end
    end
  end

      if Setup_Table.Setup_Tokens != nil then
        Position_adjust = Position_adjust + 1
        for token = 1,Setup_Table.Setup_Tokens,1 do
            getObjectFromGUID(Tokens[1]).takeObject({
              position = Vec_sum(Send_to, {Position_adjust, 0,-11.4}),
              rotation = {180,0,0}
            })
        end
      end

  if Events[Event_Index].Card_Position ~= nil then
    Target_Card = getObjectFromGUID(Event_Card)
    Target_Card.setPosition(Events[Event_Index].Card_Position)
  end
  --Declares Health of the Villain
  if Event_Count == 2 then

    Villain_Card.destruct()
    Villain_Card = getObjectFromGUID(Event_Card)
    Villain_Card.setPosition(Send_to)
    --Rotates card if it's a playtest version
    if Events[Event_Index].Set == 'DIS' then
      Villain_Card.setRotation({0,180,0})
    else
      Villain_Card.setRotation({180,270,0})
    end
    Villain_Card.setState(2)
    Villain_Health = Setup_Table.Set_Health
  else
    Villain_Health = Setup_Table.Health
    Villain2_Health = Setup_Table.Health2
  end

  --spawns 1st villain HP Tracker
  Villain_Tracker_guid = spawnObject({
    type              = "Checker_black",
    position          = Vec_sum(Send_to, {0,0.1,10}),
    rotation          = {0,180,0},
    sound             = false,
    snap_to_grid      = false,
    scale={x=2, y=2, z=2},
    callback_function = function(object) Create_Button({
      object.getGUID(),
      Villain_Health,
      'Left Click to Decrease.\nRight Click to Increase.',
      'add_subtract',
      1000,
      1000,
      1000}) end
  }).getGUID()

  Health_Tracker_Add(
    Setup_Table.Name1,
    Villain_Health,
    Villain_Tracker_guid,
    'V',
    'Villain'
    )

    --spawns 2nd villain HP Tracker
  if Villain2_Health ~= nil then

  local Villain2_Tracker_guid = nil
    Villain2_Tracker_guid = spawnObject({
      type              = "Checker_black",
      position          = Vec_sum(Send_to, {20,0.1,10}),
      rotation          = {0,180,0},
      sound             = false,
      snap_to_grid      = false,
      scale={x=2, y=2, z=2},
      callback_function = function(object) Create_Button({
        object.getGUID(),
        Villain2_Health,
        'Left Click to Decrease.\nRight Click to Increase.',
        'add_subtract',
        1000,
        1000,
        1000}) end
    }).getGUID()

    Health_Tracker_Add(
      Setup_Table.Name2,
      Villain2_Health,
      Villain2_Tracker_guid,
      'V',
      'Villain'
      )
  end

  --Environment Setup
  Send_to = Environment_Zone
  Position_adjust = 0

  if Setup_Table.Name != 'Training Bot' then

    --Environment Deck Setup
    if Setup_Table.SetupE_Count == nil then
      SetupE_count = 0
      SetupE_deck = 0
    elseif Setup_Table.SetupE_Count == 'Special' then
      SetupE_count = Setup_Table.SetupE_Special
    else
      SetupE_count = Hero_Count - Setup_Table.SetupE_Count
    end

    if Setup_Table.SetupE_Rotation == nil then
      SetupE_rotation = {0,180,0}
    else
      SetupE_rotation = Setup_Table.SetupE_Rotation
    end

    SetupE_remove = Setup_Table.SetupE_Not
    SetupE_deck = Setup_Table.SetupE
    for i = #Environment_Deck.getObjects(),1,-1 do
      if SetupE_count == 0 then
        break
      else
        if (string.find(string.upper(Environment_Deck.getObjects()[i].description), string.upper(SetupE_deck))
                or string.find(string.upper(Environment_Deck.getObjects()[i].name), string.upper(SetupE_deck)))
                or SetupE_deck == 'any'
                and SetupE_count > 0 then

            if Setup_Table.SetupE_Not != nil then
              if (string.find(string.upper(Environment_Deck.getObjects()[i].description), string.upper(SetupE_remove))
              or string.find(string.upper(Environment_Deck.getObjects()[i].name), string.upper(SetupE_remove)))
              then goto continue
              end
            end
            --looks for unique Setup requirements
            if Setup_Table.SetupE_Position == nil then
              Setup_Position = Vec_sum(Send_to, {Position_adjust,0,-6})
              Position_adjust = Position_adjust + 10
            else
              Setup_Position = Setup_Table.SetupE_Position
            end
            Take_Params = {
              position  = Setup_Position,
              rotation  = SetupE_rotation,
              index     = i-1,
              flip      = true,
              smooth    = false
            }
            Environment_Deck.takeObject(Take_Params)
            SetupE_count = SetupE_count - 1

            ::continue::
          end
        end
      end
      Environment_Deck.shuffle()
    end

Villain_Deck.shuffle()
--delete start game button
button.destruct()

Game_Start = true
Round_tracker = 0
Color_Change(player_color)

  Hero_reverse_table = nil
  Hero_Lookup = nil
  Hero_Name = nil
  Hero_Index = nil
  Send_to = nil
  Player_hand = nil
  Card_Take_Params = nil
  Deck_Take_Params = nil
  Character_Card = nil
  Character_Deck = nil
  Variants = nil
  adjust = nil
  Variant_Position = nil
  check = nil
  Card_Pos = nil
  variant_selected = nil
  Player_Health_Num = nil
  Environment_Assets = nil
  Environment_Deck = nil
  Villain_Card = nil
  Villain_Assets = nil
  Villain_Deck = nil
  Setup1_count = nil
  Setup2_count = nil
  Setup1_deck = nil
  Setup2_deck = nil
  Setup1_rotation = nil
  Setup2_rotation = nil
  Setup3_count = nil
  Setup4_count = nil
  Setup3_deck = nil
  Setup4_deck = nil
  Setup3_rotation = nil
  Setup4_rotation = nil
  Position_adjust = nil
  Setup_Position = nil
  Take_Params = nil
  Start_Time=Time.time
end

--------------------------------------------------------------------------------
------------------------------Other functions-----------------------------------
--------------------------------------------------------------------------------
-------------------------------shuffle deck-------------------------------------

function Setup_Search(Deck, Setup_search, Setup_count, Setup_remove, SetupS_Position, Setup_rotation, Setup_special)

  if Setup_count == nil then
    Setup_count = 0
    Setup_search = 0
  elseif Setup_count == 'Special' then
    Setup_count = Setup_special
  end

  if Setup_rotation == nil then
    Setup_rotation = {0,180,0}
  end

for i = #Deck.getObjects(),1,-1 do
  if Setup_count == 0 then
    break
  else
    if (string.find(string.upper(Deck.getObjects()[i].description), string.upper(Setup_search))
          or string.find(string.upper(Deck.getObjects()[i].name), string.upper(Setup_search))
          or Setup_search == 'any')
          and Setup_count > 0 then

        --When looking for any remove will limit the results
        if Setup_remove != nil then
          if (string.find(string.upper(Deck.getObjects()[i].description), string.upper(Setup_remove))
          or string.find(string.upper(Deck.getObjects()[i].name), string.upper(Setup_remove)))
          then goto continue
          end
        end
        --looks for unique Setup requirements
        if SetupS_Position == nil then
          Setup_Position = Vec_sum(Send_to, {Position_adjust, 0, -11.4})
          Position_adjust = Position_adjust + 5.7
        else
          Setup_Position = SetupS_Position
        end
          Take_Params = {
            position  = Setup_Position,
            rotation  = Setup_rotation,
            index     = i-1,
            flip      = true,
            smooth    = false
          }
        Deck.takeObject(Take_Params)
        Setup_count = Setup_count - 1

        ::continue::
      end
    end
  end

end
--------------------------------Sums vecotrs------------------------------------
function Vec_sum(vec1,vec2)
  return {vec1[1]+vec2[1], vec1[2]+vec2[2],  vec1[3]+vec2[3]}
end

------------------------Reverse Table for randomization-------------------------
function Hero_reverse_table()
   Hero_Lookup={}
   for key, value in pairs(Heroes) do
     Hero_Lookup[value]=key
   end
end

-------------------------------Creates buttons----------------------------------
function Create_Button(params)
Play_buttons = getObjectFromGUID(params[1])
button_params = {
  click_function = params[4],
  function_owner = self,
  label          = params[2],
  position       = {0,0.35,0},
  rotation       = {0,0,0},
  width          = params[5],
  height         = params[6],
  font_size      = params[7],
  color          = {1,1,1,1},
--  font_color     = -- Color,
  hover_color    = {0,1,0,1},
--  press_color    = $(13:-- Color},
  tooltip        = params[3]
}
Play_buttons.createButton(button_params)
Play_buttons.setName(params[2])
end


-------------------------remove heroes to randomize-----------------------------
function remove_hero(Table, Index)

local reindex = 0
local H = #Table

for count = 1,H do
  if Table[count].guid != Table[Index].guid then
    reindex = reindex + 1
    Table[reindex] = Table[count]
  end
end

for count = reindex + 1, H do
  Table[count] = nil
end
end

------------------------------Turn Order rotation-------------------------------
function Color_Change(player_color)
--cycle active players
new_color = player_color
::Next_Player::
if Player_turn == 7 then
  Player_turn = 0
--    getObjectFromGUID('b1afe2').setValue(Round_Tracker)
end
Player_turn = Player_turn + 1
if Player_turn == 1 then
  print('HP After Villain turn')
  for target in ipairs(Health_Tracker) do
    print(Health_Tracker[target].Name .. "-" .. Health_Tracker[target].Health)
  end
end
if Players_Active[Player_turn].Active == true then
  Active_Player = Players_Active[Player_turn].Name
  Active_Color = Players_Active[Player_turn].Color
  --checks if player is seated
  if Active_Color != nil and Player[Active_Color].seated == false then
    new_color = Active_Color
  end
  else
  goto Next_Player
end
Player[player_color].changeColor(new_color)
broadcastToAll('It is ' .. Active_Player .. '\'s turn.')
if Player_turn < 6 then
  view_zone = Player_Zone[new_color]
elseif Player_turn == 6 then
  view_zone = Vec_sum(Environment_Zone, {0,0,-15})
else
  view_zone = Vec_sum(Villain_Zone, {0,0,-15})
  Round_tracker = Round_tracker + 1
  broadcastToAll('Round ' .. Round_tracker, {r=1, g=0, b=0})
  getObjectFromGUID('b1afe2').Counter.increment()
  --for target in ipairs(Health_Tracker) do
    --print(Health_Tracker[target].Name .. "-" .. Health_Tracker[target].Health)
  --end
end

Wait.frames(function () Player[new_color].lookAt({
  position = view_zone,
  pitch = 75,
  yaw = 0,
  distance = 30
}) end, 2)

end

------------------------------------Token grab----------------------------------
function Token_Grab(Num, player_color)
pointer = Player[player_color].getPointerPosition()
bag = Tokens[Num]
if Num == 9 then
  getObjectFromGUID(bag).takeObject({
    position = Vec_sum(pointer, {0,5,0}),
    rotation = {180,0,180}
  })
else
  getObjectFromGUID(bag).takeObject({
    position = Vec_sum(pointer, {0,5,0}),
    rotation = {180,0,0}
  })
end
end

---------------------------------numpad hotkeys---------------------------------
function onScriptingButtonDown(Num, player_color)
if Num == 10 then
  if Game_Start == true then
    Color_Change(player_color)
  else
    broadcastToAll('Start game to enable turn order')
  end
else
  Token_Grab(Num, player_color)
end
end

--------------------------------------------------------------------------------
---------------------------Deck Searching Functions-----------------------------
--------------------------------------------------------------------------------

-----------------------------Card Search Keyword--------------------------------
function Keyword_Changed(player, option)
  Card_Discover = option
end

----------------------Pull all cards matching keyword---------------------------
function Search_Cards(player_color, deck_obj)
if deck_obj == nil then
  broadcastToColor('To use this function highlight a deck', player_color)
  return
end

if Card_Discover == nil then
  broadcastToColor('Type a Keyword in the box', player_color)
  return
end

deck = deck_obj.getObjects()

for count = #deck,1,-1 do
  if string.find(string.upper(deck[count].description), string.upper(Card_Discover))
      or string.find(string.upper(deck[count].name), string.upper(Card_Discover)) then
    local Card_guid = deck[count].guid
    Card_take = {
      position = Vec_sum(deck_obj.getPosition(), {0, 0, 8}),
      guid = Card_guid,
      flip = true
      }
    deck_obj.takeObject(Card_take)
    if count > 1 then
      deck_obj.shuffle()
    end
  end
end
broadcastToColor('All keywords found', player_color)
end

---------------------Pull first card matching keyword---------------------------
function Discover_Card(player_color, deck_obj)
if deck_obj == nil then
  broadcastToColor('To use this function highlight a deck', player_color)
  return
end

if Card_Discover == nil then
  broadcastToColor('Type a Keyword in the box', player_color)
  return
end
deck = deck_obj.getObjects()
for count = 1,#deck,1 do
  if string.find(string.upper(deck[count].description), string.upper(Card_Discover))
      or string.find(string.upper(deck[count].name), string.upper(Card_Discover)) then
    local Card_guid = deck[count].guid
    Card_take = {
      position = Vec_sum(deck_obj.getPosition(), {0, 0, 8}),
      guid = Card_guid,
      flip = true
      }
    deck_obj.takeObject(Card_take)
    if count > 1 then
      deck_obj.shuffle()
    end
    return
  elseif count == #deck then
    broadcastToColor('No cards with that keyword found', player_color)
    return
  end
end
end

--------------------------------------------------------------------------------
----------------------------Health Tracking Functions---------------------------
--------------------------------------------------------------------------------

------------------------Toggle Left and Right click functions-------------------
function Toggle_clicks(_,player)
if Toggle_mouse_clicks == true then
  Toggle_mouse_clicks = false
  broadcastToColor("Left click to decrease. \n Right click to increase.", player)
else
  Toggle_mouse_clicks = true
  broadcastToColor("Left click to increase. \n Right click to decrease.", player)
end
end

----------------------------Card Health Tracker---------------------------------
function onObjectSpawn(object)
  object_desc = object.getDescription()

  if string.find(string.upper(object_desc), string.upper('target')) then
    local start_value = string.find(object_desc, '*')+1
    local category_key = string.find(object_desc, '*')-1
    local value = string.sub(object_desc, start_value, start_value+2)
    local category = string.sub(object_desc, category_key, category_key)
      object.createButton({
        label=value,
        click_function="add_subtract",
        tooltip='Default is: \n Left Click to Decrease.\nRight Click to Increase.',
        function_owner=self,
        position={0,0.15,3},
        height=600,
        width=600,
        alignment = 3,
        scale={x=1.5, y=1.5, z=1.5},
        font_size=600,
        font_color={1,1,1,95},
        color={0,0,0,1}
      })
      --print(object_desc)
      Wait.frames(function() Health_Tracker_Add(
        object.getName(),
        tonumber(object.getButtons()[1].label),
        object.guid,
        category,
        "Target"
      ) end, 120)

    elseif string.find(string.upper(object_desc), string.upper('hero CC')) then
      local start_value = string.find(object_desc, '*')+1
      local category_key = string.find(object_desc, '*')-1
      local value = string.sub(object_desc, start_value, start_value+2)
      local category = string.sub(object_desc, category_key, category_key)
        object.createButton({
          label=value,
          click_function="add_subtract",
          tooltip='Default is: \n Left Click to Decrease.\nRight Click to Increase.',
          function_owner=self,
          position={0,0.15,-2.8},
          height=600,
          width=600,
          alignment = 3,
          scale={x=1.5, y=1.5, z=1.5},
          font_size=600,
          font_color={1,1,1,95},
          color={0,0,0.50,1}
        })

        Wait.frames(function() Health_Tracker_Add(
          object.getName(),
          tonumber(value),
          object.guid,
          category,
          "Hero CC"
        ) end, 120)
    end

    if string.find(string.upper(object_desc), string.upper('Suddenly')) then
      broadcastToAll('SUDDENLY!!!!!!!', {255, 51, 255})
    end

    object_desc = ""
end

function add_subtract(object, player_color, alt_click)
value = object.getButtons()[1].label

if Toggle_mouse_clicks == false then
  mod = alt_click and 1 or -1
else
  mod = alt_click and -1 or 1
end
  new_value = value + mod
  value = new_value

  object.editButton({
      index = 0,
      label = value,
    })

  Health_Tracker_Edit(tonumber(value), object.guid)
end


-------------------------------Health Tracker-----------------------------------
function Health_Tracker_Add(Add_Name, Add_Health, Add_guid, Add_category, Add_description)

  for target in ipairs(Health_Tracker) do
    if Health_Tracker[target].guid == Add_guid then
      remove_hero(Health_Tracker, target)
      break
    end

  end

table.insert(Health_Tracker, #Health_Tracker +1, {
  Name = Add_Name,
  Health = Add_Health,
  guid = Add_guid,
  Category = Add_category,
  Description = Add_description
})

Health_Tracker_Sort()
end

function Health_Tracker_Edit(Edit_Health, guid)
for target in ipairs(Health_Tracker) do
  if Health_Tracker[target].guid == guid then
    Health_Tracker[target].Health = Edit_Health
    break
  end
end
Health_Tracker_Sort()
end

function Health_Tracker_Sort()
local Tracker = Health_Tracker
local Sorted_Tracker = {}
local Sorted_Tracker_no_dups = {}
local dup_value = {}
local High_count = 1
local Low_count = 11
local key = nil
local hex_color = nil

for target in ipairs(Tracker) do
  table.insert(Sorted_Tracker, Tracker[target].Health)
end

table.sort(Sorted_Tracker)

for count = 1,20 do
  UI.setValue(count, "")
  UI.setAttribute(count+100, 'color', "")
end

for key, value in ipairs(Sorted_Tracker) do
  if value >= 0 then
    if (not dup_value[value]) then
      table.insert(Sorted_Tracker_no_dups, value)
      dup_value[value] = true
    end
  end
end

for key = #Sorted_Tracker_no_dups, 1, -1 do
  for target in ipairs(Tracker) do
    if Tracker[target].Health == Sorted_Tracker_no_dups[key] then
      --removes trashed targets
      if getObjectFromGUID(Tracker[target].guid) == nil then
        remove_hero(Tracker, target)
      else
        local skip = false
        for color in pairs(Player_Zone) do
          local Hand = Player[color].getHandObjects()
          for _,Card in pairs(Hand) do
            if Card.getGUID() == Tracker[target].guid then
              skip = true
              break
            end
          end
          if skip == true then
            break
          end
        end

        if Display_H == false and Tracker[target].Category == 'H' then
          skip = true
        end
        if Display_E == false and Tracker[target].Category == 'E' then
          skip = true
        end
        if Display_V == false and Tracker[target].Category == 'V' then
          skip = true
        end


        if skip == false then
          if Tracker[target].Category == 'H' then
            hex_color = '#000080FA'
          elseif Tracker[target].Category == 'E' then
            hex_color = '#008000FA'
          elseif Tracker[target].Category == 'V' then
            hex_color = '#800000FA'
          end

          if key > #Sorted_Tracker_no_dups - 5 then
            UI.setValue(High_count, Tracker[target].Health .. ' - ' .. Tracker[target].Name)
            UI.setAttribute(High_count+100, 'color', hex_color)
            High_count = High_count + 1
          elseif key <= 5 then
            UI.setValue(Low_count, Tracker[target].Health .. ' - ' .. Tracker[target].Name)
            UI.setAttribute(Low_count+100, 'color', hex_color)
            Low_count = Low_count + 1
          end
        end
        skip = nil
      end
    end
  end
end
end

function final_stats()
local Tracker = Health_Tracker

Hero_Targets = "Final Targets HP : \n"
for target in ipairs(Tracker) do
  Hero_Targets = Hero_Targets .. Tracker[target].Name .. " : " .. Tracker[target].Health .. "\n"--final_stats()
end
UI.setAttribute("Updates", "visibility", "")
UI.setValue("Update_Title", "Final Stats")
UI.setValue("Update_Text", "Victory(?) in " .. getObjectFromGUID('b1afe2').getValue() .. ' rounds \n ' ..
  "Villain: " .. Setup_Table.Name1 .. "\n" ..
  "Environment: " .. Environment_Name .. "\n" ..
  "Duration: " .. (Time.time - Start_Time)/60 .. " minutes" .. "\n \n" ..
  Hero_Targets
)
end

function Hide_hotkey()
UI.setAttribute("Hotkey_list", "visibility", "invisible")
end

function Hide_Updates()
UI.setAttribute("Updates", "visibility", "invisible")
end

function Hero_Updates()
UI.setAttribute("Hero_Update_Button", "interactable", "false")
UI.setAttribute("Villain_Update_Button", "interactable", "true")
UI.setAttribute("Environment_Update_Button", "interactable", "true")
UI.setValue("Update_Title", "Hero Updates")
UI.setValue("Update_Text", "Heroes are mostly complete, check verbiage and glaring issues \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n .")
end

function Villain_Updates()
UI.setAttribute("Hero_Update_Button", "interactable", "true")
UI.setAttribute("Villain_Update_Button", "interactable", "false")
UI.setAttribute("Environment_Update_Button", "interactable", "true")
UI.setValue("Update_Title", "Villain Updates")
UI.setValue("Update_Text",
  "Events: \n" ..
  "General change: lowered collection limits all events got modified except for Kismet, she is the only unchanged event \n \n" ..

  --[["Ambuscade: \n" ..
  "For future proofing reasons, he now discovers devices if there are fewer than (H) villain devices. \n \n" ..

  "Apex: \n" ..
  "No changes \n \n" ..

  "Fey Court: \n" ..
  "The Dagda and Morrigan gained 10 HP each. The Morrigan starts with 5 tokens, and the Dagda requires H+5.The Advisors are all meaner. Wisps hit harder. Revel doesn't find an advisor, AND takes away tokens. Modicum of Knowledge now lets you draw 2-4. Prosperity now keys off of item cards in ally hands \n \n" ..

  "Gloomweaver: \n" ..
  "GW now does irreducible damage for his flip side END PHASE. Malevolent Malaise damage boost. Vast Following can no longer discover relics or chosen. Summoning Circle now comes with more cultists! The drum now causes discards if nothing is played. The grimoire is meaner. \n \n" ..

  "Kismet: \n" ..
  "She was hitting too hard, so her unlucky cards lost the AoE damage on play. Her Advanced text for her front side now makes her hit someone whenever an Unlucky card comes out. \n \n" ..

  "Organization: \n" ..
  "Chairman now takes more to flip, and hits 1 person hard instead of multiple people. Operative now has Setup, and her commands are simpler. The Operative's cards now hit harder (except for Lethal Foe, which hits plenty hard.) \n \n" ..]]

  "Plague Rat: \n" ..
  "CC END PHASE reordered to prevent a nasty damage chain.  Cards now specify villain ongoings. \n \n" ..

  "Spite: \n" ..
  "Little Susie Lee  is now straight up bad.  But it's worse to let her die, even if she IS kind of sticky and smells vaguely like licorice. \n \n"

--[[  "Terrorform: \n" ..
  "No Changes"
  ]]
)

end

function Environment_Updates()
UI.setAttribute("Hero_Update_Button", "interactable", "true")
UI.setAttribute("Villain_Update_Button", "interactable", "true")
UI.setAttribute("Environment_Update_Button", "interactable", "false")
UI.setValue("Update_Title", "Environment Updates")
UI.setValue("Update_Text", "Environments are mostly complete, check verbiage and glaring issues  \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n \n .")
end

function Hide_Keywords()
UI.setAttribute("Keywords", "visibility", "invisible")
UI.setAttribute("Keywords_button", "visibility", "")
end

function Show_Keywords()
UI.setAttribute("Keywords", "visibility", "")
UI.setAttribute("Keywords_button", "visibility", "invisible")
end

function Toggle_H_display()
if Display_H == true then
  Display_H = false
else
  Display_H = true
end
Health_Tracker_Sort()
end

function Toggle_V_display()
if Display_V == true then
  Display_V = false
else
  Display_V = true
end
Health_Tracker_Sort()
end

function Toggle_E_display()
if Display_E == true then
  Display_E = false
else
  Display_E = true
end
Health_Tracker_Sort()
end

function locate_pointer(player_color, obj)
print(obj.getPosition())
end
