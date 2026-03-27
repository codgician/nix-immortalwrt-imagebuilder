# snapshot qualcommax/ipq60xx
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/qualcommax/ipq60xx/";
  sha256sums = {
    hash = "sha256-dSFtnT4uTT6W9pjxwFUff2IBJ5HmeBAOqJlNnGwky9I=";
    name = "qualcommax_ipq60xx-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/qualcommax/ipq60xx/sha256sums";
  };
  imagebuilder = {
    sha256 = "9a6ac30a23c00ecaeab526ce05f37f9206f08fc0e746fdb4376be75e3a15ddeb";
    filename = "immortalwrt-imagebuilder-qualcommax-ipq60xx.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-OprPodRkkWuKHRlIgFpfnJg0UzRqEE/58YHs19/kT7E=";
    name = "qualcommax_ipq60xx-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/qualcommax/ipq60xx/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "ddaf4cbd24e7b8dd27fd42054531a6f8";
      version = "6.12.77";
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
    kmods_target = "6.12.77-1-ddaf4cbd24e7b8dd27fd42054531a6f8";
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
      jdcloud_re-cs-02 = {
        device_packages = [
          "ath11k-firmware-qcn9074"
          "ipq-wifi-jdcloud_re-cs-02"
          "kmod-ath11k-pci"
        ];
      };
      jdcloud_re-cs-07 = {
        device_packages = [
          "-ath11k-firmware-ipq6018"
          "-kmod-ath11k-ahb"
          "-wpad-openssl"
        ];
      };
      jdcloud_re-ss-01 = {
        device_packages = [ "ipq-wifi-jdcloud_re-ss-01" ];
      };
      link_nn6000-v1 = {
        device_packages = [
          "ipq-wifi-link_nn6000"
          "kmod-fs-f2fs"
          "f2fs-tools"
        ];
      };
      link_nn6000-v2 = {
        device_packages = [
          "ipq-wifi-link_nn6000"
          "kmod-fs-f2fs"
          "f2fs-tools"
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
      netgear_rbr350 = {
        device_packages = [ "ipq-wifi-netgear_rbk350" ];
      };
      netgear_rbs350 = {
        device_packages = [ "ipq-wifi-netgear_rbk350" ];
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
        device_packages = [
          "kmod-phy-realtek"
          "ipq-wifi-tplink_eap610-outdoor"
        ];
      };
      tplink_eap620-hd-v3 = {
        device_packages = [ "ipq-wifi-tplink_eap620-hd-v3" ];
      };
      tplink_eap623-outdoor-hd-v1 = {
        device_packages = [
          "kmod-phy-realtek"
          "ipq-wifi-tplink_eap623-outdoor-hd-v1"
        ];
      };
      tplink_eap625-outdoor-hd-v1 = {
        device_packages = [
          "kmod-phy-realtek"
          "ipq-wifi-tplink_eap625-outdoor-hd-v1"
        ];
      };
      yuncore_fap650 = {
        device_packages = [ "ipq-wifi-yuncore_fap650" ];
      };
    };
  };
  kmods."6.12.77-1-ddaf4cbd24e7b8dd27fd42054531a6f8" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/qualcommax/ipq60xx/kmods/6.12.77-1-ddaf4cbd24e7b8dd27fd42054531a6f8/";
    sourceInfo = {
      hash = "sha256-Q6GLrPhY8kW8aG/l2vlsUOQ8GodM2qWv79eunn4s/Og=";
      name = "kmods-qualcommax_ipq60xx-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/qualcommax/ipq60xx/kmods/6.12.77-1-ddaf4cbd24e7b8dd27fd42054531a6f8/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/qualcommax/ipq60xx/packages/";
    sourceInfo = {
      hash = "sha256-95li/LR/m7u9MG0gSAc9L9TnDz3vPArsHxxqloKe2Hw=";
      name = "qualcommax_ipq60xx-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/qualcommax/ipq60xx/packages/packages.adb";
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
