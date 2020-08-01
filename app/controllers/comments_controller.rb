class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    redirect_to "/meetings/#{comment.meeting.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, meeting_id: params[:meeting_id])
  end
end
