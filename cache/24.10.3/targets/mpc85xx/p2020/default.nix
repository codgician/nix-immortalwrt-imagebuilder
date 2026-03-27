# 24.10.3 mpc85xx/p2020
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/mpc85xx/p2020/";
  sha256sums = {
    hash = "sha256-dywWT3YNUnFe7QCNhJe8gcGDXOSaHLVY8S43ycIC3Rc=";
    name = "mpc85xx_p2020-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/mpc85xx/p2020/sha256sums";
  };
  imagebuilder = {
    sha256 = "d9511f28feeaa4c1bcf979a2ce9a2f12a13463f9b07df870f7e816b059d77a73";
    filename = "immortalwrt-imagebuilder-24.10.3-mpc85xx-p2020.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-nQyYsO3K04O4e931HNn9TQ3xL6Q3ZXMm24oAr3QLH3s=";
    name = "mpc85xx_p2020-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/mpc85xx/p2020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "4a810eb44572ee317a5301cad2bb8428";
      version = "6.6.104";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-ath9k"
      "kmod-button-hotplug"
      "kmod-crypto-hw-talitos"
      "kmod-input-core"
      "kmod-input-gpio-keys"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-usb2"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
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
      "swconfig"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "6.6.104-1-4a810eb44572ee317a5301cad2bb8428";
    profiles = {
      freescale_p2020rdb = {
        device_packages = [
          "kmod-hwmon-lm90"
          "kmod-rtc-ds1307"
          "kmod-gpio-pca953x"
          "kmod-eeprom-at24"
        ];
      };
    };
  };
  kmods."6.6.104-1-4a810eb44572ee317a5301cad2bb8428" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/mpc85xx/p2020/kmods/6.6.104-1-4a810eb44572ee317a5301cad2bb8428/";
    sourceInfo = {
      hash = "sha256-hK4gi+ew2EPVMMxkk95hpSr2J7U335ijpf1pzHO+xC0=";
      name = "kmods-mpc85xx_p2020-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/mpc85xx/p2020/kmods/6.6.104-1-4a810eb44572ee317a5301cad2bb8428/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/mpc85xx/p2020/packages/";
    sourceInfo = {
      hash = "sha256-dLPi7fPhYJPYnk9P+AdizCBRQt806rVjLOLRj5FeS40=";
      name = "mpc85xx_p2020-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/mpc85xx/p2020/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "powerpc_8548";
  feeds = import ./../../../packages/powerpc_8548.nix;
}
