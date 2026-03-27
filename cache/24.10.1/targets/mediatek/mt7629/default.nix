# 24.10.1 mediatek/mt7629
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mediatek/mt7629/";
  sha256sums = {
    hash = "sha256-Z8KJNtWgm9lrhxH2zQEwvNS51XXGo05PQYLSkaFLLJI=";
    name = "mediatek_mt7629-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mediatek/mt7629/sha256sums";
  };
  imagebuilder = {
    sha256 = "4fcf52051bf7ddb7000ab88fa7fb22f98eadfeaab9c5f025be10815fc39e7b01";
    filename = "immortalwrt-imagebuilder-24.10.1-mediatek-mt7629.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-NYJ9kOFXPfb0ABLxYF50LWW+Vuj8tNOqiXhhodnb9cA=";
    name = "mediatek_mt7629-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mediatek/mt7629/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7";
    linux_kernel = {
      release = "1";
      vermagic = "b2d144ff96af7c9c28e83e0b86ba7cb3";
      version = "6.6.86";
    };
    default_packages = [
      "autocore"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
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
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.86-1-b2d144ff96af7c9c28e83e0b86ba7cb3";
    profiles = {
      iptime_a6004mx = {
        device_packages = [
          "kmod-usb3"
          "uboot-envtools"
        ];
      };
      linksys_ea7500-v3 = {
        device_packages = [
          "kmod-usb3"
          "uboot-envtools"
        ];
      };
      mediatek_mt7629-rfb = {
        device_packages = [ "swconfig" ];
      };
      netgear_ex6250-v2 = {
        device_packages = [ "uboot-envtools" ];
      };
      tplink_eap225-v5 = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.6.86-1-b2d144ff96af7c9c28e83e0b86ba7cb3" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mediatek/mt7629/kmods/6.6.86-1-b2d144ff96af7c9c28e83e0b86ba7cb3/";
    sourceInfo = {
      hash = "sha256-xwezf+66vlA3Nf9oYnCm2Ufo0fDNBnKRbGAzN/CW3xg=";
      name = "kmods-mediatek_mt7629-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mediatek/mt7629/kmods/6.6.86-1-b2d144ff96af7c9c28e83e0b86ba7cb3/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mediatek/mt7629/packages/";
    sourceInfo = {
      hash = "sha256-3it6nQim8w+2tsnZZlKhftULOLsb9IjLh5vulaWjYMc=";
      name = "mediatek_mt7629-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mediatek/mt7629/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a7";
  feeds = import ./../../../packages/arm_cortex-a7.nix;
}
