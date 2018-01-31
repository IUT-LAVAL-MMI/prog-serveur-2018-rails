class ToDoMessageMulticastJob < ApplicationJob
  queue_as :default
  def perform(version, action, json)
    ActionCable.server.broadcast(:to_do, {
        version: version,
        action: action,
        to_do: [json],
    })
  end
end
