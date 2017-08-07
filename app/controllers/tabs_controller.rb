class TabsController < ApplicationController
  before_action :current_user_must_be_tab_user, :only => [:edit, :update, :destroy]

  def current_user_must_be_tab_user
    tab = Tab.find(params[:id])

    unless current_user == tab.user
      redirect_to :back, :alert => "You are not authorized for that."
    end
  end

  def index
    @tabs = current_user.tabs.page(params[:page]).per(10)

    render("tabs/index.html.erb")
  end

  def show
    @tab = Tab.find(params[:id])

    render("tabs/show.html.erb")
  end

  def new
    @tab = Tab.new

    render("tabs/new.html.erb")
  end

  def create
    @tab = Tab.new

    @tab.user_id = params[:user_id]
    @tab.restaurant_id = params[:restaurant_id]

    save_status = @tab.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/tabs/new", "/create_tab"
        redirect_to("/tabs")
      else
        redirect_back(:fallback_location => "/", :notice => "Tab created successfully.")
      end
    else
      render("tabs/new.html.erb")
    end
  end

  def edit
    @tab = Tab.find(params[:id])

    render("tabs/edit.html.erb")
  end

  def update
    @tab = Tab.find(params[:id])
    @tab.restaurant_id = params[:restaurant_id]

    save_status = @tab.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/tabs/#{@tab.id}/edit", "/update_tab"
        redirect_to("/tabs/#{@tab.id}", :notice => "Tab updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Tab updated successfully.")
      end
    else
      render("tabs/edit.html.erb")
    end
  end

  def destroy
    @tab = Tab.find(params[:id])

    @tab.destroy

    if URI(request.referer).path == "/tabs/#{@tab.id}"
      redirect_to("/", :notice => "Tab deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Tab deleted.")
    end
  end
end
