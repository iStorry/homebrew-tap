class NiftyCli < Formula
  desc "Build native desktop apps with the Nifty language"
  homepage "https://github.com/iStorry/nifty"
  url "https://github.com/iStorry/nifty/releases/download/v0.1.0-alpha.3/nifty-cli-0.1.0-alpha.3-macos-universal.tar.gz"
  version "0.1.0-alpha.3"
  sha256 "54c3c400043dabc709b576ce5b24c7b69850356c5c2123858c1048e54aeb2f28"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on :macos

  def install
    #  looks for the runtime library it links apps against next to itself.
    bin.install "nf", "libnifty_rt.a"
  end

  test do
    assert_match "nf #{version}", shell_output("#{bin}/nf --version")
  end
end
