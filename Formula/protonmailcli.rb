class Protonmailcli < Formula
  desc "Proton Mail Bridge CLI for terminal workflows"
  homepage "https://github.com/agisilaos/protonmailcli"
  license "MIT"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/agisilaos/protonmailcli/releases/download/v0.2.2/protonmailcli_0.2.2_darwin_arm64.tar.gz"
      sha256 "48ebc4d32333c748dbe6025c1643996bdacd67460af9f5b90fe5224ed4870aff"
    else
      url "https://github.com/agisilaos/protonmailcli/releases/download/v0.2.2/protonmailcli_0.2.2_darwin_amd64.tar.gz"
      sha256 "352ddc668fce687178f0c857b12b8060a4a7e9864ebf99f4afb391694ce2aaef"
    end
  end

  def install
    bin.install "protonmailcli"
  end

  test do
    shell_output("#{bin}/protonmailcli --version")
  end
end
