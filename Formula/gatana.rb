# Written by packages/gatana-cli/scripts/release.sh in gatana-ai/gatana; changes made here are overwritten.
class Gatana < Formula
  desc "CLI for Gatana: manage servers, tools, credentials and skills"
  homepage "https://gatana.ai"
  version "4.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.0.0/gatana-aarch64-apple-darwin.tar.gz"
      sha256 "b94115ac66a8d92b07307bd230e8bb25eb5e166254ba0147966790505527cebe"
    end
    on_intel do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.0.0/gatana-x86_64-apple-darwin.tar.gz"
      sha256 "51ee674eaef07242b0bc2092d8264b4611e653c7345e36a149913a39c5680bd8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.0.0/gatana-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7306f61309b0bea3aff2091ce80d2a0e24c2ec9394a406aac83ab1ca271d05bd"
    end
    on_intel do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.0.0/gatana-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8ef51674d864ee2bdbb45718af488c89fc5e39f026202283eb4e8c6e51c38cef"
    end
  end

  def install
    bin.install "gatana"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gatana --version")
  end
end
