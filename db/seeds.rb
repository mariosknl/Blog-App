# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Author.create(username: "admin", email: "example@mail.com", password: "admin" )
Author.create(username: "bdmin", email: "a@mail.com", password: "admin" )

bands = {
  'Led Zeppelin' => {'Stairway to Heaven' => ["music", "rock", "fav"]},
  'Pink Floyd' => {'Comfortably Numb' => ["music", "psychedelic", "fav"]},
  'Radiohead' => {'Karma Police' => ["music", "alternative"]},
  'Black Sabbath' => {'War Pigs' => ["music", "metal"]},
  'Black Sabbath' => {'Paranoid' => ["music", "metal"]},
  'Metallica' => {'Enter Sandman' => ["music", "heavy metal"]}
}

bands.each do |band, song_tags|
  song_tags.each do |song, tags|
    article_temp = Article.create(title: band, body: song, author_id: [1,2].sample)
    tags.each do |tag|
      unless Tag.where(name: tag).exists?
        tag_temp = Tag.create(name: tag)
      else
        tag_temp = Tag.where(name: tag)[0]
      end
      Tagging.create(tag_id: tag_temp.id, article_id: article_temp.id)
    end
  end
end

names = ['Kubilay','Marios','Jamilia','Teo','David Gilmour', 'Jimmy Page']
comments = ['Great Song!','Awesome!','Guitar is so great!','Song of my life.','This band is awesome','Such a beautiful intro.','Look at the man who is holding the drum sticks.','Red guitar!','Nice','Super']


Article.all.each do |article|
  Comment.create(author_name: names.sample, body: comments.sample, article_id: article.id)
  Comment.create(author_name: names.sample, body: comments.sample, article_id: article.id)
end