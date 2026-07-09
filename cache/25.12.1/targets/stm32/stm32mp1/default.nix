# 25.12.1 stm32/stm32mp1
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/stm32/stm32mp1/";
  sha256sums = {
    hash = "sha256-SlkprjJeJbDlpUlXhsX3h363Ua2dQrJK2fuEEUWbeUA=";
    name = "stm32_stm32mp1-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/stm32/stm32mp1/sha256sums";
  };
  imagebuilder = {
    sha256 = "be827917d64b8b71392c277c6bf4b6e9362becdad4358c6f433ff3df489e23a5";
    filename = "immortalwrt-imagebuilder-25.12.1-stm32-stm32mp1.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-0puY4kKhayOaCN5qNtY3oFbcaecbGUT3hVEUHUblGas=";
    name = "stm32_stm32mp1-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/stm32/stm32mp1/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "5fd728765516c293a64195a6659f564a";
      version = "6.12.94";
    };
    default_packages = [
      "apk-openssl"
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
      "kmod-nft-offload"
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
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.94-1-5fd728765516c293a64195a6659f564a";
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
  kmods."6.12.94-1-5fd728765516c293a64195a6659f564a" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/stm32/stm32mp1/kmods/6.12.94-1-5fd728765516c293a64195a6659f564a/";
    sourceInfo = {
      hash = "sha256-5m45/p0L6iRO7gG5swjy3dlOL+xEfU7RcDptBrRUuY4=";
      name = "kmods-stm32_stm32mp1-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/stm32/stm32mp1/kmods/6.12.94-1-5fd728765516c293a64195a6659f564a/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/stm32/stm32mp1/packages/";
    sourceInfo = {
      hash = "sha256-zjq6JzcH0F1TBqREf5JbEb0hwo/0APyeIpfr2J9p2lQ=";
      name = "stm32_stm32mp1-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/stm32/stm32mp1/packages/packages.adb";
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
