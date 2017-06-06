class SessionsController < ProtectedController
  before_action :set_session, only: [:show, :update, :destroy]

  # GET /sessions
  def index
    @sessions = current_user.sessions

    render json: @sessions
  end

  # GET /sessions/1
  def show
    render json: @session
  end

  # POST /sessions
  def create
    @session = current_user.sessions.build(session_params)

    if @session.save
      render json: @session, status: :created, location: @session
    else
      render json: @session.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sessions/1
  def update
    if @session.update(session_params)
      head :no_content
      # render json: @session
    else
      render json: @session.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sessions/1
  def destroy
    @session.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_session
    @session = current_user.sessions.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def session_params
    params.require(:session).permit(:session_name, :n_pomodoro)
  end
end
