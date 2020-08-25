# Instagram like clone using ROR

* Ruby version (ruby 2.7.1p83)

* Rails version (5.0.7.2)

* Mongoid (6.0.3)

## Installation
```git clone git@github.com:gurindernarang/TODO_rails_api.git
cd TODO_rails_api
gem install bundler
bundle install
rails s
```

## Provide the following APIs
BASE_URL will be http://localhost:3000 in case we run this on our local with default port.
1. Get a list of all the todos (GET): ```BASE_URL/api/todos```
2. Create a todos (POST): ```BASE_URL/api/todos```
3. Specific Todo with ID (GET): ```BASE_URL/api/todos/:id```
4. Update a Specific Todo with ID (PATCH): ```BASE_URL/api/todos/:id```
5. Assign a tag to a specific todo (PATCH): ```BASE_URL/api/todos/:id/assign_tag```
6. Delete a tag from a specific todo (PATCH): ```BASE_URL/api/todos/:id/delete_tag```
7. Get a list of all the todo items for a specific tag (GET): ```BASE_URL/api/tags/:name/todos```

You can also find a file under **"Todo_Postman_Collection.json"** name in the root directory which is basically a postman collection to test all the above mentioned APIs.
