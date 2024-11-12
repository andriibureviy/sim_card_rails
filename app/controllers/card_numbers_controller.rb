class CardNumbersController < ApplicationController
  before_action :set_card_number, only: %i[ show edit update destroy ]

  def index
    @card_numbers = CardNumber.all.order(:created_at).reverse
  end

  def show
  end

  def new
    @card_number = CardNumber.new
    @platforms = Platform.all  # Load all platforms for the form
  end

  def edit
    @platforms = Platform.all  # Load all platforms for the form
  end

  def create
    @card_number = CardNumber.new(card_number_params)

    respond_to do |format|
      if @card_number.save
        format.html { redirect_to card_number_url(@card_number), notice: "Card number was successfully created." }
        format.json { render :show, status: :created, location: @card_number }
      else
        @platforms = Platform.all  # Reload platforms if form needs to be rendered again
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @card_number.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @card_number.update(card_number_params)
        format.html { redirect_to card_number_url(@card_number), notice: "Card number was successfully updated." }
        format.json { render :show, status: :ok, location: @card_number }
      else
        @platforms = Platform.all  # Reload platforms if form needs to be rendered again
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @card_number.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @card_number.destroy!

    respond_to do |format|
      format.html { redirect_to card_numbers_url, notice: "Card number was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  def set_card_number
    @card_number = CardNumber.find(params[:id])
  end

  def card_number_params
    params.require(:card_number).permit(:number, :created_at, :expire_at, :created_by_telegram_id, :email, platform_ids: [])
  end
end
