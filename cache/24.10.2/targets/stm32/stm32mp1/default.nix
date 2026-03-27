# 24.10.2 stm32/stm32mp1
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/stm32/stm32mp1/";
  sha256sums = {
    hash = "sha256-Uf6/Dq6JThtuz6vBrSokD3L9vod/ON1WhtlPs2jeEUs=";
    name = "stm32_stm32mp1-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/stm32/stm32mp1/sha256sums";
  };
  imagebuilder = {
    sha256 = "8825264e0c5e22a13903038782c48f3cb040f71c2125df5aa0d02e700d0d212a";
    filename = "immortalwrt-imagebuilder-24.10.2-stm32-stm32mp1.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-JInFtHhgq21019yb9W8x6pTqXkRDjO9A1GcX2FRP7tg=";
    name = "stm32_stm32mp1-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/stm32/stm32mp1/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "17e8c46fcfc599528679c749445656df";
      version = "6.6.93";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "blockdev"
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
    kmods_target = "6.6.93-1-17e8c46fcfc599528679c749445656df";
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
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.93-1-17e8c46fcfc599528679c749445656df" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/stm32/stm32mp1/kmods/6.6.93-1-17e8c46fcfc599528679c749445656df/";
    sourceInfo = {
      hash = "sha256-VQWRJibT+DTJDEUQ/F/c3UTMxd1DiVAqGA7JPJxItNM=";
      name = "kmods-stm32_stm32mp1-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/stm32/stm32mp1/kmods/6.6.93-1-17e8c46fcfc599528679c749445656df/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/stm32/stm32mp1/packages/";
    sourceInfo = {
      hash = "sha256-s5Yi9+TUrqKH/e6CZVkusMaBkS+O+xWcQUwnDzX3L0s=";
      name = "stm32_stm32mp1-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/stm32/stm32mp1/packages/Packages";
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
