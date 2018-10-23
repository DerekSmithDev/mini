class Api::SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
    search = params[:name]
    if search
      @supplier = @supplier.where("name ILIKE ?", "%#{search}%")
    end
    render "index.json.jbuilder"
  end
  def show
    input_id = params["id"]
    @supplier = Supplier.find_by(id: input_id)
    render "supplier_show.json.jbuilder"
  end
  def create
    @supplier = Supplier.new(
      name: params["name"],
      price: params["email"],
      image_url: params["phone_number"]
      )
    if @supplier.save
      render "supplier_show.json.jbuilder"
    else
      render json: {errors: @supplier.errors.full_messages}, status: 422
    end
  end
  def update
    @supplier = Supplier.find_by(id: params["id"])
    @supplier.name = params["name"] || @supplier.name
    @supplier.email = params["email"] || @supplier.email
    @supplier.phone_number = params["phone_number"] || @supplier.phone_number
    if @supplier.save
      render "supplier_show.json.jbuilder"
    else
      render json: {errors: @supplier.errors.full_messages}, status: 422
    end
  end
  def destroy
    @input_id = params["id"]
    supplier = Supplier.find_by(id: @input_id)
    supplier.destroy
    render "destroy.json.jbuilder"
  end
end
