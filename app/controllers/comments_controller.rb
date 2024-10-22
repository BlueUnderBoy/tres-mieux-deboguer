class CommentsController < ApplicationController
  def create
    @comm = Comment.new
    @comm.body = params.fetch("body")
    @comm.author_id = params.fetch("author_id")
    @comm.venue_id = params.fetch("venue_id")
    @comm.save
    
    redirect_to("/venues/#{@comm.venue_id}")
  end
end
