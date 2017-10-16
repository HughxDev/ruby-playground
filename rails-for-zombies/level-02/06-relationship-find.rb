# Relationship Find
# Assuming the models and relationships are properly defined,
# find all the weapons that belong to Zombie `'Ashley'`.

# Weapon.find(:belongs_to => Zombie.find(:name => "Ashley"))
# #<ArgumentError: Unknown key: name>

# Weapon.find(:belongs_to => Zombie.find.where(:name => "Ashley"))
# #<ActiveRecord::RecordNotFound: Couldn't find Zombie without an ID>

# Weapon.find(:belongs_to => Zombie.where(:name => "Ashley"))
# #<ArgumentError: Unknown key: belongs_to>

# Hint: After you find Ash, call the .weapons method to retrieve the associated items.

ashley = Zombie.where(:name => "Ashley")
# #<ActiveRecord::Relation [#<Zombie id: 1, name: "Ashley", graveyard: "Glen Haven Memorial Cemetery">]>
ashley.weapons
# Found an ActiveRecord::Relation instead of a Zombie object. Cannot find weapons on an ActiveRecord::Relation.
ashley[0].weapons
# #<ActiveRecord::Associations::CollectionProxy [#<Weapon id: 1, name: "Hammer", strength: 1, zombie_id: 1>]>
# Successfully found all of Ashley's weapons.