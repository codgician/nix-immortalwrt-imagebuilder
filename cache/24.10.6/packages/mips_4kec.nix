# 24.10.6 package feeds for mips_4kec
{
  sha256sums = {
    hash = "sha256-z2JGPSWPW9w7f0VcWegIOWsBQUKc/DkX7jdgDEWUCio=";
    name = "mips_4kec-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mips_4kec/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mips_4kec/base/";
    sourceInfo = {
      hash = "sha256-bUUP0y/Q0+hwnEpXI7kIiSXzYyvuu0YEB14N4kEmBVA=";
      name = "mips_4kec-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mips_4kec/base/Packages";
    };
    packages =
      let
        p = ./mips_4kec/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mips_4kec/luci/";
    sourceInfo = {
      hash = "sha256-Wo06YlCnnOy4jWkF4VY176HCeWnMQhZg6ZWhEcOa41s=";
      name = "mips_4kec-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mips_4kec/luci/Packages";
    };
    packages =
      let
        p = ./mips_4kec/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mips_4kec/packages/";
    sourceInfo = {
      hash = "sha256-A7FtKZKXc0ZG6w/y9XJd5UDNBjUtLPRgIxg8Qrp6nw8=";
      name = "mips_4kec-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mips_4kec/packages/Packages";
    };
    packages =
      let
        p = ./mips_4kec/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mips_4kec/routing/";
    sourceInfo = {
      hash = "sha256-EMVsyLdYDnPbWV8XHtX1BXg/SNQn3a34iMSMqrDOvyo=";
      name = "mips_4kec-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mips_4kec/routing/Packages";
    };
    packages =
      let
        p = ./mips_4kec/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mips_4kec/telephony/";
    sourceInfo = {
      hash = "sha256-q85diqbrjpbODFMX1M9OvNMqLQzWfKpD/d9J57ptLJc=";
      name = "mips_4kec-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/packages/mips_4kec/telephony/Packages";
    };
    packages =
      let
        p = ./mips_4kec/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
