class CompaniesController < ApplicationController
  def new
    @company = Company.new
  end

  def create
    @company = Company.create(company_params)

    redirect_to @company
  end

  def show
    @company = Company.find(params[:id])
    @feedback = Feedback.new
    @client = Client.new

    @feedbacks = @company.feedbacks.order('created_at DESC')
  end

private
  def company_params
    params.require(:company).permit(:name, :tag, :phone)
  end
end
