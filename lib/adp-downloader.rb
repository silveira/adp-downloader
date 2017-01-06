require_relative './adp-downloader/downloader'
require_relative './adp-downloader/http_client'
require_relative './adp-downloader/pay_statement'

module ADPDownloader
  def self.download
    http_client = IPay::HttpClient.new
    downloader = IPay::Downloader.new(http_client)
    downloader.get_all_statements
  end
end