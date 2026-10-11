class Pocketcastsctl < Formula
  desc "macOS CLI for Pocket Casts Web Player control"
  homepage "https://github.com/agisilaos/pocketcastsctl"
  license "MIT"
  version "0.1.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/agisilaos/pocketcastsctl/releases/download/v0.1.8/pocketcastsctl_0.1.8_darwin_arm64.tar.gz"
      sha256 "5cf26323bf85af72fe3f3ef48403752b929597b3fc2cc3509ff54a214d2e61b1"
    else
      url "https://github.com/agisilaos/pocketcastsctl/releases/download/v0.1.8/pocketcastsctl_0.1.8_darwin_amd64.tar.gz"
      sha256 "fa02faaa428edc3490cb202058b963622b67f141ae465071d233c7e437137580"
    end
  end

  def install
    bin.install "pocketcastsctl"
  end

  test do
    shell_output("#{bin}/pocketcastsctl version")
  end
end
