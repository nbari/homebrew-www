class Www < Formula
  desc "static web server"
  homepage "https://github.com/nbari/www"
  url "https://github.com/nbari/www.git",
      :tag => "0.3.1",
      :revision => "4769c5370984f366ccd768c8e90ded344befdd77"

  head "https://github.com/nbari/www.git"

  bottle do
    cellar :any_skip_relocation
    sha256 "179e07bb22e2755e3d082f07607cf2e98e266defaace3ceb764a4c32f03ccf8d" => :sierra
    sha256 "5be8ef01a8568b7de75b19d525a4830b0c934c43b9e8f9fb150cbdcb18091a26" => :el_capitan
    sha256 "6dcf9d7de2489f5e3d6fd56488c3abe2bff1ea6f6bf0d9de89421b0e9a7e2e38" => :yosemite
  end

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    (buildpath/"src/github.com/nbari/www").install buildpath.children
    cd "src/github.com/nbari/www" do
      system "make"
      bin.install "www"
    end
  end

  test do
    system bin/"www", "-v"
  end
end
