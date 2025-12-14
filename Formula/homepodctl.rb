class Homepodctl < Formula
  desc "macOS CLI for Apple Music + HomePod control"
  homepage "https://github.com/agisilaos/homepodctl"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/agisilaos/homepodctl/releases/download/v0.1.1/homepodctl_v0.1.1_darwin_arm64.tar.gz"
      sha256 "bc3e1f6d88967add0378588780ba7b5597667052755e05402a935870422ea9b0"
    end
    on_intel do
      url "https://github.com/agisilaos/homepodctl/releases/download/v0.1.1/homepodctl_v0.1.1_darwin_amd64.tar.gz"
      sha256 "492e2d84d7bc75a343d77e3ed766529bfbc4c86a50468a894985c43644a60896"
    end
  end

  def install
    bin.install "homepodctl"
  end

  test do
    system "#{bin}/homepodctl", "version"
  end
end
