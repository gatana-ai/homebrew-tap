# Written by packages/gatana-cli/scripts/release.sh in gatana-ai/gatana; changes made here are overwritten.
class Gatana < Formula
  desc "CLI for Gatana: manage servers, tools, credentials and skills"
  homepage "https://gatana.ai"
  version "4.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.5.0/gatana-aarch64-apple-darwin.tar.gz"
      sha256 "a19dcee055b15bc0d659b2ae3ab697e6891c6d0aab60d38b4e272ff9caa3ae3a"
    end
    on_intel do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.5.0/gatana-x86_64-apple-darwin.tar.gz"
      sha256 "a205551fc4c594f8917162e2a94527b091f398477822e5e77c650e0ec4ee776d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.5.0/gatana-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2dd8261bc47dad96a9f15be8bd796700af40fe4b3ddde5c4781ebfdb32a84fad"
    end
    on_intel do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.5.0/gatana-x86_64-unknown-linux-musl.tar.gz"
      sha256 "15fc561264b9fb2280b064790175870cf18cf60d1e775311e9bf8060000fd48e"
    end
  end

  def install
    bin.install "gatana"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gatana --version")
  end
end
