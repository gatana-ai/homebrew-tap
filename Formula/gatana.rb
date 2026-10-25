# Written by packages/gatana-cli/scripts/release.sh in gatana-ai/gatana; changes made here are overwritten.
class Gatana < Formula
  desc "CLI for Gatana: manage servers, tools, credentials and skills"
  homepage "https://gatana.ai"
  version "4.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.3.0/gatana-aarch64-apple-darwin.tar.gz"
      sha256 "f196550959bc2bd74ee8da9050166df49f8a32a4e83189f5cba2ea3fc1f2938e"
    end
    on_intel do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.3.0/gatana-x86_64-apple-darwin.tar.gz"
      sha256 "de8c09315921c73e91eafa9a778650265f48df7e951d4a11811fe4b4dfa732e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.3.0/gatana-aarch64-unknown-linux-musl.tar.gz"
      sha256 "46e64baf89bb19f2cc9d536adb75a1ac61df741322b32889384bd504d5a3ca75"
    end
    on_intel do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.3.0/gatana-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f9dff324f0c43aef60eaf33b51087576834c403f2271cae8d19edbc93f0526f5"
    end
  end

  def install
    bin.install "gatana"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gatana --version")
  end
end
