# 24.10.3 package feeds for arm_cortex-a8_vfpv3
{
  sha256sums = {
    hash = "sha256-k6xYgfwv4rEiJsmjfAGw18Eq3+a0mM44lzEqF9zmby0=";
    name = "arm_cortex-a8_vfpv3-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a8_vfpv3/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a8_vfpv3/base/";
    sourceInfo = {
      hash = "sha256-6quHsZDu1zjuO3lcENzDassGzhDitLrsxuh+JZ9/LwU=";
      name = "arm_cortex-a8_vfpv3-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a8_vfpv3/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a8_vfpv3/luci/";
    sourceInfo = {
      hash = "sha256-7TQqSqkcBZPcfYxXJlZnfQHChA15SttcrcoqbcpEVrA=";
      name = "arm_cortex-a8_vfpv3-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a8_vfpv3/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a8_vfpv3/packages/";
    sourceInfo = {
      hash = "sha256-E0+sXpEbyt3QHoB2bnzZGvmU1xxLO2xjG3anzfF5XXQ=";
      name = "arm_cortex-a8_vfpv3-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a8_vfpv3/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a8_vfpv3/routing/";
    sourceInfo = {
      hash = "sha256-/Gs3uMQMm+o4NwJZWW83eA3gwh7LbUaM8hoWOdSMHq8=";
      name = "arm_cortex-a8_vfpv3-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a8_vfpv3/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a8_vfpv3/telephony/";
    sourceInfo = {
      hash = "sha256-4uH9obKfohb5+5CaqgVpicfjc8mP031uQmBqwmEc6SM=";
      name = "arm_cortex-a8_vfpv3-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_cortex-a8_vfpv3/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
