class Acal < Formula
  desc "Apple Calendar CLI for terminal workflows and agents"
  homepage "https://github.com/agisilaos/acal"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/agisilaos/acal/releases/download/v0.1.3/acal_v0.1.3_darwin_arm64.tar.gz"
      sha256 "328d114341ee4ccefeab6317d141af463743632c676050cf1c531807ac000f98"
    end
    on_intel do
      url "https://github.com/agisilaos/acal/releases/download/v0.1.3/acal_v0.1.3_darwin_amd64.tar.gz"
      sha256 "649f65c52c7cf83f532b6a22b4c28725f894a3870b6ddd705de8d69ba9917e4d"
    end
  end

  def install
    bin.install "acal"
  end

  test do
    system "#{bin}/acal", "version"
  end
end
