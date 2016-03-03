if Book.count == 0

  book = Book.new
  book.title = "To Kill a Mockingbird"
  book.photo_url = "http://ecx.images-amazon.com/images/I/51grMGCKivL._SX307_BO1,204,203,200_.jpg"
  book.price = 5.89

  book = Book.new
  book.title = "A Tale of Two Cities"
  book.photo_url = "http://ecx.images-amazon.com/images/I/51QLNIOvdBL._SX330_BO1,204,203,200_.jpg"
  book.price = 8.65

  book = Book.new
  book.title = "How to Win Friends & Influence People"
  book.photo_url = "http://ecx.images-amazon.com/images/I/41%2B7Y%2BI2kTL._SX314_BO1,204,203,200_.jpg"
  book.price = 8.22

  book = Book.new
  book.title = "Just a Mess"
  book.photo_url = "http://ecx.images-amazon.com/images/I/619QDPrxhoL._SY497_BO1,204,203,200_.jpg"
  book.price = 3.94

end

if Author.count == 0

  author = Author.new
  author.first_name = "Harper"
  author.last_name = "Lee"
  author.bio = """
  Nelle Harper Lee was an American novelist widely known for
  To Kill a Mockingbird, published in 1960. Immediately successful,
  it won the 1961 Pulitzer Prize and has become a classic of modern
  American literature.
  """

  author = Author.new
  author.first_name = "Charles"
  author.last_name = "Dickens"
  author.bio = """
  Charles John Huffam Dickens was an English writer and social critic.
  He created some of the world's best-known fictional characters and is
  regarded as the greatest novelist of the Victorian era.
  """

  author = Author.new
  author.first_name = "Dale"
  author.last_name = "Carnegie"
  author.bio = """
  Dale Harbison Carnegie was an American writer and lecturer and the
  developer of famous courses in self-improvement, salesmanship, corporate
  training, public speaking, and interpersonal skills.
  """

  author = Author.new
  author.first_name = "Mercer"
  author.last_name = "Mayor"
  author.bio = """
  MERCER MAYER began writing and illustrating children's books in 1966,
  and since that time, he has published over 300 titles. Open almost any
  of the award-winning author/illustrator's books, and out may pop dragons,
  cuddly monsters, wonderful creatures, and endearing critters.
  """

end
