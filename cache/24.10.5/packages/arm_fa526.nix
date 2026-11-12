# 24.10.5 package feeds for arm_fa526
{
  sha256sums = {
    hash = "sha256-59kbo3XKjmr/c1RBUw6ILxHiu3fO0ru8uOUGcLVn2c4=";
    name = "arm_fa526-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_fa526/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_fa526/base/";
    sourceInfo = {
      hash = "sha256-3cQ4LpHn6hSYzRW4s05zZkcuqXZ2mCNWce5ZgREODjk=";
      name = "arm_fa526-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_fa526/base/Packages";
    };
    packages =
      let
        p = ./arm_fa526/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_fa526/luci/";
    sourceInfo = {
      hash = "sha256-Pa8zeYW6RMpb6wHDuQXGv16w80LUucp6YZX70J3p0f0=";
      name = "arm_fa526-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_fa526/luci/Packages";
    };
    packages =
      let
        p = ./arm_fa526/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_fa526/packages/";
    sourceInfo = {
      hash = "sha256-VTGCHz9HTzMsEnWmcQZJ4tMJtrKF6llSP1UdZL8hiDU=";
      name = "arm_fa526-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_fa526/packages/Packages";
    };
    packages =
      let
        p = ./arm_fa526/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_fa526/routing/";
    sourceInfo = {
      hash = "sha256-ij8Y5I6qGZs5bgId6cED4wQCPEfTggD1GoLh1GGvCWE=";
      name = "arm_fa526-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_fa526/routing/Packages";
    };
    packages =
      let
        p = ./arm_fa526/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_fa526/telephony/";
    sourceInfo = {
      hash = "sha256-26tQJ+oJT/aMgVgJoW4Vx6x2zN5GDbPq6b9q0UQd55c=";
      name = "arm_fa526-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_fa526/telephony/Packages";
    };
    packages =
      let
        p = ./arm_fa526/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
