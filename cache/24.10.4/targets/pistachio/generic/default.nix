# 24.10.4 pistachio/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/pistachio/generic/";
  sha256sums = {
    hash = "sha256-s1DuDphsN6WYhi4FA/4tzRyOx08J9FmyIlzEo2kaJM4=";
    name = "pistachio_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/pistachio/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "ff1c4a157b8e2e6dc83cb273fd9bfcd0c4de580f65de17070fcde66c16818ccc";
    filename = "immortalwrt-imagebuilder-24.10.4-pistachio-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-CFk2KDrhz8evLK4oXcRUAr8g0OXOBCikVM58xOOBD/M=";
    name = "pistachio_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/pistachio/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_24kc_24kf";
    linux_kernel = {
      release = "1";
      vermagic = "b36433a4d8d51ceee985c2fdb42fd624";
      version = "6.6.110";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.110-1-b36433a4d8d51ceee985c2fdb42fd624";
    profiles = {
      img_creator-ci40 = {
        device_packages = [
          "kmod-tpm-i2c-infineon"
          "kmod-ca8210"
          "wpan-tools"
        ];
      };
    };
  };
  kmods."6.6.110-1-b36433a4d8d51ceee985c2fdb42fd624" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/pistachio/generic/kmods/6.6.110-1-b36433a4d8d51ceee985c2fdb42fd624/";
    sourceInfo = {
      hash = "sha256-cUl8TK+rqsY2OoR6c5ubtOB8zDISgdoMafFYxYQe7eA=";
      name = "kmods-pistachio_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/pistachio/generic/kmods/6.6.110-1-b36433a4d8d51ceee985c2fdb42fd624/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/pistachio/generic/packages/";
    sourceInfo = {
      hash = "sha256-Ued+YqA/UBSSex6/v6FigcmSv1YKgegFGvROql5ZGQw=";
      name = "pistachio_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/pistachio/generic/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mipsel_24kc_24kf";
  feeds = import ./../../../packages/mipsel_24kc_24kf.nix;
}
