# 24.10.5 package feeds for mips_mips32
{
  sha256sums = {
    hash = "sha256-CAE7yzU2PeV7m+vUlRM4czMs0mVPbmPwdyFAmwqK70U=";
    name = "mips_mips32-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mips_mips32/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mips_mips32/base/";
    sourceInfo = {
      hash = "sha256-RGkftFtU0u/j12H/mARJO5a38ia1HgV5Cl3oDwysW9U=";
      name = "mips_mips32-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mips_mips32/base/Packages";
    };
    packages =
      let
        p = ./mips_mips32/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mips_mips32/luci/";
    sourceInfo = {
      hash = "sha256-sy9MUNpcvuWGzLNUl7ZbAKaj70CheB65kx/glOg7bUk=";
      name = "mips_mips32-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mips_mips32/luci/Packages";
    };
    packages =
      let
        p = ./mips_mips32/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mips_mips32/packages/";
    sourceInfo = {
      hash = "sha256-pVhrVHwEh76JPTTQjcLlk8YcOwsLGRJFGqrwOhT+zks=";
      name = "mips_mips32-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mips_mips32/packages/Packages";
    };
    packages =
      let
        p = ./mips_mips32/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mips_mips32/routing/";
    sourceInfo = {
      hash = "sha256-L8ZBMiTXofpGSHAtVZtixBMtz5h6c+XZoVfmiclvqP0=";
      name = "mips_mips32-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mips_mips32/routing/Packages";
    };
    packages =
      let
        p = ./mips_mips32/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mips_mips32/telephony/";
    sourceInfo = {
      hash = "sha256-grEeKwxHEe9RnZXQeYditpOvHEOWoHENhpfSHatuDWo=";
      name = "mips_mips32-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/mips_mips32/telephony/Packages";
    };
    packages =
      let
        p = ./mips_mips32/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
