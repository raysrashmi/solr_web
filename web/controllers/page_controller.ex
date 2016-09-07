defmodule SolrWeb.PageController do
  use SolrWeb.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
