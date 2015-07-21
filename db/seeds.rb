# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Movie.create!(
  title:"Back to the Future",
  director:"Robert Zemeckis",
  runtime_in_minutes:126,
  description:"In this 1980s sci-fi classic, small-town California teen Marty McFly (Michael J. Fox) is thrown back into the '50s when an experiment by his eccentric scientist friend Doc Brown (Christopher Lloyd) goes awry. Traveling through time in a modified DeLorean car, Marty encounters young versions of his parents (Crispin Glover, Lea Thompson), and must make sure that they fall in love or he'll cease to exist. Even more dauntingly, Marty has to return to his own time and save the life of Doc Brown.",
  poster_image_url:"https://upload.wikimedia.org/wikipedia/en/d/d2/Back_to_the_Future.jpg",
  release_date:DateTime.strptime("07/03/1985 00:00", "%m/%d/%Y %H:%M")
)

Movie.create!(
  title:"The Terminator",
  director:"James Cameron",
  runtime_in_minutes:107,
  description:"Disguised as a human, a cyborg assassin known as a Terminator (Arnold Schwarzenegger) travels from 2029 to 1984 to kill Sarah Connor (Linda Hamilton). Sent to protect Sarah is Kyle Reese (Michael Biehn), who divulges the coming of Skynet, an artificial intelligence system that will spark a nuclear holocaust. Sarah is targeted because Skynet knows that her unborn son will lead the fight against them. With the virtually unstoppable Terminator in hot pursuit, she and Kyle attempt to escape.",
  poster_image_url:"https://upload.wikimedia.org/wikipedia/en/7/70/Terminator1984movieposter.jpg",
  release_date:DateTime.strptime("05/12/1984 00:00", "%m/%d/%Y %H:%M")
)

Movie.create!(
  title:"Primer",
  director:"Shane Carruth",
  runtime_in_minutes:139,
  description:"Intellectual engineers Aaron (Shane Carruth) and Abe (David Sullivan) build and sell error-checking technology with the help of their friends Robert (Casey Gooden) and Phillip (Anand Upadhyaya). But when Aaron and Abe accidentally invent what they think is a time machine, Abe builds a version capable of transporting a human and puts the device to the test. As the two friends obsess over their creation, they discover the dark consequences of their actions.",
  poster_image_url:"https://upload.wikimedia.org/wikipedia/en/7/7f/Primer.jpg",
  release_date:DateTime.strptime("10/08/2004 00:00", "%m/%d/%Y %H:%M")
)

Movie.create!(
  title:"Donnie Darko",
  director:"Richard Kelly",
  runtime_in_minutes:133,
  description:"In a funny, moving and distinctly mind-bending journey through suburban America, one extraordinary but disenchanted teenager is about to take Time's Arrow for a ride. After surviving a freak accident, Donnie (Jake Gyllenhaal) begins to explore what it means to be alive, and in short order to be in love, he uncovers secrets of the universe that give him a tempting power to alter time and destiny.",
  poster_image_url:"https://upload.wikimedia.org/wikipedia/en/7/7f/Primer.jpg",
  release_date:DateTime.strptime("01/19/2001 00:00", "%m/%d/%Y %H:%M")
)


