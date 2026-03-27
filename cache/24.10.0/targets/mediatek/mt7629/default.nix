# 24.10.0 mediatek/mt7629
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mediatek/mt7629/";
  sha256sums = {
    hash = "sha256-AzMcxtnVN9tmx0LV0iKME9czMZEtNnKg2/D7fDqeqLA=";
    name = "mediatek_mt7629-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mediatek/mt7629/sha256sums";
  };
  imagebuilder = {
    sha256 = "c7bf25a3c5e15562835611ad51dc814782e67ac0e82fe0b44eb9b3a00e517300";
    filename = "immortalwrt-imagebuilder-24.10.0-mediatek-mt7629.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-feclZfWK8g56qyINwKQL94UaCXlmbskZLio63ej09o4=";
    name = "mediatek_mt7629-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mediatek/mt7629/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7";
    linux_kernel = {
      release = "1";
      vermagic = "8a6c4cc62e2cc36ce55fad6c5d4293c7";
      version = "6.6.73";
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
    kmods_target = "6.6.73-1-8a6c4cc62e2cc36ce55fad6c5d4293c7";
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
  kmods."6.6.73-1-8a6c4cc62e2cc36ce55fad6c5d4293c7" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mediatek/mt7629/kmods/6.6.73-1-8a6c4cc62e2cc36ce55fad6c5d4293c7/";
    sourceInfo = {
      hash = "sha256-0hnE2jKwtdDFapOw0XlPH9Yg6xDKdRGgc5bGnzzn+po=";
      name = "kmods-mediatek_mt7629-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mediatek/mt7629/kmods/6.6.73-1-8a6c4cc62e2cc36ce55fad6c5d4293c7/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mediatek/mt7629/packages/";
    sourceInfo = {
      hash = "sha256-J0qQpWsytwSgKiq4qydeJUNNEvSKw2+SBSkOODu0oaw=";
      name = "mediatek_mt7629-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mediatek/mt7629/packages/Packages";
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
