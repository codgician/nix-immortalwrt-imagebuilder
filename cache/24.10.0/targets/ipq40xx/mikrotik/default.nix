# 24.10.0 ipq40xx/mikrotik
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ipq40xx/mikrotik/";
  sha256sums = {
    hash = "sha256-7Lk0pl8d5wyzDRedrUTOxDITgxVmRS/tpJGwJd4GsnQ=";
    name = "ipq40xx_mikrotik-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ipq40xx/mikrotik/sha256sums";
  };
  imagebuilder = {
    sha256 = "481de3fd6f3e251a297d8a76a602aaf8f3fd08359b1bb46d39beb9aeac5284f3";
    filename = "immortalwrt-imagebuilder-24.10.0-ipq40xx-mikrotik.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-b2H0CEcJf6oeLmSAQrA+CcRTK9+wF+ACPoSFd1GUtsg=";
    name = "ipq40xx_mikrotik-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ipq40xx/mikrotik/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "3583ba0dd6baf6903ff3c88aa70e0693";
      version = "6.6.73";
    };
    default_packages = [
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
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-usb-dwc3"
      "kmod-usb-dwc3-qcom"
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
    kmods_target = "6.6.73-1-3583ba0dd6baf6903ff3c88aa70e0693";
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
  kmods."6.6.73-1-3583ba0dd6baf6903ff3c88aa70e0693" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ipq40xx/mikrotik/kmods/6.6.73-1-3583ba0dd6baf6903ff3c88aa70e0693/";
    sourceInfo = {
      hash = "sha256-BYlJ/fZNSPZ30bgavfnKjTKlIw53O03el0Sp6qKaV5o=";
      name = "kmods-ipq40xx_mikrotik-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ipq40xx/mikrotik/kmods/6.6.73-1-3583ba0dd6baf6903ff3c88aa70e0693/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ipq40xx/mikrotik/packages/";
    sourceInfo = {
      hash = "sha256-YTB/H+e2eI3DftZq3bKq2NgGwxJL8jFLMgExQiLnaEo=";
      name = "ipq40xx_mikrotik-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ipq40xx/mikrotik/packages/Packages";
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
