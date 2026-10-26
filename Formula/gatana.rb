# Written by packages/gatana-cli/scripts/release.sh in gatana-ai/gatana; changes made here are overwritten.
class Gatana < Formula
  desc "CLI for Gatana: manage servers, tools, credentials and skills"
  homepage "https://gatana.ai"
  version "4.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.5.2/gatana-aarch64-apple-darwin.tar.gz"
      sha256 "ccc8c1f721991fea034b855634c220f495d5e64c4f3c52bb5deb6d909c8f92bd"
    end
    on_intel do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.5.2/gatana-x86_64-apple-darwin.tar.gz"
      sha256 "cf7a9ec53c4e64c3113738b0910eb4e102d18401b5731370b6e569532d3484af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.5.2/gatana-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9b2ac97455bbae3f2455e881c0f489ab4f290d9bf41ceb494967323e72fc2365"
    end
    on_intel do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.5.2/gatana-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bd4f60ec9b13872393b693f1fffa0bf7abf0f04f3fa41999a64496d39b762a44"
    end
  end

  def install
    bin.install "gatana"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gatana --version")
  end
end
