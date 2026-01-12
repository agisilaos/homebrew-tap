class Pocketcastsctl < Formula
  desc "macOS CLI for Pocket Casts Web Player control"
  homepage "https://github.com/agisilaos/pocketcastsctl"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/agisilaos/pocketcastsctl/releases/download/v0.1.0/pocketcastsctl_v0.1.0_darwin_arm64.tar.gz"
      sha256 "26cee048be267a0b9084766f16cc7f51020aa68f88962b86d5ec2041297b5b14"
    end
    on_intel do
      url "https://github.com/agisilaos/pocketcastsctl/releases/download/v0.1.0/pocketcastsctl_v0.1.0_darwin_amd64.tar.gz"
      sha256 "1eb1c1bb42e8f939032dfd3f285daccf1548deda74fa68e1ddf0dee24995e902"
    end
  end

  def install
    bin.install "pocketcastsctl"
  end

  test do
    system "#{bin}/pocketcastsctl", "version"
  end
end
