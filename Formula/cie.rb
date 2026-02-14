# Copyright 2025 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

class Cie < Formula
  desc "Code Intelligence Engine - semantic search and call graph analysis"
  homepage "https://github.com/kraklabs/cie"
  version "0.7.20"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.20/cie_v0.7.20_darwin_arm64.tar.gz"
      sha256 "cc89db0bf6fb24fc6de4786a1752540c124ed7d669ea809bfbbb883194309e31"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.20/cie_v0.7.20_linux_amd64.tar.gz"
      sha256 "3b665320e6d011683e2c13779b0e74a70fbbb8c1983bf9f1f3443c510e8477f1"
    end
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.7.20/cie_v0.7.20_linux_arm64.tar.gz"
      sha256 "1806169370de6c09f21b1f369f567dbeb57d6a8eecdf7a1bfe64bd7ce3602262"
    end
  end

  def install
    bin.install Dir["cie-*"].first => "cie"
  end

  test do
    system "#{bin}/cie", "--version"
  end
end
