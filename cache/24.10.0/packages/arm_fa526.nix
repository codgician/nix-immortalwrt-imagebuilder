# 24.10.0 package feeds for arm_fa526
{
  sha256sums = {
    hash = "sha256-7bJ48SUe6Ku4Z1QgZ3oWyhoaaER5NWE0hEmG1Gxp3uQ=";
    name = "arm_fa526-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_fa526/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_fa526/base/";
    sourceInfo = {
      hash = "sha256-5i/QdSOH+vEjm+1RLWXaNTMTCX/8cmXfbBXT39Zu8Ow=";
      name = "arm_fa526-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_fa526/base/Packages";
    };
    packages =
      let
        p = ./arm_fa526/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_fa526/luci/";
    sourceInfo = {
      hash = "sha256-ehv1J+5oE1wdiqbFjhE6+261VLLRkVY1E5EUHBWm3n4=";
      name = "arm_fa526-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_fa526/luci/Packages";
    };
    packages =
      let
        p = ./arm_fa526/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_fa526/packages/";
    sourceInfo = {
      hash = "sha256-0nWvTyHYCwBTxb2y6CjMb61U1KamyncZ1j7MZ/8o83k=";
      name = "arm_fa526-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_fa526/packages/Packages";
    };
    packages =
      let
        p = ./arm_fa526/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_fa526/routing/";
    sourceInfo = {
      hash = "sha256-yqpv6mBUfJfL3XgmMRWsmMel6KPMfPDMQZcTEe09G7w=";
      name = "arm_fa526-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_fa526/routing/Packages";
    };
    packages =
      let
        p = ./arm_fa526/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_fa526/telephony/";
    sourceInfo = {
      hash = "sha256-OYlo37JthNg1cLknYng5WeNv5jHGFOSYFuPnF58foqE=";
      name = "arm_fa526-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_fa526/telephony/Packages";
    };
    packages =
      let
        p = ./arm_fa526/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
