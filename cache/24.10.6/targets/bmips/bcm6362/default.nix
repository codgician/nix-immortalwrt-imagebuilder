# 24.10.6 bmips/bcm6362
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bmips/bcm6362/";
  sha256sums = {
    hash = "sha256-lMSCZLFCSq+6D1nWMARDL87WUrKiiTdy4mguQj7rFL8=";
    name = "bmips_bcm6362-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bmips/bcm6362/sha256sums";
  };
  imagebuilder = {
    sha256 = "00c6aeb5f68a8d6d0ec7dfdb73a12781e20f6eb2b4083a14f26af2bc55dc8615";
    filename = "immortalwrt-imagebuilder-24.10.6-bmips-bcm6362.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-K4M8VlWCFsm/U/xm8/4vEPyrN4MQBX23lPC7s357Ohc=";
    name = "bmips_bcm6362-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bmips/bcm6362/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "3bcc6f771ba9aa6c194a1db821ef94a8";
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
    kmods_target = "6.6.133-1-3bcc6f771ba9aa6c194a1db821ef94a8";
    profiles = {
      huawei_hg253s-v2 = {
        device_packages = [
          "nand-utils"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-leds-bcm6328"
          "kmod-leds-gpio"
        ];
      };
      netgear_dgnd3700-v2 = {
        device_packages = [
          "nand-utils"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-leds-bcm6328"
          "kmod-leds-gpio"
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.133-1-3bcc6f771ba9aa6c194a1db821ef94a8" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bmips/bcm6362/kmods/6.6.133-1-3bcc6f771ba9aa6c194a1db821ef94a8/";
    sourceInfo = {
      hash = "sha256-T1t4I0IQM9qF+xyHUzSNDARf+iP6LH7qwJuWVzxwaik=";
      name = "kmods-bmips_bcm6362-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bmips/bcm6362/kmods/6.6.133-1-3bcc6f771ba9aa6c194a1db821ef94a8/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bmips/bcm6362/packages/";
    sourceInfo = {
      hash = "sha256-Ri2oszn2oEZoMGQ14XJHuD6BIB8lhFhbrOgep6W01NA=";
      name = "bmips_bcm6362-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bmips/bcm6362/packages/Packages";
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
