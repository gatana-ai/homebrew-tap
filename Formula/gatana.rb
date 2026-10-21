# Written by packages/gatana-cli/scripts/release.sh in gatana-ai/gatana; changes made here are overwritten.
class Gatana < Formula
  desc "CLI for Gatana: manage servers, tools, credentials and skills"
  homepage "https://gatana.ai"
  version "4.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.2.0/gatana-aarch64-apple-darwin.tar.gz"
      sha256 "acb117e0258cf402392b7bf7f532b538d9aad5e34d061adf226b62daa3047b76"
    end
    on_intel do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.2.0/gatana-x86_64-apple-darwin.tar.gz"
      sha256 "8e8255420d47dab4d1df135cacf9dee7ffbd0109cf4e03b1620185ca5a19f2f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.2.0/gatana-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0b3a882df6a5d3681819564d54995cbe5a0314664dd689b08965d77de0bd6e9c"
    end
    on_intel do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.2.0/gatana-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5b3f41335ae4114d4918b6cce370bcf3fa3ab5e90a29ccbcb3cba2ecc86292c3"
    end
  end

  def install
    bin.install "gatana"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gatana --version")
  end
end
