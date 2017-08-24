class RoomsController < ApplicationController
  def index
    
  end

  def new
  end
  
  def create_room
    new_room = Room.new
    new_room.title = params[:title]
    new_room.width = params[:width]
    new_room.height = params[:height]
    new_room.user_id = params[:user_id]
    new_room.save
    redirect_to "/room/#{new_room.id}"
  end
  
  def destroy_room
    room = Room.find(params[:room_id])
    room.destroy
    redirect_to "/mypage/#{room.user_id}"
  end
  
  def room
    @room = Room.find(params[:room_id])
    width = @room.width
    height = @room.height
    if width <= 200 && height <= 200
      @ratio = 3
    elsif width > 200 && width <= 300 &&  height > 200 && height <= 300
      @ratio = 2
    elsif width > 300 && width <= 400 &&  height > 300 && height <= 400
      @ratio = 1.5
    else
      @ratio = 1
    end
  end
  
  def create_furniture
    new_furniture = Furniture.new
    new_furniture.room_id = params[:room_id]
    new_furniture.name = params[:name]
    new_furniture.width = params[:width]
    new_furniture.height = params[:height]
    new_furniture.color = params[:color]
    new_furniture.shape = params[:shape]
    new_furniture.save
    # render :text => ""
    redirect_to "/room/#{new_furniture.room_id}"
  end
  
  def update_furniture
    one_furniture = Furniture.find_by room_id: params[:room_id], id: params[:id]
    one_furniture.top = params[:top]
    one_furniture.left = params[:left]
    one_furniture.save
    
    redirect_to "/room/#{one_furniture.room_id}"
  end
  
  def resize_furniture
    one_furniture = Furniture.find_by room_id: params[:room_id], id: params[:id]
    one_furniture.width = params[:width]
    one_furniture.height = params[:height]
    one_furniture.save
    
    redirect_to "/room/#{one_furniture.room_id}"
  end
  
  def destroy_furniture
    one_furniture = Furniture.find(params[:furniture_id])
    one_furniture.destroy
    
    redirect_to "/room/#{one_furniture.room_id}"
  end
  
  def save_room
    room = Room.find(params[:room_id])
    room.desc = params[:desc]
    room.save
    
    redirect_to "/room/#{room.id}"
  end
  
  def mypage
    @rooms = Room.where(user_id: params[:user_id])
    @count = 0
  end
end
