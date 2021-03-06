class Dune < Formula
  desc "Composable build system for OCaml"
  homepage "https://dune.build/"
  url "https://github.com/ocaml/dune/releases/download/2.8.2/dune-2.8.2.tbz"
  sha256 "e2c4e8230f7c96236503fd75f22bdbc263639971bf104509e446855ded35ae1e"
  license "MIT"
  head "https://github.com/ocaml/dune.git"

  bottle do
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "91a8b8257c944a1701090324e761f397a0034996e605a95063ef0ae3e98d95f7"
    sha256 cellar: :any_skip_relocation, big_sur:       "207990a41328767e8c46a8d3d7d8aa1db494a1243fbdf5bcd8fcca83668d57b1"
    sha256 cellar: :any_skip_relocation, catalina:      "a3603b422c90d1fa525f5b9581f18b4645aeb39e3ccb7450f11d6e833a92e697"
    sha256 cellar: :any_skip_relocation, mojave:        "b6906bda3c1557367516849bda5957596a4cc4ca0407c04282a7d3d4ae3d873c"
  end

  depends_on "ocaml" => [:build, :test]

  def install
    system "ocaml", "bootstrap.ml"
    system "./dune.exe", "build", "-p", "dune", "--profile", "dune-bootstrap"
    bin.install "_build/default/bin/dune.exe" => "dune"
  end

  test do
    contents = "bar"
    target_fname = "foo.txt"
    (testpath/"dune").write("(rule (with-stdout-to #{target_fname} (echo #{contents})))")
    system bin/"dune", "build", "foo.txt", "--root", "."
    output = File.read(testpath/"_build/default/#{target_fname}")
    assert_match contents, output
  end
end
