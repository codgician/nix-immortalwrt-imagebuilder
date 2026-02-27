# snapshot package feeds for loongarch64_generic
{
  sha256sums = {
    hash = "sha256-fCpAUN4tfulDT1x96koGHkaR/zp13zLE48NE4leRYKY=";
    name = "loongarch64_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/loongarch64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/loongarch64_generic/base/";
    sourceInfo = {
      hash = "sha256-f458xdpbmt6vYonDfqgnPNm7Luy8rNdjAbCkVTJTXw4=";
      name = "loongarch64_generic-base-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/loongarch64_generic/base/packages.adb";
    };
    packages =
      let
        p = ./loongarch64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/loongarch64_generic/luci/";
    sourceInfo = {
      hash = "sha256-eUtoUjgvdPHETSnHKAqPKpq2xbQ2goZ7dazqzOrDTls=";
      name = "loongarch64_generic-luci-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/loongarch64_generic/luci/packages.adb";
    };
    packages =
      let
        p = ./loongarch64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/loongarch64_generic/packages/";
    sourceInfo = {
      hash = "sha256-QN/8QsGflR11s24WiS4yUa1P2dio4JAf+6zP5nhqtnE=";
      name = "loongarch64_generic-packages-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/loongarch64_generic/packages/packages.adb";
    };
    packages =
      let
        p = ./loongarch64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/loongarch64_generic/routing/";
    sourceInfo = {
      hash = "sha256-riIT+/SA8fsq1wqyLev6qN4lMNF5wyzaJHzwpGfvz7o=";
      name = "loongarch64_generic-routing-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/loongarch64_generic/routing/packages.adb";
    };
    packages =
      let
        p = ./loongarch64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/loongarch64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-sLv7FK445L/YDLL7MiRDmtZZOcaR1pV3UHk9VIeaykQ=";
      name = "loongarch64_generic-telephony-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/loongarch64_generic/telephony/packages.adb";
    };
    packages =
      let
        p = ./loongarch64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
