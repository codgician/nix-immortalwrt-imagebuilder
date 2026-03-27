# snapshot loongarch64/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/loongarch64/generic/";
  sha256sums = {
    hash = "sha256-GvIKTJGLYV5KBW8aNEm9MU2b6P1xaTvQ59Mz1AiQRao=";
    name = "loongarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/loongarch64/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "115fb28881ced0829b78638eef8424282153dacbe5fef714dffcb28b8820dd22";
    filename = "immortalwrt-imagebuilder-loongarch64-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-jDzqZTfb/xTJ3xe39hU1z+5kLfm0yg5FqN9wfSe3uiI=";
    name = "loongarch64_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/loongarch64/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "loongarch64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "9cb0f93f459f2446a4dd2d38fe0e8d38";
      version = "6.12.77";
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
      "kmod-nft-offload"
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
    kmods_target = "6.12.77-1-9cb0f93f459f2446a4dd2d38fe0e8d38";
    profiles = {
      generic = {
        device_packages = [
          "kmod-r8169"
          "kmod-drm-amdgpu"
        ];
      };
    };
  };
  kmods."6.12.77-1-9cb0f93f459f2446a4dd2d38fe0e8d38" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/loongarch64/generic/kmods/6.12.77-1-9cb0f93f459f2446a4dd2d38fe0e8d38/";
    sourceInfo = {
      hash = "sha256-FbUPczSl220TEC5b9aBBdEZyOkF7TofpQHwrxdTf+ao=";
      name = "kmods-loongarch64_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/loongarch64/generic/kmods/6.12.77-1-9cb0f93f459f2446a4dd2d38fe0e8d38/packages.adb";
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
      hash = "sha256-bDadWSqz7onhDwyKKGgvcno/ocZlrNxdPq+gWYTBx/4=";
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
