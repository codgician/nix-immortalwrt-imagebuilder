# 24.10.0 package feeds for arm_fa526
{
  sha256sums = {
    hash = "sha256-NUR0qOiczlzxyBLNyIHqD8VcIfzkQ5L9CqmX4ZGXOik=";
    name = "arm_fa526-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_fa526/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/packages/arm_fa526/base/";
    sourceInfo = {
      hash = "sha256-ulUCrO3ILL+fZZXrp4pOXUMPxYXIcLxPUQuwamYb7ak=";
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
      hash = "sha256-i5kMM+OFkWtAwT0C1junwTx1JeyQBJ24qmADiC/dP4A=";
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
      hash = "sha256-ZGHIRoobie+inTzbaI0QHfH9Q9qgosB2ruj5BHKKs/A=";
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
      hash = "sha256-jPfK7gUmGEFXiC4HelCYSzhJyPYsysO2mI3aLDNEmkM=";
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
      hash = "sha256-hiWDUA7goadlDSvhZBnuODkwG34GQKWLJ59/UsNmcKk=";
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
