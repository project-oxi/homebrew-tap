class Oxios < Formula
  desc "Agent Operating System — AI agents as Unix processes"
  homepage "https://github.com/project-oxi/oxios"
  url "https://github.com/project-oxi/oxios/releases/download/v2.2.0/oxios-aarch64-apple-darwin.tar.gz"
  sha256 "f5ada8c46c41efffc477ed3f581a73e60807e1b937968e0f5ad38f6678be751e"
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
