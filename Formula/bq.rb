class Bq < Formula
  desc "Bootique CLI tools"
  homepage "https://bootique.io"
  url "https://github.com/bootique-tools/bq/releases/download/0.1/bq-mac-0.1.zip"
  sha256 "97597f25f610b7988d98922eabae58619c44fe4802f63825e85a2141f70f99b0"

  bottle :unneeded

  def install
    chmod 0755, "bin/bq"

    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/bq"
  end

  test do
    system "bq --help"
  end
end