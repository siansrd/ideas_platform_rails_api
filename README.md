# Ideas Plaform API

To run clone the repo and run the following commands:
1. `rake db:create`
2. `rake db:seed`
3. `rails s -p 5000`

The api has be following users: 
1. `http://localhost:5000/api/ideas` - ideas index
2. `http://localhost:5000/api/ideas/:id` - idea show (includes comments)
3. `http://localhost:5000/api/users` - users index
4. `http://localhost:5000/api/users/:email` - user show
5. `http://localhost:5000/api/users/:id/ideas` - ideas by user
6. `http://localhost:5000/api/comments` - comments index
