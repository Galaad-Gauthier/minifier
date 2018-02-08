class RedirectionsController < ActionController::Base

  before_filter :get_website
  before_filter :redirect_unless_website
  before_filter :add_visitor

  def redirect
    redirect_to @website.url
  end

  private

  def get_website
    @website = Website.find_by_token(params[:website_token])
  end

  def add_visitor
    @website.visitors.where(ip: request.remote_ip).first_or_create!
  end

  def redirect_unless_website
    redirect_to('https://google.com') unless @website.present?
  end

end
