require 'yellow_api'
class YellowpagesController < ApplicationController
  # GET /yellowpages
  # GET /yellowpages.json
  before_filter :yellowauth

  def index

    @results = Yellowpage.search(params[:search])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @yellowpages }
    end
  end

  # GET /yellowpages/1
  # GET /yellowpages/1.json
  def show
    @yellowpage = Yellowpage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @yellowpage }
    end
  end

  # GET /yellowpages/new
  # GET /yellowpages/new.json
  def new
    @yellowpage = Yellowpage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @yellowpage }
    end
  end

  # GET /yellowpages/1/edit
  def edit
    @yellowpage = Yellowpage.find(params[:id])
  end

  # POST /yellowpages
  # POST /yellowpages.json
  def create
    @yellowpage = Yellowpage.new(params[:yellowpage])

    respond_to do |format|
      if @yellowpage.save
        format.html { redirect_to @yellowpage, notice: 'Yellowpage was successfully created.' }
        format.json { render json: @yellowpage, status: :created, location: @yellowpage }
      else
        format.html { render action: "new" }
        format.json { render json: @yellowpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /yellowpages/1
  # PUT /yellowpages/1.json
  def update
    @yellowpage = Yellowpage.find(params[:id])

    respond_to do |format|
      if @yellowpage.update_attributes(params[:yellowpage])
        format.html { redirect_to @yellowpage, notice: 'Yellowpage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @yellowpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yellowpages/1
  # DELETE /yellowpages/1.json
  def destroy
    @yellowpage = Yellowpage.find(params[:id])
    @yellowpage.destroy

    respond_to do |format|
      format.html { redirect_to yellowpages_url }
      format.json { head :no_content }
    end
  end

  private 
  def yellowauth
    @client = YellowApi.new(:apikey => "5b4f27ge5trzkkrqc49txu8y", 
                            :sandbox_enabled => true)
  end
end
