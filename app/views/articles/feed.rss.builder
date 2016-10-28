#encoding: UTF-8

xml.instruct! :xml, :version => '1.0'
xml.rss :version => '2.0', 'xmlns:atom' => 'http://www.w3.org/2005/Atom' do
  xml.channel do
    xml.title global_setting.site_name
    xml.description global_setting.site_subtitle
    xml.link global_setting.site_url
    xml.language 'en'
    xml.tag! 'atom:link', :rel => 'self', :type => 'application/rss+xml', :href => feed_url

    @articles.each do |article|
      xml.item do
        xml.guid article_url(article.uri)
        xml.link article_url(article.uri)
        xml.title article.title
        # xml.author article.author.username
        xml.pubDate article.release_date.to_s(:rfc822)
        xml.description article.preview
      end
    end
  end
end