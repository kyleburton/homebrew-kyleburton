class LastpassCli < Formula
  desc "LastPass command-line interface tool: github.com/kyleburton integration branch"
  homepage "https://github.com/kyleburton/lastpass-cli"
  url "https://github.com/kyleburton/lastpass-cli/archive/v1.1.4-krb.tar.gz"
  sha256 "f32e435733c99660c5ccb9e78d22b6bae71656b053fae5325a9eafbbf6ac6e07"
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
