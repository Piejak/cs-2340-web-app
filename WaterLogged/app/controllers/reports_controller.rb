class ReportsController < ApplicationController

    before_action :authenticate_user!
    before_action :check_ownership, only: [:edit, :update, :destroy]
    before_action :set_report, only: [:show, :edit, :update, :destroy]

    def index
        @reports = Report.all
    end

    def new
        @report = current_user.reports.build
    end

    def create
        @report = current_user.reports.build(report_params)

        if @report.save
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

    def check_ownership
        unless current_user == @report.user
            flash[:alert] = "This report was made by another user"
            redirect_to root_path
        end
    end
end
