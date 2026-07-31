class Nightswatch < Formula
  desc "Keep Claude Code sessions moving overnight (auto-approve, limit auto-resume)"
  homepage "https://github.com/razvanmacovei/nightswatch"
  url "https://github.com/razvanmacovei/nightswatch/releases/download/v0.3.1/nightswatch-0.3.1.tgz"
  sha256 "fcea53fef49cdb182efbc3ac33397e783deedf19d87d8f7527747c12b56d8872"
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
