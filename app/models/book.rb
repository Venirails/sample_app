class Book < ActiveRecord::Base
	self.per_page = 5
validates :book_name, presence: true
validates :book_name, uniqueness: true
validates :author, presence: true
validates :price, numericality: true
validates :book_name, length: { minimum: 3 }

before_save :merge_book_name

after_destroy :display_message

def merge_book_name
	self.book_name = self.book_name + " by " + self.author
end

def display_message
puts "Book has been deleted..............................."	
end

end
