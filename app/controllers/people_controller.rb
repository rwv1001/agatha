
include EditHelper

class PeopleController < ApplicationController
  protect_from_forgery :only => [:create, :update, :destroy]

 


  def edit
    @table_name = params[:table_name];
    @id = params[:id];
   
    @short_name = session[:search_ctls][@table_name].GetShortField(@id );

    
    if session[:administrator]
      @user = User.find(:first, :conditions =>{:person_id => @id})
      if @user == nil      
        @user = User.create(:person_id => @id, :name => '');
       end
    else
      my_id = session[:user_id];
      @user = User.find(:first, :conditions =>{:id=>  my_id, :person_id => @id})
    end
    edit_helper();
  end





  def win_load
   
    win_load_helper();

  end
  
  def win_unload
    win_unload_helper();
  


  end

  def update
    update_helper();

  end

    
 


 
end


