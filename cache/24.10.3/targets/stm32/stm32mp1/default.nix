# 24.10.3 stm32/stm32mp1
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/stm32/stm32mp1/";
  sha256sums = {
    hash = "sha256-m6a+upPfxs8vE4fDucx+A9H2BUO+qyt4b/7HpzbEAMM=";
    name = "stm32_stm32mp1-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/stm32/stm32mp1/sha256sums";
  };
  imagebuilder = {
    sha256 = "eaae5a40f9addfd4337d361174752135a507af9b87949278a2e71411f513fe47";
    filename = "immortalwrt-imagebuilder-24.10.3-stm32-stm32mp1.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-zV6m6skxQgr2+LvGqPIvnC71nyxd+Llbz3FQGrJNfOY=";
    name = "stm32_stm32mp1-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/stm32/stm32mp1/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "17e8c46fcfc599528679c749445656df";
      version = "6.6.104";
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
    kmods_target = "6.6.104-1-17e8c46fcfc599528679c749445656df";
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
  kmods."6.6.104-1-17e8c46fcfc599528679c749445656df" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/stm32/stm32mp1/kmods/6.6.104-1-17e8c46fcfc599528679c749445656df/";
    sourceInfo = {
      hash = "sha256-WOOCfX3lN8uS/2aYETiXLpOJBQ7ctQYK5gvbY3cmdqw=";
      name = "kmods-stm32_stm32mp1-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/stm32/stm32mp1/kmods/6.6.104-1-17e8c46fcfc599528679c749445656df/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/stm32/stm32mp1/packages/";
    sourceInfo = {
      hash = "sha256-qyrQRdYhtOnKKrdCzeMeBjSszL7FPpA/Q8tw4jGenaU=";
      name = "stm32_stm32mp1-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/stm32/stm32mp1/packages/Packages";
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
