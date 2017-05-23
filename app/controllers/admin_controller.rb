class AdminController < ApplicationController
  def index
  end


  def newGroup
  end

  def createGroup
    @group = Group.new
    @group.name = params[:name]

    respond_to do |format|
      if @group.save
        format.html { redirect_to admin_newGroup_url, alert: 'Group was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @group.errors, status: :unprocessable_entity, alert: 'Group was not created.' }
        puts 'Failure to add user' + @group.name
      end
    end
  end

  def newUser
    @group = Group.all
  end

  def createUser
    params[:user_email_area].split("\n").each do |emailItem|
      @user = User.new
      @user.group = Group.find_by_name(params[:group])
      @user.role = Role.find_by_name('user')

      @user.email = emailItem

      
    end
    params[:officer_email_area].split("\n").each do |emailItem|
      @user = User.new
      @user.group = Group.find_by_name(params[:group])
      @user.role = Role.find_by_name('officer')

      @user.email = emailItem
      @user.save()
    end


    respond_to do |format|
      if @user.save
        format.html { redirect_to admin_newUser_url, alert: 'Users added successfully.' }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity, alert: 'User was not created.' }
        puts 'Failure to add user' + @user.email
      end
    end
  end
end
