class Bake < Formula
  desc "Pure bash, very lightweight scripting and build framework."
  homepage "https://github.com/kyleburton/bake"
  url "https://github.com/kyleburton/bake/releases/download/1.0.5/bake-1.0.5.tgz"
  sha256 "f16d18c6c1e54ca35bf28fcf7564d10f8ceb4d38e9db2fc6de47211b3aa3eb1e"

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
    assert_equal "1.0.5", shell_output("#{bin}/bake version").chomp
  end
end
