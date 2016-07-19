class SandwhichesController < ApplicationController
	def index
		sandwhiches = Sandwhich.all
		render json: sandwhiches
	end

	def create
		sandwhich = Sandwhich.create(sandwhich_params)
		render json: sandwhich[]
	end

	def show
		sandwhich = Sandwhich.find_by(id: params[:id])
		unless sandwhich
			render json: {error: "sandwhich not found"}, status: 404
			return
		end

		render json: sandwhich.to_json(include: [:ingredients])
	end


	# PUT/PATCH /sandhwhiches/:id
	def update
		sandwhich = Sandwhich.find_by(id: params[:id])
		unless sandwhich
			render json: {error: "sandwhich not found"}, status: 404
			return
		end

		sandwhich.update(sandwhich_params)
		render json: sandwhich
	end

	def destroy
		sandwhich = Sandwhich.find_by(id: params[:id])
		unless sandwhich
			render json: {error: "sandwhich not found"}, status: 404
			return
		end
		sandwhich.destroy
		# render json: sandwhich
		head :no_content
	end

	# def add_ingredient
	# 	ingredient = Ingredient.find_by(id: params[:id])
	# 	unless ingredient
	# 		render json: {error: "ingredient not found"}, status: 404
	# 		return

	# 		# sandwhich.id.ingredients.update(ingredient_params)
	# 	end

		
	# end

	private

	def sandwhich_params
		params.require(:sandwhich).permit(:name, :bread_type)
	end
end