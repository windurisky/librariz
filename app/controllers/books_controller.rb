class BooksController < ApplicationController

  def show
    book = Book.find_by_id params[:id]
    render_response(book.as_json, 200)
  rescue StandardError => e
    # TODO: log the error, handle, or whatever here
    raise
  end

  def create
    form = Forms::Book.new(params)
    book = Services::Book::Create.new(form).run!
    render_response(book.as_json, 201)
  end

  def update
    
  end

end
