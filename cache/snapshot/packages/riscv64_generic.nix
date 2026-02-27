# snapshot package feeds for riscv64_generic
{
  sha256sums = {
    hash = "sha256-EK/FZuqXy/diJWEDPYShnvDsV9gQNg1Tt2EwuDzk28E=";
    name = "riscv64_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/riscv64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/riscv64_generic/base/";
    sourceInfo = {
      hash = "sha256-5ctV+10xwXTyH82o+AYXT/21O/Vk/ndLGt4GKNafnGk=";
      name = "riscv64_generic-base-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/riscv64_generic/base/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/riscv64_generic/luci/";
    sourceInfo = {
      hash = "sha256-MFzyzpDmaetMkuckeizOc04KMIYuYx+EovCJbZidrIY=";
      name = "riscv64_generic-luci-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/riscv64_generic/luci/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/riscv64_generic/packages/";
    sourceInfo = {
      hash = "sha256-okVbDSsr9ST/rQRLYYuTakg76I8nY4KnOg0QF13AYOA=";
      name = "riscv64_generic-packages-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/riscv64_generic/packages/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/riscv64_generic/routing/";
    sourceInfo = {
      hash = "sha256-KySdrFZUdBS+qoR0BvM3RSLeaHdKqxbfKoQDL5No+0c=";
      name = "riscv64_generic-routing-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/riscv64_generic/routing/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/riscv64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-x9PjL+6gOW7bqc9SK9VIfjExIm616nNH2fb34CGs1VY=";
      name = "riscv64_generic-telephony-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/riscv64_generic/telephony/packages.adb";
    };
    packages =
      let
        p = ./riscv64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
