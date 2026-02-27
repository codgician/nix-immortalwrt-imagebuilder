# snapshot package feeds for armeb_xscale
{
  sha256sums = {
    hash = "sha256-m8NWtmEjE5HrMDGEljp+pWCdFMbkPfbwQVwlV6ipTcw=";
    name = "armeb_xscale-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/armeb_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/armeb_xscale/base/";
    sourceInfo = {
      hash = "sha256-rzt26M+JVJxYYkeJ9hja5DEP/piIVbQrnXw/yDt/dSA=";
      name = "armeb_xscale-base-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/armeb_xscale/base/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/armeb_xscale/luci/";
    sourceInfo = {
      hash = "sha256-bXIZDCcNgidAbq+cg/ln1nIWvDXJlrnpk3YaDx5uw88=";
      name = "armeb_xscale-luci-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/armeb_xscale/luci/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/armeb_xscale/packages/";
    sourceInfo = {
      hash = "sha256-/ZzFy3Q40nHsXeKh0NH9DjS/6+vAHRDUDoBQhWIE04E=";
      name = "armeb_xscale-packages-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/armeb_xscale/packages/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/armeb_xscale/routing/";
    sourceInfo = {
      hash = "sha256-o/7CGK4DYM9/iuSvM1vQZIWlmrJtwOM2NQubhKH8ECQ=";
      name = "armeb_xscale-routing-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/armeb_xscale/routing/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/armeb_xscale/telephony/";
    sourceInfo = {
      hash = "sha256-+UHXGjNtqOl8b2EIcwA9MTP2ig4Dl5Fuz6ZHcWBt5/4=";
      name = "armeb_xscale-telephony-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/armeb_xscale/telephony/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
