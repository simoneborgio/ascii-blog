# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Setting.create!(site_name: 'AsciiBlog', site_subtitle: 'The real content-first blog', alert_on_comment: false) if Setting.all.count == 0

if Rails.env == 'development'
  User.create(username: 'admin', password: 'admin', role: 0, email: 'admin@foo.bar')
  User.create(username: 'editor', password: 'editor', role: 40, email: 'editor@foo.bar')

  Page.create(name: 'About', content: '== About', order: 0)

  Article.create(title: 'Article 01', uri: 'article-01', tags: 'Article', user: User.first!, release_date: Time.now, content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo mauris et urna ornare, at imperdiet arcu feugiat. Integer suscipit rutrum nunc ac commodo. Praesent faucibus neque sapien, at accumsan metus luctus ut. Nunc euismod, sem vel eleifend commodo, leo lectus rutrum nisi, ac bibendum ligula nunc et ante. Suspendisse fermentum placerat tortor a vulputate. Vivamus tristique neque et est accumsan, sed tempor ex dignissim. Aliquam ultrices risus vitae sem lacinia, id porta felis sagittis. Integer eu est neque.')
  Article.create(title: 'Article 02', uri: 'article-02', tags: 'Article', user: User.first!, release_date: Time.now, content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo mauris et urna ornare, at imperdiet arcu feugiat. Integer suscipit rutrum nunc ac commodo. Praesent faucibus neque sapien, at accumsan metus luctus ut. Nunc euismod, sem vel eleifend commodo, leo lectus rutrum nisi, ac bibendum ligula nunc et ante. Suspendisse fermentum placerat tortor a vulputate. Vivamus tristique neque et est accumsan, sed tempor ex dignissim. Aliquam ultrices risus vitae sem lacinia, id porta felis sagittis. Integer eu est neque.')
  Article.create(title: 'Article 03', uri: 'article-03', tags: 'Article', user: User.first!, release_date: Time.now, content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo mauris et urna ornare, at imperdiet arcu feugiat. Integer suscipit rutrum nunc ac commodo. Praesent faucibus neque sapien, at accumsan metus luctus ut. Nunc euismod, sem vel eleifend commodo, leo lectus rutrum nisi, ac bibendum ligula nunc et ante. Suspendisse fermentum placerat tortor a vulputate. Vivamus tristique neque et est accumsan, sed tempor ex dignissim. Aliquam ultrices risus vitae sem lacinia, id porta felis sagittis. Integer eu est neque.')
  Article.create(title: 'Article 04', uri: 'article-04', tags: 'Article', user: User.first!, release_date: Time.now, content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec commodo mauris et urna ornare, at imperdiet arcu feugiat. Integer suscipit rutrum nunc ac commodo. Praesent faucibus neque sapien, at accumsan metus luctus ut. Nunc euismod, sem vel eleifend commodo, leo lectus rutrum nisi, ac bibendum ligula nunc et ante. Suspendisse fermentum placerat tortor a vulputate. Vivamus tristique neque et est accumsan, sed tempor ex dignissim. Aliquam ultrices risus vitae sem lacinia, id porta felis sagittis. Integer eu est neque.')
end