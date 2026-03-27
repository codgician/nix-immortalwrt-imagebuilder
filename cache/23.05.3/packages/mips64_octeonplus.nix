# 23.05.3 package feeds for mips64_octeonplus
{
  sha256sums = {
    hash = "sha256-XmzCmgVm03yiY0tTCgSku2tdopXRkZktzRniVbxfWOI=";
    name = "mips64_octeonplus-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/packages/mips64_octeonplus/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/packages/mips64_octeonplus/base/";
    sourceInfo = {
      hash = "sha256-AJ9/6BTZF/8+gy4mhcNPmgDCuwIeIIW6OR2fl5Rxru4=";
      name = "mips64_octeonplus-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.3/packages/mips64_octeonplus/base/Packages";
    };
    packages =
      let
        p = ./mips64_octeonplus/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/packages/mips64_octeonplus/luci/";
    sourceInfo = {
      hash = "sha256-dHPi/47bZYmpPp+BVvl2dvMS2e50Bx1nNLDdKIchjUM=";
      name = "mips64_octeonplus-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.3/packages/mips64_octeonplus/luci/Packages";
    };
    packages =
      let
        p = ./mips64_octeonplus/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/packages/mips64_octeonplus/packages/";
    sourceInfo = {
      hash = "sha256-LUxpllA2wsJBpN0/kSUnNdb2qIcFFfTecbwwRDAfkZQ=";
      name = "mips64_octeonplus-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.3/packages/mips64_octeonplus/packages/Packages";
    };
    packages =
      let
        p = ./mips64_octeonplus/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/packages/mips64_octeonplus/routing/";
    sourceInfo = {
      hash = "sha256-9N9ZzEukxP3h91QGW/EiBzkZwMrboKycKNAnewPfVCU=";
      name = "mips64_octeonplus-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.3/packages/mips64_octeonplus/routing/Packages";
    };
    packages =
      let
        p = ./mips64_octeonplus/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/packages/mips64_octeonplus/telephony/";
    sourceInfo = {
      hash = "sha256-EQj978uDJGdKZy9K0JNSyetaH4wWefnhuYwKb51RZbo=";
      name = "mips64_octeonplus-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.3/packages/mips64_octeonplus/telephony/Packages";
    };
    packages =
      let
        p = ./mips64_octeonplus/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
