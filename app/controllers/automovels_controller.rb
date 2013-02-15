class AutomovelsController < ApplicationController
  # GET /automovels
  # GET /automovels.json
  def index
    @automovels = Automovel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @automovels }
    end
  end

  # GET /automovels/1
  # GET /automovels/1.json
  def show
    @automovel = Automovel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @automovel }
    end
  end

  # GET /automovels/new
  # GET /automovels/new.json
  def new
    @automovel = Automovel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @automovel }
    end
  end

  # GET /automovels/1/edit
  def edit
    @automovel = Automovel.find(params[:id])
  end

  # POST /automovels
  # POST /automovels.json
  def create
    @automovel = Automovel.new(params[:automovel])

    respond_to do |format|
      if @automovel.save
        format.html { redirect_to @automovel, notice: 'Automovel was successfully created.' }
        format.json { render json: @automovel, status: :created, location: @automovel }
      else
        format.html { render action: "new" }
        format.json { render json: @automovel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /automovels/1
  # PUT /automovels/1.json
  def update
    @automovel = Automovel.find(params[:id])

    respond_to do |format|
      if @automovel.update_attributes(params[:automovel])
        format.html { redirect_to @automovel, notice: 'Automovel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @automovel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /automovels/1
  # DELETE /automovels/1.json
  def destroy
    @automovel = Automovel.find(params[:id])
    @automovel.destroy

    respond_to do |format|
      format.html { redirect_to automovels_url }
      format.json { head :no_content }
    end
  end
end
