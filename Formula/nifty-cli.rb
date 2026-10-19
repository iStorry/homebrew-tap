class NiftyCli < Formula
  desc "Build native desktop apps with the Nifty language"
  homepage "https://github.com/iStorry/nifty"
  url "https://github.com/iStorry/nifty/releases/download/v0.1.0-alpha.1/nifty-cli-0.1.0-alpha.1-macos-universal.tar.gz"
  version "0.1.0-alpha.1"
  sha256 "ddd182815256597b1d665c073186dea3f690ab9c36e29ff4cdb126770d21f3fc"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on :macos

  def install
    bin.install "nf", "nf-runner"
  end

  test do
    assert_match "nf #{version}", shell_output("#{bin}/nf --version")
  end
end
