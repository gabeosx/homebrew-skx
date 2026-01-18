class Skx < Formula
  desc "The CLI tool for managing Agent Skills"
  homepage "https://github.com/gabeosx/skx"
  url "https://registry.npmjs.org/@gabeosx/skx/-/skx-1.1.2.tgz"
  sha256 "7e63d4c96753ae02b121138cfe3b4aeef0c0d12d0e8c99f21399c541b38f0e84" # Placeholder
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
