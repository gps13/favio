class FaviniosController < ApplicationController
  # GET /favinios
  # GET /favinios.json
  def index
    @favinios = Favinio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @favinios }
    end
  end

  # GET /favinios/1
  # GET /favinios/1.json
  def show
    @favinio = Favinio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @favinio }
    end
  end

  # GET /favinios/new
  # GET /favinios/new.json
  def new
    @favinio = Favinio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @favinio }
    end
  end

  # GET /favinios/1/edit
  def edit
    @favinio = Favinio.find(params[:id])
  end

  # POST /favinios
  # POST /favinios.json
  def create
    @favinio = Favinio.new(params[:favinio])

    respond_to do |format|
      if @favinio.save
        format.html { redirect_to favinios_path, notice: 'Favinio was successfully created.' }
        format.json { render json: @favinio, status: :created, location: @favinio }
      else
        format.html { render action: "new" }
        format.json { render json: @favinio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /favinios/1
  # PUT /favinios/1.json
  def update
    @favinio = Favinio.find(params[:id])

    respond_to do |format|
      if @favinio.update_attributes(params[:favinio])
        format.html { redirect_to @favinio, notice: 'Favinio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @favinio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favinios/1
  # DELETE /favinios/1.json
  def destroy
    @favinio = Favinio.find(params[:id])
    @favinio.destroy

    respond_to do |format|
      format.html { redirect_to favinios_url }
      format.json { head :no_content }
    end
  end
end
