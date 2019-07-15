class Bq < Formula
  desc "Bootique CLI tools"
  homepage "https://bootique.io"
  url "https://github.com/bootique-tools/bq/releases/download/0.1/bq-mac-0.1.zip"
  sha256 "147ac0a350608d6cf548c70b5ec05c9df8b432cedd23b341ff088e86168c3119"

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/bq"
  end

  test do
    system "bq --help"
  end
end