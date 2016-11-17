class Www < Formula
  desc "static web server"
  homepage "https://github.com/nbari/www"
  url "https://bintray.com/nbari/www/download_file?file_path=www_0.2.0_darwin_amd64.zip"
  sha256 "9a45e72eeeff00f6bf36b20dd0f257a91bea71302514e9004a1df90d28d84168"
  version "0.2.0"

  def install
    bin.install "www"
  end
end
