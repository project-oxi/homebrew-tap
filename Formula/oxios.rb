class Oxios < Formula
  desc "Agent Operating System — AI agents as Unix processes"
  homepage "https://github.com/project-oxi/oxios"
  url "https://github.com/project-oxi/oxios/releases/download/v2.1.0/oxios-aarch64-apple-darwin.tar.gz"
  sha256 "d4bc15cd5ee167109aeedd44520b36f705df9ec0a2cdff438e8357cbe06ac942"
  license "MIT"

  # Single release target: aarch64-apple-darwin (self-hosted ARM64 runner).
  depends_on arch: :arm64

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "oxios"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/oxios --version")
  end
end
