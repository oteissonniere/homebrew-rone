class Rone < Formula
  desc "Makes System One decision models pleasant to use from the command-line"
  homepage "https://github.com/oteissonniere/rone"
  version "0.2.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/oteissonniere/rone/releases/download/v#{version}/rone-v#{version}-aarch64-apple-darwin.tar.gz"
    sha256 "880c5bda5aab1a5dae244f295af55edb8cee9876bfbf7ab910b047ce116b42fb"
  else
    url "https://github.com/oteissonniere/rone/releases/download/v#{version}/rone-v#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "7872f3f1aac6f87f1468b6a49bc13067a95a2f37a388a16bed7a018857de1c4c"
  end

  def install
    bin.install "rone"
    bin.install "presets"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rone --version")
  end
end
