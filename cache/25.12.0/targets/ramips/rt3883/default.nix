# 25.12.0 ramips/rt3883
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/ramips/rt3883/";
  sha256sums = {
    hash = "sha256-EyRJG+SUfpliK5eRqafSQXi86VehJvJjn59boQLfipc=";
    name = "ramips_rt3883-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/ramips/rt3883/sha256sums";
  };
  imagebuilder = {
    sha256 = "88e0c0f31ec8d96d4b867e47f9f7355a50cd11a4e6f273fefaeef6e300a7be46";
    filename = "immortalwrt-imagebuilder-25.12.0-ramips-rt3883.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-re9Na9q+mTDIJDlrVe4M5UiKpYxK1th4vlfhtojTgJo=";
    name = "ramips_rt3883-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/ramips/rt3883/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_74kc";
    linux_kernel = {
      release = "1";
      vermagic = "a0df7fe6d7dbfb0981f11a2b8edad534";
      version = "6.12.87";
    };
    default_packages = [
      "apk-openssl"
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
      "kmod-nft-offload"
      "kmod-rt2800-pci"
      "kmod-rt2800-soc"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "ppp"
      "ppp-mod-pppoe"
      "swconfig"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "6.12.87-1-a0df7fe6d7dbfb0981f11a2b8edad534";
    profiles = {
      omnima_hpm = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      samsung_cy-swr1100 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      trendnet_tew-691gr = {
        device_packages = [ ];
      };
      trendnet_tew-692gr = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.87-1-a0df7fe6d7dbfb0981f11a2b8edad534" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/ramips/rt3883/kmods/6.12.87-1-a0df7fe6d7dbfb0981f11a2b8edad534/";
    sourceInfo = {
      hash = "sha256-ErjFEGwUL+MQ2ceHKMA+wRvSxR+FHw+xyEdG/Qy2u6k=";
      name = "kmods-ramips_rt3883-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/ramips/rt3883/kmods/6.12.87-1-a0df7fe6d7dbfb0981f11a2b8edad534/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/ramips/rt3883/packages/";
    sourceInfo = {
      hash = "sha256-PfJ0LlDikUD/Ng/LCDirfx6+f4vlK3+NdaXmddRLJh4=";
      name = "ramips_rt3883-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/ramips/rt3883/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mipsel_74kc";
  feeds = import ./../../../packages/mipsel_74kc.nix;
}
