class SweetsController < ApplicationController
  before_action :sweet_find, only: :show

  def index
    @sweets = Sweet.all
  end

  def show
    @vendors = @sweet.vendors
  end

  private

  def sweet_find
    @sweet = Sweet.find(params[:id])
  end
end
