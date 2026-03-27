# 24.10.0 stm32/stm32mp1
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/stm32/stm32mp1/";
  sha256sums = {
    hash = "sha256-UN0w7VCALWZvA1To4EKc/Fl8fJhPX82rRgs65HVlYRA=";
    name = "stm32_stm32mp1-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/stm32/stm32mp1/sha256sums";
  };
  imagebuilder = {
    sha256 = "4eda60e71aa385998c4938e1d581b0c66cf5b101601bec283be25558e1807318";
    filename = "immortalwrt-imagebuilder-24.10.0-stm32-stm32mp1.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Tmi9ggxOQAq9Dcno3WMqbGmEOhLSiMpPd2ncPQG8UEg=";
    name = "stm32_stm32mp1-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/stm32/stm32mp1/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "03d817ea080eb1486105aa5597d4270a";
      version = "6.6.73";
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
    kmods_target = "6.6.73-1-03d817ea080eb1486105aa5597d4270a";
    profiles = {
      stm32mp135f-dk = {
        device_packages = [
          "kmod-brcmfmac"
          "murata-firmware-43430-sdio"
          "murata-nvram-43430-sdio"
          "wpad-basic-mbedtls"
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
  kmods."6.6.73-1-03d817ea080eb1486105aa5597d4270a" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/stm32/stm32mp1/kmods/6.6.73-1-03d817ea080eb1486105aa5597d4270a/";
    sourceInfo = {
      hash = "sha256-1TH0HTjx0J9Oh8+zpxlisPzgYp6pcQ5WIWgAYmD0PY0=";
      name = "kmods-stm32_stm32mp1-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/stm32/stm32mp1/kmods/6.6.73-1-03d817ea080eb1486105aa5597d4270a/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/stm32/stm32mp1/packages/";
    sourceInfo = {
      hash = "sha256-mDKonc2nZzc+hLZsvaoMjBPG9GIqmNU7yT8TfWGdtD4=";
      name = "stm32_stm32mp1-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/stm32/stm32mp1/packages/Packages";
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
