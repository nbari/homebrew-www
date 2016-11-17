class Www < Formula
  desc "static web server"
  homepage "https://github.com/nbari/www"
  url "https://bintray.com/nbari/www/download_file?file_path=www_0.3.0_darwin_amd64.zip"
  sha256 "45d6b8886705f7cfe3db7ed64fc855de213d5d14e36217231614ceb03e34b402"
  version "0.3.0"

  def install
    bin.install "www"
  end
end
