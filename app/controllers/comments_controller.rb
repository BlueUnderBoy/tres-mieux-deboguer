class CommentsController < ApplicationController
  def create
    comment = Comment.new
    comment.author_id = params.fetch("author_id")
    comment.venue_id = params.fetch("venue_id")
    comment.body = params.fetch("body")
    comment.save
    
    redirect_to("/venues/#{comment.venue_id}")
  end
end
