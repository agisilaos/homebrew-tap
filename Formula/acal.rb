class Acal < Formula
  desc "Apple Calendar CLI for terminal workflows and agents"
  homepage "https://github.com/agisilaos/acal"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/agisilaos/acal/releases/download/v0.2.0/acal_v0.2.0_darwin_arm64.tar.gz"
      sha256 "c5b285b6e064607abe09bd84b3057132c0de01fe79cf7a9126771689b2a094d6"
    end
    on_intel do
      url "https://github.com/agisilaos/acal/releases/download/v0.2.0/acal_v0.2.0_darwin_amd64.tar.gz"
      sha256 "99cb867675b6f6daf102612d30a1aaeee56d016c678439ce4d0f481569d1f26e"
    end
  end

  def install
    bin.install "acal"
  end

  test do
    system "#{bin}/acal", "version"
  end
end
