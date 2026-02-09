# Copyright 2025 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

class Cie < Formula
  desc "Code Intelligence Engine - semantic search and call graph analysis"
  homepage "https://github.com/kraklabs/cie"
  version "0.7.18"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.18/cie_v0.7.18_darwin_arm64.tar.gz"
      sha256 "bba632bfc80183befcc06698ec089ebb6929e316607329a30b4d5ad6897bb777"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.18/cie_v0.7.18_linux_amd64.tar.gz"
      sha256 "530627640c09ebe7e363adcb905b2e10b0a9167281fc14b7a0b66b988c8fde89"
    end
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.18/cie_v0.7.18_linux_arm64.tar.gz"
      sha256 "37227dddb29b46706df6cf6b6729d461b5133183ff6be9a9c0ce85466e573526"
    end
  end

  def install
    bin.install Dir["cie-*"].first => "cie"
  end

  test do
    system "#{bin}/cie", "--version"
  end
end
