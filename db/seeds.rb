# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Workshop.destroy_all

puts 'Creating workshops...'

 user1 = User.create(email: 'larry@arthuddle.com', password: 'nonono')
 user2 = User.create(email: 'misty@arthuddle.com', password: 'testing')
 user3 = User.create(email: 'pandora@arthuddle.com', password: 'wherego')
 user4 = User.create(email: 'tilly@arthuddle.com', password: 'lewagon')
 user5 = User.create(email: 'harry@arthuddle.com', password: 'waterwater')
 user6 = User.create(email: 'ollie@arthuddle.com', password: 'trymeout')
 user7 = User.create(email: 'trevory@arthuddle.com', password: 'letmebeme')
 user8 = User.create(email: 'quentin@arthuddle.com', password: 'lifeiscode')


workshop1 = Workshop.create!(
  name:         'Life Painting 60min Class',
  category:     'painting',
  price:         30,
  capacity:      15,
  difficulty:    'beginner',
  description:   'Learn the basic skills for sketching and painting in the human form, direct from a live model. We will be observing its anatomical structure.',
  area:          'Mitte',
  address:       'Osloer Str. 102, 13359 Berlin',
  date:          '04/01/2019',
  syllabus:       'Ensure you come prepared with brushes and pencils. All paints will be provided',
  user_id:        user1.id
  )
workshop1.remote_photo_url = 'https://res.cloudinary.com/dnasixvno/image/upload/v1543589273/khara-woods-80967-unsplash.jpg'
workshop1.save!

workshop2 = Workshop.create!(
  name:         'Pot-Throwing Crash Course',
  category:     'pottery',
  price:         25,
  capacity:      20,
  difficulty:    'medium',
  description:   'Pot-throwing is not only a fun activity, it is immensely rewarding. It requires hands-on interaction with the pottery wheel. By the end of the class, you will master kneeding out extra water, and removing excess clay',
  area:          'Kreuzberg',
  address:       'Alexandrinenstraße 118, 10969 Berlin',
  date:          '09/12/2018',
  syllabus:       'Firstly we will recap the basics of rolling your clay on wooden boards and kneeding excess air out. After an in-depth demo from your teacher, students will take turns on the wheel spinning their first set of cups!',
  user_id:        user2.id
  )
workshop2.remote_photo_url = 'https://res.cloudinary.com/dnasixvno/image/upload/v1543589391/pot-throwing.jpg'
workshop2.save!

workshop3 = Workshop.create!(
  name:           'Screen-printing Masterclass',
  category:       'printmaking',
  price:          30,
  capacity:       10,
  difficulty:     'advanced',
  description:    'With screen-printing, the possibilities are endless. With over 10 years of experience,
                  our teachers will provide expert advice to guide you through some of the more challenging
                  techniques of producing prints.',
  area:           'Neukölln',
  address:        'Jonasstraße 33, 12053 Berlin',
  date:           '14/01/2018',
  syllabus:       'Come prepared; we will dive straight in with this course. Please bring your designs on a USB in
                  photoshop, we will be printing them on trace. Later, we will show you how to handle emulsion on
                  screens, before moving onto the specifics.',
  user_id:        user3.id
  )
workshop3.remote_photo_url = 'https://res.cloudinary.com/dnasixvno/image/upload/v1543589281/jose-aljovin-486564-unsplash.jpg'
workshop3.save!

workshop4 = Workshop.create!(
  name:           'Cat Painting 101',
  category:       'printmaking',
  price:          0,
  capacity:       16,
  difficulty:     'beginner',
  description:    'Stuck on what to get Mittens for christmas? Why not a personalised portrait! Channel your
                  inner-artist with our course in beautifying moggy until she purs with joy.',
  area:           'Neukölln',
  address:        'Malchower Weg 68, 13053 Berlin',
  date:           '14/01/2018',
  syllabus:       'The day may be short, but we will pack in a great deal! We will meet at the BaristaCats Katzencafé.',
  user_id:        user4.id
  )
workshop4.remote_photo_url = 'https://res.cloudinary.com/dnasixvno/image/upload/v1543589484/Degas-The-Dance-class-Met-cat-min.jpg'
workshop4.save!

workshop5 = Workshop.create!(
  name:           'Colour film photography walking tour',
  category:       'photography',
  price:          0,
  capacity:       9,
  difficulty:     'medium',
  description:    'If you are looking to explore more of Berlin and capture its sites in beautiful colour photoghraphy,
                   then this is the class for you! Whether you have some experience in handling a camera or are already
                   at advanced level, this class will give you the chance to expand on those skills or gain more insight
                   from our trained teachers.',
  area:           'Prenzlauer Berg',
  address:        'Fuldastraße 60, 12043 Berlin',
  date:           '14/01/2018',
  syllabus:       'We will spend the morning taking a quick walk around to explore, before heading back into the studio to develop your film and give you a quick lecture on getting that perfect shot.',
  user_id:        user5.id
  )
workshop5.remote_photo_url = 'https://res.cloudinary.com/dnasixvno/image/upload/v1543589592/tim-graf-72723-unsplash.jpg'
workshop5.save!

workshop6 = Workshop.create!(
  name:           'Ice Sculpture with Barbara Scott',
  category:       'sculpture',
  price:          70,
  capacity:       17,
  difficulty:     'advanced',
  description:    'An in-depth dive into the world of ice sculpture.',
  area:           'Charlottenberg',
  address:        'Heinrich-Roller-Straße 7, 10405 Berlin',
  date:           '09/12/2018',
  syllabus:       'We will kick off with a lecture on the history of ice sculpting, before we pick up a chisel. Bring a coat.',
  user_id:        user6.id
  )
workshop6.remote_photo_url = 'https://res.cloudinary.com/dnasixvno/image/upload/v1543589680/ice_sculpture.jpg'
workshop6.save!

workshop7 = Workshop.create!(
  name:           'An Introduction to Origami',
  category:       'sculpture',
  price:          10,
  capacity:       30,
  difficulty:     'advanced',
  description:    'Contrary to popular belief, origami is hard! Come for our 2 hour long class and learn how to impress your friends with pieces referencing a range of animals, objects and even historical sites!',
  area:           'Charlottenberg',
  address:        'Wilhelm-Kabus-Straße 42 - 44, 10829 Berlin',
  date:           '27/12/2018',
  syllabus:       'This workshop takes place over two hours, we shall start with a group chat over coffee,
                  before starting on your designs. Bring a range of coloured paper.',
  user_id:        user7.id
  )
workshop7.remote_photo_url = 'https://res.cloudinary.com/dnasixvno/image/upload/v1543589158/origami.jpg'
workshop7.save!

workshop8 = Workshop.create!(
  name:           'Performance Art and Media',
  category:       'performance',
  price:          15,
  capacity:       10,
  difficulty:     'advanced',
  description:    'Free introductory class on performance art with role play exercises.',
  area:           'Kreuzberg',
  address:        'Kottbusser Damm 95, 10967 Berlin',
  date:           '09/12/2018',
  syllabus:       'This workshop is both a debate and a chance to perform. Bring questions and ideas. Feel free to
                  suggest a theme in the notes.',
  user_id:        user8.id
  )
workshop7.remote_photo_url = 'https://res.cloudinary.com/dnasixvno/image/upload/v1543589876/performance_art.jpg'
workshop7.save!


workshop8 = Workshop.create!(
  name:         'Sound Design Masterclass',
  category:     'music',
  price:         40,
  capacity:      25,
  difficulty:    'beginner',
  description:   'Have you always wanted to push your work further into the realms of sound design? Within this course,
                  our trusted teachers will show you how to upgrade your work to the next level by introducing you to some
                  useful software, including Ableton and Sibelius. By the end of the day, you will have gained understanding
                  in the fundamentals of building your own sonic work.',
  area:          'Kreuzberg',
  address:       'Waldemarstraße 24, 10999 Berlin',
  date:          '30/02/2019',
  syllabus:       'In the morning, we will start by equipping everyone with some ideas of where to start with
                  designing. We will then proceed with a run-through of the software, and will provide you with insights
                  into how best to manouevre these programmes. We will finish with demonstrations of your final work!
                  Please ensure that you bring your laptop with you, and that you have enough storage for the
                  downloads.',
  user_id:        user8.id
  )
workshop8.remote_photo_url = 'https://res.cloudinary.com/dnasixvno/image/upload/v1543931736/Sound-Design-Studio-Mixer.jpg'
workshop8.save!

workshop9 = Workshop.create!(
  name:         'Queering the Gaze: Queer Politics and Art History',
  category:     'theoretical',
  price:         5,
  capacity:      10,
  difficulty:    'medium',
  description:   'This theory-based event will focus on the contribution of queer insight to art history. Veering always
                  from the predominant. This workshop is aimed at people with some baseline knowledge of art history, but
                  nothing too advanced!',
  area:          'Mitte',
  address:       'Osloer Str. 102, 13359 Berlin',
  date:          '18/03/2019',
  syllabus:      'Before you attend this workshop, please ensure that you read the first two chapters of Testo Junkie by
                  Paul B. Preciado and the third chapter of Queer Art: 1960s to the Present. We will be focusing primarily on
                  reimagining art history through a queer perspective,
                  Your teacher will lead the discussion,
                  but ultimately it is up to you to contribute ideas and thoughts generated from the texts! We are keen to
                  hear your ideas, equally we encourage those who would just like to listen to the conversation.
                  Everyone is welcome but please be respectful of letting everyone have their say.',
  user_id:        user9.id
  )
workshop9.remote_photo_url = 'https://res.cloudinary.com/dnasixvno/image/upload/v1543936250/pinkflamingos.jpg'
workshop9.save!

  workshop10 = Workshop.create (
    name:         'DIY Video Recording Course',
    category:     'video',
    price:         20,
    capacity:      9,
    difficulty:    'beginner',
    description:   'Video art is an art form which relies on using video technology as a visual and audio medium. But by
                    no means does it need to be hi-tech or overly snazzy; the more DIY the better! As a
                    collective, we feel that this form is too often restricted to artists themselves, but we want to see
                    what you can offer! Come along to our workshop and see what you can achieve  with simple video recording
                    equipment (smartphone and camcorder recording greatly encouraged!)',
    area:          'Mitte',
    address:       'Osloer Str. 102, 13359 Berlin',
    date:          '30/02/2019',
    syllabus:      'We will begin by storyboarding some ideas on paper (this just means planning your frames in sequence).
                    This will be a quick mockup, so no need to plan ahead; we will encourage you to think on the spot, and
                    provide some handy advice for this! In terms of extras, just bring yourselves (and any equipment
                    you might have). We will have some spare available but supplies are of course
                    limited. We can also provide you with contacts for borrowing or renting if required.',
    user_id:        user10.id
      )
  workshop10.remote_photo_url = 'https://res.cloudinary.com/dnasixvno/image/upload/v1543932801/videoartgame.jpg'
  workshop10.save!

  workshop11 = Workshop.create (
    name:         'Radical Sewing: A Short Course',
    category:     'textiles',
    price:         40,
    capacity:      12,
    difficulty:    'advanced',
    description:   'What is your perception of textiles? Do you believe that textiles should be restricted to clothes alone
                    , or do you think you could see them with a more boundary-pushing motive? Join us in our beautiful, well-lit
                    Berlin studio where we will be sewing together pieces and patches to create substantial woven works.
                    The aim is to reinterpet heritage crafts within a contemporary context.',
    area:          'Kreuzberg',
    address:       'Bergmannstraße 56, 10961 Berlin',
    date:          '15/04/2019',
    syllabus:      'Short course participants will learn the main techniques of textile design and printing. You will
                    also be introduced to the production of textile swatch designs to create a textile book. Over the course
                    we will cover some key printing techniques, including block, stencil, heat press and screen-printing.',
    user_id:        user11.id
    )
  workshop10.remote_photo_url = 'https://res.cloudinary.com/dnasixvno/image/upload/v1543938361/textiles.jpg'
  workshop11.save!

  workshop12 = Workshop.create (
    name:         'Self Portraiture Drawing',
    category:     'drawing',
    price:         12,
    capacity:      20,
    difficulty:    'medium',
    description:   'This class will throw you into portrait drawing, but not in the way you expect. The aim of the course
                    is to make you rethink what \'drawing\' is. For this reason, expect this class to divert you from the
                    figurative demands of traditional drawing; we will focus more on getting you to express your personality
                    through drawing. Please bring charcoal and pencils.',
    area:          'Neukölln',
    address:       'Bouchéstraße 75, 12435 Berlin',
    date:          '15/12/2018',
    syllabus:      'Please bring charcoal along to this class. We will start with some warm-up exercises; we will ask you to
                    write down some aspects of your personality that you find interesting. Then, we will show you some techniques
                    for quick sketching. From here, we will start breaking some of the rules.
                    Easels are available for use at the workshop, but please also feel free to work in any other way that feels
                    comfortable.',
    user_id:        user12.id
    )
  workshop12.remote_photo_url = 'https://res.cloudinary.com/dnasixvno/image/upload/v1543939423/portrait_drawing.jpg'
  workshop12.save!

  workshop13 = Workshop.create (
    name:         '\'Documenting the Tide\': Learning Art Journalism.',
    category:     'writing',
    price:         12,
    capacity:      20,
    difficulty:    'medium',
    description:   'Have a go at one of the most challenging careers in the art world; documenting art through words! There is no
                    set way for creating your own unique writing style, and we will utilize this in the class to help you unleash
                    your inner critic. And what better way to go about this than to work directly with artists. Our team of artists
                    will be available to converse with you about their work, and from there you will construct an informed opinion.',
    area:          'Neukölln',
    address:       'Mariannenstraße 48, 10997 Berlin',
    date:          '29/12/2018',
    syllabus:      'The class shall begin with a discussion between our volunteer artist team and budding writers. After the crit
                    you will be given one hour to write half a page. Be as insightful as possible, but ensure you focus on a particular
                    point. Great art documentation is all about precision!',
    user_id:        user13.id
    )
  workshop13.remote_photo_url = 'https://res.cloudinary.com/dnasixvno/image/upload/v1543944985/group-crit-2014.jpg'
  workshop13.save!

puts 'Finished!'
