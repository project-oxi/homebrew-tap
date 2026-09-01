class Oxios < Formula
  desc "Agent Operating System — AI agents as Unix processes"
  homepage "https://github.com/project-oxi/oxios"
  url "https://github.com/project-oxi/oxios/releases/download/v2.0.1/oxios-aarch64-apple-darwin.tar.gz"
  sha256 "4d6cfe8d67c3e8677dfa5ce029e7d1cd8029aef9f88fb10a0d8a18a5fb039c38"
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
