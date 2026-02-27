# 21.02.7 ath79/mikrotik
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ath79/mikrotik/";
  sha256sums = {
    hash = "sha256-+ecA4blTAF6+slZSgi7ks9rHWEeA8JWOgb1rOhJjIGc=";
    name = "ath79_mikrotik-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ath79/mikrotik/sha256sums";
  };
  imagebuilder = {
    sha256 = "465560794b4f4713c3641050d8f78f7682f2649f49b179f8c1c829d161024f93";
    filename = "immortalwrt-imagebuilder-21.02.7-ath79-mikrotik.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-ABDTbLBp+shl+54UxKTqQnLHSP7YKXyDqxXHZroMH/I=";
    name = "ath79_mikrotik-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ath79/mikrotik/profiles.json";
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
      "wpad-openssl"
    ];
    kmods_target = "null-null-null";
    profiles = {
      mikrotik_routerboard-952ui-5ac2nd = {
        device_packages = [
          "kmod-ath10k-ct-smallbuffers"
          "ath10k-firmware-qca9887-ct"
        ];
      };
      mikrotik_routerboard-lhg-2nd = {
        device_packages = [ ];
      };
      mikrotik_routerboard-map-2nd = {
        device_packages = [
          "kmod-usb2"
          "kmod-ledtrig-gpio"
        ];
      };
      mikrotik_routerboard-mapl-2nd = {
        device_packages = [ ];
      };
      mikrotik_routerboard-wap-g-5hact2hnd = {
        device_packages = [
          "kmod-ath10k-ct-smallbuffers"
          "ath10k-firmware-qca988x-ct"
        ];
      };
      mikrotik_routerboard-wapr-2nd = {
        device_packages = [ "rssileds" ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ath79/mikrotik/packages/";
    sourceInfo = {
      hash = "sha256-J28pJxQYtBycqH5MfRUDvHWyk5n/4paWr64UyH4A2Os=";
      name = "ath79_mikrotik-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/ath79/mikrotik/packages/Packages";
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
