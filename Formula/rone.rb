class Rone < Formula
  desc "Makes System One decision models pleasant to use from the command-line"
  homepage "https://github.com/oteissonniere/rone"
  license "MIT"

  version = "0.1.2"

  if Hardware::CPU.arm?
    url "https://github.com/oteissonniere/rone/releases/download/v#{version}/rone-v#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "e7e184a468d61ce813fabd85e4e51cbeed35a7824606f526bdf838121c4a8c4e"
  else
    url "https://github.com/oteissonniere/rone/releases/download/v#{version}/rone-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "3c52d702e953d125ca909cf740f81596ebf011f8373055feaa79e7e117bfe2a1"
  end

  def install
    pkg = Dir["rone-v#{version}-*-apple-darwin"].first
    bin.install File.join(pkg, "rone")
    (bin/"presets").install File.join(pkg, "presets")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rone --version")
  end
end
