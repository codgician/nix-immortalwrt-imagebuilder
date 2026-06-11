# snapshot loongarch64/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/loongarch64/generic/";
  sha256sums = {
    hash = "sha256-j9p+wcPEq5nXFW5TNToRoFZ0kho9oGfz/Jwy8KcKMew=";
    name = "loongarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/loongarch64/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "3e7d3fdb78c3dc2f7edc6e035e9d969d4430e80eaa03ee9c2c610805ec24f9a6";
    filename = "immortalwrt-imagebuilder-loongarch64-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-6VU8pOu9qqCkNLTb1zh3lyRejQS7/13XkaTSTaNbJLM=";
    name = "loongarch64_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/loongarch64/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "loongarch64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "238d58ddb70ea2eb71929022dd1f4ad4";
      version = "6.12.92";
    };
    default_packages = [
      "apk-openssl"
      "automount"
      "base-files"
      "blkid"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "fdisk"
      "firewall4"
      "fstools"
      "grub2-efi-loongarch64"
      "kmod-dwmac-motorcomm"
      "kmod-e1000e"
      "kmod-i40e"
      "kmod-igb"
      "kmod-igbvf"
      "kmod-igc"
      "kmod-ixgbe"
      "kmod-ixgbevf"
      "kmod-nft-offload"
      "kmod-r8125"
      "kmod-r8126"
      "kmod-r8127"
      "kmod-r8168"
      "kmod-usb-net-asix"
      "kmod-usb-net-asix-ax88179"
      "kmod-usb-net-rtl8150"
      "kmod-usb-net-rtl8152-vendor"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.92-1-238d58ddb70ea2eb71929022dd1f4ad4";
    profiles = {
      generic = {
        device_packages = [
          "kmod-r8169"
          "kmod-drm-amdgpu"
        ];
      };
    };
  };
  kmods."6.12.92-1-238d58ddb70ea2eb71929022dd1f4ad4" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/loongarch64/generic/kmods/6.12.92-1-238d58ddb70ea2eb71929022dd1f4ad4/";
    sourceInfo = {
      hash = "sha256-GvaXIoWGeplnvAso8UYvOr9bKibm0qMpY7l5Ty+tl/o=";
      name = "kmods-loongarch64_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/loongarch64/generic/kmods/6.12.92-1-238d58ddb70ea2eb71929022dd1f4ad4/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/loongarch64/generic/packages/";
    sourceInfo = {
      hash = "sha256-pQjhoZIWdtuPHDGtU7m2XqrWELSZSA5Lmhqk35/kqrI=";
      name = "loongarch64_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/loongarch64/generic/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "loongarch64_generic";
  feeds = import ./../../../packages/loongarch64_generic.nix;
}
