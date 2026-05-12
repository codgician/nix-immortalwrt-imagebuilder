# 24.10.1 package feeds for mips64_octeonplus
{
  sha256sums = {
    hash = "sha256-SzPve4dZprJQ54uGhbnsyUPt4GdYNOJP6PuyaBeGkDA=";
    name = "mips64_octeonplus-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips64_octeonplus/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips64_octeonplus/base/";
    sourceInfo = {
      hash = "sha256-aVe8VlUfD98ZMwlJYBxxrqODE0m6yrH3+QavexLKaTw=";
      name = "mips64_octeonplus-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips64_octeonplus/base/Packages";
    };
    packages =
      let
        p = ./mips64_octeonplus/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips64_octeonplus/luci/";
    sourceInfo = {
      hash = "sha256-gf2bguYKbg9HR8zPzbUKRx58sGClHomlG8LLNxMCsMo=";
      name = "mips64_octeonplus-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips64_octeonplus/luci/Packages";
    };
    packages =
      let
        p = ./mips64_octeonplus/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips64_octeonplus/packages/";
    sourceInfo = {
      hash = "sha256-GiU6jmNPEBhVZZPikV74HRyGW2zps4YsyY+On5pej7Q=";
      name = "mips64_octeonplus-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips64_octeonplus/packages/Packages";
    };
    packages =
      let
        p = ./mips64_octeonplus/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips64_octeonplus/routing/";
    sourceInfo = {
      hash = "sha256-a8kg+5g+MZDpBulwWmylYKFKK4HmASy6wlHUxV700XA=";
      name = "mips64_octeonplus-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips64_octeonplus/routing/Packages";
    };
    packages =
      let
        p = ./mips64_octeonplus/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips64_octeonplus/telephony/";
    sourceInfo = {
      hash = "sha256-ZCkrtyVN62V0dMOEsKtBiAbLSsM2TktqyWsG/I6wl44=";
      name = "mips64_octeonplus-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/packages/mips64_octeonplus/telephony/Packages";
    };
    packages =
      let
        p = ./mips64_octeonplus/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
