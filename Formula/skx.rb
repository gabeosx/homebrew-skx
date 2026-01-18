class Skx < Formula
  desc "The CLI tool for managing Agent Skills"
  homepage "https://github.com/gabeosx/skx"
  url "https://registry.npmjs.org/@gabeosx/skx/-/skx-1.1.4.tgz"
  sha256 "de55d437c3d6de56ef23f204504dccfe47dc3c46a3e7dda23b2fb113ebfbcf94" # Placeholder
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
