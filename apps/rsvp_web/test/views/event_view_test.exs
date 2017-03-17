defmodule RsvpWeb.EventViewTest do
  use RsvpWeb.ConnCase, async: true

  @tag current: true
  test "should convert date" do
    date = Ecto.DateTime.from_erl({{2016, 12, 03}, {00, 00, 00}})
    formatted = RsvpWeb.EventsView.format_date(date)
    assert formatted == "12/3/2016"
  end
end
