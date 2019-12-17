class CommentController < ApplicationController
    layout "school_layout"
    before_action :authenticate_user!
    def index
        @comments = Comment.where(school_id: params[:school_id])
        @comment = Comment.new
        @school = School.find(params[:school_id])
    end
    def show
        @comment = Comment.find(params[:id])
        @replies = Reply.where(comment_id: params[:comment_id])
        
        # here(comment_id: params[:id])
    end
    # def new
    #     @comment = Comment.new
    #     redirect_to action: "index"
    # end

#追加箇所
    def create
        @comment = Comment.new(comment_params)
        @comment.user_id = current_user.id
        @comment.school_id = params[:school_id]

        
        if @comment.save
        flash[:success] = "コメントを投稿しました"
        redirect_to action: "index"
        else
        flash[:success] = "投稿できませんでした"
        end
    end

    private
    def comment_params
        params.require(:comment).permit(:body)
    end

end
