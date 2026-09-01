class Pocketcastsctl < Formula
  desc "macOS CLI for Pocket Casts Web Player control"
  homepage "https://github.com/agisilaos/pocketcastsctl"
  license "MIT"
  version "0.1.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/agisilaos/pocketcastsctl/releases/download/v0.1.7/pocketcastsctl_0.1.7_darwin_arm64.tar.gz"
      sha256 "588a48ea27d828003d8d6e955039b575789a5fa7abf98d566c684b1ffaaceaf2"
    else
      url "https://github.com/agisilaos/pocketcastsctl/releases/download/v0.1.7/pocketcastsctl_0.1.7_darwin_amd64.tar.gz"
      sha256 "ffdecebe23de214de8c7ec333172f03a8f5bcbe0ddb6d8872864fe42b16973e8"
    end
  end

  def install
    bin.install "pocketcastsctl"
  end

  test do
    shell_output("#{bin}/pocketcastsctl version")
  end
end
