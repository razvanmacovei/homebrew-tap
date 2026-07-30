class Nightswatch < Formula
  desc "Keep Claude Code sessions moving overnight (auto-approve, limit auto-resume)"
  homepage "https://github.com/razvanmacovei/nightswatch"
  url "https://github.com/razvanmacovei/nightswatch/releases/download/v0.1.1/nightswatch-0.1.1.tgz"
  sha256 "0b37579d2e17c025298808324cf5ac713649b008fb96410a4bb54a14c29a26b2"
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
