require 'nokogiri'
require 'typhoeus'

=begin
Like a modern code version of the mythical beast with 100 serpent heads, 
Typhoeus runs HTTP requests in parallel while cleanly encapsulating handling logic.
http://rubydoc.info/github/typhoeus/typhoeus/frames/Typhoeus
=end

class Spider
  def self.download_images(url, destination_path, options = {})
    base_url = URI.join(url, "/").to_s
    body = Typhoeus::Request.get(url).body
    imgs = Nokogiri::HTML(body).css("img")
    image_srcs = imgs.map { |img| img["src"] }.compact.uniq

    hydra = Typhoeus::Hydra.new(:max_concurrency => options[:max_concurrency] || 50)
    image_paths = image_srcs.map do |image_src|
      image_url = URI.join(base_url, image_src).to_s
      path = File.join(destination_path, File.basename(image_url))
      request = Typhoeus::Request.new(image_url)
      request.on_complete { |response| File.write(path, response.body) }
      hydra.queue(request)
      path
    end
    hydra.run
    image_paths
  end
end
