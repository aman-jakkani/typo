Feature: Categories
  As a blog admin
  In order to categorize my blogs to share
  I want to be able to create categories for my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create categories
    Given I am on the new categories page
    When I fill in "category_name" with "College"
    And I fill in "category_keywords" with "School"
    And I fill in "category_permalink" with "ABC"
    And I fill in "category_description" with "Description"
    And I press "Save"
    Then I should see "College"
    Then I should see "School"
    Then I should see "ABC"
    Then I should see "Description"

    Then I follow "College"


    When I fill in "category_name" with "Food"
    And I fill in "category_keywords" with "Tacos"
    And I fill in "category_permalink" with "YUM"
    And I fill in "category_description" with "Description_A"
    And I press "Save"
    Then I should see "Food"
    Then I should see "Tacos"
    Then I should see "YUM"
    Then I should see "Description_A"