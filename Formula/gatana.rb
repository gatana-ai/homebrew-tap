# Written by packages/gatana-cli/scripts/release.sh in gatana-ai/gatana; changes made here are overwritten.
class Gatana < Formula
  desc "CLI for Gatana: manage servers, tools, credentials and skills"
  homepage "https://gatana.ai"
  version "4.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.0.1/gatana-aarch64-apple-darwin.tar.gz"
      sha256 "a9fd49f8515f27f61f3a72dfa7f60c7c8984cd831950ddefa3180d2a87c15dfe"
    end
    on_intel do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.0.1/gatana-x86_64-apple-darwin.tar.gz"
      sha256 "5c7d138a33698ac8a3d6add3945bf753be0271bb70e410f00b6af0f64032477e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.0.1/gatana-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c50c02122b68b07d12eaace76c52ac040aa6aa214247ecd9bb1b72f29371c2c8"
    end
    on_intel do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.0.1/gatana-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d5c1603b695b9667d9b7ad4af6598890cb5907c56470d358a48a5c18ec043694"
    end
  end

  def install
    bin.install "gatana"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gatana --version")
  end
end
