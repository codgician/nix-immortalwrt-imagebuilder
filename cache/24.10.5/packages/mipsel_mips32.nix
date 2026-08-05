# 24.10.5 package feeds for mipsel_mips32
{
  sha256sums = {
    hash = "sha256-Fgsbw23+4DfkCDiLBkhJ9nOVgsi8ZPqDl48M6NmbBz0=";
    name = "mipsel_mips32-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_mips32/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_mips32/base/";
    sourceInfo = {
      hash = "sha256-yvxG1kpbd2lQIaGgxCQrNZJRBF0Db1ESjv2YW/ycCGo=";
      name = "mipsel_mips32-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_mips32/base/Packages";
    };
    packages =
      let
        p = ./mipsel_mips32/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_mips32/luci/";
    sourceInfo = {
      hash = "sha256-b4haSD8E1HzJSV+77ruhlGInx//k3Gwton8K+4WeJE8=";
      name = "mipsel_mips32-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_mips32/luci/Packages";
    };
    packages =
      let
        p = ./mipsel_mips32/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_mips32/packages/";
    sourceInfo = {
      hash = "sha256-sqFyNMvUZXz/ZPkK3Qzg0GVDixdIeQ/ulUki4DfK8Cs=";
      name = "mipsel_mips32-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_mips32/packages/Packages";
    };
    packages =
      let
        p = ./mipsel_mips32/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_mips32/routing/";
    sourceInfo = {
      hash = "sha256-4wmDPFktxBANLMTkDJhp8pWZRAyr3NYez1ULGdNy/yg=";
      name = "mipsel_mips32-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_mips32/routing/Packages";
    };
    packages =
      let
        p = ./mipsel_mips32/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_mips32/telephony/";
    sourceInfo = {
      hash = "sha256-SgP+iWTbIh85SXo+e0YLx43x1wFXLa5K77YhuEvaPSc=";
      name = "mipsel_mips32-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mipsel_mips32/telephony/Packages";
    };
    packages =
      let
        p = ./mipsel_mips32/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
