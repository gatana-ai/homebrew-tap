# Written by packages/gatana-cli/scripts/release.sh in gatana-ai/gatana; changes made here are overwritten.
class Gatana < Formula
  desc "CLI for Gatana: manage servers, tools, credentials and skills"
  homepage "https://gatana.ai"
  version "5.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%405.1.0/gatana-aarch64-apple-darwin.tar.gz"
      sha256 "2cde1a92b050d735587d2e948ad940278a7c8103ccffe46bf7257ea41a1ce938"
    end
    on_intel do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%405.1.0/gatana-x86_64-apple-darwin.tar.gz"
      sha256 "41745261397598169829045fb363bc5ea26adf92b06726961c0bf67fa427aac7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%405.1.0/gatana-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e6e4834c73077ce6e6acbc141fd1c4b460905f6204b64382b1866d3d217ee9dd"
    end
    on_intel do
      url "https://github.com/gatana-ai/gatana/releases/download/gatana%405.1.0/gatana-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5f79e54f9445b3b7e3961cb6ea936851ebc28c342f18efe77be638a098ef70f0"
    end
  end

  def install
    bin.install "gatana"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gatana --version")
  end
end
