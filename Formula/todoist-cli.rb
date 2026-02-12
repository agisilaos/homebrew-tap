class TodoistCli < Formula
  desc "Agentic CLI for Todoist"
  homepage "https://github.com/agisilaos/todoist-cli"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/agisilaos/todoist-cli/releases/download/v0.4.0/todoist-cli_v0.4.0_darwin_arm64.tar.gz"
      sha256 "558bc194de285807e2f98e41708d0e4131a5200d13a9f00cc067a8a7c7a820fc"
    end
    on_intel do
      url "https://github.com/agisilaos/todoist-cli/releases/download/v0.4.0/todoist-cli_v0.4.0_darwin_amd64.tar.gz"
      sha256 "2dc817f6771477314897b596f293e77bce641d67dc3695e372843a94fc8ae3ba"
    end
  end

  def install
    bin.install "todoist"
  end

  test do
    system "#{bin}/todoist", "--version"
  end
end
