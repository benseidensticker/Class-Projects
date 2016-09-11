class Recipe
	ENV['FOOD2FORK_KEY'] = '1012cff1c61df0774e05641c01cc9f87'

	key_value = ENV['FOOD2FORK_KEY']
	hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
	
	base_uri "http://#{hostport}/api"
	default_params key: key_value, q: search
	format :json

	def self.for keyword
		get("", query: {query: keyword})["elements"]
	end

end