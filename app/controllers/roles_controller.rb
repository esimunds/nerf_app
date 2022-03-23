class RolesController < ApplicationController
  def new
    @role = Role.new
  end

  def create
    @role = Role.create(role_params)
    redirect_to root_path
  end

  def edit
    @role = Role.find(params[:id])
  end

  def update
    @role = Role.find(params[:id])

    if @role.update(role_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @role = Role.find(params[:id])
    @role.destroy

    redirect_to root_path
  end

  private

  # Only allow a list of trusted parameters through.
  def role_params
    params.require(:role).permit(:name)
  end
end
