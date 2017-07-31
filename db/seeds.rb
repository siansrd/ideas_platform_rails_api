Comment.delete_all
Idea.delete_all
Category.delete_all
User.delete_all

sci_cat = Category.create({ name: 'science' })
art_cat = Category.create({ name: 'art' })
lit_cat = Category.create({ name: 'literature' })
soc_cat = Category.create({ name: 'social' })

user_1 = User.create({ name: 'jamie', email: 'jamie@email.com', password: 'password' })
user_2 = User.create({ name: 'sarah', email: 'sarah@email.com', password: 'password' })
user_3 = User.create({ name: 'wissam', email: 'wissam@email.com', password: 'password' })
user_4 = User.create({ name: 'rona', email: 'rona@email.com', password: 'password' })

sci2_idea = Idea.create({ 
  title: 'How to better peer review papers',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  summary: 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.',
  user: user_1,
  votes: 3,
  views: 20,
  category_id: sci_cat.id
})

sci1_idea = Idea.create({ 
  title: 'An infinite source of energy',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  summary: 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.',
  user: user_1,
  votes: 20,
  views: 300,
  category_id: sci_cat.id
})

art_idea = Idea.create({ 
  title: 'A sculputre made of air',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  summary: 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.',
  user: user_2,
  votes: 2,
  views: 15,
  category_id: art_cat.id
})

soc_idea = Idea.create({ 
  title: 'How to share knowledge in the workplace',
  description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  summary: 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.',
  user: user_3,
  votes: 5,
  views: 30,
  category_id: soc_cat.id
})

sci1_idea_comment1 = Comment.create({
  idea: sci1_idea,
  user: user_3,
  votes: 0,
  text: 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.'
})

sci1_idea_comment2 = Comment.create({
  idea: sci1_idea,
  user: user_4,
  comment: sci1_idea_comment1,
  votes: 1,
  text: 'Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus.'
})

sci1_idea_comment3 = Comment.create({
  idea: sci1_idea,
  user: user_2,
  comment: sci1_idea_comment2,
  votes: 1,
  text: 'Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. '
})



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
