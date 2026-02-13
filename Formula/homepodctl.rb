class Homepodctl < Formula
  desc "macOS CLI for Apple Music + HomePod control"
  homepage "https://github.com/agisilaos/homepodctl"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/agisilaos/homepodctl/releases/download/v0.1.3/homepodctl_v0.1.3_darwin_arm64.tar.gz"
      sha256 "b04e06b387de7096509ed9dbbf79aee697f643855047fac66f3402b3fa8ca3d9"
    end
    on_intel do
      url "https://github.com/agisilaos/homepodctl/releases/download/v0.1.3/homepodctl_v0.1.3_darwin_amd64.tar.gz"
      sha256 "8ab8ca6b05a2286d5735668013887684b3ae302a4becf0b7a85d829406eae170"
    end
  end

  def install
    bin.install "homepodctl"
  end

  test do
    system "#{bin}/homepodctl", "version"
  end
end
