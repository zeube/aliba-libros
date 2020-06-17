json.extract! book, :id, :title, :author, :description, :stock, :price, :created_at, :updated_at
json.url book_url(book, format: :json)
