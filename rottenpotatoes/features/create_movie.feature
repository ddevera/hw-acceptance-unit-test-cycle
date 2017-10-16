Feature: add a movie to the database
 
  As a movie creator
  So that I can later find my amazing creations
  I want to add movies
 
Background: movies in database
 
  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  | Alien        | R      |              |   1979-05-25 |
  | THX-1138     | R      | George Lucas |   1971-03-11 |

  And  I am on the RottenPotatoes home page
  
Scenario: add movie to database
  When I follow "Add new movie"
  And  I fill in "Title" with "Ex Machina"
  And  I select "R" from "Rating"
  And  I press "Save Changes"
  Then  I should be on the home page
  And I should see "Ex Machina"
