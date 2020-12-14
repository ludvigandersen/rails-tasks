
class Api::V1::TasksController < ApplicationController

    before_action :authenticate_user

      def index
        @task = Task.all 
        render json: {status: 'Success', message:'Loaded task'}, status: :ok 
    end

    def show
        @task = Task.find(params[:id]) 
        render json: {status: 'Success', message:'Loaded task'}, status: :ok 
    end
    
    def create
        @task = Task.new(task_params)
        if @task.save
            render json: @task, status: :created
        else
            # head(:unauthorized)
            render json: {message: "Invalid client."}, status: 400 
        end

    end

    def update
        @task = Task.find(params[:id])
        if @task
            task.update(task_params)
            render json: {message: "Successfully update."}, status: :created
        else
            render json: {message: "Unable to update."}, status: 400 
        end

    end

    def destroy
        @task = Task.find(params[:id])
        if @task
            @task.destroy(task_params)
            render json: {message: "Successfully deleted."}, status: :created
        else
            render json: {message: "Unable to delete."}, status: 400 
        end

    end
        
    
    private 

    def task_params
        params.require(:task).permit(:title, :description)    
    end
      
end