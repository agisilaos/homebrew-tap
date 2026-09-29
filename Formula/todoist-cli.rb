class TodoistCli < Formula
  desc "Agentic CLI for Todoist"
  homepage "https://github.com/agisilaos/todoist-cli"
  license "MIT"
  version "0.9.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/agisilaos/todoist-cli/releases/download/v0.9.1/todoist-cli_0.9.1_darwin_arm64.tar.gz"
      sha256 "5857d113bf461daba903d417074fd8a6c42d952d8ecca8eb73c34ccad3c54905"
    else
      url "https://github.com/agisilaos/todoist-cli/releases/download/v0.9.1/todoist-cli_0.9.1_darwin_amd64.tar.gz"
      sha256 "d8b0ed2a7dc3b3db5e41a568ce76235038a051893473127ea5ce9286c89c1d16"
    end
  end

  def install
    bin.install "todoist"
  end

  test do
    shell_output("#{bin}/todoist --version")
  end
end
