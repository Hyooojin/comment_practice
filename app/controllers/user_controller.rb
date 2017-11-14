class UserController < ApplicationController
  def index
    @users = User.all
    
  end

  def new
    
  end

  def create
    
    User.create(
      email: params[:email],
      password: params[:password]
      )
      redirect_to '/user/index'
  end

  def show
    
  end

  def login
    
  end
  
  
  # 1. DB에 유저가 없을 때 (params[:email]로 DB 검색시 없을때)
          # 입력한 아이디가 존재하지 않습니다. 
  # 2. DB에 유저가 있는데, 
          # -패스워드가 다를 때 => '패스워드가 틀렸어'
          # -패스워드가 맞을 때 => '로그인'
  
  
  def login_process
    @user = User.find_by(email: params[:email])
    if @user                                           # && 을 사용하면 한줄로 if문을 정리할 수 있다. 
      if @user.password == params[:password]           # 만약에 params로 날라온 password가 이 패스워드와 같다면 
      flash[:notice] = "로그인 됐습니다."
        session[:user_id] = @user.id                   #로그인을 하기 위해서 session에다가 값을 넣는다. user_id가 보안적으로 뛰어나기 때문에 사용
        redirect_to '/'
      else
        flash[:alert] = '비밀번호가 잘못되었습니다.'
        redirect_to '/user/login'
      end
    else
      flash[:alert] = "회원정보가 존재하지 않습니다. 회원가입을 우선 진행해주세요"
      redirect_to '/user/new'
    end
    
  end

  def logout
    session.clear
    flash[:notice] = "로그아웃되었습니다."
    redirect_to '/'
  end
end
