class SchoolController < ApplicationController
  def news
  end

  def saves
    data = School.new
    data = School.find(params[:id]) unless params[:id].nil?
    School.attribute_names.each do |att|
      next if School.skip_attr.include?(att)
      eval("data.#{att} = params[:#{att}] unless params[:#{att}].nil?")
    end
    data.save
    
    redirect_to '/'
  end

  def deletes
    School.find(params[:id]).delete
    
    redirect_to '/'
  end
end
