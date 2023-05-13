      old_output = File.read("_feed/old_feed.txt")

      # Get the date.
      system("date > _date/date.txt")

      # Immutables
      date             = File.read("_date/date.txt").strip
      date_title       = date.tr " ", "_"

      channel_description = File.read("_posts/input.txt").strip

      open("_documents/#{date_title}.txt", "w") { |f|
        f.puts channel_description
      }

      new_output = "
  <item>
    <title>#{date}</title>
    <link>http://localhost:8000/documents/#{date_title}.txt</link>
    <description><![CDATA[#{channel_description}]]></description>
  </item>
      "

      open("_feed/old_feed.txt", "w") { |f|
        f.puts new_output
      }

      generate_xml = "<?xml version='1.0' encoding='UTF-8' ?>
<?xml-stylesheet type='text/css' href='Stylesheet/rss.css' ?>
<rss version='2.0'>

<channel>
  <title>Personal Blog</title>
  <link>http://localhost:8000/feed.xml</link>
  <description>Local Feed for ASPI output.</description>

  #{new_output}
  #{old_output}
</channel>

</rss>"

      open("_feed/feed.xml", "w") { |f|
        f.puts generate_xml
      }
