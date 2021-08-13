class FoodsController < ApplicationController

  def show
    data = getFoodData(params[:id])
    
    if data["status"] = 1
      render status: 200, json: { data: data }
    else
      render status: 401, json: { success: false }
    end
  end

  private

  def getFoodData(id)
    url = "https://world.openfoodfacts.org/api/v0/product/#{id}"
    response = Faraday.get(url)
    JSON.parse(response.body)
  end

end