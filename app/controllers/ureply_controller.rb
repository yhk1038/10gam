class UreplyController < ApplicationController
  def news
  end

  def saves
    data = UnderReply.new
    data = UnderReply.find(params[:id]) unless params[:id].nil?
    UnderReply.attribute_names.each do |att|
      next if UnderReply.skip_attr.include?(att)
      eval("data.#{att} = params[:#{att}] unless params[:#{att}].nil?")
    end
    data.save
    
    redirect_to :back
  end

  def deletes
    UnderReply.find(params[:id]).delete
    
    return render json: {status: true}
  end
end
