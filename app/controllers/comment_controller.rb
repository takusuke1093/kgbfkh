class CommentController < ApplicationController
    before_action :authenticate_user!
    def index
        @comments = Comment.all
        @school_id = "1"
    end
    def show
        @comment = Comment.find(params[:id])
        @replies = Reply.all
        
        # here(comment_id: params[:id])
    end
    def new
        @comment = Comment.new
    end

#追加箇所
    def create
        @comment = Comment.new(comment_params)
        @comment.user_id = current_user.id
        # @comment.school_id = school_id

        
        if @comment.save
        redirect_to action: "index"
        else
        redirect_to action: "new"
        end
    end

    private
    #セキュリティのため、許可した:bodyというデータだけ取ってくるようにする
    def comment_params
        params.require(:comment).permit(:body)
    end
  #ここまで

end
