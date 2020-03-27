// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

//= require jquery3
//= require popper
//= require bootstrap-sprockets
// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// window.onload = function() {
//     var form = document.querySelector('.search-form');


    
//     function handleSubmit(e) {
//         e.preventDefault();

//         const serachQuery = document.querySelector('.search-input').value;
//         const url = "https://jsonplaceholder.typicode.com/todos/1";
//         const searchResultsElement = document.querySelector('.search-results');
        
//         fetch(`https://spoonacular-recipe-food-nutrition-v1.p.rapidapi.com/recipes/mealplans/generate?targetCalories=${serachQuery}&timeFrame=day`, {
//             "method": "GET",
//             "headers": {
//                 "x-rapidapi-host": "spoonacular-recipe-food-nutrition-v1.p.rapidapi.com",
//                 "x-rapidapi-key": "7cfcfd3636mshbab915e3feff360p16fe37jsn6e8a9e86825d"
//             }
//         })
//         .then(response => response.json())
//         .then(response => {
//             const { meals } = response;
//             let html = "";

//             meals.forEach(meal => {
//                 html += `<h1>${meal.title}</h1>`
//             });

//             searchResultsElement.innerHTML = html;
//         })
//         .catch(err => {
//             console.log(err);
//         });


//     }

//     form.addEventListener('submit', handleSubmit)
// }

