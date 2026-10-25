# Written by packages/gatana-cli/scripts/release.sh in gatana-ai/gatana; changes made here are overwritten.
class Gatana < Formula
  desc "CLI for Gatana: manage servers, tools, credentials and skills"
  homepage "https://gatana.ai"
  version "4.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.4.0/gatana-aarch64-apple-darwin.tar.gz"
      sha256 "0a1f9f59606e4f5c5d9488330740ef6aa5156b212df4e9c9b65a2cb124224c77"
    end
    on_intel do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.4.0/gatana-x86_64-apple-darwin.tar.gz"
      sha256 "4385ba74d34eb860e852b1cb2f3d656d98d590f58bd19c2c829d84cb7975f744"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.4.0/gatana-aarch64-unknown-linux-musl.tar.gz"
      sha256 "77b22cfab5d53f6bef0e15d0827a068a376f3ac15ed342b555377018fc412046"
    end
    on_intel do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.4.0/gatana-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8f38c0bdbcf9d9eb33cf24fe83a3b333994ef468733b13dc9467d0b702a20246"
    end
  end

  def install
    bin.install "gatana"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gatana --version")
  end
end
