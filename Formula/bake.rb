class Bake < Formula
  desc "Pure bash, very lightweight scripting and build framework."
  homepage "https://github.com/kyleburton/bake"
  url "https://github.com/kyleburton/bake/releases/download/1.0.3/bake-1.0.3.tgz"
  sha256 "d46c14e20a2c5c6b2e9b274842346ef1c63ad0f68314973ca8cdaab695162d37"

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
    assert_equal "1.0.3", shell_output("#{bin}/bake version").chomp
  end
end
