# 23.05.6 octeon/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/octeon/generic/";
  sha256sums = {
    hash = "sha256-C4Wpsm2K9dPG4qFI80GwoKNj1V2qYYJzLVUMzGpW8d4=";
    name = "octeon_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/octeon/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "1f16116d32158cfd66fffe6601b87e1906de4c72ebea3f86577cfe4487fcc478";
    filename = "immortalwrt-imagebuilder-23.05.6-octeon-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-2x7rxv40fza29V6hK4SHigdfSD/KoludooFY03We0I8=";
    name = "octeon_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/octeon/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips64_octeonplus";
    linux_kernel = {
      release = "1";
      vermagic = "e5721e74fb903fbf4c5862adab2c0e99";
      version = "5.15.189";
    };
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
      "odhcp6c"
      "odhcpd-ipv6only"
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
    kmods_target = "5.15.189-1-e5721e74fb903fbf4c5862adab2c0e99";
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/octeon/generic/packages/";
    sourceInfo = {
      hash = "sha256-EXZTAzvVyzc37KsO51kgOQHcSfD37B+bZs2uvdy2A6U=";
      name = "octeon_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/octeon/generic/packages/Packages";
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
