class Xctide < Formula
  desc "xctide command-line tool"
  homepage "https://github.com/agisilaos/xctide"
  license "MIT"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/agisilaos/xctide/releases/download/v0.2.0/xctide_0.2.0_darwin_arm64.tar.gz"
      sha256 "21637d8a48549d8200ca9dd663f50e8c9a3d51b6fb818772360b8989e36c82b5"
    else
      url "https://github.com/agisilaos/xctide/releases/download/v0.2.0/xctide_0.2.0_darwin_amd64.tar.gz"
      sha256 "ba1b042865528b5d1c1d51e1a20a976db5b6dc7d5fbbebcf35cf294f76985910"
    end
  end

  def install
    bin.install "xctide"
  end

  test do
    shell_output("#{bin}/xctide --version")
  end
end
