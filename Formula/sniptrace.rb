class Sniptrace < Formula
  desc "Trim noisy terminal output before it reaches your AI agent"
  homepage "https://sniptrace.com"
  url "https://github.com/j15marti/sniptrace/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "f5628bc10ec52539e7662faf5c86ee0c25a65f6129bedd5f1850cb424d28e705"
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
