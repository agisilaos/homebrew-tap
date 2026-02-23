class Homepodctl < Formula
  desc "macOS CLI for Apple Music + HomePod control"
  homepage "https://github.com/agisilaos/homepodctl"
  license "MIT"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/agisilaos/homepodctl/releases/download/v0.2.0/homepodctl_0.2.0_darwin_arm64.tar.gz"
      sha256 "df5aade5ab8ee6d73070ae55894d9185851f3eeaca77257c5477848257177089"
    else
      url "https://github.com/agisilaos/homepodctl/releases/download/v0.2.0/homepodctl_0.2.0_darwin_amd64.tar.gz"
      sha256 "6bcfb8a0340291a639379d15a790c004a2456f93c0f89ae3d6385615af3a9ed5"
    end
  end

  def install
    bin.install "homepodctl"
  end

  test do
    shell_output("#{bin}/homepodctl version")
  end
end
