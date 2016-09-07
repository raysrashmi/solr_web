defmodule SolrWeb.HomeView do
  use SolrWeb.Web, :view

  def pressrelease_count do
    Exsolr.get(fq: ["type:Pressrelease"])["numFound"]
  end

  def news_count do
    Exsolr.get(fq: ["type:News"])["numFound"]

  end

  def blog_post_count do
    Exsolr.get(fq: ["type:BlogPost"])["numFound"]
  end

  def image_count do
    Exsolr.get(fq: ["type:Image"])["numFound"]
  end

  def video_count do
    Exsolr.get(fq: ["type:Video"])["numFound"]
  end

  def contact_person_count do
    Exsolr.get(fq: ["type:ContactPerson"])["numFound"]
  end
end
