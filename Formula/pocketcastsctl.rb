class Pocketcastsctl < Formula
  desc "macOS CLI for Pocket Casts Web Player control"
  homepage "https://github.com/agisilaos/pocketcastsctl"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/agisilaos/pocketcastsctl/releases/download/v0.1.2/pocketcastsctl_v0.1.2_darwin_arm64.tar.gz"
      sha256 "336bdcd5bbec66fdb8e32baa145a15f8d9011c043cb619cf67ad7c3f617f685d"
    end
    on_intel do
      url "https://github.com/agisilaos/pocketcastsctl/releases/download/v0.1.2/pocketcastsctl_v0.1.2_darwin_amd64.tar.gz"
      sha256 "57e619d7d10649e8039b89977499014dde6a737214e97ff1fe51ea946e93dec3"
    end
  end

  def install
    bin.install "pocketcastsctl"
  end

  test do
    system "#{bin}/pocketcastsctl", "version"
  end
end
