# Written by packages/gatana-cli/scripts/release.sh in gatana-ai/gatana; changes made here are overwritten.
class Gatana < Formula
  desc "CLI for Gatana: manage servers, tools, credentials and skills"
  homepage "https://gatana.ai"
  version "4.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.1.0/gatana-aarch64-apple-darwin.tar.gz"
      sha256 "0d558e13762291221ce1eac5e8df8267871ec08454f7e9492ceae4708b248b85"
    end
    on_intel do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.1.0/gatana-x86_64-apple-darwin.tar.gz"
      sha256 "7d8ee0a4b7c4215c7e7fdad4e1c41511cb58b7120829005d53fdcfe668491a72"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.1.0/gatana-aarch64-unknown-linux-musl.tar.gz"
      sha256 "411530fd0c6b49ea889c4da1afdf7e7d753eb32522400c0c0054a3ac5ce6fc92"
    end
    on_intel do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.1.0/gatana-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d08bb8d135a22076dffefe5cfa61da3cede0e818e85fad64b579c937c98fa4f7"
    end
  end

  def install
    bin.install "gatana"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gatana --version")
  end
end
