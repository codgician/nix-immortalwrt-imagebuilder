# 24.10.3 bcm47xx/legacy
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bcm47xx/legacy/";
  sha256sums = {
    hash = "sha256-XayCPzZTUNFbC/0SdqrVyGCNJ6zlvblRl2uD/CeTRMA=";
    name = "bcm47xx_legacy-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bcm47xx/legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "13f3add811567448a2ad99a2d1edf00e925a34fb481abdbc6a9e2bb2ac2762f1";
    filename = "immortalwrt-imagebuilder-24.10.3-bcm47xx-legacy.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-AX8n65UNwJfFKj3D2qpmYBQHf61xGZJoiBRdcooxbZs=";
    name = "bcm47xx_legacy-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bcm47xx/legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "823182b1acb886a77d340a094b224df8";
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
    kmods_target = "6.6.104-1-823182b1acb886a77d340a094b224df8";
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
  kmods."6.6.104-1-823182b1acb886a77d340a094b224df8" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bcm47xx/legacy/kmods/6.6.104-1-823182b1acb886a77d340a094b224df8/";
    sourceInfo = {
      hash = "sha256-wDmPI2XSqOvrGNVkUSpUJy5KAWaGOmMI0NZAcPivOSU=";
      name = "kmods-bcm47xx_legacy-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bcm47xx/legacy/kmods/6.6.104-1-823182b1acb886a77d340a094b224df8/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bcm47xx/legacy/packages/";
    sourceInfo = {
      hash = "sha256-A3JuGw/vtfNKU8i4l2165Sc9lyZy7cYftdghtBV+XMY=";
      name = "bcm47xx_legacy-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bcm47xx/legacy/packages/Packages";
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
