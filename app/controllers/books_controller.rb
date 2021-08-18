class BooksController < ApplicationController

    def index
        books = Book.all
        render json: books
    end

    def show
        book = Book.find(params[:id])
        render json: book
    end

    def create
    end

    def update
    end

    def destroy
    end

    private

    def book_params
        params.require(:book).permit(:title, :author, :read, :genre_id)
    end
end
