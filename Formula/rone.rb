class Rone < Formula
  desc "Makes System One decision models pleasant to use from the command-line"
  homepage "https://github.com/oteissonniere/rone"
  version "0.3.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/oteissonniere/rone/releases/download/v#{version}/rone-v#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "56c26c1fca89bf4350bf3621901b496ea28ed285c0139487bdfd0dcf85ca1ad4"
  else
    url "https://github.com/oteissonniere/rone/releases/download/v#{version}/rone-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "92c2bf42dfdb540670e3702f889fe4f1d525d4f223a8f0d0929201eca744c6d3"
  end

  def install
    bin.install "rone"
    bin.install "presets"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rone --version")
  end
end
