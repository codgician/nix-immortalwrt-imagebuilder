# 24.10.3 package feeds for aarch64_generic
{
  sha256sums = {
    hash = "sha256-JMSSQyYE3QyN9cBYlnxip7e3jUrl9RoPJz6MPBmtUAs=";
    name = "aarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/aarch64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/aarch64_generic/base/";
    sourceInfo = {
      hash = "sha256-2lxwIxZo64qgOvpBCilpWV37hKZ0NBFEk8nEj+oK4t4=";
      name = "aarch64_generic-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/aarch64_generic/base/Packages";
    };
    packages =
      let
        p = ./aarch64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/aarch64_generic/luci/";
    sourceInfo = {
      hash = "sha256-keUUzI3xnVEqPojRDFjjp/B+IFtLxWbcQj12If/pb78=";
      name = "aarch64_generic-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/aarch64_generic/luci/Packages";
    };
    packages =
      let
        p = ./aarch64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/aarch64_generic/packages/";
    sourceInfo = {
      hash = "sha256-Vd0bdgc+wrZgzap4iRm4l1AMICYftFlexITSFn7ri/0=";
      name = "aarch64_generic-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/aarch64_generic/packages/Packages";
    };
    packages =
      let
        p = ./aarch64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/aarch64_generic/routing/";
    sourceInfo = {
      hash = "sha256-qnGn0o8RazQyiiGddUkQkF68EqhiIsBjCleArHa8wIM=";
      name = "aarch64_generic-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/aarch64_generic/routing/Packages";
    };
    packages =
      let
        p = ./aarch64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/aarch64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-M2bhGlg2hHWHBDG4ozd7sGOotx1ErsmtxV5bZrWsBkI=";
      name = "aarch64_generic-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/aarch64_generic/telephony/Packages";
    };
    packages =
      let
        p = ./aarch64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
