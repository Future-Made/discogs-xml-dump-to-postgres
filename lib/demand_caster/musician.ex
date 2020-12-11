defmodule DemandCaster.Musician do
  use Ecto.Schema

  schema "musicians" do
    field :country, :string
    field :discogs_id, :integer
    field :external_urls, {:array, :string}
    field :image_url, :string
    field :is_alive, :boolean, default: false
    field :name, :string
    field :details, :string

    timestamps()
  end


  # //TODO: add releases
  # defmodule Release do
  #   defstruct musician: "" , album: "", year: "", label: ""
  # end

end
