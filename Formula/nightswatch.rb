class Nightswatch < Formula
  desc "Keep Claude Code sessions moving overnight (auto-approve, limit auto-resume)"
  homepage "https://github.com/razvanmacovei/nightswatch"
  url "https://github.com/razvanmacovei/nightswatch/releases/download/v0.6.1/nightswatch-0.6.1.tgz"
  sha256 "80660494c68428c937db3f0ccc0a8434ab45e4963dff2646a7e257cdfdcece73"
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
