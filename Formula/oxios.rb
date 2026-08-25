class Oxios < Formula
  desc "Agent Operating System — AI agents as Unix processes"
  homepage "https://github.com/project-oxi/oxios"
  url "https://github.com/project-oxi/oxios/releases/download/v1.44.0/oxios-aarch64-apple-darwin.tar.gz"
  sha256 "5daa93b6ac8fab63c6e207e7b1ad9b320156c3d7d8d4c3980c9ec0132e9c445c"
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
