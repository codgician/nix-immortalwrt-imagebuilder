# 24.10.2 x86/legacy
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/x86/legacy/";
  sha256sums = {
    hash = "sha256-Wi+f+iL+NS/C4DR0PaMDEYfBa+a0uZan9k97JDHt+L8=";
    name = "x86_legacy-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/x86/legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "c5ebf905960062101ec75c444f3cbca3ab895d157104bf8d15b6fd26ec55acaf";
    filename = "immortalwrt-imagebuilder-24.10.2-x86-legacy.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-LUvHxOF+AjDgQ7NLKpQTSBnCdWEhkmWuE/l8D3jj76Y=";
    name = "x86_legacy-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/x86/legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "i386_pentium-mmx";
    linux_kernel = {
      release = "1";
      vermagic = "0c0cff89fc9aa037705d9cdf9e86d633";
      version = "6.6.93";
    };
    default_packages = [
      "autocore"
      "automount"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "fdisk"
      "firewall4"
      "fstools"
      "grub2-bios-setup"
      "i915-firmware-dmc"
      "kmod-8139cp"
      "kmod-8139too"
      "kmod-button-hotplug"
      "kmod-e1000e"
      "kmod-fs-f2fs"
      "kmod-i40e"
      "kmod-igb"
      "kmod-igbvf"
      "kmod-igc"
      "kmod-ixgbe"
      "kmod-ixgbevf"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-pcnet32"
      "kmod-r8101"
      "kmod-r8125"
      "kmod-r8126"
      "kmod-r8168"
      "kmod-tulip"
      "kmod-usb-hid"
      "kmod-usb-net"
      "kmod-usb-net-asix"
      "kmod-usb-net-asix-ax88179"
      "kmod-usb-net-rtl8150"
      "kmod-usb-net-rtl8152-vendor"
      "kmod-vmxnet3"
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
    kmods_target = "6.6.93-1-0c0cff89fc9aa037705d9cdf9e86d633";
    profiles = {
      generic = {
        device_packages = [
          "kmod-3c59x"
          "kmod-e100"
          "kmod-e1000"
          "kmod-natsemi"
          "kmod-ne2k-pci"
          "kmod-pcnet32"
          "kmod-sis900"
          "kmod-tg3"
          "kmod-via-rhine"
          "kmod-via-velocity"
          "kmod-forcedeth"
          "kmod-drm-i915"
        ];
      };
    };
  };
  kmods."6.6.93-1-0c0cff89fc9aa037705d9cdf9e86d633" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/x86/legacy/kmods/6.6.93-1-0c0cff89fc9aa037705d9cdf9e86d633/";
    sourceInfo = {
      hash = "sha256-AQHHr9fAAZ7xGjIQTFT4Erl/pgo5URvzYyZ9NoFIQCE=";
      name = "kmods-x86_legacy-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/x86/legacy/kmods/6.6.93-1-0c0cff89fc9aa037705d9cdf9e86d633/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/x86/legacy/packages/";
    sourceInfo = {
      hash = "sha256-+Gtb1ao24SQySeu7MserJ1Q1ZzzoZL07kUr5ON5zowg=";
      name = "x86_legacy-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/x86/legacy/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "i386_pentium-mmx";
  feeds = import ./../../../packages/i386_pentium-mmx.nix;
}
