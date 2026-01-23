# Copyright 2025 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

class Cie < Formula
  desc "Code Intelligence Engine - semantic search and call graph analysis"
  homepage "https://github.com/kraklabs/cie"
  version "0.4.6"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.4.6/cie_v0.4.6_darwin_arm64.tar.gz"
      sha256 "a63c8afa2f8f7e4e66d0a1d014a84410fda055187adcdd8c6474d4f7d1310ea6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.4.6/cie_v0.4.6_linux_amd64.tar.gz"
      sha256 "bde7b1ab13bb44e9d05c02f608557f19773f5906add2f4b9f2c0c0cb012c4b3b"
    end
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.4.6/cie_v0.4.6_linux_arm64.tar.gz"
      sha256 "111866967ffe6bfb376b96875da851c5ef28bcbeb46a4a36e9ecea5ebef12129"
    end
  end

  def install
    bin.install Dir["cie-*"].first => "cie"
  end

  test do
    system "#{bin}/cie", "--version"
  end
end
