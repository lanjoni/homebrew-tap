class Dm < Formula
  desc "Dotfiles manager that syncs a mirrored HOME directory"
  homepage "https://github.com/lanjoni/dm"
  url "https://github.com/lanjoni/dm/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "449d5e7b818cbe0f2feef4e3121111d3a92fc0e256301ddfbbc26e5bc317bf10"
  license "Unlicense"
  head "https://github.com/lanjoni/dm.git", branch: "main"

  depends_on "zig" => :build

  def install
    system "zig", "build", "-Doptimize=ReleaseSafe", "--prefix", prefix
  end

  test do
    assert_match "dm", shell_output("#{bin}/dm help")
  end
end
