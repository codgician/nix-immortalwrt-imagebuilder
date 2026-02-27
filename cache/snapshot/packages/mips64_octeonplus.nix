# snapshot package feeds for mips64_octeonplus
{
  sha256sums = {
    hash = "sha256-A2G7GR1t7Duac2gkhmSvw10UztrjgZtKIXPeiLlScUg=";
    name = "mips64_octeonplus-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mips64_octeonplus/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mips64_octeonplus/base/";
    sourceInfo = {
      hash = "sha256-1TGWnKdbgVi7caXSSDu7A9JdJL4NNGCD9DdfQShD0o0=";
      name = "mips64_octeonplus-base-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mips64_octeonplus/base/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mips64_octeonplus/luci/";
    sourceInfo = {
      hash = "sha256-z6ogvaeUJa8+Wp5BiM9ZUVwEOHAIdInK+BB+fgiPjxc=";
      name = "mips64_octeonplus-luci-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mips64_octeonplus/luci/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mips64_octeonplus/packages/";
    sourceInfo = {
      hash = "sha256-9jLWQoxGfdcBn7qx1GCX5t+8LEu4NzKGsk0/5P/a8pQ=";
      name = "mips64_octeonplus-packages-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mips64_octeonplus/packages/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mips64_octeonplus/routing/";
    sourceInfo = {
      hash = "sha256-tBTizUmnIV1yH1r+kJlDQxjqj9DBBLpe8YvqB6twSCo=";
      name = "mips64_octeonplus-routing-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mips64_octeonplus/routing/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mips64_octeonplus/telephony/";
    sourceInfo = {
      hash = "sha256-WMzJPYHZkqUynWSn0Ba44JfCJXTLFfYJmkpHTNlu59M=";
      name = "mips64_octeonplus-telephony-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mips64_octeonplus/telephony/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
