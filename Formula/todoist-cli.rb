class TodoistCli < Formula
  desc "Agentic CLI for Todoist"
  homepage "https://github.com/agisilaos/todoist-cli"
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://github.com/agisilaos/todoist-cli/releases/download/v0.6.0/todoist-cli_v0.6.0_darwin_arm64.tar.gz"
      sha256 "d0a2f45fccecc3e24b487cd2777f6f511d0efba3f4b35ff7522b9697b1083e2d"
    end
    on_intel do
      url "https://github.com/agisilaos/todoist-cli/releases/download/v0.6.0/todoist-cli_v0.6.0_darwin_amd64.tar.gz"
      sha256 "2c325f4cfa4c0de1326e89ed8ae72bda2dcecfd0a7087748d08b302acacad275"
    end
  end

  def install
    bin.install "todoist"
  end

  test do
    system "#{bin}/todoist", "--version"
  end
end
