class KpiNotificationsController < ApplicationController
  before_action :set_kpi_notification, only: [:show, :edit, :update, :destroy]

  # GET /kpi_notifications
  # GET /kpi_notifications.json
  def index
    @kpi_notifications = KpiNotification.all
  end

  # GET /kpi_notifications/1
  # GET /kpi_notifications/1.json
  def show
  end

  # GET /kpi_notifications/new
  def new
    @kpi_notification = KpiNotification.new
  end

  # GET /kpi_notifications/1/edit
  def edit
  end

  # POST /kpi_notifications
  # POST /kpi_notifications.json
  def create
    @kpi_notification = KpiNotification.new(kpi_notification_params)

    respond_to do |format|
      if @kpi_notification.save
        format.html { redirect_to @kpi_notification, notice: 'Kpi notification was successfully created.' }
        format.json { render :show, status: :created, location: @kpi_notification }
      else
        format.html { render :new }
        format.json { render json: @kpi_notification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kpi_notifications/1
  # PATCH/PUT /kpi_notifications/1.json
  def update
    respond_to do |format|
      if @kpi_notification.update(kpi_notification_params)
        format.html { redirect_to @kpi_notification, notice: 'Kpi notification was successfully updated.' }
        format.json { render :show, status: :ok, location: @kpi_notification }
      else
        format.html { render :edit }
        format.json { render json: @kpi_notification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kpi_notifications/1
  # DELETE /kpi_notifications/1.json
  def destroy
    @kpi_notification.destroy
    respond_to do |format|
      format.html { redirect_to kpi_notifications_url, notice: 'Kpi notification was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kpi_notification
      @kpi_notification = KpiNotification.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kpi_notification_params
      params.require(:kpi_notification).permit(:title, :value, :description)
    end
end
