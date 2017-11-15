class PostController < ApplicationController
  
  before_action:find_post, only: [:show, :edit, :update, :destroy]
  
  
  def index # 게시글 다 보여주는 페이지
    @posts = Post.all
    # Post.all이면 배열로 들어간다. posts는 배열
    
  end

  def new # 게시글 작성하는 form 페이지
  end

  def create # 작성된 게시글 DB에 넣는 액션
    Post.create(
      title: params[:title],
      content: params[:content],
      user_id:session[:user_id]
      )
    redirect_to '/'
  end

  def show # 1개의 게시글 보는 페이지
    #find_post
    puts @post
    
    # @comments = Comment.where(post_id: params[:id]) 필요없다. 
  end
  
  def create_comment # 해당하는 글에 댓글 다는 액션(show)
    Comment.create(
      content: params[:content],
      post_id: params[:id] #url로 정보가 날라온다.
      )
      redirect_to :back
  end
  
  def edit
    #find_post
    #@post = Post.find(params[:id])
    
    #render :nothing => true

  end
  
  def update
    #find_post
    @post.update(
      title: params[:title],
      content: params[:content]
      )
      redirect_to "/post/show/#{@post.id}"
  end
  
  def destroy
    #Post.find(params[:id])
    @post.destroy
    redirect_to '/'
    
  end
  
  # private으로 붙여주는게 관례 Post 컨트롤러 안에 method안에서만 쓸 것이다. 
  private
  def find_post
    @post = Post.find(params[:id])
    #show, update, edit에 관해서는 코드가 불리기 전에 수행을 하고 싶다. => 필터링 
  end
  
end
