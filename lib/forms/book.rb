require_relative 'base'

module Forms
  class Book < Base
    attr_accessor :id, :title, :description, :isbn, :release_year, :publisher, :category, :price

    def initialize(params)
      @id = params[:id]
      @title = params[:title]
      @description = params[:description]
      @isbn = params[:isbn]
      @release_year = params[:release_year]
      @publisher = params[:publisher]
      @category = params[:category]
      @price = params[:price]
    end

  end
end
