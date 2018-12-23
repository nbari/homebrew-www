class Www < Formula
  desc "HTTPS? static web server"
  homepage "https://github.com/nbari/www"
  url "https://github.com/nbari/www.git",
      :tag => "2.0.0",
      :revision => "057958f4d73629d886801dc2c24c6c0f268861ac"

  head "https://github.com/nbari/www.git"

  depends_on "go" => :build
  depends_on "dep" => :build

  def install
    ENV["GOPATH"] = buildpath
    (buildpath/"src/github.com/nbari/www").install buildpath.children
    cd "src/github.com/nbari/www" do
      system "dep", "ensure"
      ldflags = "-s -w"
      system "go", "build", "-ldflags", ldflags, "-o", "#{bin}/www"
      prefix.install_metafiles
    end
  end

  test do
    system bin/"www", "-h"
  end
end
