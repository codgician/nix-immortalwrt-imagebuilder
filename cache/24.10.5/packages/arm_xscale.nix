# 24.10.5 package feeds for arm_xscale
{
  sha256sums = {
    hash = "sha256-9GV9MBCGKDdgHy3BfQooY3BN9moLHH45eC8ZuvQb4l0=";
    name = "arm_xscale-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_xscale/base/";
    sourceInfo = {
      hash = "sha256-C0WSFds1I04X1kNsMm7Ncm0JnkCKlGyURTRMZBjHv7g=";
      name = "arm_xscale-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_xscale/base/Packages";
    };
    packages =
      let
        p = ./arm_xscale/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_xscale/luci/";
    sourceInfo = {
      hash = "sha256-tLuAA8dIL7oKLk80DWnKwJfhwiZCtuZIetTmwigrl90=";
      name = "arm_xscale-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_xscale/luci/Packages";
    };
    packages =
      let
        p = ./arm_xscale/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_xscale/packages/";
    sourceInfo = {
      hash = "sha256-zTABX243LQg5wf0tHN6wsLJmmMVHDxxuxsLcfjdbjdk=";
      name = "arm_xscale-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_xscale/packages/Packages";
    };
    packages =
      let
        p = ./arm_xscale/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_xscale/routing/";
    sourceInfo = {
      hash = "sha256-INyYWehcBJzcTX7+LdwkjAPNM3pPEIMh3ABXlRcwnzs=";
      name = "arm_xscale-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_xscale/routing/Packages";
    };
    packages =
      let
        p = ./arm_xscale/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_xscale/telephony/";
    sourceInfo = {
      hash = "sha256-sT3pfIPs44TNe72QZrWgfhU18imrYKNOL3VJFyTTFBI=";
      name = "arm_xscale-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/packages/arm_xscale/telephony/Packages";
    };
    packages =
      let
        p = ./arm_xscale/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
