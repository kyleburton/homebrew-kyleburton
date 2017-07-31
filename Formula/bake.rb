class Bake < Formula
  version = "1.0.6"
  desc "Pure bash, very lightweight scripting and build framework."
  homepage "https://github.com/kyleburton/bake"
  url "https://github.com/kyleburton/bake/archive/#{version}.tar.gz"
  sha256 "786097575df13e4e2177c4c22bea1bd59c01a4dbfeece1af09bbd2f269d05852"

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
