class TodoistCli < Formula
  desc "Agentic CLI for Todoist"
  homepage "https://github.com/agisilaos/todoist-cli"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/agisilaos/todoist-cli/releases/download/v0.1.0/todoist-cli_v0.1.0_darwin_arm64.tar.gz"
      sha256 "06bc9cdaeb0fdc9b56ebc237065c0a8359ed1484d4201b4f20dd1f43e3549c38"
    end
    on_intel do
      url "https://github.com/agisilaos/todoist-cli/releases/download/v0.1.0/todoist-cli_v0.1.0_darwin_amd64.tar.gz"
      sha256 "bacf52c7be74fd46e69db1c7d3881dc2945a1202f40f54978369f58911402c5e"
    end
  end

  def install
    bin.install "todoist"
  end

  test do
    system "#{bin}/todoist", "--version"
  end
end
