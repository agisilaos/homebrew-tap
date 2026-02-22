class Todoist Cli < Formula
  desc "Agentic CLI for Todoist"
  homepage "https://github.com/agisilaos/todoist-cli"
  license "MIT"
  version "0.6.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/agisilaos/todoist-cli/releases/download/v0.6.1/todoist-cli_0.6.1_darwin_arm64.tar.gz"
      sha256 "1d7fea20b9adb2b83ec7ff274378bc08c581cf13ee64600502210440d97ab8c8"
    else
      url "https://github.com/agisilaos/todoist-cli/releases/download/v0.6.1/todoist-cli_0.6.1_darwin_amd64.tar.gz"
      sha256 "f528371308fb220180e0bc8c40dc58b908db3766161434f4030c01408ab57fdc"
    end
  end

  def install
    bin.install "todoist"
  end

  test do
    shell_output("#{bin}/todoist --version")
  end
end
