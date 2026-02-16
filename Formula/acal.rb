class Acal < Formula
  desc "Apple Calendar CLI for terminal workflows and agents"
  homepage "https://github.com/agisilaos/acal"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/agisilaos/acal/releases/download/v0.1.1/acal_v0.1.1_darwin_arm64.tar.gz"
      sha256 "c1ddc970857ddc8f3981a7bcb63446d9849d14c11c8a3b6ce934d4f41f2c5bbf"
    end
    on_intel do
      url "https://github.com/agisilaos/acal/releases/download/v0.1.1/acal_v0.1.1_darwin_amd64.tar.gz"
      sha256 "f49597008386b51eaa24d505676e92523a7275a46013c345f32e138e305edf08"
    end
  end

  def install
    bin.install "acal"
  end

  test do
    system "#{bin}/acal", "version"
  end
end
