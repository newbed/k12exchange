class DocsController < ApplicationController
  def index
    @docs = Doc.all
    # @q = Doc.ransack(params[:q])
    # @docs = @q.result

  end

  def show
    @doc = Doc.find(params[:id])
  end

  def new
    @doc = Doc.new
  end

  def create
    @doc = Doc.new
    @doc.url = params[:url]
    @doc.title = params[:title]
    @doc.kind = params[:kind]
    @doc.avg_rating = params[:avg_rating]
    @doc.description = params[:description]
    @doc.user_id = current_user.id

    if @doc.save
      redirect_to "/docs", :notice => "Doc created successfully."
    else
      render 'new'
    end
  end

  def edit
    @doc = Doc.find(params[:id])
  end

  def update
    @doc = Doc.find(params[:id])

    @doc.url = params[:url]
    @doc.title = params[:title]
    @doc.kind = params[:kind]
    @doc.avg_rating = params[:avg_rating]
    @doc.description = params[:description]
    @doc.user_id = current_user.id

    if @doc.save
      redirect_to "/docs", :notice => "Doc updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @doc = Doc.find(params[:id])

    @doc.destroy

    redirect_to "/docs", :notice => "Doc deleted."
  end
end
