# snapshot stm32/stm32mp1
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/stm32/stm32mp1/";
  sha256sums = {
    hash = "sha256-Gx56/6cAd1vZiaKIFcRTxNQhRFEiVf+yixOqiJgPdkY=";
    name = "stm32_stm32mp1-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/stm32/stm32mp1/sha256sums";
  };
  imagebuilder = {
    sha256 = "eb70a6f6d5ef52033a1490045411beadcaf049b5e7e61bd86ccfcf809c1b4b09";
    filename = "immortalwrt-imagebuilder-stm32-stm32mp1.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-6EFH/EUcfxNM/50NSMJg065vET+vFx+uROw5UzFPZV4=";
    name = "stm32_stm32mp1-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/stm32/stm32mp1/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "99e2ceada0dafd8a461eb628ba0d2b1c";
      version = "6.18.55";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "blockdev"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.18.55-1-99e2ceada0dafd8a461eb628ba0d2b1c";
    profiles = {
      stm32mp135f-dk = {
        device_packages = [
          "kmod-brcmfmac"
          "murata-firmware-43430-sdio"
          "murata-nvram-43430-sdio"
          "wpad-basic-openssl"
          "kmod-phy-stm32-usbphyc"
          "kmod-usb2"
          "kmod-usb-storage"
          "kmod-usb-ledtrig-usbport"
          "-mtd"
        ];
      };
      stm32mp157c-dk2 = {
        device_packages = [
          "kmod-brcmfmac"
          "murata-firmware-43430-sdio"
          "murata-nvram-43430-sdio"
          "wpad-basic-openssl"
          "kmod-phy-stm32-usbphyc"
          "kmod-usb2"
          "kmod-usb-storage"
          "kmod-usb-ledtrig-usbport"
          "-mtd"
        ];
      };
      stm32mp157c-dk2-scmi = {
        device_packages = [
          "kmod-brcmfmac"
          "murata-firmware-43430-sdio"
          "murata-nvram-43430-sdio"
          "wpad-basic-openssl"
          "kmod-phy-stm32-usbphyc"
          "kmod-usb2"
          "kmod-usb-storage"
          "kmod-usb-ledtrig-usbport"
          "-mtd"
        ];
      };
    };
  };
  kmods."6.18.55-1-99e2ceada0dafd8a461eb628ba0d2b1c" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/stm32/stm32mp1/kmods/6.18.55-1-99e2ceada0dafd8a461eb628ba0d2b1c/";
    sourceInfo = {
      hash = "sha256-MN9e9Xn4xXCslYtpZTxnaUsfeUu3of0a/YFBtN6gmWU=";
      name = "kmods-stm32_stm32mp1-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/stm32/stm32mp1/kmods/6.18.55-1-99e2ceada0dafd8a461eb628ba0d2b1c/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/stm32/stm32mp1/packages/";
    sourceInfo = {
      hash = "sha256-c8Wz0iNvZcORnVUctvHLNuXq/eQJWZxJC6P7tF7c0w0=";
      name = "stm32_stm32mp1-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/stm32/stm32mp1/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a7_neon-vfpv4";
  feeds = import ./../../../packages/arm_cortex-a7_neon-vfpv4.nix;
}
