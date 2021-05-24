require "open-uri"

class FlatsController < ApplicationController

  FLAT_URL = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
  before_action :load_flats, only: [:index, :show]

  def index
  end

  def show
    @flat = @flats.find do |flat_hash|
      flat_hash['id'] == params[:id].to_i
    end
  end

  private
  def load_flats    
    @flats = JSON.parse(open(FLAT_URL).read)
  end

end

