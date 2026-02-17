class Acal < Formula
  desc "Apple Calendar CLI for terminal workflows and agents"
  homepage "https://github.com/agisilaos/acal"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/agisilaos/acal/releases/download/v0.1.2/acal_v0.1.2_darwin_arm64.tar.gz"
      sha256 "7ce41dc3dfdf7caac5c17cf5b0fff93f534bf7e603e222ce07a9e08489754e3b"
    end
    on_intel do
      url "https://github.com/agisilaos/acal/releases/download/v0.1.2/acal_v0.1.2_darwin_amd64.tar.gz"
      sha256 "e6b7214d758736be51873ee08c3cce47941728ca1404c2e6261b6ccb81c39df4"
    end
  end

  def install
    bin.install "acal"
  end

  test do
    system "#{bin}/acal", "version"
  end
end
