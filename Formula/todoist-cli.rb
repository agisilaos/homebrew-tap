class TodoistCli < Formula
  desc "Agentic CLI for Todoist"
  homepage "https://github.com/agisilaos/todoist-cli"
  license "MIT"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/agisilaos/todoist-cli/releases/download/v0.9.0/todoist-cli_0.9.0_darwin_arm64.tar.gz"
      sha256 "7eb01c5c3c9f8924860d8947867fda030358b206af70114a3d2e00f0cc8644fe"
    else
      url "https://github.com/agisilaos/todoist-cli/releases/download/v0.9.0/todoist-cli_0.9.0_darwin_amd64.tar.gz"
      sha256 "7dcb18aed3792f1440e8cc04f7d44f254e6537c931bbfd6fc1bae0b2edb240d6"
    end
  end

  def install
    bin.install "todoist"
  end

  test do
    shell_output("#{bin}/todoist --version")
  end
end
