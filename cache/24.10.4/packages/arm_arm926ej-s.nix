# 24.10.4 package feeds for arm_arm926ej-s
{
  sha256sums = {
    hash = "sha256-o47tq5ndC3cGBO59V5+yE69cVO9V4rAoS3OT0y3c8j0=";
    name = "arm_arm926ej-s-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_arm926ej-s/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_arm926ej-s/base/";
    sourceInfo = {
      hash = "sha256-Jc+hd7Sh8E/FjF52OC0npQdakeUW10+v4+Tea/SPOvw=";
      name = "arm_arm926ej-s-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_arm926ej-s/base/Packages";
    };
    packages =
      let
        p = ./arm_arm926ej-s/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_arm926ej-s/luci/";
    sourceInfo = {
      hash = "sha256-CwoaUbSTk50GQia7psESSfPGoa2VMl+nNy7ubLyzZGA=";
      name = "arm_arm926ej-s-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_arm926ej-s/luci/Packages";
    };
    packages =
      let
        p = ./arm_arm926ej-s/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_arm926ej-s/packages/";
    sourceInfo = {
      hash = "sha256-yO7+w+lBOfhYfab1KSiUlA8hLFp5sKo9dHmJzmq5pNc=";
      name = "arm_arm926ej-s-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_arm926ej-s/packages/Packages";
    };
    packages =
      let
        p = ./arm_arm926ej-s/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_arm926ej-s/routing/";
    sourceInfo = {
      hash = "sha256-wWI9FKH/DvcpEPFiDETV+9Z6BnDIYBHWrX/0030vr5c=";
      name = "arm_arm926ej-s-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_arm926ej-s/routing/Packages";
    };
    packages =
      let
        p = ./arm_arm926ej-s/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_arm926ej-s/telephony/";
    sourceInfo = {
      hash = "sha256-BeYjqytevJaelZh7zhLiFtnx9nlTLBq5y5JNL/iy3bs=";
      name = "arm_arm926ej-s-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/packages/arm_arm926ej-s/telephony/Packages";
    };
    packages =
      let
        p = ./arm_arm926ej-s/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
