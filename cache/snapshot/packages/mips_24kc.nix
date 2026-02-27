# snapshot package feeds for mips_24kc
{
  sha256sums = {
    hash = "sha256-xFJNghwBLKtszKxrRQyCF7UBj/jLh5EiG4kT3miqdCU=";
    name = "mips_24kc-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mips_24kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mips_24kc/base/";
    sourceInfo = {
      hash = "sha256-mCasgR+GqIlzyhie8HB4G9N3cusA25T5FdeVd7jEGd0=";
      name = "mips_24kc-base-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mips_24kc/base/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mips_24kc/luci/";
    sourceInfo = {
      hash = "sha256-xN6XkYl9kSsNPEoA/vxr+MNW4yr9kNH8FmfeP4QWGRo=";
      name = "mips_24kc-luci-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mips_24kc/luci/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mips_24kc/packages/";
    sourceInfo = {
      hash = "sha256-bbk8vSN3yR1dPs3HN4RbPZOU8ciJknsXINuU8HYjqmQ=";
      name = "mips_24kc-packages-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mips_24kc/packages/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mips_24kc/routing/";
    sourceInfo = {
      hash = "sha256-1I4SgqG62NY1F95kweRUc9pNRlEvcX3Y5lbzi0O67O4=";
      name = "mips_24kc-routing-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mips_24kc/routing/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mips_24kc/telephony/";
    sourceInfo = {
      hash = "sha256-qrIz8GKLJt8HmyCzpuqzIG855ZCelGXI1HLP5+P+4pw=";
      name = "mips_24kc-telephony-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/mips_24kc/telephony/packages.adb";
    };
    packages =
      let
        p = ./mips_24kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
