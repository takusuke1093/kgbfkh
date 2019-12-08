class RepliesController < ApplicationController

    before_action :authenticate_user!
    # def index
    #     @comments = Comment.find(params[:id])
    # end
    def show
        @replies = Replies.find(id: params[:id])
    end
    def new
        @reply = Reply.new(comment_id: params[:id])
    end

#追加箇所
    def create
        @reply = Reply.new(reply_params)
        @reply.user_id = current_user.id
        # @comment.school_id = school_id
        
        if @reply.save!
        redirect_to controller: :comment, action: :index
        else
        redirect_to action: "new"
        end
    end

    private
    def reply_params
        params.require(:reply).permit(:body, :comment_id)
    end
end