class ClassController < ApplicationController
    layout "school_layout"
    def index
        @evaluations = Evaluation.where(school_id: params[:school_id])
        @school = School.find(params[:school_id])
        @evaluation = Evaluation.new
    end

    def show
    end

    def create


        @evaluation = Evaluation.new(evaluation_params)
        @evaluation.user_id = current_user.id
        @evaluation.school_id = params[:school_id]

        
        if @evaluation.save
        flash[:success] = "コメントを投稿しました"
        redirect_to action: "index"
        else
        flash[:success] = "投稿できませんでした"
        end
    end

    private
    def evaluation_params
        params.require(:evaluation).permit(:name, :meaningfulness, :ease, :textbook, :test_information, :other_information)
    end

    def destroy
    end
end
