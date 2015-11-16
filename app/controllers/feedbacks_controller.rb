class FeedbacksController < ApplicationController

  def create
    company = Company.find(params[:company_id])

    client = Client.find_by(client_params)
    if client.nil?
      client = Client.create(client_params)
    end

    feedback = company.feedbacks.new(feedback_params)
    feedback.client = client
    feedback.save

    redirect_to company
  end

private
  def feedback_params
    params.require(:feedback).permit(:mark, :comment)
  end

  def client_params
    params.require(:client).permit(:phone)
  end
end
