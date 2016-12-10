class TopicController < ApplicationController
  def news
  end

  def saves
    data = Topic.new
    data = Topic.find(params[:id]) unless params[:id].nil?
    Topic.attribute_names.each do |att|
      next if Topic.skip_attr.include?(att)
      eval("data.#{att} = params[:#{att}] unless params[:#{att}].nil?")
    end
    data.save
    
    redirect_to '/'
  end

  def deletes
    Topic.find(params[:id]).delete
    
    redirect_to '/'
  end
end
