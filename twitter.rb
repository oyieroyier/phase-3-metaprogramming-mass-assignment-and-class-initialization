class User
  attr_accessor :name, :age, :location, :username, :bio
  def initialize(attributes)
    attributes.each { |key, value| self.send("#{key}=", value) }
  end
end

twitter_user = {
  name: 'Sophie',
  username: 'sm_debenedetto',
  age: 26,
  location: 'NY, NY',
}

# sophie = User.new(twitter_user)

# puts sophie.name
# puts sophie.age
# puts sophie.location

newer_twitter_user = {
  name: 'Jamiels',
  username: 'jamiels001',
  age: 24,
  location: 'San Francisco',
  bio: 'jamiels not daniels',
}

jamiels = User.new(newer_twitter_user)
# puts jamiels.bio

# Mass Assignment and Metaprogramming
puts instance_of?(User)

# name = "name"
# jina = "John"
# print "#{name}=" + jina

class People
	def initialize(attributes)
		attributes.each do |key, value|
			self.class.attr_accessor(key)
			self.send("#{key}=", value)
		end
	end
end

hi = People.new(newer_twitter_user)
puts hi.name
puts hi.username
puts hi.location

so = People.new(twitter_user)

puts so.name
puts "Sophie lives in #{so.location }"
