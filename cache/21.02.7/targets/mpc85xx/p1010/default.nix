# 21.02.7 mpc85xx/p1010
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mpc85xx/p1010/";
  sha256sums = {
    hash = "sha256-AT8Q90v9DLkdg7pA4yFpjsTibc10lGC15omdOuY7f5U=";
    name = "mpc85xx_p1010-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mpc85xx/p1010/sha256sums";
  };
  imagebuilder = {
    sha256 = "0a62ba3552a6b7ca0962d609477a0d4a78018264a30a1d377b7668fcbc07ed83";
    filename = "immortalwrt-imagebuilder-21.02.7-mpc85xx-p1010.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-OgNTA5DXUXEceq6tH1GWXwCAGIQD4vuXPWQa6HaV4og=";
    name = "mpc85xx_p1010-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mpc85xx/p1010/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8540";
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
      "kmod-button-hotplug"
      "kmod-input-core"
      "kmod-input-gpio-keys"
      "kmod-ipt-raw"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-usb2"
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
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "null-null-null";
    profiles = {
      sophos_red-15w-rev1 = {
        device_packages = [ ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mpc85xx/p1010/packages/";
    sourceInfo = {
      hash = "sha256-rlPWPn1kZerZAlzP/6egMoKT6o42f2uKzpUDGOBDG3o=";
      name = "mpc85xx_p1010-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mpc85xx/p1010/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "powerpc_8540";
  feeds = import ./../../../packages/powerpc_8540.nix;
}
