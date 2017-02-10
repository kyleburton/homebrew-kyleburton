class Bake < Formula
  desc "Pure bash, very lightweight scripting and build framework."
  homepage "https://github.com/kyleburton/bake"
  url "https://github.com/kyleburton/bake/releases/download/1.0.4/bake-1.0.4.tgz"
  sha256 "f5e10929a1d691b54f81fbdba449b539943f28768b1d8a01bba0ddfea07d2984"

  depends_on "bash" => :recommended

  def install
    bin.install "bin/bake"
    bin.install "bin/bake-completion.sh"
  end

  def caveats; <<-EOS.undent
    If you'd like to use command line completion for bash, please
    source the file #{bin}/bake-completion.sh from your ~/.bashrc
    or ~/.bash_profile
    EOS
  end

  test do
    assert_equal "1.0.4", shell_output("#{bin}/bake version").chomp
  end
end
