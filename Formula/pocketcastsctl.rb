class Pocketcastsctl < Formula
  desc "macOS CLI for Pocket Casts Web Player control"
  homepage "https://github.com/agisilaos/pocketcastsctl"
  version "0.1.4"

  on_macos do
    on_arm do
      url "https://github.com/agisilaos/pocketcastsctl/releases/download/v0.1.4/pocketcastsctl_v0.1.4_darwin_arm64.tar.gz"
      sha256 "1a1d97301b07719ca193bb3a1abd7f66f5390c4e3c553270b1771157d3d77f3e"
    end
    on_intel do
      url "https://github.com/agisilaos/pocketcastsctl/releases/download/v0.1.4/pocketcastsctl_v0.1.4_darwin_amd64.tar.gz"
      sha256 "5771900f694a66c4cd374fb430be3b5f784dec89eb8a2c5fb242aabe9a22eee0"
    end
  end

  def install
    bin.install "pocketcastsctl"
  end

  test do
    system "#{bin}/pocketcastsctl", "version"
  end
end
