class RepliesController < ApplicationController

    before_action :authenticate_user!
    # def index
    #     @comments = Comment.find(params[:id])
    # end
    def show
        @replies = Replies.find(id: params[:id])
    end
    def new
        # @replies = Replies.new(comment_id: params[:id])
    end

#追加箇所
    def create
        @replies = Replies.new(reply_params)
        @comment.user_id = current_user.id
        # @comment.school_id = school_id

        
        if @replies.save
        redirect_to action: "index"
        else
        redirect_to action: "new"
        end
    end

    private
    def reply_params
        params.require(:replies).permit(:body)
    end
end