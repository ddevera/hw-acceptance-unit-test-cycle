Feature: remove a movie from the database
 
  As a tryant ruler against the arts
  So that I can squander the dreams of many
  I want to remove movies
 
Background: movies in database
 
  Given the following movies exist:
  | title        | rating | director     | release_date |
  | Star Wars    | PG     | George Lucas |   1977-05-25 |
  | Blade Runner | PG     | Ridley Scott |   1982-06-25 |
  | Alien        | R      |              |   1979-05-25 |
  | THX-1138     | R      | George Lucas |   1971-03-11 |

  And  I am on the RottenPotatoes home page
  
Scenario: remove movie from database
  When I follow "More about Star Wars"
  And  I press "Delete"
  Then  I should be on the home page
  Then I reload the page
  And I should not see "Star Wars"
