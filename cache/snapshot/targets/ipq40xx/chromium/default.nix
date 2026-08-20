# snapshot ipq40xx/chromium
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/chromium/";
  sha256sums = {
    hash = "sha256-L7lb7ZXHteIo90k9hXERhXcLn4OyDsHQhbzOh2VR8es=";
    name = "ipq40xx_chromium-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/chromium/sha256sums";
  };
  imagebuilder = {
    sha256 = "90b71133e9f1e21a551899baaf1f7b2c47f1770d60f5a8f983ae8c145fb5b3e3";
    filename = "immortalwrt-imagebuilder-ipq40xx-chromium.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-/p/ykuoxpGsFFKoA9dJyjer2SyhRGJTox30Ls4CmTvk=";
    name = "ipq40xx_chromium-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/chromium/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "9fc8b695cef9f7f8ce4654132133942b";
      version = "6.18.44";
    };
    default_packages = [
      "apk-openssl"
      "ath10k-board-qca4019"
      "ath10k-firmware-qca4019-ct"
      "automount"
      "base-files"
      "ca-bundle"
      "cpufreq"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-ath10k-ct"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nft-offload"
      "kmod-usb-dwc3"
      "kmod-usb-dwc3-qcom"
      "kmod-usb3"
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
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "6.18.44-1-9fc8b695cef9f7f8ce4654132133942b";
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
  kmods."6.18.44-1-9fc8b695cef9f7f8ce4654132133942b" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/chromium/kmods/6.18.44-1-9fc8b695cef9f7f8ce4654132133942b/";
    sourceInfo = {
      hash = "sha256-20BgIIXwO6VTp8WsNgcV2FrN6NDG6wsx/5m8dA+QN3U=";
      name = "kmods-ipq40xx_chromium-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/chromium/kmods/6.18.44-1-9fc8b695cef9f7f8ce4654132133942b/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/chromium/packages/";
    sourceInfo = {
      hash = "sha256-aGhlzcmUKAnS7CwpZDl/Xmfcnc0UFwWvvy4StnphoM8=";
      name = "ipq40xx_chromium-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/ipq40xx/chromium/packages/packages.adb";
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
