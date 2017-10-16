require 'rails_helper'

describe MoviesController do
    
    describe "#director" do
       context "When specified movie has a director" do
           
           it "should find movies with the same director" do
           
               @movie_id = "1234"
               @movie = double('fake_movie', :director => 'James Cameron')
               
               expect(Movie).to receive(:find).with(@movie_id).and_return(@movie)
               expect(@movie).to receive(:similar_movies)
               
               get :director, :id => @movie_id
               
               expect(response).to render_template(:director)
           end
           
       end
       context "When specified movie has no director" do
           it "should redirect to the movies page" do
               #jkj
           end
       end
    end
    
end