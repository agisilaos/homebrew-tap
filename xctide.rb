class Xctide < Formula
  desc "xctide command-line tool"
  homepage "https://github.com/agisilaos/xctide"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/agisilaos/xctide/releases/download/v0.1.0/xctide_0.1.0_darwin_arm64.tar.gz"
      sha256 "1fc561c5400ea05528347f443097d8a1b33b32a54db24c69103b6acfe9e6275e"
    else
      url "https://github.com/agisilaos/xctide/releases/download/v0.1.0/xctide_0.1.0_darwin_amd64.tar.gz"
      sha256 "81708b142e59bc854fa92695ad24d7762afdb4a6d12a88adf509756b8ad7f800"
    end
  end

  def install
    bin.install "xctide"
  end

  test do
    shell_output("#{bin}/xctide --version")
  end
end
