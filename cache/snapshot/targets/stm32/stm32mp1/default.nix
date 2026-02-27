# snapshot stm32/stm32mp1
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/stm32/stm32mp1/";
  sha256sums = {
    hash = "sha256-hZm6PyGv03LPymR/po/NNKv4A4RTwyQ7Mo/UG/tT5Ug=";
    name = "stm32_stm32mp1-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/stm32/stm32mp1/sha256sums";
  };
  imagebuilder = {
    sha256 = "9b7007037da6cbb075407cb248cf314b44b0fb52437190826ff985ac196f8c09";
    filename = "immortalwrt-imagebuilder-stm32-stm32mp1.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-IwLQRjrc5OjgK37JOi9qdeYtDNTpEL4K45yaGiI3uiU=";
    name = "stm32_stm32mp1-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/stm32/stm32mp1/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "8ffd760f2d219fbdd68128a9ad4c9d55";
      version = "6.12.67";
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
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.67-1-8ffd760f2d219fbdd68128a9ad4c9d55";
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
  kmods."6.12.67-1-8ffd760f2d219fbdd68128a9ad4c9d55" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/stm32/stm32mp1/kmods/6.12.67-1-8ffd760f2d219fbdd68128a9ad4c9d55/";
    sourceInfo = {
      hash = "sha256-nKheMO0U9eTXl33fOLXRBC6pHkTV+as59n/y1cL9h6s=";
      name = "kmods-stm32_stm32mp1-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/stm32/stm32mp1/kmods/6.12.67-1-8ffd760f2d219fbdd68128a9ad4c9d55/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/stm32/stm32mp1/packages/";
    sourceInfo = {
      hash = "sha256-ppGdjr2Gavw/1QN98kHO4Om2Q4DF59ICskhVhduARoc=";
      name = "stm32_stm32mp1-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/stm32/stm32mp1/packages/packages.adb";
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
