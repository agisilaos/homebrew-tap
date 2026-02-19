class Pocketcastsctl < Formula
  desc "macOS CLI for Pocket Casts Web Player control"
  homepage "https://github.com/agisilaos/pocketcastsctl"
  version "0.1.5"

  on_macos do
    on_arm do
      url "https://github.com/agisilaos/pocketcastsctl/releases/download/v0.1.5/pocketcastsctl_v0.1.5_darwin_arm64.tar.gz"
      sha256 "aaa96838320a9b530719179684fe67048cf7cf5e386e1b56a0e6c712e8997113"
    end
    on_intel do
      url "https://github.com/agisilaos/pocketcastsctl/releases/download/v0.1.5/pocketcastsctl_v0.1.5_darwin_amd64.tar.gz"
      sha256 "f9c9ff1b7aac5c5963824f8c709b31d8b5c495988c93d402a1484a373e6231d2"
    end
  end

  def install
    bin.install "pocketcastsctl"
  end

  test do
    system "#{bin}/pocketcastsctl", "version"
  end
end
