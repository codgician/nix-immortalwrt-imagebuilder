# 23.05.1 ipq807x/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.1/targets/ipq807x/generic/";
  sha256sums = {
    hash = "sha256-hI6oOmkpZMcEQpC0U6EWen9Qldkw7SZaBLjfmxzhZKE=";
    name = "ipq807x_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/ipq807x/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "28ad5cf09fec2e3f636437bdac2ee0ce29fe405b08d8f5146dd70cbd6cc4b7ff";
    filename = "immortalwrt-imagebuilder-23.05.1-ipq807x-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-gHj020DN7eulFfg5XR8eowS6JVWREGBAZyOuyVTTL+I=";
    name = "ipq807x_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/ipq807x/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = null;
    default_packages = [
      "ath11k-firmware-ipq8074"
      "autocore"
      "automount"
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "ipv6helper"
      "kmod-ath11k-ahb"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-phy-aquantia"
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
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nftables"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "qca-ssdk-shell"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "null-null-null";
    profiles = {
      buffalo_wxr-5950ax12 = {
        device_packages = [ "ipq-wifi-buffalo_wxr-5950ax12" ];
      };
      dynalink_dl-wrx36 = {
        device_packages = [ "ipq-wifi-dynalink_dl-wrx36" ];
      };
      edgecore_eap102 = {
        device_packages = [ "ipq-wifi-edgecore_eap102" ];
      };
      edimax_cax1800 = {
        device_packages = [ "ipq-wifi-edimax_cax1800" ];
      };
      netgear_wax218 = {
        device_packages = [
          "kmod-spi-gpio"
          "kmod-spi-bitbang"
          "kmod-gpio-nxp-74hc164"
          "ipq-wifi-netgear_wax218"
        ];
      };
      prpl_haze = {
        device_packages = [
          "ath11k-firmware-qcn9074"
          "ipq-wifi-prpl_haze"
          "kmod-ath11k-pci"
        ];
      };
      qnap_301w = {
        device_packages = [ "ipq-wifi-qnap_301w" ];
      };
      redmi_ax6 = {
        device_packages = [
          "ipq-wifi-redmi_ax6"
          "-kmod-usb3"
          "-kmod-usb-dwc3"
          "-kmod-usb-dwc3-qcom"
          "-automount"
        ];
      };
      redmi_ax6-stock = {
        device_packages = [
          "ipq-wifi-redmi_ax6"
          "-kmod-usb3"
          "-kmod-usb-dwc3"
          "-kmod-usb-dwc3-qcom"
          "-automount"
        ];
      };
      xiaomi_ax3600 = {
        device_packages = [
          "ipq-wifi-xiaomi_ax3600"
          "kmod-ath10k-ct-smallbuffers"
          "ath10k-firmware-qca9887-ct"
          "-kmod-usb3"
          "-kmod-usb-dwc3"
          "-kmod-usb-dwc3-qcom"
          "-automount"
        ];
      };
      xiaomi_ax3600-stock = {
        device_packages = [
          "ipq-wifi-xiaomi_ax3600"
          "kmod-ath10k-ct-smallbuffers"
          "ath10k-firmware-qca9887-ct"
          "-kmod-usb3"
          "-kmod-usb-dwc3"
          "-kmod-usb-dwc3-qcom"
          "-automount"
        ];
      };
      xiaomi_ax9000 = {
        device_packages = [
          "ipq-wifi-xiaomi_ax9000"
          "kmod-ath11k-pci"
          "ath11k-firmware-qcn9074"
          "kmod-ath10k-ct"
          "ath10k-firmware-qca9887-ct"
        ];
      };
      zte_mf269 = {
        device_packages = [ "ipq-wifi-zte_mf269" ];
      };
      zyxel_nbg7815 = {
        device_packages = [
          "ipq-wifi-zyxel_nbg7815"
          "kmod-ath11k-pci"
          "kmod-hwmon-tmp103"
          "kmod-bluetooth"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.1/targets/ipq807x/generic/packages/";
    sourceInfo = {
      hash = "sha256-E2oUHmDPuBm1HJZV4fTCaDXaBUoGf7Onk4oBEMAqR2A=";
      name = "ipq807x_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/ipq807x/generic/packages/Packages";
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
