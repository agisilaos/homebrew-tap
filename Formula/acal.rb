class Acal < Formula
  desc "Apple Calendar CLI for terminal workflows and agents"
  homepage "https://github.com/agisilaos/acal"
  version "0.2.1"

  on_macos do
    on_arm do
      url "https://github.com/agisilaos/acal/releases/download/v0.2.1/acal_v0.2.1_darwin_arm64.tar.gz"
      sha256 "8093777ce289f573a6bbb0b658ef355cdb073b89b1620e032f6a13c138d6d167"
    end
    on_intel do
      url "https://github.com/agisilaos/acal/releases/download/v0.2.1/acal_v0.2.1_darwin_amd64.tar.gz"
      sha256 "a43ee0806e818d1fbd35213d10a1e1a894c198b1e20ae09004cd476451353415"
    end
  end

  def install
    bin.install "acal"
  end

  test do
    system "#{bin}/acal", "version"
  end
end
