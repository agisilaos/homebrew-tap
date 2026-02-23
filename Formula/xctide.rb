class Xctide < Formula
  desc "xctide command-line tool"
  homepage "https://github.com/agisilaos/xctide"
  license "MIT"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/agisilaos/xctide/releases/download/v0.2.2/xctide_0.2.2_darwin_arm64.tar.gz"
      sha256 "2a083a19bcc83bb8317391ea34e296ea303b3f2639e27cdd7dc9dc956a073657"
    else
      url "https://github.com/agisilaos/xctide/releases/download/v0.2.2/xctide_0.2.2_darwin_amd64.tar.gz"
      sha256 "907a4d4213d049c5a03ed714ebc54b4c1e4b76407eea80dd423c89bc83f255a7"
    end
  end

  def install
    bin.install "xctide"
  end

  test do
    shell_output("#{bin}/xctide --version")
  end
end
