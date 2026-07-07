# 25.12.1 loongarch64/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/loongarch64/generic/";
  sha256sums = {
    hash = "sha256-QObqp4PkdEiMtPJC9sNdW6MUwqBV5JTKsYVAV70NDiI=";
    name = "loongarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/loongarch64/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "f01d36530d026769f24d2b412c4183a2ad9869fa0067b0346d4ea69fe9449e60";
    filename = "immortalwrt-imagebuilder-25.12.1-loongarch64-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-9+EarX+hZBEv5BMgWP3cng7e3NXz/C7dWkXIZYRxiwI=";
    name = "loongarch64_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/loongarch64/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "loongarch64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "96ffb03f7eb29cffc8f97909713de6f0";
      version = "6.12.94";
    };
    default_packages = [
      "apk-openssl"
      "automount"
      "base-files"
      "blkid"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
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
      "kmod-nf-nathelper"
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
      "luci"
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
    kmods_target = "6.12.94-1-96ffb03f7eb29cffc8f97909713de6f0";
    profiles = {
      generic = {
        device_packages = [
          "kmod-r8169"
          "kmod-drm-amdgpu"
        ];
      };
    };
  };
  kmods."6.12.94-1-96ffb03f7eb29cffc8f97909713de6f0" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/loongarch64/generic/kmods/6.12.94-1-96ffb03f7eb29cffc8f97909713de6f0/";
    sourceInfo = {
      hash = "sha256-75VrdUqaYlc5KE/5kW4gXaUh5r6sUPUL+6H7IzA/Rso=";
      name = "kmods-loongarch64_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/loongarch64/generic/kmods/6.12.94-1-96ffb03f7eb29cffc8f97909713de6f0/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/loongarch64/generic/packages/";
    sourceInfo = {
      hash = "sha256-Oo/8zPRZQrGMhnXEm+tSkLDIzsZReB34zlacy/Mxc9c=";
      name = "loongarch64_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/loongarch64/generic/packages/packages.adb";
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
