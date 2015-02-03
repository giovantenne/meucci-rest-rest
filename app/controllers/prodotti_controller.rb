class ProdottiController < ApplicationController
  before_action :set_prodotto, only: [:show, :edit, :update, :destroy]

  # GET /prodotti
  # GET /prodotti.xml
  # GET /prodotti.json
  def index
    @prodotti = Prodotto.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render xml: @prodotti }
      format.json { render json: @prodotti }
    end
  end

  # GET /prodotti/1
  # GET /prodotti/1.xml
  # GET /prodotti/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render xml: @prodotto }
      format.json { render json: @prodotto }
    end
  end

  # GET /prodotti/new
  def new
    @prodotto = Prodotto.new
  end

  # GET /prodotti/1/edit
  def edit
  end

  # POST /prodotti
  # POST /prodotti.xml
  # POST /prodotti.json
  def create
    @prodotto = Prodotto.new(prodotto_params)

    respond_to do |format|
      if @prodotto.save
        format.html { redirect_to @prodotto, notice: 'Prodotto was successfully created.' }
        format.json { render json: @prodotto, status: :created }
        format.xml { render xml: @prodotto, status: :created }
      else
        format.html { render :new }
        format.xml { render json: @prodotto.errors, status: :unprocessable_entity }
        format.json { render json: @prodotto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prodotti/1
  # PATCH/PUT /prodotti/1.xml
  # PATCH/PUT /prodotti/1.json
  def update
    respond_to do |format|
      if @prodotto.update(prodotto_params)
        format.html { redirect_to @prodotto, notice: 'Prodotto was successfully updated.' }
        format.json { head :no_content, status: :ok }
        format.xml { head :no_content, status: :ok }
      else
        format.html { render :edit }
        format.xml { render json: @prodotto.errors, status: :unprocessable_entity }
        format.json { render json: @prodotto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prodotti/1
  # DELETE /prodotti/1.xml
  # DELETE /prodotti/1.json
  def destroy
    @prodotto.destroy
    respond_to do |format|
      format.html { redirect_to prodotti_url, notice: 'Prodotto was successfully destroyed.' }
      format.xml { head :no_content }
      format.json { head :no_content }
    end
  end

  def help
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prodotto
      @prodotto = Prodotto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prodotto_params
      params.require(:prodotto).permit(:nome, :descrizione, :prezzo)
    end
end
