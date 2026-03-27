# 24.10.0 bcm47xx/legacy
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm47xx/legacy/";
  sha256sums = {
    hash = "sha256-kRWkjD4Vf0MICUrksBr0crsYXGSEbvPahO0X+cE5vOs=";
    name = "bcm47xx_legacy-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm47xx/legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "563724979b5c8b44b9c39b0b7c9e7d1d06a9a878d6a18923567d277461c2b79f";
    filename = "immortalwrt-imagebuilder-24.10.0-bcm47xx-legacy.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-4sjH/F2GD0Ra6vOgSnK2ICNy9MQoBcsFMgHuDWmZHzw=";
    name = "bcm47xx_legacy-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm47xx/legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "d19055388e2499fdfaf7b040658aacfd";
      version = "6.6.73";
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
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
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
      "nvram"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "otrx"
      "ppp"
      "ppp-mod-pppoe"
      "swconfig"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "6.6.73-1-d19055388e2499fdfaf7b040658aacfd";
    profiles = {
      dlink_dwl-3150 = {
        device_packages = [ ];
      };
      standard = {
        device_packages = [ ];
      };
      standard-noloader-gz = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.6.73-1-d19055388e2499fdfaf7b040658aacfd" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm47xx/legacy/kmods/6.6.73-1-d19055388e2499fdfaf7b040658aacfd/";
    sourceInfo = {
      hash = "sha256-686motlLoVEkvz3Y1gqbCbqnouY7kndiYCd+oOZBM98=";
      name = "kmods-bcm47xx_legacy-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm47xx/legacy/kmods/6.6.73-1-d19055388e2499fdfaf7b040658aacfd/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm47xx/legacy/packages/";
    sourceInfo = {
      hash = "sha256-VZcOOyjzU+IvN+r4J6qFQMIhCFMWROTlxjFHSezvyFM=";
      name = "bcm47xx_legacy-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm47xx/legacy/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mipsel_mips32";
  feeds = import ./../../../packages/mipsel_mips32.nix;
}
