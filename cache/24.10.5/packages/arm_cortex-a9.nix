# 24.10.5 package feeds for arm_cortex-a9
{
  sha256sums = {
    hash = "sha256-FBbe9mCKfpeCaKbOxRemFU6fcq5rcpw+Pfnwor+//jE=";
    name = "arm_cortex-a9-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a9/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a9/base/";
    sourceInfo = {
      hash = "sha256-e54Tt3lkGgzzv90Ty4fUPFAynfIIZHy7bGP/X+17Vws=";
      name = "arm_cortex-a9-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a9/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a9/luci/";
    sourceInfo = {
      hash = "sha256-RTqduxW8EcUo6Eu8ZQ+IvEubw27d7Q511Zd21DEA6ts=";
      name = "arm_cortex-a9-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a9/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a9/packages/";
    sourceInfo = {
      hash = "sha256-mg8oR5UQNBPFHRGy+u3zAqB3otgm3CPDEsOX0r80jYg=";
      name = "arm_cortex-a9-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a9/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a9/routing/";
    sourceInfo = {
      hash = "sha256-5U+Jsu0nNq1YQ6Z/Ky1NyKZw45duu2z54Pp9xiynzi8=";
      name = "arm_cortex-a9-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a9/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a9/telephony/";
    sourceInfo = {
      hash = "sha256-Djve7ydnJCW5IDLQxN8JCamLDDJc8paTAQ/FVu0u8bs=";
      name = "arm_cortex-a9-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a9/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a9/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
