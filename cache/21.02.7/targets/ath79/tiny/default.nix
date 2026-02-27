# 21.02.7 ath79/tiny
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ath79/tiny/";
  sha256sums = {
    hash = "sha256-TKKGqUHVjqk/m9rhspTlYEizcBEat9a5borSzn5Xa3c=";
    name = "ath79_tiny-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ath79/tiny/sha256sums";
  };
  imagebuilder = {
    sha256 = "d48d53f569b3ab681238a79f4eb688882556c1850ed6aeb63c7e7ec246e03be2";
    filename = "immortalwrt-imagebuilder-21.02.7-ath79-tiny.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-Lx+cBrMhURbn1y1gYC99tfQc45bFvtMYNyNYYeH6yQw=";
    name = "ath79_tiny-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ath79/tiny/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = null;
    default_packages = [
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
      "kmod-ath9k"
      "kmod-gpio-button-hotplug"
      "kmod-ipt-raw"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
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
      "wpad-basic-openssl"
    ];
    kmods_target = "null-null-null";
    profiles = {
      engenius_eap350-v1 = {
        device_packages = [ ];
      };
      engenius_ecb350-v1 = {
        device_packages = [ ];
      };
      engenius_enh202-v1 = {
        device_packages = [ "rssileds" ];
      };
      pqi_air-pen = {
        device_packages = [ "kmod-usb2" ];
      };
      tplink_tl-wpa8630p-v2-int = {
        device_packages = [
          "kmod-ath10k-ct"
          "ath10k-firmware-qca9888-ct"
        ];
      };
      "tplink_tl-wpa8630p-v2.0-eu" = {
        device_packages = [
          "kmod-ath10k-ct"
          "ath10k-firmware-qca9888-ct"
        ];
      };
      "tplink_tl-wpa8630p-v2.1-eu" = {
        device_packages = [
          "kmod-ath10k-ct"
          "ath10k-firmware-qca9888-ct"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ath79/tiny/packages/";
    sourceInfo = {
      hash = "sha256-wULkWlGx/lbEturfwtkHS5NQA6L0/jBOIQSfQu1j92E=";
      name = "ath79_tiny-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ath79/tiny/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_24kc";
  feeds = import ./../../../packages/mips_24kc.nix;
}
