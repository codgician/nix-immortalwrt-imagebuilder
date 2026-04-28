# 24.10.6 stm32/stm32mp1
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/stm32/stm32mp1/";
  sha256sums = {
    hash = "sha256-1gMR8JnwJ0f7lGQ+xrHZxyOsRgjKp8AR1QWRv19xwxQ=";
    name = "stm32_stm32mp1-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/stm32/stm32mp1/sha256sums";
  };
  imagebuilder = {
    sha256 = "ee72bb7fca25bdd9049ef577d961bddf49bccbf257aea40575807cc53530155d";
    filename = "immortalwrt-imagebuilder-24.10.6-stm32-stm32mp1.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-9SJnX9YYMMh1eIeWDC0aZkPdUU9tB0wGTsH5G4F2W3A=";
    name = "stm32_stm32mp1-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/stm32/stm32mp1/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "9dd7a3f9c9dfd468bf11c8264dd9a07e";
      version = "6.6.133";
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
    kmods_target = "6.6.133-1-9dd7a3f9c9dfd468bf11c8264dd9a07e";
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
  kmods."6.6.133-1-9dd7a3f9c9dfd468bf11c8264dd9a07e" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/stm32/stm32mp1/kmods/6.6.133-1-9dd7a3f9c9dfd468bf11c8264dd9a07e/";
    sourceInfo = {
      hash = "sha256-yk/VR8vUZtuoeynhyqwUQf+FIfJ93oBlHBTJTIFpqmQ=";
      name = "kmods-stm32_stm32mp1-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/stm32/stm32mp1/kmods/6.6.133-1-9dd7a3f9c9dfd468bf11c8264dd9a07e/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/stm32/stm32mp1/packages/";
    sourceInfo = {
      hash = "sha256-1LSjhQuyOCjophd/X5tmSLXEJfyNa7g+Pr83RO0NOtA=";
      name = "stm32_stm32mp1-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/stm32/stm32mp1/packages/Packages";
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
