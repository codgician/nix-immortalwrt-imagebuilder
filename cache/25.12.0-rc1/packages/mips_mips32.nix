# 25.12.0-rc1 package feeds for mips_mips32
{
  sha256sums = {
    hash = "sha256-xA5kc1LH3TKNCmLXx3cnFnDRWIiHJuTC4M/gQVjmmjU=";
    name = "mips_mips32-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_mips32/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_mips32/base/";
    sourceInfo = {
      hash = "sha256-Tsx20ljslNOdCjHlqPNFuKB6wqbt9rsHqR46ZYL9K1Y=";
      name = "mips_mips32-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_mips32/base/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_mips32/luci/";
    sourceInfo = {
      hash = "sha256-lkj5Nm8Z9SsyB0Ns2E7BLTMZt1T3VLE7PbmPWS/FvZs=";
      name = "mips_mips32-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_mips32/luci/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_mips32/packages/";
    sourceInfo = {
      hash = "sha256-feB9HreY7wJUO8aLrZON/lcpZJJa/wBPb/coArE/gAg=";
      name = "mips_mips32-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_mips32/packages/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_mips32/routing/";
    sourceInfo = {
      hash = "sha256-BoFLu+B+e4gHfwJlAY5cQElNjvb9FRyuMlExTGXe67M=";
      name = "mips_mips32-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_mips32/routing/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_mips32/telephony/";
    sourceInfo = {
      hash = "sha256-BunD+DxOTo9RQNVpcMS8gZ67Sh0H+/iC4P+mMkArzwg=";
      name = "mips_mips32-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_mips32/telephony/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
