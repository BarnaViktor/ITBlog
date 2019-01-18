module Blog
    class PostsController < BlogController
        
        def index
            @posts = Post.all.paginate(:page => params[:page], per_page: 2)
        end
    
        def show
            @post = Post.find(params[:id])
        end
    
    end    
end