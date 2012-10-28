class PicturesController < ApplicationController

def new
	@picture = Picture.new
end

def create
	@picture = Picture.create(params[:picture])
	if @picture.save
		redirect_to pictures_url
	else 
		render 'new'
	end
end

def index
	@pictures = Picture.all
end

def show
	@picture = Picture.find_by_id(params[:id])
end

def destroy
	p = Picture.find_by_id(params[:id])
	p.destroy
	redirect_to pictures_url
end

def update
	@picture = Picture.find_by_id(params[:id])
	@picture.url = params[:picture][:url]
	@picture.title = params[:picture][:title]
	if @picture.save
		redirect_to pictures_url
	else
		render 'edit'
	end
end

def edit
	@picture = Picture.find_by_id(params[:id])
end

end