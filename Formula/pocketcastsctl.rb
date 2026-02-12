class Pocketcastsctl < Formula
  desc "macOS CLI for Pocket Casts Web Player control"
  homepage "https://github.com/agisilaos/pocketcastsctl"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/agisilaos/pocketcastsctl/releases/download/v0.1.1/pocketcastsctl_v0.1.1_darwin_arm64.tar.gz"
      sha256 "d468e5fc5e1ebc4100f6ad68b25fbb046252e7b9d1481b9bf2c8e8e87206d538"
    end
    on_intel do
      url "https://github.com/agisilaos/pocketcastsctl/releases/download/v0.1.1/pocketcastsctl_v0.1.1_darwin_amd64.tar.gz"
      sha256 "3dd08a4c72151ccea46e5c1d32ac97ffc59b5276fb6c328f0cda1d76a3980cba"
    end
  end

  def install
    bin.install "pocketcastsctl"
  end

  test do
    system "#{bin}/pocketcastsctl", "version"
  end
end
