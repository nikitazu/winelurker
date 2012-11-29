
class DrinkItemsController < ApplicationController
  # GET /drink_items
  # GET /drink_items.json
  def index
    @drink_items = DrinkItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @drink_items }
    end
  end

  # GET /drink_items/1
  # GET /drink_items/1.json
  def show
    @drink_item = DrinkItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @drink_item }
    end
  end

  # GET /drink_items/new
  # GET /drink_items/new.json
  def new
    @drink_item = DrinkItem.new
    @drink_item.drink_id = params[:drink_id]
    @places = Place.all.map { |place| [place.title, place.id] }

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @drink_item }
    end
  end

  # GET /drink_items/1/edit
  def edit
    @drink_item = DrinkItem.find(params[:id])
    @places = Place.all.map { |place| [place.title, place.id] }
  end

  # POST /drink_items
  # POST /drink_items.json
  def create
    @drink_item = DrinkItem.new(params[:drink_item])
    @places = Place.all.map { |place| [place.title, place.id] }

    respond_to do |format|
      if @drink_item.save
        format.html { redirect_to @drink_item, notice: 'Drink item was successfully created.' }
        format.json { render json: @drink_item, status: :created, location: @drink_item }
      else
        format.html { render action: "new" }
        format.json { render json: @drink_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /drink_items/1
  # PUT /drink_items/1.json
  def update
    @drink_item = DrinkItem.find(params[:id])
    @places = Place.all.map { |place| [place.title, place.id] }
    
    respond_to do |format|
      if @drink_item.update_attributes(params[:drink_item])
        format.html { redirect_to @drink_item, notice: 'Drink item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @drink_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drink_items/1
  # DELETE /drink_items/1.json
  def destroy
    @drink_item = DrinkItem.find(params[:id])
    @drink_item.destroy

    respond_to do |format|
      format.html { redirect_to drink_items_url }
      format.json { head :no_content }
    end
  end
end
