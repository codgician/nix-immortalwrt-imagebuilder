# snapshot ath79/tiny
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ath79/tiny/";
  sha256sums = {
    hash = "sha256-hcjEpirwq/OpwoSHwMtkj6kde9lu/wCE7AESXoxE/Ew=";
    name = "ath79_tiny-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ath79/tiny/sha256sums";
  };
  imagebuilder = {
    sha256 = "8aff4add07adf06ccc5326f77d81132bfc50458f2e4105b4542c4b6b581df410";
    filename = "immortalwrt-imagebuilder-ath79-tiny.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-sO8CNGoKLae43pSGkrJQoAF0rzl6T5PiQuTy/MxM6jY=";
    name = "ath79_tiny-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ath79/tiny/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "0339c291be2848b1e6014fded62baf1c";
      version = "6.12.94";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-ath9k"
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
      "swconfig"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "6.12.94-1-0339c291be2848b1e6014fded62baf1c";
    profiles = {
      dlink_dap-1720-a1 = {
        device_packages = [
          "-swconfig"
          "ath10k-firmware-qca988x-ct"
          "kmod-ath10k-ct-smallbuffers"
          "rssileds"
        ];
      };
      dlink_dir-859-a1 = {
        device_packages = [
          "ath10k-firmware-qca988x-ct"
          "kmod-ath10k-ct-smallbuffers"
        ];
      };
      dlink_dir-859-a3 = {
        device_packages = [
          "ath10k-firmware-qca988x-ct"
          "kmod-ath10k-ct-smallbuffers"
        ];
      };
      dlink_dir-869-a1 = {
        device_packages = [
          "ath10k-firmware-qca988x-ct"
          "kmod-ath10k-ct-smallbuffers"
        ];
      };
      nec_wf1200hp = {
        device_packages = [
          "kmod-ath10k-ct-smallbuffers"
          "ath10k-firmware-qca988x-ct"
          "-uboot-envtools"
        ];
      };
      nec_wf1200hp2 = {
        device_packages = [
          "kmod-ath10k-ct-smallbuffers"
          "ath10k-firmware-qca988x-ct"
          "-uboot-envtools"
        ];
      };
      nec_wg600hp = {
        device_packages = [
          "kmod-usb2"
          "-uboot-envtools"
        ];
      };
      nec_wr8750n = {
        device_packages = [
          "kmod-usb2"
          "-uboot-envtools"
        ];
      };
      nec_wr9500n = {
        device_packages = [
          "kmod-usb2"
          "-uboot-envtools"
        ];
      };
      sitecom_wlr-7100 = {
        device_packages = [
          "ath10k-firmware-qca988x-ct"
          "kmod-ath10k-ct-smallbuffers"
          "kmod-usb2"
        ];
      };
      tplink_re355-v1 = {
        device_packages = [
          "kmod-ath10k-ct-smallbuffers"
          "ath10k-firmware-qca988x-ct"
        ];
      };
      tplink_re450-v1 = {
        device_packages = [
          "kmod-ath10k-ct-smallbuffers"
          "ath10k-firmware-qca988x-ct"
        ];
      };
      tplink_re450-v2 = {
        device_packages = [
          "kmod-ath10k-ct-smallbuffers"
          "ath10k-firmware-qca988x-ct"
        ];
      };
      tplink_tl-wr902ac-v1 = {
        device_packages = [
          "kmod-usb2"
          "kmod-usb-ledtrig-usbport"
          "kmod-ath10k-ct-smallbuffers"
          "ath10k-firmware-qca9887-ct"
          "-swconfig"
          "-uboot-envtools"
        ];
      };
    };
  };
  kmods."6.12.94-1-0339c291be2848b1e6014fded62baf1c" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ath79/tiny/kmods/6.12.94-1-0339c291be2848b1e6014fded62baf1c/";
    sourceInfo = {
      hash = "sha256-kGcxw4Mx8ZNyugh4JjCiZOSBUbD0m5RBZzL/j/Bt6bU=";
      name = "kmods-ath79_tiny-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/ath79/tiny/kmods/6.12.94-1-0339c291be2848b1e6014fded62baf1c/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ath79/tiny/packages/";
    sourceInfo = {
      hash = "sha256-+YqRDgsd1m7l6BdN1t8d64wswsqMFPW8rksx8NlzY5E=";
      name = "ath79_tiny-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/ath79/tiny/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_24kc";
  feeds = import ./../../../packages/mips_24kc.nix;
}
