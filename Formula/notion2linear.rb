class Notion2linear < Formula
  desc "Migrate rows from a Notion database into Linear issues"
  homepage "https://github.com/agisilaos/notion2linear"
  license "MIT"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/agisilaos/notion2linear/releases/download/v0.1.1/notion2linear_v0.1.1_darwin_arm64.tar.gz",
          using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "f89ce3a54180da9c391634c8556b5954a3e339198969c99ec602abf533bf1878"
    else
      url "https://github.com/agisilaos/notion2linear/releases/download/v0.1.1/notion2linear_v0.1.1_darwin_amd64.tar.gz",
          using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "20896700d2eb93a078456808941721174f7c7a8ff9ad07fd66a9574c0e00d1c9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/agisilaos/notion2linear/releases/download/v0.1.1/notion2linear_v0.1.1_linux_arm64.tar.gz",
          using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "184a9f937c6b27040e3c433e43505b182b2f9103fb7b4b81e7b12f350e0fbe12"
    else
      url "https://github.com/agisilaos/notion2linear/releases/download/v0.1.1/notion2linear_v0.1.1_linux_amd64.tar.gz",
          using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "c1a777dbc3faee2ad5dfa555c1969ac544ad487e62e899efea559ad2e9e55933"
    end
  end

  def install
    bin.install Dir["*/notion2linear"].first => "notion2linear"
  end

  test do
    assert_match "notion2linear", shell_output("#{bin}/notion2linear version")
  end
end
