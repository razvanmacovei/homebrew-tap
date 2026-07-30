class Nightswatch < Formula
  desc "Keep Claude Code sessions moving overnight (auto-approve, limit auto-resume)"
  homepage "https://github.com/razvanmacovei/nightswatch"
  url "https://github.com/razvanmacovei/nightswatch/releases/download/v0.1.2/nightswatch-0.1.2.tgz"
  sha256 "bb1680eb53f71aade9812d73b607677fd3bd37a676b4ec25740956fcca4230c2"
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
