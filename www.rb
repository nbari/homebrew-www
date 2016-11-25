class Www < Formula
  desc "static web server"
  homepage "https://github.com/nbari/www"
  url "https://bintray.com/nbari/www/download_file?file_path=www_0.3.1_darwin_amd64.zip"
  sha256 "41285f97d4bc037ea20c21f20ba9127ac603327f4bb3e70715b78549c01355a2"
  version "0.3.1"

  def install
    bin.install "www"
  end
end
