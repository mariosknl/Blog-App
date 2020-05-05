# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Author.create(username: "admin", email: "example@mail.com", password: "admin" )

bands = {
  'Led Zeppelin' => 'Stairway to Heaven',
  'Pink Floyd' => 'Comfortably Numb',
  'Radiohead' => 'Karma Police',
  'Black Sabbath' => 'War Pigs',
  'Black Sabbath' => 'Paranoid',
  'Metallica' => 'Enter Sandman'
}

bands.each do |band, song|
  Article.create(title: band, body: song)
end

names = ['Kubilay','Marios','Jamilia','Teo','David Gilmour', 'Jimmy Page']
comments = ['Great Song!','Awesome!','Guitar is so great!','Song of my life.','This band is awesome','Such a beautiful intro.','Look at the man who is holding the drum sticks.','Red guitar!','Nice','Super']


Article.all.each do |article|
  Comment.create(author_name: names.sample, body: comments.sample, article_id: article.id)
  Comment.create(author_name: names.sample, body: comments.sample, article_id: article.id)
end