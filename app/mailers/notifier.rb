class Notifier < ActionMailer::Base
  default from: "info@book.com"
  def send_email_to_admin(book)
	  @book_name = book.name
	  @author = book.author
	  @price = book.price
	  @year = book.year
	  mail(:to=>"veni.rails@gmail.com",:subject=>"A new book has been added")
	  #attachments['filename.jpg'] = File.read('/path/to/filename.jpg')
  end
end
