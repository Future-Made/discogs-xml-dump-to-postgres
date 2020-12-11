defmodule XmlMania do

  import SweetXml
  @all_artists_path "data/discogs_20200901_artists.xml"

  alias FutureMadeEvents.Musician
  alias FutureMadeEvents.Repo

  def parse_with_streams do
    artists_stream = File.stream!(@all_artists_path)

    result = artists_stream
    |> stream_tags(:artist, discard: [:namevariations, :aliases, :groups])
    |> Stream.map(fn {:artist, doc} -> extract_name_and_id(:artist, doc) end)
    |> Stream.filter(fn name -> name != "" end)
    |> Enum.to_list

    IO.puts "Completed result. Will start generating records from the list items."
    generate_records_from_list(result)
  end

  defp generate_records_from_list(musician_names_discogs_ids) do

    musician_names_discogs_ids
    |> Enum.map(fn {name, discogs_id} ->
      Repo.insert!(
        %Musician{
        name: name,
        discogs_id: discogs_id,
        image_url: "",
        details: "",
        countries: [""],
        genres: [""],
        external_urls: [""],
        is_alive: true # override default for now.
        }
      ) end)

  end

  defp extract_name_and_id(:artist, doc) do
    name = xpath(doc, ~x"./name/text()"s)
    discogs_id = xpath(doc, ~x"./id/text()"i)

    {name, discogs_id}
  end

end
