require 'csv'
class CompaniesController < ApplicationController
  def new
    @company = Company.new
  end

  def create
    csv_file = params[:file]

    if csv_file.present? && csv_file.content_type == 'text/csv'
      csv_data = CSV.read("public/uploads/tmp/1701168288-526841309469303-0010-3054/company.csv")
      csv_data.each do |row|
        email = row[1]# Assuming email is in the first column
        CompanyMailer.send_email_to_address(email).deliver_now
      end

      flash[:success] = 'Emails sent to companies from CSV!'
      redirect_to root_path
    else
      flash[:error] = 'Please upload a valid CSV file.'
      redirect_to :back
    end
  end

  private

  def company_params
    params.require(:company).permit(:csv_file)
  end
end
