class RecipiesController < ApplicationController
        
        def index
          recipies = find_recipe(params[:meal])
          unless recipies
            flash[:alert] = 'recipe not found'
            return render action: :index
          end
          @recipe = recipies["meals"]
          @recipe1 = recipies["nutrients"]
           
        end

        def search
          recipies = find_recipe(params[:recipe])
          unless recipies
            flash[:alert] = 'recipe not found'
            return render action: :index
          end
          @recipe = recipies["meals"]

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
        def find_recipe(targetCalories)
          query = URI.encode("#{targetCalories}")
          request_api(
            "https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/mealplans/generate?timeFrame=day&targetCalories?q=#{query}"
          )
        end

      
     
      
end
