class RatingsController < ApplicationController
  def index
    @ratings = Rating.all
  end

  def show
    @rating  = Rating.find(params[:id])
  end

  def new
    @rating  = Rating.new
  end

  def create
    @rating         = Rating.new
    @rating.stars   = params[:stars]
    @rating.comment = params[:comment]
    @rating.doc_id  = params[:doc_id]
    @rating.user_id = current_user.id

    if @rating.save
      redirect_to :back, :notice => "Rating created successfully."
    else
      redirect_to :back, :notice => "Rating not saved"
    end
  end

  def edit
    @rating = Rating.find(params[:id])
  end

  def update
    @rating = Rating.find(params[:id])

    @rating.stars   = params[:stars]
    @rating.comment = params[:comment]
    @rating.doc_id  = @rating.doc_id
    @rating.user_id = current_user.id

    if @rating.save
      redirect_to :back, :notice => "Rating updated successfully."
    else
      redirect_to :back, :notice => "Rating not saved"
    end
  end

  def destroy
    @rating = Rating.find(params[:id])

    @rating.destroy

    redirect_to "/ratings", :notice => "Rating deleted."
  end
end
