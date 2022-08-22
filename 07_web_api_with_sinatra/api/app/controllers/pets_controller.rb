class PetsController < ApplicationController

   get '/pets' do
      pets = Pet.all
      pets.to_json
   end

   get '/pets/:id' do
      pet = Pet.find(params[:id])
      pet.to_json
   end

   post '/pets' do
      pet = Pet.create(pet_params)
      pet.to_json
   end

   patch '/pets/:id' do
      pet = Pet.find(params[:id])
      pet.update(pet_params)
      pet.to_json
   end

   delete '/pets/:id' do
      pet = Pet.find(params[:id])
      pet.destroy
      "RIP #{pet.name}"
   end

   def pet_params
      {name:params[:name], age:params[:age], breed:params[:breed], image_url:params[:image_url]}
   end
end