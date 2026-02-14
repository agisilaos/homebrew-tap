class Homepodctl < Formula
  desc "macOS CLI for Apple Music + HomePod control"
  homepage "https://github.com/agisilaos/homepodctl"
  version "0.1.4"

  on_macos do
    on_arm do
      url "https://github.com/agisilaos/homepodctl/releases/download/v0.1.4/homepodctl_v0.1.4_darwin_arm64.tar.gz"
      sha256 "5085a5093ecf37eb921a1ef4c25af7c0caa84cec9003b0beaf49705251f230c1"
    end
    on_intel do
      url "https://github.com/agisilaos/homepodctl/releases/download/v0.1.4/homepodctl_v0.1.4_darwin_amd64.tar.gz"
      sha256 "859609944a37df1e9b358e6b411cb2559ebef0a44f3e46e579562fdb02c76601"
    end
  end

  def install
    bin.install "homepodctl"
  end

  test do
    system "#{bin}/homepodctl", "version"
  end
end
