class Admin::GendersController < Admin::BaseController
  before_action :load_gender, only: %i(edit update destroy)

  def index
    @genders = Gender.page(params[:page]).per Settings.quantity_per_page
  end

  def new
    @gender = Gender.new
  end

  def create
    @gender = Gender.new gender_params
    if @gender.save
      flash[:success] = t(".created")
      redirect_to admin_genders_path
    else
      flash[:error] = t(".create_unsuccess")
      render :new
    end
  end

  def update

  end

  private

  def gender_params
    params.require(:gender).permit Gender::GENDER_PARAMS
  end

  def load_gender
    @gender = Gender.find_by id: params[:id]
    return if @gender
    flash[:error] = t(".gender_not_found")
    redirect_to admin_genders_path
  end
end
