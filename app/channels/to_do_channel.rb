class ToDoChannel < ApplicationCable::Channel
  def subscribed
    stream_from :to_do
  end
end
