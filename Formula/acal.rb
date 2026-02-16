class Acal < Formula
  desc "Apple Calendar CLI for terminal workflows and agents"
  homepage "https://github.com/agisilaos/acal"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/agisilaos/acal/releases/download/v0.1.0/acal_v0.1.0_darwin_arm64.tar.gz"
      sha256 "9938f41b90ea28a59c996e9ac1745f13f3c34e85915152e4ea3e33e160b16ad7"
    end
    on_intel do
      url "https://github.com/agisilaos/acal/releases/download/v0.1.0/acal_v0.1.0_darwin_amd64.tar.gz"
      sha256 "be2aa0c68c2123d5aba3d84be1a0cbe43e551dfa3f487358ebe3a022b7d5922e"
    end
  end

  def install
    bin.install "acal"
  end

  test do
    system "#{bin}/acal", "version"
  end
end
