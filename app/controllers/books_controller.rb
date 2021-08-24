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
        book = Book.new(book_params)
        if book.save
            render json: book
        else
            render json: book.errors
        end
    end

    def update
        book = Book.find(params[:id])
        if book.update(book_params)
            render json: book
        else
            render json: book.errors
        end
    end

    def destroy
        book = Book.find(params[:id])
        book.destroy
    end

    private

    def book_params
        params.require(:book).permit(:title, :author, :read, :genre_id)
    end
end
