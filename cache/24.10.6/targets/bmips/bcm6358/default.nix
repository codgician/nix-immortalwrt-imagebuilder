# 24.10.6 bmips/bcm6358
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bmips/bcm6358/";
  sha256sums = {
    hash = "sha256-su7IMUiMGBfXF+Ky6ZAYdjQvgh+9DZ3/KJiDFO4Y2a0=";
    name = "bmips_bcm6358-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bmips/bcm6358/sha256sums";
  };
  imagebuilder = {
    sha256 = "4cd34d0d8b75aec9b12d8578bef2f8f11f03caec596c7aff7547c79b880e1db3";
    filename = "immortalwrt-imagebuilder-24.10.6-bmips-bcm6358.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-gvGnVkZ93h2vwbIcp7GlWr3WsmafjRoYfWvEoksA1Wc=";
    name = "bmips_bcm6358-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bmips/bcm6358/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "427e3b6b05791fa8549db5d8214474f3";
      version = "6.6.133";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "ethtool"
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
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.133-1-427e3b6b05791fa8549db5d8214474f3";
    profiles = {
      huawei_hg556a-b = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.133-1-427e3b6b05791fa8549db5d8214474f3" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bmips/bcm6358/kmods/6.6.133-1-427e3b6b05791fa8549db5d8214474f3/";
    sourceInfo = {
      hash = "sha256-2AYFVh9d2ST56CXlTdWRGO3ivXfHu5mXYKA6cb3LQWY=";
      name = "kmods-bmips_bcm6358-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bmips/bcm6358/kmods/6.6.133-1-427e3b6b05791fa8549db5d8214474f3/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bmips/bcm6358/packages/";
    sourceInfo = {
      hash = "sha256-+89zMValwFbg3P3u5sFG+BP4yMQ5O/VcWPOGDt01mmU=";
      name = "bmips_bcm6358-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bmips/bcm6358/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_mips32";
  feeds = import ./../../../packages/mips_mips32.nix;
}
