# Copyright 2025 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

class Cie < Formula
  desc "Code Intelligence Engine - semantic search and call graph analysis"
  homepage "https://github.com/kraklabs/cie"
  version "0.4.1"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.4.1/cie_v0.4.1_darwin_arm64.tar.gz"
      sha256 "903aee42cb17202d05d70a8b25b27605f6a5eab19f065e698e33196fbb6e9a2d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.4.1/cie_v0.4.1_linux_amd64.tar.gz"
      sha256 "8629439168f4faae0c1762b55850bdc3c688eefcb04036c6718c890d572171a1"
    end
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.4.1/cie_v0.4.1_linux_arm64.tar.gz"
      sha256 "c22f38a10101f57999befff78cd46c23464e60215ac6ff81ec27177a3d51a0d4"
    end
  end

  def install
    bin.install Dir["cie-*"].first => "cie"
  end

  test do
    system "#{bin}/cie", "--version"
  end
end
