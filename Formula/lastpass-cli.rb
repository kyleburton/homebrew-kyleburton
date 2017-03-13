class LastpassCli < Formula
  desc "LastPass command-line interface tool: github.com/kyleburton integration branch"
  homepage "https://github.com/kyleburton/lastpass-cli"
  url "https://github.com/kyleburton/lastpass-cli/archive/v1.1.3-krb.tar.gz"
  sha256 "f9df0af574213e37970816a6e3e8eef78ce65b322334d5210372ba7a98f9386a"
  head "https://github.com/lastpass/lastpass-cli.git"

  depends_on "asciidoc" => :build
  depends_on "cmake" => :build
  depends_on "pkg-config" => :build
  depends_on "openssl"
  depends_on "pinentry" => :optional

  def install
    system "make", "PREFIX=#{prefix}", "install"
    system "make", "MANDIR=#{man}", "install-doc"
  end

  test do
    system "#{bin}/lpass", "--version"
  end
end
