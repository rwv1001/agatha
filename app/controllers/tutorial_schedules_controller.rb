include EditHelper

class TutorialSchedulesController < ApplicationController
  def edit
    @table_name = params[:table_name];
    @id = params[:id];

    @short_name = session[:search_ctls][@table_name].GetShortField(@id );

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