class Www < Formula
  desc "static web server"
  homepage "https://github.com/nbari/www"
  url "https://bintray.com/nbari/www/download_file?file_path=www_0.1.0_darwin_amd64.zip"
  sha256 "8ffdea507dfc8cfb63a1f42eb0b989db6c792ccea2b1b9299879731618e45473"
  version "0.1.0"

  def install
    bin.install "www"
  end
end
