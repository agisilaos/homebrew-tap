class Todoist Cli < Formula
  desc "Agentic CLI for Todoist"
  homepage "https://github.com/agisilaos/todoist-cli"
  license "MIT"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/agisilaos/todoist-cli/releases/download/v0.7.0/todoist-cli_0.7.0_darwin_arm64.tar.gz"
      sha256 "da1031a560bf11cad3fb0baecafce7939e10f787b1b73ed6b317d67aa515d266"
    else
      url "https://github.com/agisilaos/todoist-cli/releases/download/v0.7.0/todoist-cli_0.7.0_darwin_amd64.tar.gz"
      sha256 "0eccb6a6fda561c9dfe1e1c9411c09994eabd17fa8022fe19a0ce33693a9cfc0"
    end
  end

  def install
    bin.install "todoist"
  end

  test do
    shell_output("#{bin}/todoist --version")
  end
end
