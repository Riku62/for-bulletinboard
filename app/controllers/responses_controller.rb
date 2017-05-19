class ResponsesController < ApplicationController
  def create
    @my_thread = MyThread.find(params[:my_thread_id])
    @response = @my_thread.responses.build(response_params)

    if @response.save
      redirect_to("/my_threads/#{params[:id]}")
    else
      render 'my_threads/show'
    end
  end

  private
    def response_params
      params.require(:response).permit(:content)
    end
end
