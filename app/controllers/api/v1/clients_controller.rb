
class Api::V1::ClientsController < ApplicationController 

    before_action :authenticate_user!

      def index
        clients = Client.all 
        render json: {status: 'Success', message:'Loaded clients', data:clients}, status: :ok 
    end

    def show
        client = Client.find(params[:id]) 
        render json: {status: 'Success', message:'Loaded client', data:client}, status: :ok 
    end
    
    def create
        client = Client.new(client_params)
        if client.save
            render json: client, status: :created
        else
            # head(:unauthorized)
            render json: {message: "Invalid client."}, status: 400 
        end

    end

    def update
        client = Client.find(params[:id])
        if client
            client.update(client_params)
            render json: {message: "Successfully update."}, status: :created
        else
            render json: {message: "Unable to update."}, status: 400 
        end

    end

    def destroy
        client = Client.find(params[:id])
        if client
            client.destroy(client_params)
            render json: {message: "Successfully deleted."}, status: :created
        else
            render json: {message: "Unable to delete."}, status: 400 
        end

    end
        
    
    private 

    def client_params
        params.require(:client).permit(:name, :phone)    
    end
    
end