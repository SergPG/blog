class CommentsController < ApplicationController

    # http_basic_authenticate_with name: "admin", password: "admin", except: [:index, :show]
    # before_filter :authenticate_user!, except => [:show, :index]
    # before_action :authenticate_user!
    # before_filter :authenticate_user!


    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create(comment_params)
        redirect_to article_path(@article)
    end
    
    def destroy
        @article = Article.find(params[:article_id])
        @comment = @article.comments.find(params[:id])
        @comment.destroy
        redirect_to article_path(@article), status: 303
    end

      private
        def comment_params
          params.require(:comment).permit(:commenter, :body, :status)
        end

end
