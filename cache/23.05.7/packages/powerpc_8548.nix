# 23.05.7 package feeds for powerpc_8548
{
  sha256sums = {
    hash = "sha256-EetroemXcM75qrqOkdvYHuh+cBVlk8DarrMpPl0mEpg=";
    name = "powerpc_8548-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/powerpc_8548/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/powerpc_8548/base/";
    sourceInfo = {
      hash = "sha256-pFPfuhpkwpofMMN7WgmxAUR+wh0kzHU1pa4PYTZV//g=";
      name = "powerpc_8548-base-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/powerpc_8548/base/Packages";
    };
    packages =
      let
        p = ./powerpc_8548/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/powerpc_8548/luci/";
    sourceInfo = {
      hash = "sha256-zf9l51+OMYmxZZG99Lhf8boafZwK5wmcOu5lCdrgtSQ=";
      name = "powerpc_8548-luci-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/powerpc_8548/luci/Packages";
    };
    packages =
      let
        p = ./powerpc_8548/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/powerpc_8548/packages/";
    sourceInfo = {
      hash = "sha256-6Oj5xdjLoi/GbnYoZ+jw0gD4kprm2qKfuMaja88n5ds=";
      name = "powerpc_8548-packages-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/powerpc_8548/packages/Packages";
    };
    packages =
      let
        p = ./powerpc_8548/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/powerpc_8548/routing/";
    sourceInfo = {
      hash = "sha256-oO4WzHSHjrSIl1IxXpaz0e683+1PYlRhNDWt5QBXDU4=";
      name = "powerpc_8548-routing-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/powerpc_8548/routing/Packages";
    };
    packages =
      let
        p = ./powerpc_8548/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/powerpc_8548/telephony/";
    sourceInfo = {
      hash = "sha256-5zY+3GjYWarjgUQ4A5Nt9c6kF9GbdUaNDLTnxMtzymM=";
      name = "powerpc_8548-telephony-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/packages/powerpc_8548/telephony/Packages";
    };
    packages =
      let
        p = ./powerpc_8548/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
