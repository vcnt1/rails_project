class ProdutosController < ApplicationController
	protect_from_forgery prepend: true

	def index
		@produtos = Produto.all
	end

	def show

	end

	def create
		@produto = Produto.new(produto_params)

		if @produto.save
			redirect_to '/produtos'
		end
	end

	private
	def produto_params
	  params.permit(:nome, :descricao, :preco, :quantidade)
	end
end