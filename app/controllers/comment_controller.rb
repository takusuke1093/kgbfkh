class CommentController < ApplicationController
    before_action :authenticate_user!
    def index
        @comments = Comment.all
    end
    def show
    end
    def new
        # @comments = body.new
        @comment = Comment.new
    end

#追加箇所
    def create
        @comments = Comment.new(comment_params)

        #新しいTweetの保存に成功した場合
        if @comments.save
        #index.html.erbにページが移る
        redirect_to action: "index"
        #新しいTweetの保存に失敗した場合
        else
        #もう一回投稿画面へ
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
