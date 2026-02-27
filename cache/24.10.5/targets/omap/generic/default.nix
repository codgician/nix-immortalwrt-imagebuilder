# 24.10.5 omap/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/omap/generic/";
  sha256sums = {
    hash = "sha256-0/7etykPP5o3gqb9GW0kvlo4kog0HRO4qLBGUvD/iJU=";
    name = "omap_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/omap/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "23e79a72730e4d4fbc5787ba078a690f1f56412b526893b22f95239bca8b5091";
    filename = "immortalwrt-imagebuilder-24.10.5-omap-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-/yA0uD5qeVBXVXJxsYvSQJ+86vC8xR+LiBghMfSdewE=";
    name = "omap_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/omap/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a8_vfpv3";
    linux_kernel = {
      release = "1";
      vermagic = "3a84d42d13daec44e79893c6f11853c7";
      version = "6.6.122";
    };
    default_packages = [
      "base-files"
      "block-mount"
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
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.122-1-3a84d42d13daec44e79893c6f11853c7";
    profiles = {
      ti_am335x-bone-black = {
        device_packages = [ ];
      };
      ti_am335x-evm = {
        device_packages = [ ];
      };
      ti_omap3-beagle = {
        device_packages = [
          "kmod-usb-net-asix"
          "kmod-usb-net-asix-ax88179"
          "kmod-usb-net-hso"
          "kmod-usb-net-kaweth"
          "kmod-usb-net-pegasus"
          "kmod-usb-net-mcs7830"
          "kmod-usb-net-smsc95xx"
          "kmod-usb-net-dm9601-ether"
        ];
      };
      ti_omap4-panda = {
        device_packages = [ "kmod-usb-net-smsc95xx" ];
      };
    };
  };
  kmods."6.6.122-1-3a84d42d13daec44e79893c6f11853c7" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/omap/generic/kmods/6.6.122-1-3a84d42d13daec44e79893c6f11853c7/";
    sourceInfo = {
      hash = "sha256-f8ubPfkUFEm3KZlfzvCcgdO9GPJL70p9QTbhYDo1uKY=";
      name = "kmods-omap_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/omap/generic/kmods/6.6.122-1-3a84d42d13daec44e79893c6f11853c7/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/omap/generic/packages/";
    sourceInfo = {
      hash = "sha256-HgNUTHG7utGPKa5diLIx/YU8e7MGDuomqV17zXKdA3c=";
      name = "omap_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/omap/generic/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a8_vfpv3";
  feeds = import ./../../../packages/arm_cortex-a8_vfpv3.nix;
}
