class ReservationsController < ApplicationController

  def create
   @reservation = Reservation.new
   book_id = params[:book_id].to_i
   @book = Book.find(book_id)
   @reservation.book = @book
   @reservation.user = current_user
   @reservation.save
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
  end

end
