defmodule FutureMadeEvents.Musician do
  use Ecto.Schema

  schema "musicians" do


    field :name, :string
    field :discogs_id, :integer

    field :image_url, :string
    field :details, :string

    field :countries, {:array, :string}   # can be because of
    field :genres, {:array, :string} #

    field :external_urls, {:array, :string}
    field :is_alive, :boolean, default: false

    timestamps()
  end


  # schema "musicians" do
  #   field :name, :string
  #   field :discogs_id, :integer

  #   field :image_url, :string
  #   field :details, :string

  #   # field :country, :string
  #   # field :is_alive, :boolean     # add this one to decide if event will be a tribute or not.
  #   # field :external_urls, {:array, :string}


  #   timestamps()
  # end


  # //TODO: add releases
  # defmodule Release do
  #   defstruct musician: "" , album: "", year: "", label: ""
  # end

end
