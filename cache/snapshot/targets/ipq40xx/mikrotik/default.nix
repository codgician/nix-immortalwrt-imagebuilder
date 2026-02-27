# snapshot ipq40xx/mikrotik
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ipq40xx/mikrotik/";
  sha256sums = {
    hash = "sha256-kYb0IiGc/gDPJGUh40Z2gXe4wDoEpZfWQkVLB/KoRaQ=";
    name = "ipq40xx_mikrotik-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ipq40xx/mikrotik/sha256sums";
  };
  imagebuilder = {
    sha256 = "eff80a9aa0aec2c564265f7193ac9946a064fbef3a2f5f7dea40a4727adb73a7";
    filename = "immortalwrt-imagebuilder-ipq40xx-mikrotik.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-q1V8m85taSjrWvn6iP+UReZGZPMqpvP7v1PlVcTwPS8=";
    name = "ipq40xx_mikrotik-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ipq40xx/mikrotik/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "194f5146b5ef18c7d6103200ed512a1a";
      version = "6.12.67";
    };
    default_packages = [
      "apk-openssl"
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
    kmods_target = "6.12.67-1-194f5146b5ef18c7d6103200ed512a1a";
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
  kmods."6.12.67-1-194f5146b5ef18c7d6103200ed512a1a" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ipq40xx/mikrotik/kmods/6.12.67-1-194f5146b5ef18c7d6103200ed512a1a/";
    sourceInfo = {
      hash = "sha256-6LOCDA4EVN1irg0mcvvXg30QDlOUAouloPVx+jbxRyE=";
      name = "kmods-ipq40xx_mikrotik-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ipq40xx/mikrotik/kmods/6.12.67-1-194f5146b5ef18c7d6103200ed512a1a/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ipq40xx/mikrotik/packages/";
    sourceInfo = {
      hash = "sha256-vzB4TLWsTbmytMDIWUdv/xZ7LWLDJh+Drvr5CIHA7+Q=";
      name = "ipq40xx_mikrotik-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ipq40xx/mikrotik/packages/packages.adb";
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
