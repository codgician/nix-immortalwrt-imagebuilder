# 23.05.1 ramips/rt3883
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.1/targets/ramips/rt3883/";
  sha256sums = {
    hash = "sha256-27Hq0Kz9Z3d+tNtJK4bvE75chPUxCfXuUoA2vo+aYx0=";
    name = "ramips_rt3883-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/ramips/rt3883/sha256sums";
  };
  imagebuilder = {
    sha256 = "a12e80b50180c05ca94dc24fd7d4a91c8193421941f34a5eb2ae7d05d0b12b07";
    filename = "immortalwrt-imagebuilder-23.05.1-ramips-rt3883.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-dyfxVIOZrpKl/YS3nZXMlYHLAlC8R5VBovgKXGz344Y=";
    name = "ramips_rt3883-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/ramips/rt3883/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_74kc";
    linux_kernel = null;
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
      "ipv6helper"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-rt2800-pci"
      "kmod-rt2800-soc"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nftables"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "swconfig"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "null-null-null";
    profiles = {
      belkin_f9k1109v1 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      dlink_dir-645 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      edimax_br-6475nd = {
        device_packages = [ ];
      };
      engenius_esr600h = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
          "uboot-envtools"
        ];
      };
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
      sitecom_wlr-6000 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
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
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.1/targets/ramips/rt3883/packages/";
    sourceInfo = {
      hash = "sha256-rqmqKQc7sLYubRxKtpieXWcc3/QmfA6XIsNzeEOyjWY=";
      name = "ramips_rt3883-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/ramips/rt3883/packages/Packages";
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
