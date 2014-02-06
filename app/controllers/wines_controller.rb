class WinesController < ApplicationController
	respond_to :json

	def new
		@wine = Wine.new
	end

	def create
		@wine = Wine.new(wine_params)
		if @wine.save
			render
				:json => @wine,
				:status => :created,
				:location => @wine
		else
			render
				:json => @wine.errors,
				:status => :unprocessable_entity
		end

	def update
		@wine = Wine.find(params[:id])
		if @wine.update_attributes(wine_params)
			head :no_content, status: :ok
		else
			render
				:json => @wine.errors,
				:status => :unprocessable_entity
		end
	end

	private
		def wine_params
			params.require(:wine).permit(
				:name,
		    	:tasting_id,
				:snooth_id,
				:year,
				:winery,
				:type,
				:varietal,
				:purchaser,
				:price
				)
		end
	end

end
