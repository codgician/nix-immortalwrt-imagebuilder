# snapshot package feeds for mips_24kc
{
  sha256sums = {
    hash = "sha256-6LUyWm2QGpM6G6+lrNmb1kT6+U7PLEU79L4xV7A27zE=";
    name = "mips_24kc-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/base/";
    sourceInfo = {
      hash = "sha256-1Wg441XBs3eGgzucYai/1gXkBMqqNhlk47sMMtzSNfM=";
      name = "mips_24kc-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/base/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/luci/";
    sourceInfo = {
      hash = "sha256-JVWWsOki+fnZvQeWqczEFpR3b/Bmeaa0EIqn9UvkebM=";
      name = "mips_24kc-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/luci/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/packages/";
    sourceInfo = {
      hash = "sha256-tidrJ9Od7bMwuLk5yAcVzqmULQWwnj/ysCMewZC4me4=";
      name = "mips_24kc-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/packages/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/routing/";
    sourceInfo = {
      hash = "sha256-ekCtHq1P9C4ppfJhtc1l0h+wlhFMT2wP8BhmooB9qyw=";
      name = "mips_24kc-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/routing/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/telephony/";
    sourceInfo = {
      hash = "sha256-X7SsocbkupxxIiSzVGbi83CeW8fQZ0TOYQQAtWmZCDc=";
      name = "mips_24kc-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/mips_24kc/telephony/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
