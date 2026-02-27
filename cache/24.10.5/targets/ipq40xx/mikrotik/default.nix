# 24.10.5 ipq40xx/mikrotik
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ipq40xx/mikrotik/";
  sha256sums = {
    hash = "sha256-Q7C9JBJkx5mDKHz4dVR11bmTF3LllDcL0qQCs6I2mxc=";
    name = "ipq40xx_mikrotik-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ipq40xx/mikrotik/sha256sums";
  };
  imagebuilder = {
    sha256 = "ee066c005aec4ed8899c8ecdf891a9b68fdd080e27f7fce4b7d554a56f0c4301";
    filename = "immortalwrt-imagebuilder-24.10.5-ipq40xx-mikrotik.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-+NAu2YRxTqSySMjISqsLtJG63obHRY67AegdpKsygng=";
    name = "ipq40xx_mikrotik-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ipq40xx/mikrotik/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "4d2350b4f9e7c605f8d79dc5e6ff8e25";
      version = "6.6.122";
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
    kmods_target = "6.6.122-1-4d2350b4f9e7c605f8d79dc5e6ff8e25";
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
  kmods."6.6.122-1-4d2350b4f9e7c605f8d79dc5e6ff8e25" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ipq40xx/mikrotik/kmods/6.6.122-1-4d2350b4f9e7c605f8d79dc5e6ff8e25/";
    sourceInfo = {
      hash = "sha256-LNDwlj/VRVLHJZL/vUhSYYJ+Tbg2vGvujTdJ1Av8WQE=";
      name = "kmods-ipq40xx_mikrotik-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ipq40xx/mikrotik/kmods/6.6.122-1-4d2350b4f9e7c605f8d79dc5e6ff8e25/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ipq40xx/mikrotik/packages/";
    sourceInfo = {
      hash = "sha256-J5YQrwx+MSXodaz81QlR12ni7h1qHMzUV/sHMYVxb4U=";
      name = "ipq40xx_mikrotik-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ipq40xx/mikrotik/packages/Packages";
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
