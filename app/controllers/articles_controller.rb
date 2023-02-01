class ArticlesController < ApplicationController
    
    before_action :set_acticle, only: [:show, :edit, :update, :destroy]

    def show 
    end

    def index
     @articles = Article.all
    end

    def new
        @article = Article.new
    end    
    
    def edit
    end

    def create
        @article = Article.new(article_params)
        if @article.save
          flash[:notice] = "Article was created successfully."
          redirect_to @article
        else
          render 'new'
        end
    end
    

    def update
        @article.update(article_params)
        if @article.save
            flash[:notice] = "Article was updates successfully."
            redirect_to @article
        else
            render 'edit'
          end
    end

    def destroy
        @article.destroy
        redirect_to articles_path
    end

    private  

    def set_acticle
        @article = Article.find(params[:id])
    end 

    def article_params
        params.require(:article).permit(:title, :description)
    end 

end