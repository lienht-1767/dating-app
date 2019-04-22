class Admin::GendersController < Admin::BaseController
  before_action :load_gender, only: %i(edit update destroy)

  def index
    @genders = Gender.page(params[:page]).per Settings.per_page
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

  def edit; end

  def update
    if @gender.update gender_params
      flash[:success] = t(".updated")
      redirect_to admin_genders_path
    else
      flash[:error] = t(".fail")
      render :edit
    end
  end

  def destroy
    @a = Gender.includes(:information_user)
    if @a.count == 0
      @gender.destroy
      if @gender.destroy
        flash[:success] = t(".deleted")
        redirect_to admin_genders_path
      else
        flash[:error] = t(".delete_failed")
        redirect_to admin_genders_path
      end
    else
      flash[:error] = t(".foriegn_key")
      redirect_to admin_genders_path
    end
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
