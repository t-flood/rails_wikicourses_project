# Specifications for the Rails Assessment

Specs:

- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes)

  - A user has_many topic's, a topic has_many courses, and a course has_many articles.

- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)

  - A course belongs_to a topic and a user. An article belongs_to a course.

- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)

  - A topic has_many articles through courses, and an article has_many topics through courses.

- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)

  - There is a many to many relationship between topics and articles. A topic can have many articles and an article can have many topics.

- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)

  - a course is the "through" part of the has_many through relationship. A course has a user submittable name, overview, and conclusion.

- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)

  - I validate a name for the course. Otherwise the app would have empty line items in the course index.

- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)

  - I use the active record scope method .where to find the next and previous articles so a user can navigate forward and backward in a course.

- [x] Include signup (how e.g. Devise)
  - Devise
- [x] Include login (how e.g. Devise)
  - Devise
- [x] Include logout (how e.g. Devise)
  - Devise
- [x] Include third party signup/login (how e.g. Devise/OmniAuth)
  - Devise/Omniauth
- [x] Include nested resource show or index (URL e.g. users/2/recipes)
  - http://localhost:3000/courses/27
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
  - http://localhost:3000/courses/27/articles/new
- [x] Include form display of validation errors (form URL e.g. /recipes/new)
  - http://localhost:3000/courses/new

Confirm:

- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate
