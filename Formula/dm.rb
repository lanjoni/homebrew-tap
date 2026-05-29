class Dm < Formula
  desc "Dotfiles manager that syncs a mirrored HOME directory"
  homepage "https://github.com/lanjoni/dm"
  url "https://github.com/lanjoni/dm/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "cd144ae686697fd27edea08c7eac378b01be71a15f99f050caf4668668ca2c76"
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
