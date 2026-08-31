class Homepodctl < Formula
  desc "macOS CLI for Apple Music + HomePod control"
  homepage "https://github.com/agisilaos/homepodctl"
  license "MIT"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/agisilaos/homepodctl/releases/download/v0.3.0/homepodctl_0.3.0_darwin_arm64.tar.gz"
      sha256 "eccc9b18c1e3192be4c5b31179c52bd62efc4d83d9a91a0140410bb5a270cda3"
    else
      url "https://github.com/agisilaos/homepodctl/releases/download/v0.3.0/homepodctl_0.3.0_darwin_amd64.tar.gz"
      sha256 "dece15aebcca73eb405dc605104f2a4f997a8e6b3b8ed3958fb6c2ad8a8153f9"
    end
  end

  def install
    bin.install "homepodctl"
  end

  test do
    shell_output("#{bin}/homepodctl version")
  end
end
