class RatingsController < ApplicationController
  def index
    @ratings = Rating.all
  end

  def show
    @rating = Rating.find(params[:id])
  end

  def new
    @rating = Rating.new
  end

  def create
    @rating = Rating.new
    @rating.stars = params[:stars]
    @rating.comment = params[:comment]
    @rating.doc_id = params[:doc_id]

    if @rating.save
      @rating.doc.avg_rating = 2
      redirect_to "/", :notice => "Rating created successfully."
    else
      render 'new'
    end
  end

  def edit
    @rating = Rating.find(params[:id])
  end

  def update
    @rating = Rating.find(params[:id])

    @rating.stars = params[:stars]
    @rating.comment = params[:comment]
    @rating.doc_id = @rating.doc_id

    if @rating.save
      @rating.doc.avg_rating = 4
      redirect_to "/ratings", :notice => "Rating updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @rating = Rating.find(params[:id])

    @rating.destroy

    redirect_to "/ratings", :notice => "Rating deleted."
  end
end
