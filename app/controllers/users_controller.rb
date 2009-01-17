class UsersController < ApplicationController
  # GET /users
  # GET /users.xml
  def index
    @users = User.find(:all, :order => :name)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end

  # GET /users/1
  # GET /users/1.xml
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/new
  # GET /users/new.xml
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.xml
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        flash[:notice] = "User #{@user.name} was successfully created."
        format.html { redirect_to(:action=>'index') }
        format.xml  { render :xml => @user, :status => :created,
                             :location => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors,
                             :status => :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
    @user = User.find(params[:id])

    user = User.authenticate(@user.name, params[:user][:old_password])
    new_password = params[:user][:password]
    flash[:notice] = ""
    flash_comma = ""

    if params[:user][:password] == params[:user][:password_confirmation]
      confirmed_password = true
    else
      confirmed_password =false
      flash[:notice] = "ERROR: Confirmation password is not the same"
      flash_comma = ", "
    end

    is_not_blank = !params[:user][:password].blank?
    if !is_not_blank
      flash[:notice] = flash[:notice] + flash_comma + "ERROR: Password is blank"
      flash_comma = ", "
    end
    if user == nil
      flash[:notice] = flash[:notice] + flash_comma + "ERROR: Old password is incorrect"
      flash_comma = ", "
    end
    user_name_ok = true
    if @user.name != params[:user][:name]
      if User.find_by_name(params[:user][:name])
        user_name_ok = false
        flash[:notice] = flash[:notice] + flash_comma + "ERROR: Username already exists in database"
      end
    end

    if user && is_not_blank  && confirmed_password && user_name_ok

      update_status = true
      @user.name =  params[:user][:name]
      @user.hashed_password = User.encrypted_password(params[:user][:password], @user.salt)
      if !@user.save
        update_status = false
        flash[:notice] = "ERROR: Unable to save user #{@user.name} to database "
      end
    else
      update_status = false
    end
      respond_to do |format|
      if update_status
        flash[:notice] = "User #{@user.name} was successfully updated."
        format.html { redirect_to(:action=>'index') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors,
                             :status => :unprocessable_entity }
      end


    end
  end

  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @user = User.find(params[:id])
    begin
      flash[:notice] = "User #{@user.name} deleted"
      @user.destroy
    rescue Exception => e
      flash[:notice] = e.message
    end

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  
  end

end

