# Written by packages/gatana-cli/scripts/release.sh in gatana-ai/gatana; changes made here are overwritten.
class Gatana < Formula
  desc "CLI for Gatana: manage servers, tools, credentials and skills"
  homepage "https://gatana.ai"
  version "4.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.5.1/gatana-aarch64-apple-darwin.tar.gz"
      sha256 "9e9ab19c20662154a9045e8f1f6266cddff1bee9ab11b5296bdf48e3d7f3db35"
    end
    on_intel do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.5.1/gatana-x86_64-apple-darwin.tar.gz"
      sha256 "6bc68046f50d1aa7696b29c2e5d4e094410aa217f22ac10f7f51c2156fedfeab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.5.1/gatana-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ea4bb765e0e0cf81005823ace361ad6c4c67e92981b888432aa6ec5924f9f1be"
    end
    on_intel do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.5.1/gatana-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e553a3f2370d342f0a88bae130fa180afbf952a5c399420ab5612fca26b93b14"
    end
  end

  def install
    bin.install "gatana"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gatana --version")
  end
end
