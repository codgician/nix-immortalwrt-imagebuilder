# 24.10.2 package feeds for arm_arm1176jzf-s_vfp
{
  sha256sums = {
    hash = "sha256-P0O9O+LMeGgwQuc+JLvHaDrNw4ch4fkneNVO57N1FJ8=";
    name = "arm_arm1176jzf-s_vfp-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_arm1176jzf-s_vfp/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_arm1176jzf-s_vfp/base/";
    sourceInfo = {
      hash = "sha256-RTN2A6nDbmBNESgpzW/ON7bUeNWQFerguq6Jx5HDhXc=";
      name = "arm_arm1176jzf-s_vfp-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_arm1176jzf-s_vfp/base/Packages";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_arm1176jzf-s_vfp/luci/";
    sourceInfo = {
      hash = "sha256-9lwZwZPXGD4GNe4tKpq6VoDrw3G/93M0agaXflMS320=";
      name = "arm_arm1176jzf-s_vfp-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_arm1176jzf-s_vfp/luci/Packages";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_arm1176jzf-s_vfp/packages/";
    sourceInfo = {
      hash = "sha256-ea4KDqd+Gsr6LbDbH4DcYygdCv6dz1e+wJW5ngq3lc4=";
      name = "arm_arm1176jzf-s_vfp-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_arm1176jzf-s_vfp/packages/Packages";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_arm1176jzf-s_vfp/routing/";
    sourceInfo = {
      hash = "sha256-QV+9OwVRPpCe6vKBlcSQ3AT1AgslHQFX/7WnN7jJvkE=";
      name = "arm_arm1176jzf-s_vfp-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_arm1176jzf-s_vfp/routing/Packages";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_arm1176jzf-s_vfp/telephony/";
    sourceInfo = {
      hash = "sha256-3t1nhGoXWWASUtJOqMHrSyQbRWRNXOw5l5o1qibvXoo=";
      name = "arm_arm1176jzf-s_vfp-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/arm_arm1176jzf-s_vfp/telephony/Packages";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
