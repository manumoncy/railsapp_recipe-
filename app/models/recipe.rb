require 'httparty'
require 'pp'

class Recipe
	include HTTParty

	base_uri 'api.edamam.com/search'
	 def self.all
	 	get('/all')
	 end

	 def self.search_recipe(label)
	 	get('?q=' + label + '&app_id=33b7948f&app_key=a1bba32eacb2384f8ac6d2f72a5a80fc')
	 end


	 def self.details(label)
	 	get('?r=' + CGI.escape(label) + '&app_id=33b7948f&app_key=a1bba32eacb2384f8ac6d2f72a5a80fc')
	 end
end

pp Recipe.details('http://www.edamam.com/ontologies/edamam.owl#recipe_57ea91026b2e496b5671ec4845536f2f')
#pp CGI.escape('"http://www.edamam.com/ontologies/edamam.owl#recipe_57ea91026b2e496b5671ec4845536f2f')
