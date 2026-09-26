class TodoistCli < Formula
  desc "Agentic CLI for Todoist"
  homepage "https://github.com/agisilaos/todoist-cli"
  license "MIT"
  version "0.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/agisilaos/todoist-cli/releases/download/v0.8.0/todoist-cli_0.8.0_darwin_arm64.tar.gz"
      sha256 "b04bfae517bf02e22b19920e9183a007fc32f2d187e661923f2d6c587f43d4f2"
    else
      url "https://github.com/agisilaos/todoist-cli/releases/download/v0.8.0/todoist-cli_0.8.0_darwin_amd64.tar.gz"
      sha256 "6ecf639e15fd9e9457751d43f0d588e7bdf241ab60d7e4bc018743c6472c0c54"
    end
  end

  def install
    bin.install "todoist"
  end

  test do
    shell_output("#{bin}/todoist --version")
  end
end
