# 25.12.0-rc1 qualcommax/ipq60xx
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/qualcommax/ipq60xx/";
  sha256sums = {
    hash = "sha256-sAkabSKN7XzZc7/Ri6CmtipxSuRhrqQOY+5y88z/ugg=";
    name = "qualcommax_ipq60xx-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/qualcommax/ipq60xx/sha256sums";
  };
  imagebuilder = {
    sha256 = "cc09baf2beda975ce9927b96344cf24e415b67f499907ffd6c0bbf654d28f304";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-qualcommax-ipq60xx.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-bBbu0TbG/CbhvNsOXnfyh9OW1RSB+mi7sZFKYnrXzWs=";
    name = "qualcommax_ipq60xx-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/qualcommax/ipq60xx/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "0ca8e90c8f66217c019a184e53b67af4";
      version = "6.12.74";
    };
    default_packages = [
      "apk-openssl"
      "ath11k-firmware-ipq6018"
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
      "kmod-ath11k-ahb"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
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
    kmods_target = "6.12.74-1-0ca8e90c8f66217c019a184e53b67af4";
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
          "ipq-wifi-tplink_eap623-outdoor-hd-v1"
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
  kmods."6.12.74-1-0ca8e90c8f66217c019a184e53b67af4" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/qualcommax/ipq60xx/kmods/6.12.74-1-0ca8e90c8f66217c019a184e53b67af4/";
    sourceInfo = {
      hash = "sha256-CXCm4jXN4IRr7DIr4s4LsDjS42ilnRWxrfFg/E33/Dw=";
      name = "kmods-qualcommax_ipq60xx-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/qualcommax/ipq60xx/kmods/6.12.74-1-0ca8e90c8f66217c019a184e53b67af4/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/qualcommax/ipq60xx/packages/";
    sourceInfo = {
      hash = "sha256-FF6oSWHibyreEPWzQ3LBO3alNg9swzgtVDpG78dTXzE=";
      name = "qualcommax_ipq60xx-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/qualcommax/ipq60xx/packages/packages.adb";
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
