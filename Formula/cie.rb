# Copyright 2025 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

class Cie < Formula
  desc "Code Intelligence Engine - semantic search and call graph analysis"
  homepage "https://github.com/kraklabs/cie"
  version "0.7.10"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.10/cie_v0.7.10_darwin_arm64.tar.gz"
      sha256 "e70f0db3ffa78c8cfee2f784d06867ba63d2cbb6815ce93792b49b984fece120"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.10/cie_v0.7.10_linux_amd64.tar.gz"
      sha256 "f41eedd580ecf71b6b1f30426452c2208eb246314532f063b43a8ae335535bd6"
    end
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.10/cie_v0.7.10_linux_arm64.tar.gz"
      sha256 "a8b8496bdf126778f5c02fe4e239de49bcb23445a0527fae43a81bfa675000b1"
    end
  end

  def install
    bin.install Dir["cie-*"].first => "cie"
  end

  test do
    system "#{bin}/cie", "--version"
  end
end
