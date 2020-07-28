require 'test_helper'

class CharactersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @character = characters(:one)
  end

  test "should get index" do
    get characters_url, as: :json
    assert_response :success
  end

  test "should create character" do
    assert_difference('Character.count') do
      post characters_url, params: { character: { alignment: @character.alignment, ancestry_and_hheritage: @character.ancestry_and_hheritage, background: @character.background, class: @character.class, deity: @character.deity, experience_points: @character.experience_points, hero_points: @character.hero_points, level: @character.level, name: @character.name, player_name: @character.player_name, size: @character.size, traits: @character.traits } }, as: :json
    end

    assert_response 201
  end

  test "should show character" do
    get character_url(@character), as: :json
    assert_response :success
  end

  test "should update character" do
    patch character_url(@character), params: { character: { alignment: @character.alignment, ancestry_and_hheritage: @character.ancestry_and_hheritage, background: @character.background, class: @character.class, deity: @character.deity, experience_points: @character.experience_points, hero_points: @character.hero_points, level: @character.level, name: @character.name, player_name: @character.player_name, size: @character.size, traits: @character.traits } }, as: :json
    assert_response 200
  end

  test "should destroy character" do
    assert_difference('Character.count', -1) do
      delete character_url(@character), as: :json
    end

    assert_response 204
  end
end
