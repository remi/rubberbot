defmodule Rubberbot.Bot do
  # Inclusions
  use Slack

  # Constants
  @message ":hmmhmm:"

  def handle_event(message = %{channel: "D" <> channel, type: "message", user: user}, slack = %{me: %{id: id}}, state) when user != id do
    send_message(@message, "D#{channel}", slack)

    {:ok, state}
  end

  def handle_event(_event, _slack, state), do: {:ok, state}
end
