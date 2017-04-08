class ReportsController < ApplicationController

    def index
        @reports = Report.all
    end

    def new
        @report = Report.new
    end

    def create
        @report = Report.create(report_params)
        redirect_to reports_path
    end

    private

    def report_params
        params.require(:report).permit(:condition, :watertype, :latitude, :longitude)
    end
end
