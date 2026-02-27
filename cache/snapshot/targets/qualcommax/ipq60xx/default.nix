# snapshot qualcommax/ipq60xx
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/qualcommax/ipq60xx/";
  sha256sums = {
    hash = "sha256-1UP9IWUnAL1C22Njbeb4sLBqKvCWHY5XAmeGwVfm0/A=";
    name = "qualcommax_ipq60xx-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/qualcommax/ipq60xx/sha256sums";
  };
  imagebuilder = {
    sha256 = "0a01e88c39c849491ff4f23f9147fde2cc3a5d6399fbc2b4723ed020f96a37de";
    filename = "immortalwrt-imagebuilder-qualcommax-ipq60xx.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-k3doL/JR/qJihGczJxF0V/XSn9Va7u8jowBs84v95F8=";
    name = "qualcommax_ipq60xx-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/qualcommax/ipq60xx/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "0b3fcc93bd2fab2466858f36452c615d";
      version = "6.12.63";
    };
    default_packages = [
      "apk-openssl"
      "ath11k-firmware-ipq6018"
      "automount"
      "base-files"
      "ca-bundle"
      "cpufreq"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-ath11k-ahb"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nft-offload"
      "kmod-qca-nss-dp"
      "kmod-usb-dwc3"
      "kmod-usb-dwc3-qcom"
      "kmod-usb3"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "losetup"
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
    kmods_target = "6.12.63-1-0b3fcc93bd2fab2466858f36452c615d";
    profiles = {
      "8devices_mango-dvk" = {
        device_packages = [ "ipq-wifi-8devices_mango" ];
      };
      alfa-network_ap120c-ax = {
        device_packages = [ "ipq-wifi-alfa-network_ap120c-ax" ];
      };
      cambiumnetworks_xe3-4 = {
        device_packages = [
          "ipq-wifi-cambiumnetworks_xe34"
          "ath11k-firmware-qcn9074"
          "kmod-ath11k-pci"
        ];
      };
      glinet_gl-ax1800 = {
        device_packages = [ "ipq-wifi-glinet_gl-ax1800" ];
      };
      glinet_gl-axt1800 = {
        device_packages = [
          "ipq-wifi-glinet_gl-axt1800"
          "kmod-hwmon-pwmfan"
        ];
      };
      linksys_mr7350 = {
        device_packages = [
          "ipq-wifi-linksys_mr7350"
          "kmod-leds-pca963x"
        ];
      };
      linksys_mr7500 = {
        device_packages = [
          "ipq-wifi-linksys_mr7500"
          "ath11k-firmware-qcn9074"
          "kmod-ath11k-pci"
          "kmod-leds-pwm"
          "kmod-phy-aquantia"
        ];
      };
      netgear_wax214 = {
        device_packages = [ "ipq-wifi-netgear_wax214" ];
      };
      netgear_wax610 = {
        device_packages = [ "ipq-wifi-netgear_wax610" ];
      };
      netgear_wax610y = {
        device_packages = [ "ipq-wifi-netgear_wax610y" ];
      };
      qihoo_360v6 = {
        device_packages = [ "ipq-wifi-qihoo_360v6" ];
      };
      tplink_eap610-outdoor = {
        device_packages = [ "ipq-wifi-tplink_eap610-outdoor" ];
      };
      tplink_eap623od-hd-v1 = {
        device_packages = [
          "ipq-wifi-tplink_eap623od-hd-v1"
          "kmod-phy-realtek"
        ];
      };
      tplink_eap625-outdoor-hd-v1 = {
        device_packages = [ "ipq-wifi-tplink_eap625-outdoor-hd-v1" ];
      };
      yuncore_fap650 = {
        device_packages = [ "ipq-wifi-yuncore_fap650" ];
      };
    };
  };
  kmods."6.12.63-1-0b3fcc93bd2fab2466858f36452c615d" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/qualcommax/ipq60xx/kmods/6.12.63-1-0b3fcc93bd2fab2466858f36452c615d/";
    sourceInfo = {
      hash = "sha256-5JlSDyUgjIrPNW0VHe99+mQKgfXH1A3uROOGBVlDYSo=";
      name = "kmods-qualcommax_ipq60xx-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/qualcommax/ipq60xx/kmods/6.12.63-1-0b3fcc93bd2fab2466858f36452c615d/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/qualcommax/ipq60xx/packages/";
    sourceInfo = {
      hash = "sha256-e5yRBkYRifBLDzDe9y15ETbgRD9gWiwh3NgadrAQR8M=";
      name = "qualcommax_ipq60xx-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/qualcommax/ipq60xx/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_cortex-a53";
  feeds = import ./../../../packages/aarch64_cortex-a53.nix;
}
