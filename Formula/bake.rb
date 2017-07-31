class Bake < Formula
  version = "1.0.6"
  desc "Pure bash, very lightweight scripting and build framework."
  homepage "https://github.com/kyleburton/bake"
  url "https://github.com/kyleburton/bake/releases/download/#{version}/bake-#{version}.tgz"
  sha256 "2b7d4006dec823a31556a3ecf80d44002a3b09bb2f1290b80e816ca48cae5118"

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
    assert_equal version, shell_output("#{bin}/bake version").chomp
  end
end
