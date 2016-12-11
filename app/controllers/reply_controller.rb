class ReplyController < ApplicationController
  def news
  end

  def saves
    data = Reply.new
    data = Reply.find(params[:id]) unless params[:id].nil?
    Reply.attribute_names.each do |att|
      next if Reply.skip_attr.include?(att)
      eval("data.#{att} = params[:#{att}] unless params[:#{att}].nil?")
    end
    data.save
    
    redirect_to :back
  end

  def deletes
    Reply.find(params[:id]).delete
    redirect_to :back
    # return render json: {status: true}
  end
end
