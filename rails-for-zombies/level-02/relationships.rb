ash = Zombie.find(1)
# => #<Zombie id: 1, name: "Ash", graveyard: "Glen Haven Memorial Cemetery">

t = Tweet.create(status: "Your eyelids taste like bacon.", zombie: ash)
# => #<Tweet id: 5, status: "Your eyelids taste like bacon.", zombie_id: 1>

ash.tweets.count
# => 3

ash.tweets
# => [#<Tweet id: 1,
#             status: "Where can I get a good bite to eat?", zombie_id: 1>,
#     #<Tweet id: 4,
#             status: "OMG, my fingers turned green? #FML", zombie_id: 1>,
#     #<Tweet id: 5,
#             stauts: "Your eyelids taste like bacon.", zombie_id: 1>]

t = Tweet.find(5)
# => #<Tweet id: 5, status: "Your eyelids taste like bacon.", zombie_id: 1>

t.zombie
# => #<Zombie id: 1,
#             name: "Ash",
#             graveyard: "Glen Haven Memorial Cemetery">

t.zombie.name
# => "Ash"