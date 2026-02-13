class TodoistCli < Formula
  desc "Agentic CLI for Todoist"
  homepage "https://github.com/agisilaos/todoist-cli"
  version "0.5.0"

  on_macos do
    on_arm do
      url "https://github.com/agisilaos/todoist-cli/releases/download/v0.5.0/todoist-cli_v0.5.0_darwin_arm64.tar.gz"
      sha256 "65fc76570d5329091ad391e8aa7eb3e7a6d9e4b575fe1fba87fdc65fb75b2519"
    end
    on_intel do
      url "https://github.com/agisilaos/todoist-cli/releases/download/v0.5.0/todoist-cli_v0.5.0_darwin_amd64.tar.gz"
      sha256 "e55a286868a7be0104875ba873cc960a4176bc63bafdacde509891e1ebf07348"
    end
  end

  def install
    bin.install "todoist"
  end

  test do
    system "#{bin}/todoist", "--version"
  end
end
