class Xctide < Formula
  desc "xctide command-line tool"
  homepage "https://github.com/agisilaos/xctide"
  license "MIT"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/agisilaos/xctide/releases/download/v0.1.1/xctide_0.1.1_darwin_arm64.tar.gz"
      sha256 "931e92f2094776daa650113bbde0cd1fd5e9fc519e82e49644e4a552a9b2a836"
    else
      url "https://github.com/agisilaos/xctide/releases/download/v0.1.1/xctide_0.1.1_darwin_amd64.tar.gz"
      sha256 "6f4c2dfcda005b9953f4dacf93a0db3f081a58cd54d9f3ff50f2412e59800473"
    end
  end

  def install
    bin.install "xctide"
  end

  test do
    shell_output("#{bin}/xctide --version")
  end
end
