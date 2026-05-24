class Dm < Formula
  desc "Dotfiles manager that syncs a mirrored HOME directory"
  homepage "https://github.com/lanjoni/dm"
  url "https://github.com/lanjoni/dm/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "25e0766cafc9808d6b21c714f6f5acefce8d48e3339f1d34ffa5b2e53457bede"
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
