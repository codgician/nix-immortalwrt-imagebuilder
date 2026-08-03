# 24.10.2 package feeds for x86_64
{
  sha256sums = {
    hash = "sha256-Dpwx3j9Bg7+WvjzkIz2eh8HzW08Huk4VNVYw6I5xFxk=";
    name = "x86_64-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/x86_64/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/x86_64/base/";
    sourceInfo = {
      hash = "sha256-WA98HLCiL5OBO1fGTKa/iXDUQmy9SSFXLcM/QuP8Yio=";
      name = "x86_64-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/x86_64/base/Packages";
    };
    packages =
      let
        p = ./x86_64/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/x86_64/luci/";
    sourceInfo = {
      hash = "sha256-+o5+zcfeCfou4JaPG3CJYEDoP/g0oXuvPYp2i+O+9ns=";
      name = "x86_64-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/x86_64/luci/Packages";
    };
    packages =
      let
        p = ./x86_64/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/x86_64/packages/";
    sourceInfo = {
      hash = "sha256-iom9s70pqsnTE7r5waWfMukTyPgALjJfXwo5jaa84ks=";
      name = "x86_64-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/x86_64/packages/Packages";
    };
    packages =
      let
        p = ./x86_64/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/x86_64/routing/";
    sourceInfo = {
      hash = "sha256-RqVJljSjoccGOJ9L/E3wWfOuHu4wRUixMu/K07Vaxjc=";
      name = "x86_64-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/x86_64/routing/Packages";
    };
    packages =
      let
        p = ./x86_64/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/x86_64/telephony/";
    sourceInfo = {
      hash = "sha256-nIpNdTAKlC1Gcn0xe22h0TwH2hjFFMkv+WjsH1G5DHQ=";
      name = "x86_64-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/x86_64/telephony/Packages";
    };
    packages =
      let
        p = ./x86_64/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
