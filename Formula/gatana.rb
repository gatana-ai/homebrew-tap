# Written by packages/gatana-cli/scripts/release.sh in gatana-ai/gatana; changes made here are overwritten.
class Gatana < Formula
  desc "CLI for Gatana: manage servers, tools, credentials and skills"
  homepage "https://gatana.ai"
  version "5.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%405.2.0/gatana-aarch64-apple-darwin.tar.gz"
      sha256 "8791020be109db8d19a7ec8dadc78f6419cd7115f04385843ac10f87938e3986"
    end
    on_intel do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%405.2.0/gatana-x86_64-apple-darwin.tar.gz"
      sha256 "0998e6f23cf1a07ff1d736ba62c8b1f14fd91dbd0fee6cd44183513a328f9f8a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%405.2.0/gatana-aarch64-unknown-linux-musl.tar.gz"
      sha256 "61aec5ade441f3655e1077d06709ee48d921c77c492d73ce69190e2fe95fdead"
    end
    on_intel do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%405.2.0/gatana-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f70e82faf30dae11acf674defbd5ce134d53c874eb884e88d679cbd1bb3639f9"
    end
  end

  def install
    bin.install "gatana"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gatana --version")
  end
end
