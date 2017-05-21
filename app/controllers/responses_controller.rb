class ResponsesController < ApplicationController

  # POST /my_threads/:my_thread_id/responses
  def create
    @my_thread = MyThread.find(params[:my_thread_id])
    @response = @my_thread.responses.build(response_params)

    if @response.save
      redirect_to my_thread_path(params[:my_thread_id])
    else
      render 'my_threads/show'
    end
  end

  def edit
    @my_thread = MyThread.find(params[:my_thread_id])
    @response = @my_thread.responses.find(params[:id])
  end

  def update
    @my_thread = MyThread.find(params[:my_thread_id])
    @response = @my_thread.responses.find(params[:id])
    if @response.update(response_params)
      redirect_to my_thread_path(params[:my_thread_id]), notice: "Response was successfully updated!"
    else
      render :edit
    end
  end

  def destroy
    @my_thread = MyThread.find(params[:my_thread_id])
    @response = @my_thread.responses.find(params[:id])
    @response.destroy
    redirect_to my_threads_path(@my_thread)
  end

  private
    def response_params
      params.require(:response).permit(:content)
    end
end
