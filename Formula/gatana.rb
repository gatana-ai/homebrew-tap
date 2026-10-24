# Written by packages/gatana-cli/scripts/release.sh in gatana-ai/gatana; changes made here are overwritten.
class Gatana < Formula
  desc "CLI for Gatana: manage servers, tools, credentials and skills"
  homepage "https://gatana.ai"
  version "4.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.2.1/gatana-aarch64-apple-darwin.tar.gz"
      sha256 "24506c702cdb2f2af1f7b3749bbf58235241ed42f85799cfab57e47211b0f827"
    end
    on_intel do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.2.1/gatana-x86_64-apple-darwin.tar.gz"
      sha256 "afde2dd0b064f47ae4fd547ac01cb685dcbc58c5d52872b04fe2c324e4e3c971"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.2.1/gatana-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0016e8610e771351dd10b4b5eacc0832b0b85914e94a99cb655861c05ac7b174"
    end
    on_intel do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%404.2.1/gatana-x86_64-unknown-linux-musl.tar.gz"
      sha256 "031a64476e197949452cbcecb4198eefba1e6e1980250590d03fc98d22f12193"
    end
  end

  def install
    bin.install "gatana"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gatana --version")
  end
end
