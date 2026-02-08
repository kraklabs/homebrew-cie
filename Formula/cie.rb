# Copyright 2025 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

class Cie < Formula
  desc "Code Intelligence Engine - semantic search and call graph analysis"
  homepage "https://github.com/kraklabs/cie"
  version "0.7.11"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.11/cie_v0.7.11_darwin_arm64.tar.gz"
      sha256 "2c081876408ead3f5e57e3b38a35a06087f2e1765ce2c096321a59c5f0891a62"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.11/cie_v0.7.11_linux_amd64.tar.gz"
      sha256 "5c7ea506017a2e152b41e271c606a2ea1ef673fda941a30a84dc9b923f44c9ab"
    end
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.11/cie_v0.7.11_linux_arm64.tar.gz"
      sha256 "2451522ae9cab6a420721757cd555c0565925b7f83f9d05fcdacafc197609ca9"
    end
  end

  def install
    bin.install Dir["cie-*"].first => "cie"
  end

  test do
    system "#{bin}/cie", "--version"
  end
end
