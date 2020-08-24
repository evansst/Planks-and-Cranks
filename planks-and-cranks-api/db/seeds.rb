# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

Listing.destroy_all
User.destroy_all

sam = User.create(
  name: 'Sam Evans',
  username: 'evansst',
  password: 'samevans',
  email_address: 'sevansam@gmail.com'
)

sam.avatar = File.open('/Users/Sam/Pictures/Photos Library.photoslibrary/resources/derivatives/8/8CE9F67F-5F51-4DEF-A5B4-635E716DFD73_1_105_c.jpeg')
sam.save!

tori = User.create(
  name: 'Tori Hall',
  username: 'torihall6',
  password: 'hippo',
  email_address: 'victoria.hall@colorado.edu'
)

tori.avatar = File.open('/Users/Sam/Pictures/Photos Library.photoslibrary/resources/derivatives/F/F03DE1D7-3D84-49FA-9801-D829D04A4877_1_105_c.jpeg')
tori.save!

  genius = Listing.create(
    gear_type: 'Mountain Bike',
    size: 'Medium',
    condition: 'Used - Good',
    price: 3000,
    msrp: 4500,
    description: 'The Genius was put on this earth to get you up mountains with ease and to get you back down them in a flash. The Genius 920 features our TwinLoc Suspension System to always optimize your ride. With a SRAM Eagle drivetrain and Syncros components, the Genius 920 is action ready. Any Trail. Any Time.',
    user_id: sam.id,
    brand: 'Scott',
    model: 'Genius 920',
    year: 2018,
    specs: {
      'Frame Material': 'Carbon front triangle, allow rear triangle',
      'Drivetrain': 'SRAM GX 1x12',
      'Weight': '31 lbs',
      'Fork': 'Fox 34 Performance',
      'Front Travel': '150 mm',
      'Shock': 'Fox Nude EVOL ',
      'Rear Travel': '150 mm',
      'Brakes': 'Shimano SLX',
      'Saddle': 'Ergon SME3',
      'Dropper': 'Fox Transfer 150mm',
      'Dropper Lever': 'PNW Components Loam Lever',
      'Wheelset': '29in Syncros TR2.5 SL, 30mm inside-width, aluminum',
      'Tires': 'Maxxis DHF 2.5, Maxxis Aggressor 2.5',
      'Bars': 'Syncros 780mm',
      'Stem': 'Syncros 50mm',
    },
    images: [
      File.open('/Users/Sam/Downloads/s1600_max_920_77166.jpg'),
    ],
  )

  joplin = Listing.create(
    gear_type: 'Mountain Bike',
    size: 'Small',
    condition: 'Used - Very Good',
    price: 4000,
    msrp: 4300,
    description: 'A little bit (cross) country. A little bit rock and roll. The Joplin is a bit of an XC wild child, a light bike that’s heavy on capability with a “let’s go” attitude to any trail. Let’s go fast. Let’s go far. Let’s go until your legs are ready to give up, and then go some more. Let’s make every second count. Let’s carve rides out of busy days and put those lines on the map on your done list.  The Joplin’s 29-inch wheels and lean frame float over washboard bumps with the same ease it devours jagged ledges. A geometry bred for long days in the saddle is blended with 130mm of travel in the front and 120mm in the rear, creating a capable climber that doesn’t flinch when roots get ragged and rocks start to roll. The lower link VPP suspension offers a responsive pedaling platform that’s ready to get up and go the moment you are. Whether you’re flossing rock gardens or making the rider in front of you your next hare, the Joplin is one rapid little trail fox that will take you farther than you thought you could and give you the confidence to go bigger than you thought you would. With a size range that starts at XS, this bike brings big-wheel benefits to those of us in the fun-size category too. And yes, every size in the line fits a water bottle inside the main triangle because XS doesn’t mean “do things by half”. Tying up the package is a range of component builds that weave the line between fun and fast, creating a bike that’s ready to race the distance or just race the clouds home. So, what are you waiting for?  Let’s go!',
    user_id: tori.id,
    brand: 'Juliana',
    model: 'Joplin R',
    year: 2020,
    specs: {
      'Frame Material': 'Carbon',
      'Drivetrain': 'Shimano, 2x11',
      'Weight': '27 lbs',
      'Fork': 'Fox 34 Performance',
      'Front Travel': '140 mm',
      'Shock': 'Fox Float Performance EVOL',
      'Rear Travel': '130 mm',
      'Brakes': 'Shimano XT M8000',
      'Saddle': 'Bontrager Evoke',
      'Dropper': 'RockShox Reverb Stealth',
      'Wheelset': 'Sun Ringle Duroc 40 SL Alloy, DT Swiss 350 Boost',
      'Tires': 'Bontrager Chupacabra TLR 2.8, Bontrager Chupacabra 2.8',
      'Bars': 'Bontrager Line Pro OCLV 750mm',
      'Stem': 'Bontrager Line Pro Alloy',
    },
    images: [
      File.open('/Users/Sam/Downloads/2020-Juliana-Joplin-C-S.jpg'),
      File.open('/Users/Sam/Downloads/AQUGRE_D7.jpg'), 
      File.open('/Users/Sam/Downloads/AQUGRE_D1.jpg'), 
      File.open('/Users/Sam/Downloads/AQUGRE_D10.jpg'), 
      File.open('/Users/Sam/Downloads/AQUGRE_D9.jpg'), 
      File.open('/Users/Sam/Downloads/AQUGRE_D2.jpg'), 
      File.open('/Users/Sam/Downloads/AQUGRE_D8.jpg'), 
      File.open('/Users/Sam/Downloads/AQUGRE_D4.jpg'), 
      File.open('/Users/Sam/Downloads/AQUGRE_D11.jpg'), 
      File.open('/Users/Sam/Downloads/AQUGRE_D5.jpg'), 
    ],
  )

  trek = Listing.create(
    gear_type: 'Mountain Bike',
    size: '21.5',
    condition: 'Used - Very Good',
    price: 4227.99,
    msrp: 5500,
    description: "Fuel EX 9.8 is the carbon trail bike that can fly through singletrack, throw down with the rowdy trail crew, and crush miles during marathon races. A lightweight full OCLV Mountain Carbon frame, 1x12 SRAM GX Eagle drivetrain, carbon wheels, and FOX Performance Float suspension with Trek's exclusive RE:aktiv with Thru Shaft shock make it the perfect choice for all-mountain shredders who want a single bike that does it all.",
    user_id: sam.id,
    brand: 'Trek',
    model: 'Fuel Ex 9.8',
    year: 2017,
    specs: {
      'Frame Material': 'Carbon',
      'Drivetrain': 'SRAM NX 1x12',
      'Weight': '32 lbs',
      'Fork': 'Fox 34 Rhythm',
      'Front Travel': '130 mm',
      'Shock': 'Fox Float Performance DPS',
      'Rear Travel': '120 mm',
      'Brakes': 'SRAM Guide T',
      'Saddle': 'Juliana Segundo Saddle',
      'Dropper': 'SDG Tellis',
      'Wheelset': 'WTB ST i25 TCS 2.0 29in',
      'Tires': 'Maxxis DHF 2.3, Maxxis DHRII 2.3',
      'Bars': 'Raceface Ride',
      'Stem': 'Raceface Ride',
    },
    images: [
      File.open('/Users/Sam/Development/code/Mod3/project/images/BMT17383_PH1_01_2048x2048.jpg'),
      File.open('/Users/Sam/Development/code/Mod3/project/images/BMT17383_PH1_02_2048x2048.jpg'),
      File.open('/Users/Sam/Development/code/Mod3/project/images/BMT17383_PH1_03_2048x2048.jpg'),
      File.open('/Users/Sam/Development/code/Mod3/project/images/BMT17383_PH1_04_2048x2048.jpg'),
      File.open('/Users/Sam/Development/code/Mod3/project/images/BMT17383_PH1_05_2048x2048.jpg'),
      File.open('/Users/Sam/Development/code/Mod3/project/images/BMT17383_PH1_06_2048x2048.jpg'),
      File.open('/Users/Sam/Development/code/Mod3/project/images/BMT17383_PH1_07_2048x2048.jpg'),
      File.open('/Users/Sam/Development/code/Mod3/project/images/BMT17383_PH1_08_2048x2048.jpg'),
      File.open('/Users/Sam/Development/code/Mod3/project/images/BMT17383_PH1_09_2048x2048.jpg'),
    ]
  )
  Listing.create(
    gear_type: 'Skis',
    size: '183',
    condition: 'Used - Good',
    price: 740,
    msrp: 1230,
    description: "Black Crows seems to one of those companies who can build a full reverse camber ski without losing all semblance of precision and edgehold, and the Black Crows Daemon Skis + Look Pivot 14 GW Bindings are a great example. Sure, it helps to ski these from a centered stance, but the Daemon is capable of carving super clean high speed turns and still pivoting at will on the steep and even slithering through a field of nasty bumps with impunity. BC keeps the ski stable at higher speeds by using a 2/3 length sheet of Titanal and a robust Poplar core, making a ski we didn't expect to like one of our favorites.",
    user_id: sam.id,
    brand: 'Black Crows',
    model: 'Daemon',
    year: 2020,
    specs: {
      'Bindinds': 'Look Pivot 18'
    },
    images: [
      File.open('/Users/Sam/Development/code/Mod3/project/images/skis/black-crows-daemon-skis-look-pivot-14-gw-bindings-2020-.jpg'),
    ]
  )
  Listing.create(
    gear_type: "Skis - Women's",
    size: '182',
    condition: 'Used - Very Good',
    price: 675,
    msrp: 1120,
    description: "If you've gazed longingly at the YLE Pro 118's and worried that they bring too much beef for your everyday ride, the RMU YLE 110 Skis + Armada STH2 WTR 16 Bindings are for you. Bringing the same surfy big mountain ethos to the table, these puppies come in a slightly slimmer package ideal for crushing resort laps day in, day out. A stout flex underfoot and plenty of rocker is just what you want in variable conditions, but they also boast a wood core and softer tips that encourage a playful, slashy style. Put the YLE 110 Skis under your feet and you'll see that anything is possible.",
    user_id: sam.id,
    brand: 'Rocky Mountain Underground',
    model: 'YLE 110',
    year: 2020,
    specs: {
      'Bindings': 'Armada STH2 WTR 16'
    },
    images: [
      File.open('/Users/Sam/Development/code/Mod3/project/images/skis/rmu-yle-110-skis-armada-sth2-wtr-16-bindings-2020-.jpg'),
    ]
  )
  # Listing.create(
  #   gear_type: '',
  #   size: '183',
  #   condition: '',
  #   price: ,
  #   msrp: ,
  #   description: "",
  #   user_id: sam.id,
  #   brand: '',
  #   model: '',
  #   year: ,
  #   specs: {

  #   },
  #   images: [
  #     File.open(''),
  #   ]
  # )