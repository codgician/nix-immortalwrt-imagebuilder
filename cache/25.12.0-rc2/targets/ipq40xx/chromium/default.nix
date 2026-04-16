# 25.12.0-rc2 ipq40xx/chromium
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/ipq40xx/chromium/";
  sha256sums = {
    hash = "sha256-YRJ86L+CfV6GWR8fnj1Vt2UtFe6X/NEt/JFZnBRzIT0=";
    name = "ipq40xx_chromium-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/ipq40xx/chromium/sha256sums";
  };
  imagebuilder = {
    sha256 = "a1467cf575de82022271879cc3ab8bad05055d0c478f42a49b4868c480ba9771";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-ipq40xx-chromium.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-2QlRhPy7cvN7aV6GG9mhTQup2iX9GMs5Nq6vX3b62YU=";
    name = "ipq40xx_chromium-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/ipq40xx/chromium/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "d08f4062d202d8984e513f78132e2ac9";
      version = "6.12.79";
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
    kmods_target = "6.12.79-1-d08f4062d202d8984e513f78132e2ac9";
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
  kmods."6.12.79-1-d08f4062d202d8984e513f78132e2ac9" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/ipq40xx/chromium/kmods/6.12.79-1-d08f4062d202d8984e513f78132e2ac9/";
    sourceInfo = {
      hash = "sha256-3cjvvlEqgc8iQFEHD3pdu1CMxT9eV2oVxueUHuHewI4=";
      name = "kmods-ipq40xx_chromium-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/ipq40xx/chromium/kmods/6.12.79-1-d08f4062d202d8984e513f78132e2ac9/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/ipq40xx/chromium/packages/";
    sourceInfo = {
      hash = "sha256-zn7FQGgljD6KsgNaqtmT6xVCszSFGh3ZR+DMn/SqruA=";
      name = "ipq40xx_chromium-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/ipq40xx/chromium/packages/packages.adb";
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
