# 25.12.0-rc1 bcm47xx/legacy
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm47xx/legacy/";
  sha256sums = {
    hash = "sha256-LBIVqZzaA9dBBiHyrSIquXA3yAvMIsYZT55WY0G0AVQ=";
    name = "bcm47xx_legacy-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm47xx/legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "dcffc1677d33d91379e62b3d8700635f395fbd496b1827e19bb4598a376c1c90";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-bcm47xx-legacy.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-EsdXIyIUbvRhAz0ojPHPLh5FW7ljNHx2PgmmiRDEAFc=";
    name = "bcm47xx_legacy-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm47xx/legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "82ce4c582327fa741e1cd8764413cb9a";
      version = "6.12.74";
    };
    default_packages = [
      "apk-openssl"
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
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "mtd"
      "netifd"
      "nftables"
      "nvram"
      "odhcp6c"
      "odhcpd-ipv6only"
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
    kmods_target = "6.12.74-1-82ce4c582327fa741e1cd8764413cb9a";
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
  kmods."6.12.74-1-82ce4c582327fa741e1cd8764413cb9a" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm47xx/legacy/kmods/6.12.74-1-82ce4c582327fa741e1cd8764413cb9a/";
    sourceInfo = {
      hash = "sha256-SkzCdc6NVFs0UedwwoT2agQQVkYHN9boxGMt8a6hBdA=";
      name = "kmods-bcm47xx_legacy-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm47xx/legacy/kmods/6.12.74-1-82ce4c582327fa741e1cd8764413cb9a/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm47xx/legacy/packages/";
    sourceInfo = {
      hash = "sha256-JeZ9YHezBNjNpi6z7bBwf4yCXN5pmlefhw4bz8Xy9rQ=";
      name = "bcm47xx_legacy-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm47xx/legacy/packages/packages.adb";
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
