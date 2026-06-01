class Sniptrace < Formula
  desc "Trim noisy terminal output before it reaches your AI agent"
  homepage "https://sniptrace.com"
  url "https://github.com/j15marti/sniptrace/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "REPLACE_WITH_TARBALL_SHA256"
  license "MIT"
  version "1.1.0"

  depends_on "python@3.12"

  def install
    bin.install "bin/sniptrace"
  end

  test do
    assert_match "1.1.0", shell_output("#{bin}/sniptrace --version")
  end
end
