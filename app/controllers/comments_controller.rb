class CommentsController < ApplicationController


    def index
         @comments = Comment.all
    end


    def show
        @comment = Comment.find(params[:id])
    end


    def new
        @comment = Comment.new
        
    end

    def create
        @comment = Comment.new({
            body: comment_params[:body],
            plate_id: params[:plate_id]
            })


        if @comment.save
            redirect_to plate_path(params[:plate_id])
        else
            render :new
        end
    end


    def edit
        @comment = Comment.find(params[:id])
    end


    def update
        @comment = Comment.find(params[:id])

       	if @comment.update_attributes(comment_params)
            redirect_to wines_path
        else
             render :edit
        end
    end


    def destroy
         @comment = Comment.find(params[:id])
         @comment.destroy
         redirect_to comments_path
    end

    private
    def comment_params
        params.require(:comment).permit( :body )
    end

end