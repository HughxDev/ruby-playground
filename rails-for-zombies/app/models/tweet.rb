# ActiveRecord::Base maps the class to the table `tweets`
# Class → uppercase + singular
# Table → lowercase + plural
class Tweet < ActiveRecord::Base
  # `validates_presence_of field`: Makes sure field isn’t blank
  #
  # >> t = Tweet.new
  # => #<Tweet id: nil, status: nil, zombie: nil>
  # 
  # >> t.save
  # => false
  #
  # >> t.errors.messages
  # => {status:["can't be blank"]}
  #
  # >> t.errors[:status][0]
  # => "can't be blank"
  validates_presence_of :status
  # Alternatively:
  # validates :status, presence: true

  # validates_numericality_of :fingers

  # validates_uniqueness_of :toothmarks

  # validates_confirmation_of :password

  # validates_acceptance_of :zombification

  # validates_length_of :password, minimum: 3

  # validates_format_of :email, with: /regex/i

  # validates_inclusion_of :age, in: 21..99

  # validates_exclusion_of :age, in: 0...21, message: "Sorry you must be over 21"

  # validates :status, length: { minimum: 3 }

  # validates :status,
  #           presence: true,
  #           length: { minimum: 3 }
  # # Additional options:
  #           presence: true,
  #           uniqueness: true,
  #           numericality: true,
  #           length: { minimum: 0, maximum: 2000 },
  #           format: { with: /.*/ },
  #           acceptance: true,
  #           confirmation: true

  belongs_to :zombie # Singular. A tweet can only belong to one zombie.

  
end

