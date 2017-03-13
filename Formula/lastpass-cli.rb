class LastpassCli < Formula
  desc "LastPass command-line interface tool: github.com/kyleburton integration branch"
  homepage "https://github.com/kyleburton/lastpass-cli"
  url "https://github.com/kyleburton/lastpass-cli/archive/v1.1.3-krb.tar.gz"
  sha256 "d3229d852adc0a335a48e9db8992d1f6589aa65171cfa0b698a584b524567f36"
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
