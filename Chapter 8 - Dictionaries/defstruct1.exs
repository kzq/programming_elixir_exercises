defmodule Attendee do
  #@derive Access
  defstruct name: "", paid: false, over_18: true
  def may_attend_after_party(attendee = %Attendee{}) do
    attendee.paid && attendee.over_18  
  end
  def print_vip_badge(%Attendee{name: name}) when name !="" do
    IO.puts "Printing vip badge for #{name}"
  end
  def print_vip_badge(%Attendee{}) do
    raise "Name is missing for the badge"
  end
end
