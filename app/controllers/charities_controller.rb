class CharitiesController < ApplicationController
  
  def index
    @charities = Charity.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @charities }
    end
  end

  def show
    @charity = Charity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @charity }
    end
  end

  def new
    @charity = Charity.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @charity }
    end
  end

  def edit
    @charity = Charity.find(params[:id])
  end

  def create
    @charity = Charity.new(params[:charity])

    respond_to do |format|
      if @charity.save
        format.html { redirect_to @charity, notice: 'Charity was successfully created.' }
        format.json { render json: @charity, status: :created, location: @charity }
      else
        format.html { render action: "new" }
        format.json { render json: @charity.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @charity = Charity.find(params[:id])

    respond_to do |format|
      if @charity.update_attributes(params[:charity])
        format.html { redirect_to @charity, notice: 'Charity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @charity.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @charity = Charity.find(params[:id])
    @charity.destroy

    respond_to do |format|
      format.html { redirect_to charities_url }
      format.json { head :no_content }
    end
  end
end
