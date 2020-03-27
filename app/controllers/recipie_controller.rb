require 'json'
class RecipieController < ApplicationController
    def index
        recipies = find_recipe(params[:recipe])
        unless recipies
          flash[:alert] = 'recipe not found'
          return render action: :index
        end
        @recipe = recipies["hits"]
        @recipe1 = recipies["recipe"]
         
      end
      

      def search
        recipies = find_recipe(params[:recipe])
        unless recipies
          flash[:alert] = 'recipe not found'
          return render action: :index
        end
        @recipe = recipies["hits"]

      end

      private
      def request_api(url)
        response = Excon.get(
          url,
          headers: {
            'X-RapidAPI-Host' => URI.parse(url).host,
            'X-RapidAPI-Key' => ('7cfcfd3636mshbab915e3feff360p16fe37jsn6e8a9e86825d')
          }
        )
        return nil if response.status != 200
        JSON.parse(response.body)
      end
      def find_recipe(q)
        query = URI.encode("#{q}")
        request_api(
          "https://edamam-recipe-search.p.rapidapi.com/search?q=#{query}"
        )
      end

    
   
    
end
