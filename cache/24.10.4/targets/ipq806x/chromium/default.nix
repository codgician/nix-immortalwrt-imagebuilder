# 24.10.4 ipq806x/chromium
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/ipq806x/chromium/";
  sha256sums = {
    hash = "sha256-FFE4zgN2Nqqeyg/p2/qwpaB+YkRhGXtD8pyNuapIaF0=";
    name = "ipq806x_chromium-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/ipq806x/chromium/sha256sums";
  };
  imagebuilder = {
    sha256 = "6c50f5f6f05d2cceee767768f570a21c18d21c50b5e720bb254bc161ca59e808";
    filename = "immortalwrt-imagebuilder-24.10.4-ipq806x-chromium.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-rB0DgEpIeRoId4zJHRcM5RCzF95j57YPJVx6/CaCiMk=";
    name = "ipq806x_chromium-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/ipq806x/chromium/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a15_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "2b8b562df44f4e41f4f491902ad02c48";
      version = "6.6.110";
    };
    default_packages = [
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
      "kmod-ata-ahci"
      "kmod-ata-ahci-platform"
      "kmod-ath10k-ct"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-phy-qcom-ipq806x-usb"
      "kmod-usb-dwc3-qcom"
      "kmod-usb-ledtrig-usbport"
      "kmod-usb-ohci"
      "kmod-usb2"
      "kmod-usb3"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-cpufreq"
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
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "6.6.110-1-2b8b562df44f4e41f4f491902ad02c48";
    profiles = {
      asus_onhub = {
        device_packages = [
          "ath10k-firmware-qca988x-ct"
          "e2fsprogs"
          "kmod-fs-ext4"
          "losetup"
          "partx-utils"
          "mkf2fs"
          "kmod-fs-f2fs"
          "ucode"
          "kmod-google-firmware"
          "kmod-tpm-i2c-infineon"
          "kmod-sound-soc-ipq8064-storm"
          "kmod-usb-storage"
          "kmod-ramoops"
        ];
      };
      tplink_onhub = {
        device_packages = [
          "ath10k-firmware-qca988x-ct"
          "e2fsprogs"
          "kmod-fs-ext4"
          "losetup"
          "partx-utils"
          "mkf2fs"
          "kmod-fs-f2fs"
          "ucode"
          "kmod-google-firmware"
          "kmod-tpm-i2c-infineon"
          "kmod-sound-soc-ipq8064-storm"
          "kmod-usb-storage"
          "kmod-ramoops"
        ];
      };
    };
  };
  kmods."6.6.110-1-2b8b562df44f4e41f4f491902ad02c48" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/ipq806x/chromium/kmods/6.6.110-1-2b8b562df44f4e41f4f491902ad02c48/";
    sourceInfo = {
      hash = "sha256-OZ6zv0mlyNoQq+8hgbet0PIm4mwc1LB9zm+Yk+AdxfU=";
      name = "kmods-ipq806x_chromium-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/ipq806x/chromium/kmods/6.6.110-1-2b8b562df44f4e41f4f491902ad02c48/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/ipq806x/chromium/packages/";
    sourceInfo = {
      hash = "sha256-QGEpANqGTfKQmap002n5TbUa6Q9NcDPIx833SOOO+4s=";
      name = "ipq806x_chromium-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/ipq806x/chromium/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a15_neon-vfpv4";
  feeds = import ./../../../packages/arm_cortex-a15_neon-vfpv4.nix;
}
