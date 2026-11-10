class Rone < Formula
  desc "Makes System One decision models pleasant to use from the command-line"
  homepage "https://github.com/oteissonniere/rone"
  version "0.1.3"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/oteissonniere/rone/releases/download/v#{version}/rone-v#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "9898e65b34c5d3ca02022548be1822814bc13d176c10d8b610b3518f14837842"
  else
    url "https://github.com/oteissonniere/rone/releases/download/v#{version}/rone-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "86f3fd453677265b5ec90f336d78a72a9297f547ca886341918bfa0a0a1239b1"
  end

  def install
    bin.install "rone"
    bin.install "presets"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rone --version")
  end
end
