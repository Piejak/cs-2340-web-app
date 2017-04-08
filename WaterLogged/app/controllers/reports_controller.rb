class ReportsController < ApplicationController

    before_action :set_report, only: [:show, :edit, :update, :destroy]

    def index
        @reports = Report.all
    end

    def new
        @report = Report.new
    end

    def create
        if @report = Report.create(report_params)
            flash[:success] = "Report was created successfully"
            redirect_to reports_path
        else
            flash.now[:alert] = "Report couldn't be created"
            render :new
        end
    end

    def show
    end

    def edit
    end

    def update
        if @report.update(report_params)
            flash[:success] = "Report was updated"
            redirect_to(report_path(@report))
        else
            flash.now[:alert] = "Update failed"
            render :edit
        end
    end

    def destroy
        @report.destroy
        redirect_to reports_path
    end

    private

    def report_params
        params.require(:report).permit(:condition, :watertype, :latitude, :longitude)
    end

    def set_report
        @report = Report.find(params[:id])
    end
end
