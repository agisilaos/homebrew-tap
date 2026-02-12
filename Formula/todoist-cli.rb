class TodoistCli < Formula
  desc "Agentic CLI for Todoist"
  homepage "https://github.com/agisilaos/todoist-cli"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/agisilaos/todoist-cli/releases/download/v0.2.0/todoist-cli_v0.2.0_darwin_arm64.tar.gz"
      sha256 "6564b6dfabbe4dab381144fea73065aa0717cd694b67b6349b154b804c081b4d"
    end
    on_intel do
      url "https://github.com/agisilaos/todoist-cli/releases/download/v0.2.0/todoist-cli_v0.2.0_darwin_amd64.tar.gz"
      sha256 "0ffdff0d0487eb21aedcf514c61f74787a98817a26106fa6cb3e371d057a3d08"
    end
  end

  def install
    bin.install "todoist"
  end

  test do
    system "#{bin}/todoist", "--version"
  end
end
