class TodoistCli < Formula
  desc "Agentic CLI for Todoist"
  homepage "https://github.com/agisilaos/todoist-cli"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/agisilaos/todoist-cli/releases/download/v0.3.0/todoist-cli_v0.3.0_darwin_arm64.tar.gz"
      sha256 "8cfb3a0fd136be8f2d13721e648e735687f1600d4851e308bd927e83ef01dcb3"
    end
    on_intel do
      url "https://github.com/agisilaos/todoist-cli/releases/download/v0.3.0/todoist-cli_v0.3.0_darwin_amd64.tar.gz"
      sha256 "91cf199df91f523e2fbd83a4a7a48ceec0d38b92caa89880fb7c572554237026"
    end
  end

  def install
    bin.install "todoist"
  end

  test do
    system "#{bin}/todoist", "--version"
  end
end
