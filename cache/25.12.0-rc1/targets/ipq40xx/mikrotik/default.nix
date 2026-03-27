# 25.12.0-rc1 ipq40xx/mikrotik
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ipq40xx/mikrotik/";
  sha256sums = {
    hash = "sha256-53qUWsfe3Fa8itp70o90Moi/NT42i5Qn0P2r5lAitjA=";
    name = "ipq40xx_mikrotik-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ipq40xx/mikrotik/sha256sums";
  };
  imagebuilder = {
    sha256 = "3f5a22ffb629e6891733c189e5d0d47275793b0d2584de194406695a8c328e06";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-ipq40xx-mikrotik.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-7h5lHc13fT9PITQdW3OL1+McSJ7jdIKbKIYzptmF4kA=";
    name = "ipq40xx_mikrotik-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ipq40xx/mikrotik/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "8946870949958e373ed5ad389ac0674d";
      version = "6.12.74";
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
    kmods_target = "6.12.74-1-8946870949958e373ed5ad389ac0674d";
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
  kmods."6.12.74-1-8946870949958e373ed5ad389ac0674d" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ipq40xx/mikrotik/kmods/6.12.74-1-8946870949958e373ed5ad389ac0674d/";
    sourceInfo = {
      hash = "sha256-OV/dCx2tZCk8Sjwyeew4gvGb6jZlD1j8iPNIwJeErNE=";
      name = "kmods-ipq40xx_mikrotik-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ipq40xx/mikrotik/kmods/6.12.74-1-8946870949958e373ed5ad389ac0674d/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ipq40xx/mikrotik/packages/";
    sourceInfo = {
      hash = "sha256-Yznyq8F3uQJQ+5fajtUq7qijqkvoft+xtrrm7k8y5PQ=";
      name = "ipq40xx_mikrotik-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/ipq40xx/mikrotik/packages/packages.adb";
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
