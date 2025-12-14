class Homepodctl < Formula
  desc "macOS CLI for Apple Music + HomePod control"
  homepage "https://github.com/agisilaos/homepodctl"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/agisilaos/homepodctl/releases/download/v0.1.0/homepodctl_v0.1.0_darwin_arm64.tar.gz"
      sha256 "8aee44d345070663d5a7bf2e5f09f10d935772c85425ed6537674616a5827c8e"
    end
    on_intel do
      url "https://github.com/agisilaos/homepodctl/releases/download/v0.1.0/homepodctl_v0.1.0_darwin_amd64.tar.gz"
      sha256 "83609b476c6ef180c0cc1f96fb8d7df9929c7ee3579afe0b950f82a941cd9a0a"
    end
  end

  def install
    bin.install "homepodctl"
  end

  test do
    system "#{bin}/homepodctl", "version"
  end
end
