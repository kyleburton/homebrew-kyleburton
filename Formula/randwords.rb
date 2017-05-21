require 'os'
class Randwords < Formula
  desc "Random list of words from /usr/share/dict/words"
  homepage "https://github.com/kyleburton/randwords"

  if OS.mac?
    puts "IS MAC"
    url "https://github.com/kyleburton/randwords/releases/download/v1.0.3/randwords_1.0.3_darwin_amd64.tar.gz"
    sha256 "c8f0403dd2ed6ba7eadcd22190fe887d1e516f548d496dd091ca18d8b7c899ff"
  end

  if OS.linux?
    puts "IS LINUX"
    url "https://github.com/kyleburton/randwords/releases/download/v1.0.3/randwords_1.0.3_linux_amd64.tar.gz"
    sha256 "8a97844267444769b29f3cba7676fb33895ad9a333c6835108c33c5f8962d5fa"
  end
  head "https://github.com/kyleburton/randwords.git"

  def install
    # system "make", "MANDIR=#{man}", "install-doc"
    bin.install "randwords"
  end

  test do
    system "#{bin}/randwords"
  end
end

