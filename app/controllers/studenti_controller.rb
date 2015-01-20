class StudentiController < ApplicationController
  before_action :set_studente, only: [:show, :edit, :update, :destroy]

  # GET /studenti
  # GET /studenti.xml
  # GET /studenti.json
  def index
    @studenti = Studente.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @studenti }
      format.json { render json: @studenti }
    end
  end

  # GET /studenti/1
  # GET /studenti/1.xml
  # GET /studenti/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render xml: @studente }
      format.json { render json: @studente }
    end
  end

  # GET /studenti/new
  def new
    @studente = Studente.new
  end

  # GET /studenti/1/edit
  def edit
  end

  # POST /studenti
  # GET /studenti/1.xml
  # GET /studenti/1.json
  def create
    @studente = Studente.new(studente_params)

    respond_to do |format|
      if @studente.save
        format.html { redirect_to @studente, notice: 'Studente was successfully created.' }
        format.xml { render :show, status: :created, location: @studente }
        format.json { render :show, status: :created, location: @studente }
      else
        format.html { render :new }
        format.xml { render xml: @studente.errors, status: :unprocessable_entity }
        format.json { render json: @studente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studenti/1
  # PATCH/PUT /studenti/1.xml
  # PATCH/PUT /studenti/1.json
  def update
    respond_to do |format|
      if @studente.update(studente_params)
        format.html { redirect_to @studente, notice: 'Studente was successfully updated.' }
        format.xml { render :show, status: :ok, location: @studente }
        format.json { render :show, status: :ok, location: @studente }
      else
        format.html { render :edit }
        format.xml { render xml: @studente.errors, status: :unprocessable_entity }
        format.json { render json: @studente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studenti/1
  # DELETE /studenti/1.xml
  # DELETE /studenti/1.json
  def destroy
    @studente.destroy
    respond_to do |format|
      format.html { redirect_to studenti_url, notice: 'Studente was successfully destroyed.' }
      format.xml { head :no_content }
      format.json { head :no_content }
    end
  end

  def help
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_studente
      @studente = Studente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def studente_params
      params.require(:studente).permit(:nome, :cognome, :anno_di_nascita)
    end
end
