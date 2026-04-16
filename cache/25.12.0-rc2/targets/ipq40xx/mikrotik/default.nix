# 25.12.0-rc2 ipq40xx/mikrotik
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/ipq40xx/mikrotik/";
  sha256sums = {
    hash = "sha256-2GiC/ZEMasU+U8dn5b8ZOITZKLcvbHkT/PJhuWOAFU8=";
    name = "ipq40xx_mikrotik-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/ipq40xx/mikrotik/sha256sums";
  };
  imagebuilder = {
    sha256 = "ead02b96ef6ae02ecc23e004eaeeb65e13842f0a0b9993262bcfe6d3effe4c3c";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-ipq40xx-mikrotik.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-tbzhoM9DvOoKv9kz4EMbdxJvE8LJUXyiDxvB8755wdU=";
    name = "ipq40xx_mikrotik-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/ipq40xx/mikrotik/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "2d46c51296efc15bbb22873a84ba1f57";
      version = "6.12.79";
    };
    default_packages = [
      "apk-openssl"
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
    kmods_target = "6.12.79-1-2d46c51296efc15bbb22873a84ba1f57";
    profiles = {
      mikrotik_cap-ac = {
        device_packages = [
          "-kmod-ath10k-ct"
          "kmod-ath10k-ct-smallbuffers"
        ];
      };
      mikrotik_hap-ac2 = {
        device_packages = [
          "-kmod-ath10k-ct"
          "kmod-ath10k-ct-smallbuffers"
        ];
      };
      mikrotik_hap-ac3 = {
        device_packages = [ "kmod-ledtrig-gpio" ];
      };
      mikrotik_hap-ac3-lte6-kit = {
        device_packages = [
          "kmod-ledtrig-gpio"
          "kmod-usb-acm"
          "kmod-usb-net-rndis"
        ];
      };
      mikrotik_lhgg-60ad = {
        device_packages = [
          "-kmod-ath10k-ct"
          "-ath10k-firmware-qca4019-ct"
          "kmod-wil6210"
        ];
      };
      mikrotik_sxtsq-5-ac = {
        device_packages = [ "rssileds" ];
      };
      mikrotik_wap-ac = {
        device_packages = [
          "-kmod-ath10k-ct"
          "kmod-ath10k-ct-smallbuffers"
        ];
      };
      mikrotik_wap-ac-lte = {
        device_packages = [
          "kmod-usb-net-qmi-wwan"
          "kmod-usb-serial-option"
          "uqmi"
          "kmod-usb-acm"
          "kmod-usb-net-rndis"
        ];
      };
      mikrotik_wap-r-ac = {
        device_packages = [
          "kmod-usb-net-qmi-wwan"
          "kmod-usb-serial-option"
          "uqmi"
          "kmod-usb-acm"
          "kmod-usb-net-rndis"
        ];
      };
    };
  };
  kmods."6.12.79-1-2d46c51296efc15bbb22873a84ba1f57" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/ipq40xx/mikrotik/kmods/6.12.79-1-2d46c51296efc15bbb22873a84ba1f57/";
    sourceInfo = {
      hash = "sha256-IUewWd6w0sp6KLFKsuk7G0iUnQ52x+m63X3KD8c1LMQ=";
      name = "kmods-ipq40xx_mikrotik-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/ipq40xx/mikrotik/kmods/6.12.79-1-2d46c51296efc15bbb22873a84ba1f57/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/ipq40xx/mikrotik/packages/";
    sourceInfo = {
      hash = "sha256-oP8fInA5if3pDg4c6jABVITZsGWRf6BCECUSjv5VWDY=";
      name = "ipq40xx_mikrotik-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/ipq40xx/mikrotik/packages/packages.adb";
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
