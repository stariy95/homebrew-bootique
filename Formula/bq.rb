class Bootique < Formula
  desc "Bootique CLI tools"
  homepage "https://bootique.io"
  url "https://github.com/bootique-tools/bq/releases/download/0.1/bq-0.1.zip"
  sha256 "6785f0a463f5e9ef03289035a4b3cd41644631917957ad4600ab3d707d409b1f"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bq"
  end

  test do
    system "bq --help"
  end
end