class Pocketcastsctl < Formula
  desc "macOS CLI for Pocket Casts Web Player control"
  homepage "https://github.com/agisilaos/pocketcastsctl"
  license "MIT"
  version "0.1.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/agisilaos/pocketcastsctl/releases/download/v0.1.6/pocketcastsctl_0.1.6_darwin_arm64.tar.gz"
      sha256 "559638226169f039761f0b915da3be14cb305877d27b57281d91be2148dae8e8"
    else
      url "https://github.com/agisilaos/pocketcastsctl/releases/download/v0.1.6/pocketcastsctl_0.1.6_darwin_amd64.tar.gz"
      sha256 "d7077168f936dcc71f72a9754e9cf32875cff3d6a614b4f7bdb112dfd3f251fb"
    end
  end

  def install
    bin.install "pocketcastsctl"
  end

  test do
    shell_output("#{bin}/pocketcastsctl version")
  end
end
