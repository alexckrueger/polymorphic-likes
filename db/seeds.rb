User.create!([
  {name: "Alex"},
  {name: "Bear"},
  {name: "Tara"}
])

Post.create!([
  {user_id: 1, title: "How to handle your small puppy", body: "Give them a lot of pets and treats."},
  {user_id: 3, title: "The best treats to give your dog", body: "Greenies"}
])

Comment.create!([
  {user_id: 2, post_id: 1, body: "Yes! Give them all the pets and all the treats!"},
  {user_id: 2, post_id: 2, body: "GREENIES"}
])

Like.create!([
  {:likeable => Post.first, user_id: 2},
  {:likeable => Post.second, user_id: 2},
  {:likeable => Comment.first, user_id: 1},
  {:likeable => Comment.second, user_id: 3}
])