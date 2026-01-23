# Copyright 2025 KrakLabs
# SPDX-License-Identifier: AGPL-3.0-or-later

# This formula is automatically updated by the CIE release workflow.
# Do not edit manually - changes will be overwritten on next release.

class Cie < Formula
  desc "Code Intelligence Engine - semantic search and call graph analysis"
  homepage "https://github.com/kraklabs/cie"
  version "0.0.0"
  license "AGPL-3.0-or-later"

  # Placeholder - will be updated by release workflow
  on_macos do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.0.0/cie_v0.0.0_darwin_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.0.0/cie_v0.0.0_darwin_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kraklabs/cie/releases/download/v0.0.0/cie_v0.0.0_linux_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/kraklabs/cie/releases/download/v0.0.0/cie_v0.0.0_linux_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install Dir["cie-*"].first => "cie"
  end

  test do
    system "#{bin}/cie", "--version"
  end
end
