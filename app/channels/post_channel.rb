class PostChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    ap "SUBSCRIBED 1"
    # post = Post.find params[:room]
    puts params
    ap params
    post = Post.find 1
    ap "SUBSCRIBED 2"
    # ap post
    stream_for post
    ap "SUBSCRIBED 3"

    # stream_from "room_#{params[:room]}"

  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
