class Pocketcastsctl < Formula
  desc "macOS CLI for Pocket Casts Web Player control"
  homepage "https://github.com/agisilaos/pocketcastsctl"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/agisilaos/pocketcastsctl/releases/download/v0.1.3/pocketcastsctl_v0.1.3_darwin_arm64.tar.gz"
      sha256 "cc8e4435b7b0328b791e7519b755ceaec8f653cb57592822a0082818c5a64217"
    end
    on_intel do
      url "https://github.com/agisilaos/pocketcastsctl/releases/download/v0.1.3/pocketcastsctl_v0.1.3_darwin_amd64.tar.gz"
      sha256 "58d7729dab4c90a7740c3c03ebf0d44dc6ba831223f6262fab66a21ae38d7d67"
    end
  end

  def install
    bin.install "pocketcastsctl"
  end

  test do
    system "#{bin}/pocketcastsctl", "version"
  end
end
