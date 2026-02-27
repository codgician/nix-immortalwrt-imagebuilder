# 23.05.7 pistachio/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/pistachio/generic/";
  sha256sums = {
    hash = "sha256-XjEQkZIQR0vQANYX/RU5KdEcoJLZMTg/JKGlV6Lfzig=";
    name = "pistachio_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/pistachio/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "65c753705bf06393f5eb9695f01d5d0129d5a2fc50258acf1d193aca9458f6ec";
    filename = "immortalwrt-imagebuilder-23.05.7-pistachio-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-FAj2giKxkBvUpnJ2tmYBRyTgKQXoMMAxoTFRu+Sv5TI=";
    name = "pistachio_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/pistachio/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_24kc_24kf";
    linux_kernel = {
      release = "1";
      vermagic = "e59f4ab17ee78c5f044109c5d3dbb2cc";
      version = "5.15.195";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
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
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "5.15.195-1-e59f4ab17ee78c5f044109c5d3dbb2cc";
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
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/pistachio/generic/packages/";
    sourceInfo = {
      hash = "sha256-YD+sOBbkHjFJAhIb9GPDe1t/4cbv487bZ3+Z0rucrO8=";
      name = "pistachio_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/pistachio/generic/packages/Packages";
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
