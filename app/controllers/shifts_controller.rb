class ShiftsController < ApplicationController
  def new
    @shift = Shift.new
    @volunteer = Volunteer.find(params[:volunteer_id])
  end

  def create
    # AQUI EU PRECISO ATRIBUIR O
    # VOLUNTARIO AO SHIFT
    # AQUI EU PRECISO SABER QUEM É O VOLUNTÁRIO
    @volunteer = Volunteer.find(params[:volunteer_id])
    @shift = Shift.new(shift_params)
    @shift.volunteer = @volunteer
    if @shift.save
      redirect_to volunteer_path(@volunteer)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  # Faz com que os metodos aqui abaixo
  # So possam ser chamados DENTRO DA CLASSE!

  def shift_params
    params.require(:shift).permit(:event_id, :feedback)
  end
end
