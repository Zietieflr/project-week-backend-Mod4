class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :update, :destroy]

  # GET /characters
  def index
    @characters = Character.all

    render json: @characters, include: [:ability_score]
  end

  # GET /characters/1
  def show
    render json: @character, include: [:ability_score]
  end

  # POST /characters
  def create
    @character = Character.new(character_params)

    if @character.save
      render json: @character, include: [:ability_score], status: :created, location: @character
    else
      render json: @character.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /characters/1
  def update
    if @character.update(character_params)
      render json: @character
    else
      render json: @character.errors, status: :unprocessable_entity
    end
  end

  # DELETE /characters/1
  def destroy
    @character.ability_score.marked_for_destruction?
    @character.save
    @character.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character
      @character = Character.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def character_params
      params.require(:character).permit(
        :name, :player_name, :ancestry_and_heritage, :background, :character_class, :size, :alignment, :traits, :deity, :level, :hero_points, :experience_points, 
        ability_score_attributes: [:id, :str, :dex, :con, :int, :wis, :cha, :character_id],
      )
    end
end
