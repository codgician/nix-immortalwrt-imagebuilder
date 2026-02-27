# 23.05.7 ipq807x/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/ipq807x/generic/";
  sha256sums = {
    hash = "sha256-ugJVMNsbj4f5icoa7akXoaP4cVd/AdunlJoKUy8XiuI=";
    name = "ipq807x_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/ipq807x/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "293c1590b92bededed62c780f1b557aed7f64a152f1f16a5820b0935f871e434";
    filename = "immortalwrt-imagebuilder-23.05.7-ipq807x-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-/f5/qJ2CVlYO6S0WFv9fXJ5IMDaUOh2+7CTRG08pynI=";
    name = "ipq807x_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/ipq807x/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "0aaf706a940f621c3c3d4f3d6b8b8a14";
      version = "5.15.195";
    };
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
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
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
    kmods_target = "5.15.195-1-0aaf706a940f621c3c3d4f3d6b8b8a14";
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
          "mkf2fs"
          "f2fsck"
          "kmod-fs-f2fs"
          "kmod-leds-lp5562"
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
          "kmod-bluetooth"
          "kmod-hwmon-tmp103"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/ipq807x/generic/packages/";
    sourceInfo = {
      hash = "sha256-6XtnGr/Nak3Dwt35irWmJR9FhKN0bXcwhnLDIKvhPKQ=";
      name = "ipq807x_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/ipq807x/generic/packages/Packages";
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
