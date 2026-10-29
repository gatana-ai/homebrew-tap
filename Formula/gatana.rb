# Written by packages/gatana-cli/scripts/release.sh in gatana-ai/gatana; changes made here are overwritten.
class Gatana < Formula
  desc "CLI for Gatana: manage servers, tools, credentials and skills"
  homepage "https://gatana.ai"
  version "5.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%405.0.0/gatana-aarch64-apple-darwin.tar.gz"
      sha256 "139961e02e26cf5d98c8a5e9e8231dd7c9ff7a8b70af37b9a99fd4966a2514bc"
    end
    on_intel do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%405.0.0/gatana-x86_64-apple-darwin.tar.gz"
      sha256 "563d3c4fdc22d0d355b3329b90270d71653ed96327dc55b10a33e51c86af405a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%405.0.0/gatana-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c513a518b807bf658d5cc9c89d4607f74b64238f966bee4cf89f527a74bab5d1"
    end
    on_intel do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%405.0.0/gatana-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2513b227e134ab6afd3703d461653c33cee6ba6c1d3e8bfa7392984aa400e1ce"
    end
  end

  def install
    bin.install "gatana"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gatana --version")
  end
end
