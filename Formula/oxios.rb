class Oxios < Formula
  desc "Agent Operating System — AI agents as Unix processes"
  homepage "https://github.com/project-oxi/oxios"
  url "https://github.com/project-oxi/oxios/releases/download/v1.43.0/oxios-aarch64-apple-darwin.tar.gz"
  sha256 "5fe3a2cd00fbb6c23f661ee5e571ca00393c56382436e9c8bafbeb1171cd70f4"
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
