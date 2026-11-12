# 24.10.2 package feeds for mipsel_mips32
{
  sha256sums = {
    hash = "sha256-XWW0RnAgB70PPtADsw/JokPhAzUmJE6jFoUzfk2BWuE=";
    name = "mipsel_mips32-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_mips32/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_mips32/base/";
    sourceInfo = {
      hash = "sha256-GU4PepGOUkflnmmCLh8DSUXYxoGjojD/J4y8FypQdNw=";
      name = "mipsel_mips32-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_mips32/base/Packages";
    };
    packages =
      let
        p = ./mipsel_mips32/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_mips32/luci/";
    sourceInfo = {
      hash = "sha256-dQod3dC7YmyLxjObXgchOyoHOu3fBWH1KmjLQgHvjV4=";
      name = "mipsel_mips32-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_mips32/luci/Packages";
    };
    packages =
      let
        p = ./mipsel_mips32/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_mips32/packages/";
    sourceInfo = {
      hash = "sha256-PBBakIivEqR0QtoDLS8t4ZLMkYC9TMbFwrQRu6qzMpI=";
      name = "mipsel_mips32-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_mips32/packages/Packages";
    };
    packages =
      let
        p = ./mipsel_mips32/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_mips32/routing/";
    sourceInfo = {
      hash = "sha256-94C1WlZ61LGDDMwA49nKvBC8v2/XSdHsmrSbgXYgJ7E=";
      name = "mipsel_mips32-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_mips32/routing/Packages";
    };
    packages =
      let
        p = ./mipsel_mips32/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_mips32/telephony/";
    sourceInfo = {
      hash = "sha256-oudV5R1BrnIcq/gOOmyvNkS3XQL8vbAEhXTd+5wiALE=";
      name = "mipsel_mips32-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/mipsel_mips32/telephony/Packages";
    };
    packages =
      let
        p = ./mipsel_mips32/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
