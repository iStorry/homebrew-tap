class NiftyCli < Formula
  desc "Build native desktop apps with the Nifty language"
  homepage "https://github.com/iStorry/nifty"
  url "https://github.com/iStorry/nifty/releases/download/v0.1.0-alpha.2/nifty-cli-0.1.0-alpha.2-macos-universal.tar.gz"
  version "0.1.0-alpha.2"
  sha256 "7144ddc2f96038968cc51d3dd2598390befd50185d06fd933a7afe5df5879d70"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on :macos

  def install
    bin.install "nf", "nf-runner"
  end

  test do
    assert_match "nf #{version}", shell_output("#{bin}/nf --version")
  end
end
