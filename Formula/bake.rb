class Bake < Formula
  version = "1.0.17"
  desc      "Pure bash, very lightweight scripting and build framework."
  homepage  "https://github.com/kyleburton/bake"
  url       "https://github.com/kyleburton/bake/releases/download/#{version}/bake-#{version}.tar.gz"
  sha256    "56bb538e143e1028998ccca9c1415d917d510e24784270475844a4aa4a37cf9e"

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
