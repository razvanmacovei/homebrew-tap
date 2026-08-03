class Nightswatch < Formula
  desc "Keep Claude Code sessions moving overnight (auto-approve, limit auto-resume)"
  homepage "https://github.com/razvanmacovei/nightswatch"
  url "https://github.com/razvanmacovei/nightswatch/releases/download/v0.6.0/nightswatch-0.6.0.tgz"
  sha256 "0f97ceba5ebf49c5e57f0dd4cb3b1d50b01f21b4c3a09676a06439305441c278"
  license "MIT"

  depends_on "node"
  depends_on :macos

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nightswatch --version")
  end
end
