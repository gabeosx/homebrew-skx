class Skx < Formula
  desc "The CLI tool for managing Agent Skills"
  homepage "https://github.com/gabeosx/skx"
  url "https://registry.npmjs.org/@gabeosx/skx/-/skx-1.1.5.tgz"
  sha256 "61aded6ef537b4e9795b71fabf41cb12b1f6f9d137c2a4f1b88c766ebce6559a" # Placeholder
  license "ISC"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    # Check if the binary is executable and returns a version
    assert_match version.to_s, shell_output("#{bin}/skx --version")
  end
end
