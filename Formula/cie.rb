# Copyright 2025 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

class Cie < Formula
  desc "Code Intelligence Engine - semantic search and call graph analysis"
  homepage "https://github.com/kraklabs/cie"
  version "0.4.4"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.4.4/cie_v0.4.4_darwin_arm64.tar.gz"
      sha256 "8ab81ef78c4af5d045c35e748989701019344c7063499545ff6cf74575bb5fbd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.4.4/cie_v0.4.4_linux_amd64.tar.gz"
      sha256 "17e8bfc60acf818cdaa9e8588cea68b16d6ecdd3dd071691e4003dc1cdc7b2b8"
    end
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.4.4/cie_v0.4.4_linux_arm64.tar.gz"
      sha256 "df6845aa597bc25b234b6f4f1ea9317aea2a44a9e662c1ffe2574b89f702cf67"
    end
  end

  def install
    bin.install Dir["cie-*"].first => "cie"
  end

  test do
    system "#{bin}/cie", "--version"
  end
end
