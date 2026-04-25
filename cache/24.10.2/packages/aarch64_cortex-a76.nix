# 24.10.2 package feeds for aarch64_cortex-a76
{
  sha256sums = {
    hash = "sha256-aemGciIqvmtSQfz34TRqx82UT0FGKCLIHDALV+/GfD4=";
    name = "aarch64_cortex-a76-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/aarch64_cortex-a76/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/aarch64_cortex-a76/base/";
    sourceInfo = {
      hash = "sha256-3Z7ycCcCjLgmTL7/LVKkI3lmgeX7AISIn+5M5Xa5RoQ=";
      name = "aarch64_cortex-a76-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/aarch64_cortex-a76/base/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/aarch64_cortex-a76/luci/";
    sourceInfo = {
      hash = "sha256-OGY6Pg9lTuxN1RNTPv9g99rb7hTmpSEgltO6sUBasrg=";
      name = "aarch64_cortex-a76-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/aarch64_cortex-a76/luci/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/aarch64_cortex-a76/packages/";
    sourceInfo = {
      hash = "sha256-RQ5EdjDvWIDfb2Jphqk/56vrEdpXABvGEyMzei4qJCE=";
      name = "aarch64_cortex-a76-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/aarch64_cortex-a76/packages/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/aarch64_cortex-a76/routing/";
    sourceInfo = {
      hash = "sha256-88t+C48Yyv7Rx3v+7V7pdsGmpzLU4S0HfXE5Wn+6dFU=";
      name = "aarch64_cortex-a76-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/aarch64_cortex-a76/routing/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/aarch64_cortex-a76/telephony/";
    sourceInfo = {
      hash = "sha256-6WFVd7ma4Ut6fzht0gacS03MulnMwKPr8IlXjN0Ow/8=";
      name = "aarch64_cortex-a76-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/aarch64_cortex-a76/telephony/Packages";
    };
    packages =
      let
        p = ./aarch64_cortex-a76/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
