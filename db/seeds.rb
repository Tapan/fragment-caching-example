logger = Logger.new(STDOUT)

logger.info "Deleting existing data..."
Post.delete_all
Comment.delete_all

10.times do |i|
  logger.info "Creating post no. #{i + 1}"
  Post.create!(title: Faker::Book.title, body: Faker::Lorem.paragraph(rand(5..16)))
end

Post.all.each do |post|
  15.times do |i|
    logger.info "Creating comment no. #{i + 1} for post: #{post.id}"
    post.comments.create!(body: Faker::Lorem.paragraph(rand(4..10)))
  end
end
