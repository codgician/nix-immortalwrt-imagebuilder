# 24.10.4 package feeds for arm_cortex-a7_vfpv4
{
  sha256sums = {
    hash = "sha256-maOScehkMtX7fWIWKiVwIRjqU4fopabwfSj7FU0SuZM=";
    name = "arm_cortex-a7_vfpv4-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a7_vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a7_vfpv4/base/";
    sourceInfo = {
      hash = "sha256-F1HxqXMVt9ya09o69qXHdLnTXx2m1LxFOuOitybBlnI=";
      name = "arm_cortex-a7_vfpv4-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a7_vfpv4/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a7_vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-imoYk6v1QcsZnsqY+yJpvOo901pEOdCvKlAMLo7rZGI=";
      name = "arm_cortex-a7_vfpv4-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a7_vfpv4/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a7_vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-hZ84Kxoatxry4H2/ns8hf8Uln+8p428pspAVoEzHXfM=";
      name = "arm_cortex-a7_vfpv4-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a7_vfpv4/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a7_vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-Bu9Nzt+YqyJEAIPbVy3ouneTya2KE2odIPGLyF5fmOU=";
      name = "arm_cortex-a7_vfpv4-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a7_vfpv4/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a7_vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-zHK35Qna8ZU8m8AwTPFtjm86aVjBAKKWZ4HNXduDjMw=";
      name = "arm_cortex-a7_vfpv4-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_cortex-a7_vfpv4/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a7_vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
