# XmlMania

Reads Discogs artists XML document (as of 1st Sept 2020) for near 8 million musicians and creates a table on Postgres with name and discogs_id to be able to query new artist metadata as they are required, for FutureMade -- Events application.

[Here](https://medium.com/@streamerd/creating-a-global-database-of-musicians-on-postgresql-using-discogs-xml-data-and-elixir-ae6c53a7596d) is is the related blog post about this development.

## Requirements
Elixir 1.7.0 + Erlang 20.0, nodejs,Postgres db up and running & 
configured with your credentials (update config/config.exs);



