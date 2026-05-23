class Dm < Formula
  desc "Dotfiles manager that syncs a mirrored HOME directory"
  homepage "https://github.com/lanjoni/dm"
  url "https://github.com/lanjoni/dm/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "67126c575283416e1be259376560e949ab40bfe73613f7f90e0939ad51f6c880"
  license "Unlicense"
  head "https://github.com/lanjoni/dm.git", branch: "main"

  depends_on "zig" => :build

  def install
    system "zig", "build", "--release", "--prefix", prefix
  end

  test do
    assert_match "dm", shell_output("#{bin}/dm help")
  end
end
