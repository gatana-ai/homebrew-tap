# Written by packages/gatana-cli/scripts/release.sh in gatana-ai/gatana; changes made here are overwritten.
class Gatana < Formula
  desc "CLI for Gatana: manage servers, tools, credentials and skills"
  homepage "https://gatana.ai"
  version "4.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.5.3/gatana-aarch64-apple-darwin.tar.gz"
      sha256 "e5cdf19a4d4c9362bcc9f7ae3d26b48be7a4d7b14312af292e3dd8302b4491c4"
    end
    on_intel do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.5.3/gatana-x86_64-apple-darwin.tar.gz"
      sha256 "5139931e7c2c9bfc94519d2cc246bb789b5fd958870e055248254feab4e1e1c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.5.3/gatana-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e3257ef5b7a6d25d9c0befe36ce34ab7bef72fc983ecc1baccfab10f8eb153eb"
    end
    on_intel do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.5.3/gatana-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b8df2a327984d81c8fb2c0ad1e1d8c94640d579552e82084d6af9b3dbe1fc46d"
    end
  end

  def install
    bin.install "gatana"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gatana --version")
  end
end
