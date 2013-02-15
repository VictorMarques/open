class WashingsController < ApplicationController
  # GET /washings
  # GET /washings.json
  def index
    @washings = Washing.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @washings }
    end
  end

  # GET /washings/1
  # GET /washings/1.json
  def show
    @washing = Washing.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @washing }
    end
  end

  # GET /washings/new
  # GET /washings/new.json
  def new
    @washing = Washing.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @washing }
    end
  end

  # GET /washings/1/edit
  def edit
    @washing = Washing.find(params[:id])
  end

  # POST /washings
  # POST /washings.json
  def create
    @washing = Washing.new(params[:washing])

    respond_to do |format|
      if @washing.save
        format.html { redirect_to @washing, notice: 'Washing was successfully created.' }
        format.json { render json: @washing, status: :created, location: @washing }
      else
        format.html { render action: "new" }
        format.json { render json: @washing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /washings/1
  # PUT /washings/1.json
  def update
    @washing = Washing.find(params[:id])

    respond_to do |format|
      if @washing.update_attributes(params[:washing])
        format.html { redirect_to @washing, notice: 'Washing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @washing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /washings/1
  # DELETE /washings/1.json
  def destroy
    @washing = Washing.find(params[:id])
    @washing.destroy

    respond_to do |format|
      format.html { redirect_to washings_url }
      format.json { head :no_content }
    end
  end
end
