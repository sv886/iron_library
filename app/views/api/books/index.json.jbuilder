json.books @books do |book|
  json.id book.id
  json.title book.title
  json.price book.price
  json.photo_url book.photo_url
  json.author_id book.author_id
  json.book_url book_path(id: book.id)
end
