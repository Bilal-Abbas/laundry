class HomeController < ApplicationController

  def index
  end

  def pricing
  end

  def place_order
    if params[:name].nil?
      flash[:danger] = 'Name cannot be blank'
    elsif  params[:email].nil?
      flash[:danger] = 'Email cannot be blank'
    elsif params[:phone].nil?
      flash[:danger] = 'Phone number cannot be blank'
    elsif params[:pick_up].nil? || params[:pick_up].empty?
      flash[:danger] = 'Pick time cannot be blank'
    elsif params[:delivery].nil? || params[:pick_up].empty?
      flash[:danger] = 'Delivery time cannot be blank'
    elsif params[:address].nil?
      flash[:danger] = 'Delivery time cannot be blank'
    elsif params[:dry_cleaning].nil? && params[:shirt_service].nil? && params[:bedlinen_and_household].nil? && params[:repair_and_alterations].nil? && params[:dress_cleaning].nil? && params[:leather_and_suede_cleaning].nil?
      flash[:danger] = 'Please select one service for an order'
    else
      OrderMailer.send_email_to_owner(params).deliver_now
      flash[:success] = 'Order placed successfully.'
    end
    redirect_to home_index_path
  end
end
