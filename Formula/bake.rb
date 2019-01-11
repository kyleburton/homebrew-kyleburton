class Bake < Formula
  version = "1.0.14"
  desc      "Pure bash, very lightweight scripting and build framework."
  homepage  "https://github.com/kyleburton/bake"
  url       "https://github.com/kyleburton/bake/releases/download/bake-#{version}/bake-#{version}.tgz"
  sha256    "62d736fa6e14cbb46b51851fe1e6bc3579a7db72a01eafe890eae249a199a84e"

  # NB: on OSX bash is really required b/c OS X's bash don't do arrays, while
  # sane, recent (like since the year 2000) supports arrays.  We should make the depends_on
  # required for OSX but not for Linuxes
  depends_on "bash"            => :recommended
  depends_on "bash-completion" => :recommended

  def install
    bin.install "bin/bake"
    bin.install "bin/bake-completion.sh"
  end

  def caveats
    ["If you'd like to use command line completion for bash, please",
     "source the file #{bin}/bake-completion.sh from your ~/.bashrc",
     "or ~/.bash_profile"].join("\n")
  end

  test do
    assert_equal version, shell_output("#{bin}/bake version").chomp
  end
end
