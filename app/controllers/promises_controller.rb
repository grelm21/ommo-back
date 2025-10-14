class PromisesController < ApplicationController
  def index
    @promises = Promise.all
    render json: @promises
  end
end
