class Sniptrace < Formula
  desc "Trim noisy terminal output before it reaches your AI agent"
  homepage "https://sniptrace.com"
  url "https://github.com/j15marti/sniptrace/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "a8cb8e8d8455baea6ea75d983fda09c949f0e39068c2ba4d17472fd2b102a380"
  license "MIT"
  version "1.1.1"

  depends_on "python@3.12"

  def install
    bin.install "bin/sniptrace"
  end

  test do
    assert_match "1.1.1", shell_output("#{bin}/sniptrace --version")
  end
end
