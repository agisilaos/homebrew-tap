class TodoistCli < Formula
  desc 'Agentic CLI for Todoist'
  homepage 'https://github.com/agisilaos/todoist-cli'
  license 'MIT'
  version '0.10.0'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/agisilaos/todoist-cli/releases/download/v0.10.0/todoist-cli_0.10.0_darwin_arm64.tar.gz'
      sha256 'd95061dac0245df53b0795417853a4d299ce0a9e07f731862e0235dfddad3af8'
    else
      url 'https://github.com/agisilaos/todoist-cli/releases/download/v0.10.0/todoist-cli_0.10.0_darwin_amd64.tar.gz'
      sha256 'a018eeb2b8a9ee462ea6eced8298a8ee632401441352d2fb480638341149012b'
    end
  end

  def install
    bin.install 'todoist'
  end

  test do
    assert_match version.to_s, shell_output("\"#{bin}/todoist\" " + '--version')
  end
end
