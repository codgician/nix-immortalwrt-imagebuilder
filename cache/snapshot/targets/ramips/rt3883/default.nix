# snapshot ramips/rt3883
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ramips/rt3883/";
  sha256sums = {
    hash = "sha256-qKoGutCM+PLmBfom64brzTJ+ZbstoqCACE/V9j4rZVE=";
    name = "ramips_rt3883-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ramips/rt3883/sha256sums";
  };
  imagebuilder = {
    sha256 = "27d4962072aa91f856369547c9e2024a23726e116ba5be2419f8cd97d30ae982";
    filename = "immortalwrt-imagebuilder-ramips-rt3883.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-lWBdtaNty+GeAnhh6MnqjXSh2gPBx62pzpnLsjgrxWc=";
    name = "ramips_rt3883-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ramips/rt3883/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_74kc";
    linux_kernel = {
      release = "1";
      vermagic = "5f627ba13da483b4f8d7497354a7dc20";
      version = "6.12.67";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nft-offload"
      "kmod-rt2800-pci"
      "kmod-rt2800-soc"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
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
    kmods_target = "6.12.67-1-5f627ba13da483b4f8d7497354a7dc20";
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
      trendnet_tew-691gr = {
        device_packages = [ ];
      };
      trendnet_tew-692gr = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.67-1-5f627ba13da483b4f8d7497354a7dc20" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ramips/rt3883/kmods/6.12.67-1-5f627ba13da483b4f8d7497354a7dc20/";
    sourceInfo = {
      hash = "sha256-X/hz2Qivb/CY1AzoHO2+HlV/naQhm0pdOtUTOTH7ETA=";
      name = "kmods-ramips_rt3883-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ramips/rt3883/kmods/6.12.67-1-5f627ba13da483b4f8d7497354a7dc20/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ramips/rt3883/packages/";
    sourceInfo = {
      hash = "sha256-+1iu5PTEkV6x0FGtUJ5XBOfy3okXCJgF4sLBO+ccMqQ=";
      name = "ramips_rt3883-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ramips/rt3883/packages/packages.adb";
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
