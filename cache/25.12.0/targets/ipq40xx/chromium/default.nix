# 25.12.0 ipq40xx/chromium
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/ipq40xx/chromium/";
  sha256sums = {
    hash = "sha256-D7+EWx7NNoUAjksq0s7skp+haKkoxURRCxZsULuaVqM=";
    name = "ipq40xx_chromium-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/ipq40xx/chromium/sha256sums";
  };
  imagebuilder = {
    sha256 = "74437c82672e53d966071b4cf4aefc83667b123472053a64148aeffabc850809";
    filename = "immortalwrt-imagebuilder-25.12.0-ipq40xx-chromium.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-AJD5/q8Y81xAf+1GwDC3/eatfscvgfagoCbTxIlD+NI=";
    name = "ipq40xx_chromium-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/ipq40xx/chromium/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "d053beff16d75275eb574a81550231c0";
      version = "6.12.87";
    };
    default_packages = [
      "apk-openssl"
      "ath10k-board-qca4019"
      "ath10k-firmware-qca4019-ct"
      "autocore"
      "automount"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-ath10k-ct"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "kmod-usb-dwc3"
      "kmod-usb-dwc3-qcom"
      "kmod-usb3"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-cpufreq"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "6.12.87-1-d053beff16d75275eb574a81550231c0";
    profiles = {
      google_wifi = {
        device_packages = [
          "partx-utils"
          "mkf2fs"
          "e2fsprogs"
          "kmod-fs-ext4"
          "kmod-fs-f2fs"
          "kmod-google-firmware"
          "kmod-ramoops"
        ];
      };
    };
  };
  kmods."6.12.87-1-d053beff16d75275eb574a81550231c0" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/ipq40xx/chromium/kmods/6.12.87-1-d053beff16d75275eb574a81550231c0/";
    sourceInfo = {
      hash = "sha256-HoL+5llx06or6ghrw2VoF2GpFRhSod8cqxgCxJmuIFs=";
      name = "kmods-ipq40xx_chromium-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/ipq40xx/chromium/kmods/6.12.87-1-d053beff16d75275eb574a81550231c0/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/ipq40xx/chromium/packages/";
    sourceInfo = {
      hash = "sha256-KMb5zFckomlSl9henIY8Bn1BmCkFU9KeTzmWGGxwblY=";
      name = "ipq40xx_chromium-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/ipq40xx/chromium/packages/packages.adb";
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
