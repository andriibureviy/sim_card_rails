class CardNumbersController < ApplicationController
  before_action :set_card_number, only: %i[ show edit update destroy ]

  # GET /card_numbers or /card_numbers.json
  def index
    @card_numbers = CardNumber.all
  end

  # GET /card_numbers/1 or /card_numbers/1.json
  def show
  end

  # GET /card_numbers/new
  def new
    @card_number = CardNumber.new
  end

  # GET /card_numbers/1/edit
  def edit
  end

  # POST /card_numbers or /card_numbers.json
  def create
    @card_number = CardNumber.new(card_number_params)

    respond_to do |format|
      if @card_number.save
        format.html { redirect_to card_number_url(@card_number), notice: "Card number was successfully created." }
        format.json { render :show, status: :created, location: @card_number }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @card_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /card_numbers/1 or /card_numbers/1.json
  def update
    respond_to do |format|
      if @card_number.update(card_number_params)
        format.html { redirect_to card_number_url(@card_number), notice: "Card number was successfully updated." }
        format.json { render :show, status: :ok, location: @card_number }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @card_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /card_numbers/1 or /card_numbers/1.json
  def destroy
    @card_number.destroy!

    respond_to do |format|
      format.html { redirect_to card_numbers_url, notice: "Card number was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card_number
      @card_number = CardNumber.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def card_number_params
      params.require(:card_number).permit(:number, :created_at, :user_id)
    end
end
