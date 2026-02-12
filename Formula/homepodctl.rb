class Homepodctl < Formula
  desc "macOS CLI for Apple Music + HomePod control"
  homepage "https://github.com/agisilaos/homepodctl"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/agisilaos/homepodctl/releases/download/v0.1.2/homepodctl_v0.1.2_darwin_arm64.tar.gz"
      sha256 "927e7c7ce64bb2f7514ff697b4a32d4810bf14e1398536e368af7490d3f72ee5"
    end
    on_intel do
      url "https://github.com/agisilaos/homepodctl/releases/download/v0.1.2/homepodctl_v0.1.2_darwin_amd64.tar.gz"
      sha256 "67410477a73fb74cc956c3f2a0bd773b0189f69c275f7fa923789fd96f8e4c63"
    end
  end

  def install
    bin.install "homepodctl"
  end

  test do
    system "#{bin}/homepodctl", "version"
  end
end
