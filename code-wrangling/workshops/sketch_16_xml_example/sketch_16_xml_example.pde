String URL = "http://newsroom.northumbria.ac.uk/rss/current_news/70031";

XML xml = loadXML(URL);

XML theChannel = xml.getChild("channel");

XML[] children = theChannel.getChildren("item");

for( XML it : children )
{
  XML title = it.getChild("title");
  XML d = it.getChild("description");
  println(title.getContent());
  println(d.getContent());
  println("-----");
}