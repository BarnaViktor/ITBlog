module Authors
    class PostsController < AuthorController
        
        def index
            @posts = current_author.posts.all
        end
    
        def show
            @post = current_author.posts.find(params[:id])
        end
    
        def new
            @post = current_author.posts.new
        end
    
        def create
            @post = current_author.posts.new(post_params)
    
            if(@post.save)
                redirect_to authors_posts_path(@post)
            else
                render 'new'
            end
        end
    
        def edit
            @post = current_author.posts.find(params[:id])
        end
    
        def update
            @post = current_author.posts.find(params[:id])
    
            if(@post.update(post_params))
                redirect_to authors_posts_path(@post)
            else
                render 'edit'
            end
        end
        
        def destroy
            @post = current_author.posts.find(params[:id])
            @post.destroy
            
            redirect_to authors_posts_path(@post)
        end
    
        private def post_params
            params.require(:post).permit(:title, :body)
        end
    end    
end