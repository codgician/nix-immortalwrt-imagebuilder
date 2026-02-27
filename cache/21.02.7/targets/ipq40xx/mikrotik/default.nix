# 21.02.7 ipq40xx/mikrotik
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ipq40xx/mikrotik/";
  sha256sums = {
    hash = "sha256-uFJ8uEwGkye5kRDTaqpV010iVCRZRqF0nSkGza5otZs=";
    name = "ipq40xx_mikrotik-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ipq40xx/mikrotik/sha256sums";
  };
  imagebuilder = {
    sha256 = "f2ee33a3da7fa131063a8eb0266f35d11d0df80e016128f900e66a2829ff9ec1";
    filename = "immortalwrt-imagebuilder-21.02.7-ipq40xx-mikrotik.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-/XQIWoJYISSmUb82DzFHZYG0lX6C7+4pqzZ8TTHp8I8=";
    name = "ipq40xx_mikrotik-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ipq40xx/mikrotik/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = null;
    default_packages = [
      "ath10k-firmware-qca4019-ct"
      "autocore-arm"
      "automount"
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall"
      "fstools"
      "iptables"
      "ipv6helper"
      "kmod-ath10k-ct"
      "kmod-gpio-button-hotplug"
      "kmod-ipt-raw"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-usb-dwc3"
      "kmod-usb-dwc3-qcom"
      "kmod-usb3"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-cpufreq"
      "luci-app-filetransfer"
      "luci-app-turboacc"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "swconfig"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "null-null-null";
    profiles = {
      mikrotik_hap-ac2 = {
        device_packages = [
          "ipq-wifi-mikrotik_hap-ac2"
          "-kmod-ath10k-ct"
          "kmod-ath10k-ct-smallbuffers"
        ];
      };
      mikrotik_sxtsq-5-ac = {
        device_packages = [
          "ipq-wifi-mikrotik_sxtsq-5-ac"
          "rssileds"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ipq40xx/mikrotik/packages/";
    sourceInfo = {
      hash = "sha256-Oji9RKCjUMYYAavnhyVOs7EOtHsv5mMxgEXXfjTmW+E=";
      name = "ipq40xx_mikrotik-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ipq40xx/mikrotik/packages/Packages";
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
