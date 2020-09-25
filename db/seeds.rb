# Post.create!([
#   {title: "Chicago is big", text: "Totally,really", image_url: "image.png"},
#   {title: "Work is Hard", text: "Work is super hard", image_url: "image.jpeg"},
#   {title: "Favorite coding language", text: "Rails!", image_url: "image.jpg"}
# ])

# Tag.create!([
#   {name: "travel"},
#   {name: "work"},
#   {name: "programming"}
# ])

PostTags.create!([
  {post_id: 1, tag_id: 1},
  {post_id: 2, tag_id: 2},
  {post_id: 3, tag_id: 3},
  {post_id: 1, tag_id: 2}
])
