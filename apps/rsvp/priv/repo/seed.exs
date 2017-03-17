unless(Rsvp.EventQueries.any) do
  Rsvp.EventQueries.create(Rsvp.Events.changeset(%Rsvp.Events{}, %{date: "2017-05-23 09:00:00", 
                             title: "summer codefest", location: "Omaha, NE"}))
  Rsvp.EventQueries.create(Rsvp.Events.changeset(%Rsvp.Events{}, %{date: "2017-06-19 00:00:00", 
                             title: "summer codefest", location: "London"}))
end
