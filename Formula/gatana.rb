# Written by packages/gatana-cli/scripts/release.sh in gatana-ai/gatana; changes made here are overwritten.
class Gatana < Formula
  desc "CLI for Gatana: manage servers, tools, credentials and skills"
  homepage "https://gatana.ai"
  version "4.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.1.1/gatana-aarch64-apple-darwin.tar.gz"
      sha256 "19996df05dc18c13238eade5f740d8c4e7c1cf1ae5c252dcdc4d193801e856ac"
    end
    on_intel do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.1.1/gatana-x86_64-apple-darwin.tar.gz"
      sha256 "368afe6e2f2a4e68ac6222e62e4c8257d349ab6a8369246a81b273868183b1b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.1.1/gatana-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4aadaf2d3e3018188e7f358987c86cc0aef94d4b6e062af15adad893fbced577"
    end
    on_intel do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.1.1/gatana-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4a53b5f80087d23c89c930ee3e1a1a42bf02a7cb30449413b79a239334c762e2"
    end
  end

  def install
    bin.install "gatana"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gatana --version")
  end
end
