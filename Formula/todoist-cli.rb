class Todoist Cli < Formula
  desc "Agentic CLI for Todoist"
  homepage "https://github.com/agisilaos/todoist-cli"
  license "MIT"
  version "0.6.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/agisilaos/todoist-cli/releases/download/v0.6.2/todoist-cli_0.6.2_darwin_arm64.tar.gz"
      sha256 "4fd4d220e492c5827433f905fd54a5f653c30a051deea92001b960f439febc02"
    else
      url "https://github.com/agisilaos/todoist-cli/releases/download/v0.6.2/todoist-cli_0.6.2_darwin_amd64.tar.gz"
      sha256 "6a73001322a05beffa3275a74f4f50e6edb4d9cbc919c46bac0ac3e1559892a5"
    end
  end

  def install
    bin.install "todoist"
  end

  test do
    shell_output("#{bin}/todoist --version")
  end
end
