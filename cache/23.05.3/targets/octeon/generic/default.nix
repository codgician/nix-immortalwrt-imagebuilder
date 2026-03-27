# 23.05.3 octeon/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/octeon/generic/";
  sha256sums = {
    hash = "sha256-Qhvp/4XLUCUmlyhlK67BDOdlWAHXr70JuZcVj7xxeME=";
    name = "octeon_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/octeon/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "013ed3135691ee1050bbd5bb84dac0ed4e934c687159042079a651fa304f2215";
    filename = "immortalwrt-imagebuilder-23.05.3-octeon-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-iWBvRT0GZOMPmGGgadqg1F23ggNn92z+S2gSrZmdjuc=";
    name = "octeon_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/octeon/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips64_octeonplus";
    linux_kernel = null;
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "ipv6helper"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
    profiles = {
      generic = {
        device_packages = [ ];
      };
      itus_shield-router = {
        device_packages = [ ];
      };
      ubnt_edgerouter = {
        device_packages = [ ];
      };
      ubnt_edgerouter-4 = {
        device_packages = [
          "kmod-gpio-button-hotplug"
          "kmod-leds-gpio"
          "kmod-of-mdio"
          "kmod-sfp"
          "kmod-usb3"
          "kmod-usb-dwc3"
          "kmod-usb-storage-uas"
        ];
      };
      ubnt_edgerouter-6p = {
        device_packages = [
          "kmod-gpio-button-hotplug"
          "kmod-leds-gpio"
          "kmod-of-mdio"
          "kmod-sfp"
          "kmod-usb3"
          "kmod-usb-dwc3"
          "kmod-usb-storage-uas"
        ];
      };
      ubnt_edgerouter-lite = {
        device_packages = [ ];
      };
      ubnt_unifi-usg = {
        device_packages = [
          "kmod-gpio-button-hotplug"
          "kmod-leds-gpio"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/octeon/generic/packages/";
    sourceInfo = {
      hash = "sha256-p5oBHpiNeP6xfRHqnxUe7Pdjt6pido5ToeW/8KG6XNg=";
      name = "octeon_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/octeon/generic/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips64_octeonplus";
  feeds = import ./../../../packages/mips64_octeonplus.nix;
}
