defmodule FutureMadeEvents.Musician do
  use Ecto.Schema

  schema "musicians" do


    field :name, :string
    field :discogs_id, :integer

    field :image_url, :string
    field :details, :string

    field :countries, {:array, :string}   # yeah, talking about decentralised bands here.
    field :genres, {:array, :string} #

    field :external_urls, {:array, :string}

    timestamps()
  end

  # //TODO: add releases
  # defmodule Release do
  #   defstruct musician: "" , album: "", year: "", label: ""
  # end

end
