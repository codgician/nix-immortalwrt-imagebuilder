{
  apm821xx = {
    nand = {
      arch_packages = "powerpc_464fp";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-ath9k"
        "kmod-gpio-button-hotplug"
        "kmod-hw-crypto-4xx"
        "kmod-i2c-core"
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
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "ppp"
        "ppp-mod-pppoe"
        "procd-ujail"
        "swconfig"
        "uboot-envtools"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
        "wpad-basic-openssl"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "8e07821f7cf53f6afdc8fcd1b0e774a0";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        meraki_mr24 = {
          device_packages = [
            "kmod-spi-gpio"
            "-swconfig"
          ];
          image_prefix = "immortalwrt-24.10.0-apm821xx-nand-meraki_mr24";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-apm821xx-nand-meraki_mr24-squashfs-sysupgrade.bin";
              sha256 = "c6b8ded2ac1f6cb11cd68cb833f1ee38f140433b865ab2b5f2fce3fc0b772c55";
              sha256_unsigned = "8d6f9105247e3aa2391c93e2eb1eac9af5a57fa61129945c4086ee0c948bf780";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-apm821xx-nand-meraki_mr24-initramfs-kernel.bin";
              sha256 = "e37b5b2f93d12d3f6bedca915eaa816863c3f5afe1d375d080d577618c506f15";
              sha256_unsigned = "e37b5b2f93d12d3f6bedca915eaa816863c3f5afe1d375d080d577618c506f15";
              type = "kernel";
            }
          ];
          supported_devices = [
            "meraki,mr24"
            "mr24"
          ];
          titles = [
            {
              model = "MR24";
              vendor = "Cisco Meraki";
            }
          ];
        };
        meraki_mx60 = {
          device_packages = [
            "kmod-spi-gpio"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb-dwc2"
            "kmod-usb-storage"
            "block-mount"
          ];
          image_prefix = "immortalwrt-24.10.0-apm821xx-nand-meraki_mx60";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-apm821xx-nand-meraki_mx60-initramfs-kernel.bin";
              sha256 = "2a3dfa1a351f09b9c98caa7bfd6d206ddd454c1d407519760ae6c33989530621";
              sha256_unsigned = "2a3dfa1a351f09b9c98caa7bfd6d206ddd454c1d407519760ae6c33989530621";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-apm821xx-nand-meraki_mx60-squashfs-sysupgrade.bin";
              sha256 = "5845f806741c3363d429d02ffc0f3ebc60e9acb3c8ee4284210642f72ca95dcb";
              sha256_unsigned = "3b56d836c8feb1bee42f0e797073f5d72c51d0e8ea81d3019e5b6f49b23b3d09";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "meraki,mx60"
          ];
          titles = [
            {
              model = "MX60";
              vendor = "Cisco Meraki";
            }
            {
              model = "MX60W";
              vendor = "Cisco Meraki";
            }
          ];
        };
        netgear_wndap620 = {
          device_packages = [
            "kmod-eeprom-at24"
          ];
          image_prefix = "immortalwrt-24.10.0-apm821xx-nand-netgear_wndap620";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-apm821xx-nand-netgear_wndap620-squashfs-sysupgrade.bin";
              sha256 = "255bd7d005067488abb891c4ed061d8161683de863f88641ff9635f5af0bb00a";
              sha256_unsigned = "fe26d8d9172bbd0ee96077b86456fe745ce3360a6e2fb153b05c26e529d2fd40";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-apm821xx-nand-netgear_wndap620-squashfs-factory.img";
              sha256 = "8f84d120f9d7c0aadb40ef66b21e0597b02d74aff30829ff2d5db58d94841bde";
              sha256_unsigned = "8f84d120f9d7c0aadb40ef66b21e0597b02d74aff30829ff2d5db58d94841bde";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-apm821xx-nand-netgear_wndap620-initramfs-kernel.bin";
              sha256 = "0a3fc760617b39b9675ed9e139242be5b406bb2e211c5313c01a8d7126c55d43";
              sha256_unsigned = "0a3fc760617b39b9675ed9e139242be5b406bb2e211c5313c01a8d7126c55d43";
              type = "kernel";
            }
          ];
          supported_devices = [
            "netgear,wndap620"
          ];
          titles = [
            {
              model = "WNDAP620 (Premium Wireless-N)";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndap660 = {
          device_packages = [
            "kmod-eeprom-at24"
          ];
          image_prefix = "immortalwrt-24.10.0-apm821xx-nand-netgear_wndap660";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-apm821xx-nand-netgear_wndap660-squashfs-factory.img";
              sha256 = "95fd4866103b2675e1ddb497aa80d1b16cc36b3c8397db8d01f5c1624c77ab30";
              sha256_unsigned = "95fd4866103b2675e1ddb497aa80d1b16cc36b3c8397db8d01f5c1624c77ab30";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-apm821xx-nand-netgear_wndap660-initramfs-kernel.bin";
              sha256 = "c5a3afd2944109da02bbda9c93b492a5a6303d65c2ca665bf2d18b6d6f14024a";
              sha256_unsigned = "c5a3afd2944109da02bbda9c93b492a5a6303d65c2ca665bf2d18b6d6f14024a";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-apm821xx-nand-netgear_wndap660-squashfs-sysupgrade.bin";
              sha256 = "f35d0ad82007abc4b47247a2cf0177a9f47db642dcd9b65602b6248cc7030482";
              sha256_unsigned = "67ebc30eb3d8e2d4be9c2331fa5a633f3944aa2dafea0e056bed7b1359ef8bf2";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,wndap660"
          ];
          titles = [
            {
              model = "WNDAP660 (Dual Radio Dual Band Wireless-N)";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr4700 = {
          device_packages = [
            "badblocks"
            "block-mount"
            "e2fsprogs"
            "kmod-hwmon-drivetemp"
            "kmod-dm"
            "kmod-fs-ext4"
            "kmod-fs-vfat"
            "kmod-usb-ledtrig-usbport"
            "kmod-md-mod"
            "kmod-nls-cp437"
            "kmod-nls-iso8859-1"
            "kmod-nls-iso8859-15"
            "kmod-nls-utf8"
            "kmod-usb3"
            "kmod-usb-dwc2"
            "kmod-usb-storage"
            "partx-utils"
            "kmod-ata-dwc"
          ];
          image_prefix = "immortalwrt-24.10.0-apm821xx-nand-netgear_wndr4700";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-apm821xx-nand-netgear_wndr4700-initramfs-kernel.bin";
              sha256 = "2fd64e6b3ac6e373349238f4875ffe8b87510de75f01ee06cb1785f6cf2ee70a";
              sha256_unsigned = "2fd64e6b3ac6e373349238f4875ffe8b87510de75f01ee06cb1785f6cf2ee70a";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-apm821xx-nand-netgear_wndr4700-squashfs-factory.img";
              sha256 = "cce0d2ea1a2d4f210892c56be63813567d911eeec5baf65f0dd0cac1b82da61a";
              sha256_unsigned = "cce0d2ea1a2d4f210892c56be63813567d911eeec5baf65f0dd0cac1b82da61a";
              type = "factory";
            }
            {
              name = "immortalwrt-24.10.0-apm821xx-nand-netgear_wndr4700-device-tree.dtb";
              sha256 = "830f9b7a695a26a91bc0b021732048b6566a7c67eff1827f00c1734a146cd911";
              sha256_unsigned = "830f9b7a695a26a91bc0b021732048b6566a7c67eff1827f00c1734a146cd911";
              type = "device-tree.dtb";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-apm821xx-nand-netgear_wndr4700-squashfs-sysupgrade.bin";
              sha256 = "dad8b593fb42027a29013b182f655adeb10d4c587c4ca6cfc6dca8f16c42af9d";
              sha256_unsigned = "c21b3012338e0aac5da1f367b2dc3d6626fbf668d1813d1947769dd8f3757c06";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,wndr4700"
            "wndr4700"
          ];
          titles = [
            {
              model = "Centria N900 WNDR4700";
              vendor = "NETGEAR";
            }
            {
              model = "Centria N900 WNDR4720";
              vendor = "NETGEAR";
            }
          ];
        };
      };
      source_date_epoch = 1738744361;
      target = "apm821xx/nand";
      version_code = "r32824-6a73dae98c9c";
      version_number = "24.10.0";
    };
    sata = {
      arch_packages = "powerpc_464fp";
      default_packages = [
        "badblocks"
        "base-files"
        "block-mount"
        "block-mount"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dropbear"
        "e2fsprogs"
        "f2fsck"
        "fdisk"
        "fstools"
        "kmod-dm"
        "kmod-gpio-button-hotplug"
        "kmod-hw-crypto-4xx"
        "kmod-hwmon-drivetemp"
        "kmod-i2c-core"
        "kmod-leds-gpio"
        "kmod-md-mod"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "libc"
        "libgcc"
        "libustream-openssl"
        "logd"
        "lsblk"
        "luci-app-package-manager"
        "luci-compat"
        "luci-lib-base"
        "luci-lib-ipkg"
        "luci-light"
        "mdadm"
        "mkf2fs"
        "mtd"
        "netifd"
        "opkg"
        "partx-utils"
        "procd-ujail"
        "uboot-envtools"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "9091dc159e2b188a157fbea9b3b3ce61";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        wd_mybooklive = {
          device_packages = [
            "kmod-usb-dwc2"
            "kmod-ata-dwc"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb-storage"
            "kmod-fs-vfat"
            "wpad-basic-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-apm821xx-sata-wd_mybooklive";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-apm821xx-sata-wd_mybooklive-ext4-factory.img.gz";
              sha256 = "c163cebc965dceb183ba5b1d1e8e81f3e08f53cf21a57bad6e384412f2eaefbe";
              sha256_unsigned = "c163cebc965dceb183ba5b1d1e8e81f3e08f53cf21a57bad6e384412f2eaefbe";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-apm821xx-sata-wd_mybooklive-initramfs-kernel.bin";
              sha256 = "50b92d1fbb884b20231c4f0b4d8b56ff1e2b6186cb6d57a489de536a4280ed7f";
              sha256_unsigned = "50b92d1fbb884b20231c4f0b4d8b56ff1e2b6186cb6d57a489de536a4280ed7f";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-apm821xx-sata-wd_mybooklive-squashfs-sysupgrade.img.gz";
              sha256 = "dc67e85d143bc32cc5d5359a9451c7eacd0ff70888c2d54200dc978e7ae67f86";
              sha256_unsigned = "3b3b6fc5f4ea4e3ab44c9febe9a6fc4dcf028dcd69f67ea7f60cbcf8da95999b";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-apm821xx-sata-wd_mybooklive-squashfs-factory.img.gz";
              sha256 = "171e23e7cac538ea6e9d641f13dad4779311e3e2a8dd91efa2cce9ed67f98127";
              sha256_unsigned = "171e23e7cac538ea6e9d641f13dad4779311e3e2a8dd91efa2cce9ed67f98127";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-apm821xx-sata-wd_mybooklive-ext4-sysupgrade.img.gz";
              sha256 = "7973d4f634840f4d5b6b60f85ac641e1b39c7b0590d35ab2aab4633a01b02791";
              sha256_unsigned = "3e138a4a0ad28551a539ecf7ea97a301a33444ad3aaba836d7939794fd946a47";
              type = "sysupgrade";
            }
            {
              name = "immortalwrt-24.10.0-apm821xx-sata-wd_mybooklive-apollo3g.dtb";
              sha256 = "8d8fbe80392732e15d8d7439cead6b71b9f3fac9a8248ad5e02cf35869b2ad19";
              sha256_unsigned = "8d8fbe80392732e15d8d7439cead6b71b9f3fac9a8248ad5e02cf35869b2ad19";
              type = "apollo3g.dtb";
            }
          ];
          supported_devices = [
            "wd,mybooklive"
            "mbl"
            "wd,mybooklive-duo"
          ];
          titles = [
            {
              model = "My Book Live";
              vendor = "Western Digital";
            }
            {
              model = "My Book Live Duo";
              vendor = "Western Digital";
            }
          ];
        };
      };
      source_date_epoch = 1738744361;
      target = "apm821xx/sata";
      version_code = "r32824-6a73dae98c9c";
      version_number = "24.10.0";
    };
  };
  armsr = {
    armv7 = {
      arch_packages = "arm_cortex-a15_neon-vfpv4";
      default_packages = [
        "autocore"
        "automount"
        "base-files"
        "blkid"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "e2fsprogs"
        "firewall4"
        "fstools"
        "kmod-fs-vfat"
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
        "ppp"
        "ppp-mod-pppoe"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "c276645ed35e675f9c9c7bef1069c78f";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        generic = {
          device_packages = [
            "kmod-amazon-ena"
            "kmod-e1000e"
            "kmod-vmxnet3"
            "kmod-rtc-rx8025"
            "kmod-i2c-mux-pca954x"
            "kmod-gpio-pca953x"
            "partx-utils"
            "kmod-wdt-sp805"
            "kmod-mvneta"
            "kmod-mvpp2"
            "kmod-fsl-dpaa1-net"
            "kmod-fsl-dpaa2-net"
            "kmod-fsl-enetc-net"
            "kmod-dwmac-imx"
            "kmod-fsl-fec"
            "kmod-dwmac-rockchip"
            "kmod-dwmac-sun8i"
            "kmod-phy-aquantia"
            "kmod-phy-broadcom"
            "kmod-phy-marvell"
            "kmod-phy-marvell-10g"
            "kmod-sfp"
            "kmod-atlantic"
            "kmod-bcmgenet"
            "kmod-octeontx2-net"
            "kmod-renesas-net-avb"
            "kmod-phy-realtek"
            "kmod-phy-smsc"
          ];
          image_prefix = "immortalwrt-24.10.0-armsr-armv7-generic";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-armsr-armv7-generic-initramfs-kernel.bin";
              sha256 = "117b66387b2de1b4dd909b058e59e9f7f0d5c6bfa1d609d12f3d4fc2964b6852";
              sha256_unsigned = "117b66387b2de1b4dd909b058e59e9f7f0d5c6bfa1d609d12f3d4fc2964b6852";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-armsr-armv7-generic-squashfs-combined-efi.img.gz";
              sha256 = "879ddf8088d3de1cdef104346aae7d44f770979b9fa2d2b9f70c8591be66c552";
              sha256_unsigned = "71b3a48ff77ff22450cc364ee85398c4240ef9d865308dcad949c3413eed2ae9";
              type = "combined-efi";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-armsr-armv7-generic-ext4-combined-efi.img.gz";
              sha256 = "b3cd592f3afbec8076c3f65e263232dd5fea265a07c00d76a29457973ba4adbf";
              sha256_unsigned = "bbd89aaa5c82bf7a8f024bc6195436136febbdaea83f394a158020a210f2c579";
              type = "combined-efi";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-armsr-armv7-generic-ext4-combined-efi.qcow2";
              sha256 = "61f89cb23df9164086f3a0b3db363973aca6967f18fe42b4e1802ce4c6199a0b";
              sha256_unsigned = "61f89cb23df9164086f3a0b3db363973aca6967f18fe42b4e1802ce4c6199a0b";
              type = "combined-efi";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-armsr-armv7-generic-squashfs-combined-efi.qcow2";
              sha256 = "5983ac8c440037452aca7ea2c3c511f06ab6af897f621dbcd4314b2386e43226";
              sha256_unsigned = "5983ac8c440037452aca7ea2c3c511f06ab6af897f621dbcd4314b2386e43226";
              type = "combined-efi";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-armsr-armv7-generic-squashfs-combined-efi.vmdk";
              sha256 = "4e6b34be582a5a338a31f172c1008316d299902dd14754bf156bd470e6a146d3";
              sha256_unsigned = "4e6b34be582a5a338a31f172c1008316d299902dd14754bf156bd470e6a146d3";
              type = "combined-efi";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-armsr-armv7-generic-ext4-rootfs.img.gz";
              sha256 = "bb8322d0e58eb46a7bccdec0b7e3c870a1edd800262bdff9c9925c9f193508aa";
              sha256_unsigned = "bb8322d0e58eb46a7bccdec0b7e3c870a1edd800262bdff9c9925c9f193508aa";
              type = "rootfs";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-armsr-armv7-generic-squashfs-rootfs.img.gz";
              sha256 = "edae785928c2c6c2e9ce96b4729734f23cbf915f87f44eb10ee5ac6a27ef8896";
              sha256_unsigned = "edae785928c2c6c2e9ce96b4729734f23cbf915f87f44eb10ee5ac6a27ef8896";
              type = "rootfs";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-armsr-armv7-generic-ext4-combined-efi.vmdk";
              sha256 = "acbfd84d3f7c6f962c0b50c4fe39c162b3ab45ce5bed2861c2a81048b439ac97";
              sha256_unsigned = "acbfd84d3f7c6f962c0b50c4fe39c162b3ab45ce5bed2861c2a81048b439ac97";
              type = "combined-efi";
            }
          ];
          supported_devices = [ ];
          titles = [
            {
              title = "Generic EFI Boot";
            }
          ];
        };
      };
      source_date_epoch = 1738744361;
      target = "armsr/armv7";
      version_code = "r32824-6a73dae98c9c";
      version_number = "24.10.0";
    };
    armv8 = {
      arch_packages = "aarch64_generic";
      default_packages = [
        "autocore"
        "automount"
        "base-files"
        "blkid"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "e2fsprogs"
        "firewall4"
        "fstools"
        "kmod-fs-vfat"
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
        "ppp"
        "ppp-mod-pppoe"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "a7eafb055ecc4891236a188e564e21ff";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        generic = {
          device_packages = [
            "kmod-amazon-ena"
            "kmod-e1000e"
            "kmod-vmxnet3"
            "kmod-rtc-rx8025"
            "kmod-i2c-mux-pca954x"
            "kmod-gpio-pca953x"
            "partx-utils"
            "kmod-wdt-sp805"
            "kmod-mvneta"
            "kmod-mvpp2"
            "kmod-fsl-dpaa1-net"
            "kmod-fsl-dpaa2-net"
            "kmod-fsl-enetc-net"
            "kmod-dwmac-imx"
            "kmod-fsl-fec"
            "kmod-dwmac-rockchip"
            "kmod-dwmac-sun8i"
            "kmod-phy-aquantia"
            "kmod-phy-broadcom"
            "kmod-phy-marvell"
            "kmod-phy-marvell-10g"
            "kmod-sfp"
            "kmod-atlantic"
            "kmod-bcmgenet"
            "kmod-octeontx2-net"
            "kmod-renesas-net-avb"
            "kmod-phy-realtek"
            "kmod-phy-smsc"
            "kmod-thunderx-net"
          ];
          image_prefix = "immortalwrt-24.10.0-armsr-armv8-generic";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-armsr-armv8-generic-initramfs-kernel.bin";
              sha256 = "ee65c96a15a929a877a02b428da4bb9b6d24e65fa3b900f69750111807d8d85e";
              sha256_unsigned = "ee65c96a15a929a877a02b428da4bb9b6d24e65fa3b900f69750111807d8d85e";
              type = "kernel";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-armsr-armv8-generic-ext4-combined-efi.vmdk";
              sha256 = "8c6f3ac99827a9ebdc6eca9ef5ec5018f9d8a74d56bb058b0c9f93b49dae0629";
              sha256_unsigned = "8c6f3ac99827a9ebdc6eca9ef5ec5018f9d8a74d56bb058b0c9f93b49dae0629";
              type = "combined-efi";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-armsr-armv8-generic-ext4-combined-efi.qcow2";
              sha256 = "1869e357ead173d8d5c796319a50b991066c81afe65ad94dfdf69ed0647bbc08";
              sha256_unsigned = "1869e357ead173d8d5c796319a50b991066c81afe65ad94dfdf69ed0647bbc08";
              type = "combined-efi";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-armsr-armv8-generic-squashfs-combined-efi.qcow2";
              sha256 = "8e8d5d8857ef7c0bb9836de9e5cb26106c3784e7629b5c48b959844312d89ce4";
              sha256_unsigned = "8e8d5d8857ef7c0bb9836de9e5cb26106c3784e7629b5c48b959844312d89ce4";
              type = "combined-efi";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-armsr-armv8-generic-squashfs-rootfs.img.gz";
              sha256 = "6f1b93f2d8a3679f1b2611db4a571feedd1b509de231cd85d59ac312e92ea93f";
              sha256_unsigned = "6f1b93f2d8a3679f1b2611db4a571feedd1b509de231cd85d59ac312e92ea93f";
              type = "rootfs";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-armsr-armv8-generic-ext4-combined-efi.img.gz";
              sha256 = "72cbb5b70d294ac3a2f9e3f98f4235a155de88dbfb069402359c22e7f86ada89";
              sha256_unsigned = "7513b8c3ed5a5951ad78151103c4dbbe14e06e5c6201eaaf7bf8290ae09a067d";
              type = "combined-efi";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-armsr-armv8-generic-squashfs-combined-efi.img.gz";
              sha256 = "4f74306efa22bdc0fb2fed16c7272b0f8b25ae6c1ef3d131030365673cb2012d";
              sha256_unsigned = "2f576c62fc885ed8d14fae994c38cfa0a0216fb129eb3ccd8dcca039d1355104";
              type = "combined-efi";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-armsr-armv8-generic-ext4-rootfs.img.gz";
              sha256 = "fd6de42709103ab66ea0ed9f73eb4b986b03844f2acf2396839bdfa32e5ced71";
              sha256_unsigned = "fd6de42709103ab66ea0ed9f73eb4b986b03844f2acf2396839bdfa32e5ced71";
              type = "rootfs";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-armsr-armv8-generic-squashfs-combined-efi.vmdk";
              sha256 = "325d3a916c41db542131b4e579361de251a02f35a368859048eb776da2deafc1";
              sha256_unsigned = "325d3a916c41db542131b4e579361de251a02f35a368859048eb776da2deafc1";
              type = "combined-efi";
            }
          ];
          supported_devices = [ ];
          titles = [
            {
              title = "Generic EFI Boot";
            }
          ];
        };
      };
      source_date_epoch = 1738744361;
      target = "armsr/armv8";
      version_code = "r32824-6a73dae98c9c";
      version_number = "24.10.0";
    };
  };
  at91 = {
    sam9x = {
      arch_packages = "arm_arm926ej-s";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-at91-udc"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-usb-gadget-eth"
        "kmod-usb-ohci"
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
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "ppp"
        "ppp-mod-pppoe"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "4e86aa288c124f90927bba15ca6dfc5a";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        atmel_at91sam9263ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-at91-sam9x-atmel_at91sam9263ek";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-at91-sam9x-atmel_at91sam9263ek-ext4-root.ubi";
              sha256 = "392416a7be882a7b4c8a5c811a3d1dd361877d73156b2aaedb44d6676a2f97b8";
              sha256_unsigned = "392416a7be882a7b4c8a5c811a3d1dd361877d73156b2aaedb44d6676a2f97b8";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-at91-sam9x-atmel_at91sam9263ek-ubifs-root.ubi";
              sha256 = "ae325c28a816ca23829561bdbb7ae4f4479aed908a6e09a9fc589cade9a09572";
              sha256_unsigned = "ae325c28a816ca23829561bdbb7ae4f4479aed908a6e09a9fc589cade9a09572";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-at91-sam9x-atmel_at91sam9263ek-squashfs-root.ubi";
              sha256 = "2ade865b916a3dfdfac0289143023b2a338c04c8b8d24dfaad181f02da262f04";
              sha256_unsigned = "2ade865b916a3dfdfac0289143023b2a338c04c8b8d24dfaad181f02da262f04";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9263ek"
          ];
          titles = [
            {
              model = "AT91SAM9263-EK";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9g15ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-at91-sam9x-atmel_at91sam9g15ek";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-at91-sam9x-atmel_at91sam9g15ek-ubifs-root.ubi";
              sha256 = "ae325c28a816ca23829561bdbb7ae4f4479aed908a6e09a9fc589cade9a09572";
              sha256_unsigned = "ae325c28a816ca23829561bdbb7ae4f4479aed908a6e09a9fc589cade9a09572";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-at91-sam9x-atmel_at91sam9g15ek-squashfs-root.ubi";
              sha256 = "2ade865b916a3dfdfac0289143023b2a338c04c8b8d24dfaad181f02da262f04";
              sha256_unsigned = "2ade865b916a3dfdfac0289143023b2a338c04c8b8d24dfaad181f02da262f04";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-at91-sam9x-atmel_at91sam9g15ek-ext4-root.ubi";
              sha256 = "392416a7be882a7b4c8a5c811a3d1dd361877d73156b2aaedb44d6676a2f97b8";
              sha256_unsigned = "392416a7be882a7b4c8a5c811a3d1dd361877d73156b2aaedb44d6676a2f97b8";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9g15ek"
          ];
          titles = [
            {
              model = "AT91SAM9G15-EK";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9g20ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-at91-sam9x-atmel_at91sam9g20ek";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-at91-sam9x-atmel_at91sam9g20ek-squashfs-root.ubi";
              sha256 = "2ade865b916a3dfdfac0289143023b2a338c04c8b8d24dfaad181f02da262f04";
              sha256_unsigned = "2ade865b916a3dfdfac0289143023b2a338c04c8b8d24dfaad181f02da262f04";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-at91-sam9x-atmel_at91sam9g20ek-ubifs-root.ubi";
              sha256 = "ae325c28a816ca23829561bdbb7ae4f4479aed908a6e09a9fc589cade9a09572";
              sha256_unsigned = "ae325c28a816ca23829561bdbb7ae4f4479aed908a6e09a9fc589cade9a09572";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-at91-sam9x-atmel_at91sam9g20ek-ext4-root.ubi";
              sha256 = "392416a7be882a7b4c8a5c811a3d1dd361877d73156b2aaedb44d6676a2f97b8";
              sha256_unsigned = "392416a7be882a7b4c8a5c811a3d1dd361877d73156b2aaedb44d6676a2f97b8";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9g20ek"
          ];
          titles = [
            {
              model = "AT91SAM9G20-EK";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9g20ek-2mmc = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-at91-sam9x-atmel_at91sam9g20ek-2mmc";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-at91-sam9x-atmel_at91sam9g20ek-2mmc-ubifs-root.ubi";
              sha256 = "ae325c28a816ca23829561bdbb7ae4f4479aed908a6e09a9fc589cade9a09572";
              sha256_unsigned = "ae325c28a816ca23829561bdbb7ae4f4479aed908a6e09a9fc589cade9a09572";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-at91-sam9x-atmel_at91sam9g20ek-2mmc-squashfs-root.ubi";
              sha256 = "2ade865b916a3dfdfac0289143023b2a338c04c8b8d24dfaad181f02da262f04";
              sha256_unsigned = "2ade865b916a3dfdfac0289143023b2a338c04c8b8d24dfaad181f02da262f04";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-at91-sam9x-atmel_at91sam9g20ek-2mmc-ext4-root.ubi";
              sha256 = "392416a7be882a7b4c8a5c811a3d1dd361877d73156b2aaedb44d6676a2f97b8";
              sha256_unsigned = "392416a7be882a7b4c8a5c811a3d1dd361877d73156b2aaedb44d6676a2f97b8";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9g20ek_2mmc"
          ];
          titles = [
            {
              model = "AT91SAM9G20-EK";
              variant = "2MMC";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9g25ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-at91-sam9x-atmel_at91sam9g25ek";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-at91-sam9x-atmel_at91sam9g25ek-ext4-root.ubi";
              sha256 = "392416a7be882a7b4c8a5c811a3d1dd361877d73156b2aaedb44d6676a2f97b8";
              sha256_unsigned = "392416a7be882a7b4c8a5c811a3d1dd361877d73156b2aaedb44d6676a2f97b8";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-at91-sam9x-atmel_at91sam9g25ek-squashfs-root.ubi";
              sha256 = "2ade865b916a3dfdfac0289143023b2a338c04c8b8d24dfaad181f02da262f04";
              sha256_unsigned = "2ade865b916a3dfdfac0289143023b2a338c04c8b8d24dfaad181f02da262f04";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-at91-sam9x-atmel_at91sam9g25ek-ubifs-root.ubi";
              sha256 = "ae325c28a816ca23829561bdbb7ae4f4479aed908a6e09a9fc589cade9a09572";
              sha256_unsigned = "ae325c28a816ca23829561bdbb7ae4f4479aed908a6e09a9fc589cade9a09572";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9g25ek"
          ];
          titles = [
            {
              model = "AT91SAM9G25-EK";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9g35ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-at91-sam9x-atmel_at91sam9g35ek";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-at91-sam9x-atmel_at91sam9g35ek-ubifs-root.ubi";
              sha256 = "ae325c28a816ca23829561bdbb7ae4f4479aed908a6e09a9fc589cade9a09572";
              sha256_unsigned = "ae325c28a816ca23829561bdbb7ae4f4479aed908a6e09a9fc589cade9a09572";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-at91-sam9x-atmel_at91sam9g35ek-ext4-root.ubi";
              sha256 = "392416a7be882a7b4c8a5c811a3d1dd361877d73156b2aaedb44d6676a2f97b8";
              sha256_unsigned = "392416a7be882a7b4c8a5c811a3d1dd361877d73156b2aaedb44d6676a2f97b8";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-at91-sam9x-atmel_at91sam9g35ek-squashfs-root.ubi";
              sha256 = "2ade865b916a3dfdfac0289143023b2a338c04c8b8d24dfaad181f02da262f04";
              sha256_unsigned = "2ade865b916a3dfdfac0289143023b2a338c04c8b8d24dfaad181f02da262f04";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9g35ek"
          ];
          titles = [
            {
              model = "AT91SAM9G35-EK";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9m10g45ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-at91-sam9x-atmel_at91sam9m10g45ek";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-at91-sam9x-atmel_at91sam9m10g45ek-ubifs-root.ubi";
              sha256 = "ae325c28a816ca23829561bdbb7ae4f4479aed908a6e09a9fc589cade9a09572";
              sha256_unsigned = "ae325c28a816ca23829561bdbb7ae4f4479aed908a6e09a9fc589cade9a09572";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-at91-sam9x-atmel_at91sam9m10g45ek-squashfs-root.ubi";
              sha256 = "2ade865b916a3dfdfac0289143023b2a338c04c8b8d24dfaad181f02da262f04";
              sha256_unsigned = "2ade865b916a3dfdfac0289143023b2a338c04c8b8d24dfaad181f02da262f04";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-at91-sam9x-atmel_at91sam9m10g45ek-ext4-root.ubi";
              sha256 = "392416a7be882a7b4c8a5c811a3d1dd361877d73156b2aaedb44d6676a2f97b8";
              sha256_unsigned = "392416a7be882a7b4c8a5c811a3d1dd361877d73156b2aaedb44d6676a2f97b8";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9m10g45ek"
          ];
          titles = [
            {
              model = "AT91SAM9M10G45-EK";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9x25ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-at91-sam9x-atmel_at91sam9x25ek";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-at91-sam9x-atmel_at91sam9x25ek-ext4-root.ubi";
              sha256 = "392416a7be882a7b4c8a5c811a3d1dd361877d73156b2aaedb44d6676a2f97b8";
              sha256_unsigned = "392416a7be882a7b4c8a5c811a3d1dd361877d73156b2aaedb44d6676a2f97b8";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-at91-sam9x-atmel_at91sam9x25ek-ext4-sdcard.img.gz";
              sha256 = "ddafda5f0c946cf207e2a9e86630628d461c0bfb55a8ca498118ab3f41661087";
              sha256_unsigned = "ddafda5f0c946cf207e2a9e86630628d461c0bfb55a8ca498118ab3f41661087";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-at91-sam9x-atmel_at91sam9x25ek-squashfs-root.ubi";
              sha256 = "2ade865b916a3dfdfac0289143023b2a338c04c8b8d24dfaad181f02da262f04";
              sha256_unsigned = "2ade865b916a3dfdfac0289143023b2a338c04c8b8d24dfaad181f02da262f04";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-at91-sam9x-atmel_at91sam9x25ek-ubifs-root.ubi";
              sha256 = "ae325c28a816ca23829561bdbb7ae4f4479aed908a6e09a9fc589cade9a09572";
              sha256_unsigned = "ae325c28a816ca23829561bdbb7ae4f4479aed908a6e09a9fc589cade9a09572";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9x25ek"
          ];
          titles = [
            {
              model = "AT91SAM9X25-EK";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9x35ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-at91-sam9x-atmel_at91sam9x35ek";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-at91-sam9x-atmel_at91sam9x35ek-ubifs-root.ubi";
              sha256 = "ae325c28a816ca23829561bdbb7ae4f4479aed908a6e09a9fc589cade9a09572";
              sha256_unsigned = "ae325c28a816ca23829561bdbb7ae4f4479aed908a6e09a9fc589cade9a09572";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-at91-sam9x-atmel_at91sam9x35ek-ext4-root.ubi";
              sha256 = "392416a7be882a7b4c8a5c811a3d1dd361877d73156b2aaedb44d6676a2f97b8";
              sha256_unsigned = "392416a7be882a7b4c8a5c811a3d1dd361877d73156b2aaedb44d6676a2f97b8";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-at91-sam9x-atmel_at91sam9x35ek-ext4-sdcard.img.gz";
              sha256 = "b1394c0664b3b54abb32ccd23f52b355fb23d62a5a86806fdcc509b8ccf07b1f";
              sha256_unsigned = "b1394c0664b3b54abb32ccd23f52b355fb23d62a5a86806fdcc509b8ccf07b1f";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-at91-sam9x-atmel_at91sam9x35ek-squashfs-root.ubi";
              sha256 = "2ade865b916a3dfdfac0289143023b2a338c04c8b8d24dfaad181f02da262f04";
              sha256_unsigned = "2ade865b916a3dfdfac0289143023b2a338c04c8b8d24dfaad181f02da262f04";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9x35ek"
          ];
          titles = [
            {
              model = "AT91SAM9X35-EK";
              vendor = "Atmel";
            }
          ];
        };
        calamp_lmu5000 = {
          device_packages = [
            "kmod-rtc-pcf2123"
            "kmod-usb-acm"
            "kmod-usb-serial-option"
            "kmod-usb-serial-sierrawireless"
            "kmod-pinctrl-mcp23s08-spi"
          ];
          image_prefix = "immortalwrt-24.10.0-at91-sam9x-calamp_lmu5000";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-at91-sam9x-calamp_lmu5000-squashfs-factory.bin";
              sha256 = "9b5573d50737193a6faf82bb620e820c11e281a7315a53bbad9f6a5e238c2683";
              sha256_unsigned = "9b5573d50737193a6faf82bb620e820c11e281a7315a53bbad9f6a5e238c2683";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-at91-sam9x-calamp_lmu5000-ext4-factory.bin";
              sha256 = "129e9d6472921ffcc13b3f45bf63baf460bd6cadeecfefafddf3936872b35781";
              sha256_unsigned = "129e9d6472921ffcc13b3f45bf63baf460bd6cadeecfefafddf3936872b35781";
              type = "factory";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-at91-sam9x-calamp_lmu5000-ubifs-factory.bin";
              sha256 = "49e8d2abd07139ec812a632ad42e29f9d1848c16c59420da7a56619bdc57a1de";
              sha256_unsigned = "49e8d2abd07139ec812a632ad42e29f9d1848c16c59420da7a56619bdc57a1de";
              type = "factory";
            }
          ];
          supported_devices = [
            "calamp,lmu5000"
          ];
          titles = [
            {
              model = "LMU5000";
              vendor = "CalAmp";
            }
          ];
        };
        calao_tny-a9260 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-at91-sam9x-calao_tny-a9260";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-at91-sam9x-calao_tny-a9260-ubifs-factory.bin";
              sha256 = "60a3e90a814e61bc7ee18b495cab557aa0c026a220e36396c72381b92e56f573";
              sha256_unsigned = "60a3e90a814e61bc7ee18b495cab557aa0c026a220e36396c72381b92e56f573";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-at91-sam9x-calao_tny-a9260-squashfs-factory.bin";
              sha256 = "5cfc134e0a3cce7577a64a064d5d86e88f661823ff7ce750c654f08fdbe81dc0";
              sha256_unsigned = "5cfc134e0a3cce7577a64a064d5d86e88f661823ff7ce750c654f08fdbe81dc0";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-at91-sam9x-calao_tny-a9260-ext4-factory.bin";
              sha256 = "00aae27df58cf6433a7c1a88c2af704924ef169289c13ec82fd32ca1f9a909b6";
              sha256_unsigned = "00aae27df58cf6433a7c1a88c2af704924ef169289c13ec82fd32ca1f9a909b6";
              type = "factory";
            }
          ];
          supported_devices = [
            "calao,tny-a9260"
          ];
          titles = [
            {
              model = "TNY A9260";
              vendor = "Calao";
            }
          ];
        };
        calao_tny-a9263 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-at91-sam9x-calao_tny-a9263";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-at91-sam9x-calao_tny-a9263-squashfs-factory.bin";
              sha256 = "49d3e7bd0e33abfb35c6c7322505527590a8b490b4a5f1266bd21f5402b62d5d";
              sha256_unsigned = "49d3e7bd0e33abfb35c6c7322505527590a8b490b4a5f1266bd21f5402b62d5d";
              type = "factory";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-at91-sam9x-calao_tny-a9263-ubifs-factory.bin";
              sha256 = "eff5c6507a2370efb727d168f134484d3a635b22601bba4d2c53360745298cc7";
              sha256_unsigned = "eff5c6507a2370efb727d168f134484d3a635b22601bba4d2c53360745298cc7";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-at91-sam9x-calao_tny-a9263-ext4-factory.bin";
              sha256 = "a2702304c2acb6d97e8c3d74013d6b2354674a72b718379f0fc2612c234dbf3b";
              sha256_unsigned = "a2702304c2acb6d97e8c3d74013d6b2354674a72b718379f0fc2612c234dbf3b";
              type = "factory";
            }
          ];
          supported_devices = [
            "atmel,tny-a9263"
          ];
          titles = [
            {
              model = "TNY A9263";
              vendor = "Calao";
            }
          ];
        };
        calao_tny-a9g20 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-at91-sam9x-calao_tny-a9g20";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-at91-sam9x-calao_tny-a9g20-squashfs-factory.bin";
              sha256 = "d9899377bc10943fc0439c15570c3e10d7606c00a91fa8bd7cb3260659d52b17";
              sha256_unsigned = "d9899377bc10943fc0439c15570c3e10d7606c00a91fa8bd7cb3260659d52b17";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-at91-sam9x-calao_tny-a9g20-ext4-factory.bin";
              sha256 = "8063450f4e4c113cb6a77c5979c79689d9f6a4f789ee301870426ca104e5f47b";
              sha256_unsigned = "8063450f4e4c113cb6a77c5979c79689d9f6a4f789ee301870426ca104e5f47b";
              type = "factory";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-at91-sam9x-calao_tny-a9g20-ubifs-factory.bin";
              sha256 = "0adc2d884bc8b7d4714c447b44a45e2273559d918257305e4e03bc449b747c6f";
              sha256_unsigned = "0adc2d884bc8b7d4714c447b44a45e2273559d918257305e4e03bc449b747c6f";
              type = "factory";
            }
          ];
          supported_devices = [
            "calao,tny-a9g20"
          ];
          titles = [
            {
              model = "TNY A9G20";
              vendor = "Calao";
            }
          ];
        };
        calao_usb-a9260 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-at91-sam9x-calao_usb-a9260";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-at91-sam9x-calao_usb-a9260-ubifs-factory.bin";
              sha256 = "8f468799ab2912835e1f0c297243abc2216f1f5a96f439ec1e96f357e0bddeb1";
              sha256_unsigned = "8f468799ab2912835e1f0c297243abc2216f1f5a96f439ec1e96f357e0bddeb1";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-at91-sam9x-calao_usb-a9260-squashfs-factory.bin";
              sha256 = "4b0340b6a76919d6f83d36dac80a71adcbfc3e4662ee134cee38f3608a866d3b";
              sha256_unsigned = "4b0340b6a76919d6f83d36dac80a71adcbfc3e4662ee134cee38f3608a866d3b";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-at91-sam9x-calao_usb-a9260-ext4-factory.bin";
              sha256 = "de8889a7c8cafcdef0cf6295eae67566e0ecf00c7fc6b00f4425319f53cebc70";
              sha256_unsigned = "de8889a7c8cafcdef0cf6295eae67566e0ecf00c7fc6b00f4425319f53cebc70";
              type = "factory";
            }
          ];
          supported_devices = [
            "calao,usb-a9260"
          ];
          titles = [
            {
              model = "USB A9260";
              vendor = "Calao";
            }
          ];
        };
        calao_usb-a9263 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-at91-sam9x-calao_usb-a9263";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-at91-sam9x-calao_usb-a9263-ext4-factory.bin";
              sha256 = "92039d2002572fc538ea1f211c47bede74734263604473b97debdcfff88b773d";
              sha256_unsigned = "92039d2002572fc538ea1f211c47bede74734263604473b97debdcfff88b773d";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-at91-sam9x-calao_usb-a9263-squashfs-factory.bin";
              sha256 = "da3a8b7111c25b9ebb85195f0f3ffb22c1293e1e4da541252d9efe08e93b826e";
              sha256_unsigned = "da3a8b7111c25b9ebb85195f0f3ffb22c1293e1e4da541252d9efe08e93b826e";
              type = "factory";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-at91-sam9x-calao_usb-a9263-ubifs-factory.bin";
              sha256 = "265571d73f0a5b0c916264fa6bea1ebda8fa13618159a21cdfe6833d234d5e78";
              sha256_unsigned = "265571d73f0a5b0c916264fa6bea1ebda8fa13618159a21cdfe6833d234d5e78";
              type = "factory";
            }
          ];
          supported_devices = [
            "atmel,usb-a9263"
          ];
          titles = [
            {
              model = "USB A9263";
              vendor = "Calao";
            }
          ];
        };
        calao_usb-a9g20 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-at91-sam9x-calao_usb-a9g20";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-at91-sam9x-calao_usb-a9g20-ubifs-factory.bin";
              sha256 = "575805cb7444a446d39a9c4017ea915e32938383b4e655c96f48432845780916";
              sha256_unsigned = "575805cb7444a446d39a9c4017ea915e32938383b4e655c96f48432845780916";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-at91-sam9x-calao_usb-a9g20-squashfs-factory.bin";
              sha256 = "10d28d2e1bb213f51837c4bf3b84637a2d58cd24833f06691919f158df6bb501";
              sha256_unsigned = "10d28d2e1bb213f51837c4bf3b84637a2d58cd24833f06691919f158df6bb501";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-at91-sam9x-calao_usb-a9g20-ext4-factory.bin";
              sha256 = "c5b392b2c0b985e9f7266b8aa6284742280432f8b7cd3cac9544de723688e8ef";
              sha256_unsigned = "c5b392b2c0b985e9f7266b8aa6284742280432f8b7cd3cac9544de723688e8ef";
              type = "factory";
            }
          ];
          supported_devices = [
            "calao,usb-a9g20"
          ];
          titles = [
            {
              model = "USB A9G20";
              vendor = "Calao";
            }
          ];
        };
        egnite_ethernut5 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-at91-sam9x-egnite_ethernut5";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-at91-sam9x-egnite_ethernut5-squashfs-root.ubi";
              sha256 = "0353fcc737d70aa9fe3b1701347f3805727765a96590621c4fff3c0fd22ba939";
              sha256_unsigned = "0353fcc737d70aa9fe3b1701347f3805727765a96590621c4fff3c0fd22ba939";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-at91-sam9x-egnite_ethernut5-ext4-root.ubi";
              sha256 = "328f93435869eb3cb53d793a8f2975a8a651196c5c428cee0262f7e075987558";
              sha256_unsigned = "328f93435869eb3cb53d793a8f2975a8a651196c5c428cee0262f7e075987558";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-at91-sam9x-egnite_ethernut5-ubifs-root.ubi";
              sha256 = "63bd58814425ed3764ba0f31a0e2092b903f2e8a25472acd38646b4848ea6bfe";
              sha256_unsigned = "63bd58814425ed3764ba0f31a0e2092b903f2e8a25472acd38646b4848ea6bfe";
              type = "root";
            }
          ];
          supported_devices = [
            "egnite,ethernut5"
          ];
          titles = [
            {
              model = "Ethernut 5";
              vendor = "egnite";
            }
          ];
        };
        laird_wb45n = {
          device_packages = [
            "kmod-mmc-at91"
            "kmod-ath6kl-sdio"
            "ath6k-firmware"
            "kmod-usb-storage"
            "kmod-fs-vfat"
            "kmod-fs-msdos"
            "kmod-leds-gpio"
          ];
          image_prefix = "immortalwrt-24.10.0-at91-sam9x-laird_wb45n";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-at91-sam9x-laird_wb45n-ext4-root.ubi";
              sha256 = "2452bd1025308babf4abee070ce84c046356659a19a66e6398cee7189871ed85";
              sha256_unsigned = "2452bd1025308babf4abee070ce84c046356659a19a66e6398cee7189871ed85";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-at91-sam9x-laird_wb45n-ubifs-root.ubi";
              sha256 = "6c30129d32fc8b0058a9a5687fbc71565ccb14acfc52d657c3c05a31d79a3e5a";
              sha256_unsigned = "6c30129d32fc8b0058a9a5687fbc71565ccb14acfc52d657c3c05a31d79a3e5a";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-at91-sam9x-laird_wb45n-squashfs-root.ubi";
              sha256 = "c5f804337c283fd489c6f21ffee52af7c0031500e432bb0ac38e80a600af7c51";
              sha256_unsigned = "c5f804337c283fd489c6f21ffee52af7c0031500e432bb0ac38e80a600af7c51";
              type = "root";
            }
          ];
          supported_devices = [
            "laird,wb45n"
          ];
          titles = [
            {
              model = "WB45N";
              vendor = "Laird";
            }
          ];
        };
        microchip_sam9x60ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-at91-sam9x-microchip_sam9x60ek";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-at91-sam9x-microchip_sam9x60ek-ext4-root.ubi";
              sha256 = "392416a7be882a7b4c8a5c811a3d1dd361877d73156b2aaedb44d6676a2f97b8";
              sha256_unsigned = "392416a7be882a7b4c8a5c811a3d1dd361877d73156b2aaedb44d6676a2f97b8";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-at91-sam9x-microchip_sam9x60ek-ubifs-root.ubi";
              sha256 = "ae325c28a816ca23829561bdbb7ae4f4479aed908a6e09a9fc589cade9a09572";
              sha256_unsigned = "ae325c28a816ca23829561bdbb7ae4f4479aed908a6e09a9fc589cade9a09572";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-at91-sam9x-microchip_sam9x60ek-squashfs-root.ubi";
              sha256 = "2ade865b916a3dfdfac0289143023b2a338c04c8b8d24dfaad181f02da262f04";
              sha256_unsigned = "2ade865b916a3dfdfac0289143023b2a338c04c8b8d24dfaad181f02da262f04";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-at91-sam9x-microchip_sam9x60ek-ext4-sdcard.img.gz";
              sha256 = "0fbbdde60ebd4caad33f3cc00c9c9c4745e18254a0d8a02ca5e69f1aa37d7df2";
              sha256_unsigned = "0fbbdde60ebd4caad33f3cc00c9c9c4745e18254a0d8a02ca5e69f1aa37d7df2";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "microchip,sam9x60ek"
          ];
          titles = [
            {
              model = "SAM9X60-EK";
              vendor = "Microchip";
            }
          ];
        };
      };
      source_date_epoch = 1738744361;
      target = "at91/sam9x";
      version_code = "r32824-6a73dae98c9c";
      version_number = "24.10.0";
    };
    sama5 = {
      arch_packages = "arm_cortex-a5_vfpv4";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-at91-udc"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-usb-gadget-eth"
        "kmod-usb-ohci"
        "kmod-usb2"
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
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "ppp"
        "ppp-mod-pppoe"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "ab9c46841c9174acda08459d561db521";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        microchip_sama5d2-icp = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-at91-sama5-microchip_sama5d2-icp";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-at91-sama5-microchip_sama5d2-icp-ext4-sdcard.img.gz";
              sha256 = "93dc1b4ac85a9be61808457294fd9db1efe6b00cb45dfd648636681f30aa7406";
              sha256_unsigned = "93dc1b4ac85a9be61808457294fd9db1efe6b00cb45dfd648636681f30aa7406";
              type = "sdcard";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-at91-sama5-microchip_sama5d2-icp-ext4-root.ubi";
              sha256 = "ab880898e939f7036e2d967c965c4a9caf2cd171a3cae3d79a4260d577bc8685";
              sha256_unsigned = "ab880898e939f7036e2d967c965c4a9caf2cd171a3cae3d79a4260d577bc8685";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-at91-sama5-microchip_sama5d2-icp-squashfs-root.ubi";
              sha256 = "b522e91bcde7d9a37cf3f36e6bbfac2f319a7654745f666eafe8426e43f64350";
              sha256_unsigned = "b522e91bcde7d9a37cf3f36e6bbfac2f319a7654745f666eafe8426e43f64350";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-at91-sama5-microchip_sama5d2-icp-ubifs-root.ubi";
              sha256 = "709cb5197b86fbee418b660f3e77a6586702051f26e70ea055e4f9f78196421c";
              sha256_unsigned = "709cb5197b86fbee418b660f3e77a6586702051f26e70ea055e4f9f78196421c";
              type = "root";
            }
          ];
          supported_devices = [
            "microchip,sama5d2-icp"
          ];
          titles = [
            {
              model = "SAMA5D2 ICP";
              vendor = "Microchip";
            }
          ];
        };
        microchip_sama5d2-ptc-ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-at91-sama5-microchip_sama5d2-ptc-ek";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-at91-sama5-microchip_sama5d2-ptc-ek-squashfs-root.ubi";
              sha256 = "b522e91bcde7d9a37cf3f36e6bbfac2f319a7654745f666eafe8426e43f64350";
              sha256_unsigned = "b522e91bcde7d9a37cf3f36e6bbfac2f319a7654745f666eafe8426e43f64350";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-at91-sama5-microchip_sama5d2-ptc-ek-ext4-root.ubi";
              sha256 = "ab880898e939f7036e2d967c965c4a9caf2cd171a3cae3d79a4260d577bc8685";
              sha256_unsigned = "ab880898e939f7036e2d967c965c4a9caf2cd171a3cae3d79a4260d577bc8685";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-at91-sama5-microchip_sama5d2-ptc-ek-ext4-sdcard.img.gz";
              sha256 = "aadbd69bee9a77555a1ab3a55c58b21bfb1233a368dae4985c698d757b4eb1ac";
              sha256_unsigned = "aadbd69bee9a77555a1ab3a55c58b21bfb1233a368dae4985c698d757b4eb1ac";
              type = "sdcard";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-at91-sama5-microchip_sama5d2-ptc-ek-ubifs-root.ubi";
              sha256 = "709cb5197b86fbee418b660f3e77a6586702051f26e70ea055e4f9f78196421c";
              sha256_unsigned = "709cb5197b86fbee418b660f3e77a6586702051f26e70ea055e4f9f78196421c";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,sama5d2-ptc_ek"
          ];
          titles = [
            {
              model = "SAMA5D2 PTC Ek";
              vendor = "Microchip";
            }
          ];
        };
        microchip_sama5d2-xplained = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-at91-sama5-microchip_sama5d2-xplained";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-at91-sama5-microchip_sama5d2-xplained-ext4-root.ubi";
              sha256 = "ab880898e939f7036e2d967c965c4a9caf2cd171a3cae3d79a4260d577bc8685";
              sha256_unsigned = "ab880898e939f7036e2d967c965c4a9caf2cd171a3cae3d79a4260d577bc8685";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-at91-sama5-microchip_sama5d2-xplained-squashfs-root.ubi";
              sha256 = "b522e91bcde7d9a37cf3f36e6bbfac2f319a7654745f666eafe8426e43f64350";
              sha256_unsigned = "b522e91bcde7d9a37cf3f36e6bbfac2f319a7654745f666eafe8426e43f64350";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-at91-sama5-microchip_sama5d2-xplained-ext4-sdcard.img.gz";
              sha256 = "053881ca7aad2225df838d33cfaa5ca48ff00896a51f5244cd2f4c5e348cf90e";
              sha256_unsigned = "053881ca7aad2225df838d33cfaa5ca48ff00896a51f5244cd2f4c5e348cf90e";
              type = "sdcard";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-at91-sama5-microchip_sama5d2-xplained-ubifs-root.ubi";
              sha256 = "709cb5197b86fbee418b660f3e77a6586702051f26e70ea055e4f9f78196421c";
              sha256_unsigned = "709cb5197b86fbee418b660f3e77a6586702051f26e70ea055e4f9f78196421c";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,sama5d2-xplained"
          ];
          titles = [
            {
              model = "SAMA5D2 Xplained";
              vendor = "Microchip";
            }
          ];
        };
        microchip_sama5d27-som1-ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-at91-sama5-microchip_sama5d27-som1-ek";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-at91-sama5-microchip_sama5d27-som1-ek-squashfs-root.ubi";
              sha256 = "b522e91bcde7d9a37cf3f36e6bbfac2f319a7654745f666eafe8426e43f64350";
              sha256_unsigned = "b522e91bcde7d9a37cf3f36e6bbfac2f319a7654745f666eafe8426e43f64350";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-at91-sama5-microchip_sama5d27-som1-ek-ubifs-root.ubi";
              sha256 = "709cb5197b86fbee418b660f3e77a6586702051f26e70ea055e4f9f78196421c";
              sha256_unsigned = "709cb5197b86fbee418b660f3e77a6586702051f26e70ea055e4f9f78196421c";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-at91-sama5-microchip_sama5d27-som1-ek-ext4-sdcard.img.gz";
              sha256 = "cea62c30b04ab843a90a994fd9299f100f8a861478f61e5d1290e76b8523a148";
              sha256_unsigned = "cea62c30b04ab843a90a994fd9299f100f8a861478f61e5d1290e76b8523a148";
              type = "sdcard";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-at91-sama5-microchip_sama5d27-som1-ek-ext4-root.ubi";
              sha256 = "ab880898e939f7036e2d967c965c4a9caf2cd171a3cae3d79a4260d577bc8685";
              sha256_unsigned = "ab880898e939f7036e2d967c965c4a9caf2cd171a3cae3d79a4260d577bc8685";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,sama5d27-som1-ek"
          ];
          titles = [
            {
              model = "SAMA5D27 SOM1 Ek";
              vendor = "Microchip";
            }
          ];
        };
        microchip_sama5d27-wlsom1-ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-at91-sama5-microchip_sama5d27-wlsom1-ek";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-at91-sama5-microchip_sama5d27-wlsom1-ek-ext4-sdcard.img.gz";
              sha256 = "bb3e9ad455d568c38f97420a6c3d0d1e6c334baac8c26a04dbfcac1d1b9aeadd";
              sha256_unsigned = "bb3e9ad455d568c38f97420a6c3d0d1e6c334baac8c26a04dbfcac1d1b9aeadd";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-at91-sama5-microchip_sama5d27-wlsom1-ek-squashfs-root.ubi";
              sha256 = "b522e91bcde7d9a37cf3f36e6bbfac2f319a7654745f666eafe8426e43f64350";
              sha256_unsigned = "b522e91bcde7d9a37cf3f36e6bbfac2f319a7654745f666eafe8426e43f64350";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-at91-sama5-microchip_sama5d27-wlsom1-ek-ext4-root.ubi";
              sha256 = "ab880898e939f7036e2d967c965c4a9caf2cd171a3cae3d79a4260d577bc8685";
              sha256_unsigned = "ab880898e939f7036e2d967c965c4a9caf2cd171a3cae3d79a4260d577bc8685";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-at91-sama5-microchip_sama5d27-wlsom1-ek-ubifs-root.ubi";
              sha256 = "709cb5197b86fbee418b660f3e77a6586702051f26e70ea055e4f9f78196421c";
              sha256_unsigned = "709cb5197b86fbee418b660f3e77a6586702051f26e70ea055e4f9f78196421c";
              type = "root";
            }
          ];
          supported_devices = [
            "microchip,sama5d27-wlsom1-ek"
          ];
          titles = [
            {
              model = "SAMA5D27 WSOM1 Ek";
              vendor = "Microchip";
            }
          ];
        };
        microchip_sama5d3-xplained = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-at91-sama5-microchip_sama5d3-xplained";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-at91-sama5-microchip_sama5d3-xplained-ext4-sdcard.img.gz";
              sha256 = "1420456952c31879bfafc0fcabbf3fc824a2bdac59f711990c54037aa27572e8";
              sha256_unsigned = "1420456952c31879bfafc0fcabbf3fc824a2bdac59f711990c54037aa27572e8";
              type = "sdcard";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-at91-sama5-microchip_sama5d3-xplained-ext4-root.ubi";
              sha256 = "ab880898e939f7036e2d967c965c4a9caf2cd171a3cae3d79a4260d577bc8685";
              sha256_unsigned = "ab880898e939f7036e2d967c965c4a9caf2cd171a3cae3d79a4260d577bc8685";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-at91-sama5-microchip_sama5d3-xplained-ubifs-root.ubi";
              sha256 = "709cb5197b86fbee418b660f3e77a6586702051f26e70ea055e4f9f78196421c";
              sha256_unsigned = "709cb5197b86fbee418b660f3e77a6586702051f26e70ea055e4f9f78196421c";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-at91-sama5-microchip_sama5d3-xplained-squashfs-root.ubi";
              sha256 = "b522e91bcde7d9a37cf3f36e6bbfac2f319a7654745f666eafe8426e43f64350";
              sha256_unsigned = "b522e91bcde7d9a37cf3f36e6bbfac2f319a7654745f666eafe8426e43f64350";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,sama5d3-xplained"
          ];
          titles = [
            {
              model = "SAMA5D3 Xplained";
              vendor = "Microchip";
            }
          ];
        };
        microchip_sama5d4-xplained = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-at91-sama5-microchip_sama5d4-xplained";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.0-at91-sama5-microchip_sama5d4-xplained-ubifs-root.ubi";
              sha256 = "8b61b4e870c265ec3c8afbab1cf922743f3a5011050fb2633da3559e2cdae67e";
              sha256_unsigned = "8b61b4e870c265ec3c8afbab1cf922743f3a5011050fb2633da3559e2cdae67e";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-at91-sama5-microchip_sama5d4-xplained-ext4-root.ubi";
              sha256 = "4e0b46e0aa5327f969f3c08935eb398f7e923e33efbd9b33fa7367af1164929c";
              sha256_unsigned = "4e0b46e0aa5327f969f3c08935eb398f7e923e33efbd9b33fa7367af1164929c";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-at91-sama5-microchip_sama5d4-xplained-squashfs-root.ubi";
              sha256 = "4c722aba780ee85245ea8c01a4b05264697f33b0916a26ff1ef5cdade06adad8";
              sha256_unsigned = "4c722aba780ee85245ea8c01a4b05264697f33b0916a26ff1ef5cdade06adad8";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-at91-sama5-microchip_sama5d4-xplained-ext4-sdcard.img.gz";
              sha256 = "5ed3219ee9ac479374b3dbf5a3071199717f858585526f50e253c2cb214ec214";
              sha256_unsigned = "5ed3219ee9ac479374b3dbf5a3071199717f858585526f50e253c2cb214ec214";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "atmel,sama5d4-xplained"
          ];
          titles = [
            {
              model = "SAMA5D4 Xplained";
              vendor = "Microchip";
            }
          ];
        };
      };
      source_date_epoch = 1738744361;
      target = "at91/sama5";
      version_code = "r32824-6a73dae98c9c";
      version_number = "24.10.0";
    };
  };
  ath79 = {
    mikrotik = {
      arch_packages = "mips_24kc";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-ath9k"
        "kmod-gpio-button-hotplug"
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
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "ppp"
        "ppp-mod-pppoe"
        "procd-ujail"
        "swconfig"
        "uboot-envtools"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
        "wpad-basic-openssl"
        "yafut"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "bf7ec5c1be2710509694c44d956f3cd1";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        mikrotik_routerboard-493g = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-493g";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-493g-initramfs-kernel.bin";
              sha256 = "fdd333ffa31c72e925f1b22af31b310d29c1ab5d2fc0e526797597d1b79d3ef1";
              sha256_unsigned = "fdd333ffa31c72e925f1b22af31b310d29c1ab5d2fc0e526797597d1b79d3ef1";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-493g-squashfs-sysupgrade.bin";
              sha256 = "40bdb9f9f2f7c206ee01c24ce2c291af769ffa59532b6a48e80682fd992af742";
              sha256_unsigned = "5fec29bb0d412efac1662da395c77119492f1e53087c6c5953a7597bd0ecee86";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-493g"
            "rb-493g"
          ];
          titles = [
            {
              model = "RouterBOARD 493G";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-750-r2 = {
          device_packages = [
            "-yafut"
          ];
          image_prefix = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-750-r2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-750-r2-initramfs-kernel.bin";
              sha256 = "29bfec491503fe37d9a90147ffb01b21b813e9908786e4a964764946a43340d7";
              sha256_unsigned = "29bfec491503fe37d9a90147ffb01b21b813e9908786e4a964764946a43340d7";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-750-r2-squashfs-sysupgrade.bin";
              sha256 = "6abfe94652d83e02f9f9b350f54b902260a8b828f0be0ddc4e94a68f71722457";
              sha256_unsigned = "a6ad94e099aa188f1e7d62307740124b446bb3af8c50482a47d5bfdad19b6869";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-750-r2"
            "rb-750-r2"
          ];
          titles = [
            {
              model = "RouterBOARD 750 r2 (hEX lite)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-911-lite = {
          device_packages = [
            "-yafut"
            "rssileds"
          ];
          image_prefix = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-911-lite";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-911-lite-initramfs-kernel.bin";
              sha256 = "c038af0f01f12c246f98c2966091dfd117647fcb5a7b7bc8b4c03d137a3a21e1";
              sha256_unsigned = "c038af0f01f12c246f98c2966091dfd117647fcb5a7b7bc8b4c03d137a3a21e1";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-911-lite-squashfs-sysupgrade.bin";
              sha256 = "ccc91265509ba9664c84edbd21f28cf049f0da10df4fc435e940bf73bfd2f191";
              sha256_unsigned = "31ce01abfae221b9a33187b4128eb49943c437d183bbfe09aa525117125c32ac";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-911-lite"
            "rb-911-2hn"
            "rb-911-5hn"
          ];
          titles = [
            {
              model = "RouterBOARD 911 Lite2/Lite5 (2Hn/5Hn)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-911g-5hpacd = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-911g-5hpacd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-911g-5hpacd-squashfs-sysupgrade.bin";
              sha256 = "63f7508b2ef6e3732bdf2d159df711e7c9180948c6d12c6f45c5a875e9843a52";
              sha256_unsigned = "c6fe12482eb925f6189c697a5ec9d9041f48d02ad88236aed1ee3a34b83d08c9";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-911g-5hpacd-initramfs-kernel.bin";
              sha256 = "4f0779917df3934866a7286e509fb0ef7f4cf75372db14f899c4ccabf79280a9";
              sha256_unsigned = "4f0779917df3934866a7286e509fb0ef7f4cf75372db14f899c4ccabf79280a9";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-911g-5hpacd"
            "rb-921gs-5hpacd-r2"
          ];
          titles = [
            {
              model = "RouterBOARD 911G-5HPacD";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-911g-xhpnd = {
          device_packages = [
            "rssileds"
          ];
          image_prefix = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-911g-xhpnd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-911g-xhpnd-initramfs-kernel.bin";
              sha256 = "6a120b51d7c2a38889da21be2099425c312fbd2416c0dc9d4be916280a2b2b36";
              sha256_unsigned = "6a120b51d7c2a38889da21be2099425c312fbd2416c0dc9d4be916280a2b2b36";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-911g-xhpnd-squashfs-sysupgrade.bin";
              sha256 = "c8100d97d78b379668980db860b1c112f9d9c27bc27c48091aaf7a11cb4a4387";
              sha256_unsigned = "1c98a9523aaa41f0c7b23d06f45f3ec1fe23eaeded4db61bc7f4cd292a07fd8f";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-911g-xhpnd"
            "rb-912uag-2hpnd"
          ];
          titles = [
            {
              model = "RouterBOARD 911G-2HPnD";
              vendor = "MikroTik";
            }
            {
              model = "RouterBOARD 911G-5HPnD";
              vendor = "Mikrotik";
            }
          ];
        };
        mikrotik_routerboard-912uag-2hpnd = {
          device_packages = [
            "kmod-usb-ehci"
            "kmod-usb2"
            "rssileds"
          ];
          image_prefix = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-912uag-2hpnd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-912uag-2hpnd-squashfs-sysupgrade.bin";
              sha256 = "919e4090172c65f2edc9d3cfad26184781365d3164a3d3919f403df25edd0beb";
              sha256_unsigned = "767b4e0fd5c5a3da781e71a9b62d5e460031abc98ca72f14899ebe1c5f8b6e3b";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-912uag-2hpnd-initramfs-kernel.bin";
              sha256 = "c916885888f1cb928c73fe416b81fb5de8db0323045806b53f0d16929f957533";
              sha256_unsigned = "c916885888f1cb928c73fe416b81fb5de8db0323045806b53f0d16929f957533";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-912uag-2hpnd"
            "rb-912uag-2hpnd"
          ];
          titles = [
            {
              model = "RouterBOARD 912UAG-2HPnD";
              vendor = "MikroTik";
            }
            {
              model = "RouterBOARD 912UAG-5HPnD";
              vendor = "Mikrotik";
            }
          ];
        };
        mikrotik_routerboard-921gs-5hpacd-15s = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "kmod-i2c-gpio"
            "kmod-sfp"
          ];
          image_prefix = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-921gs-5hpacd-15s";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-921gs-5hpacd-15s-squashfs-sysupgrade.bin";
              sha256 = "f20275ba16a8d72da4824c7054a292f3f7de12ee77ec0b6519f56701ae33843b";
              sha256_unsigned = "b10b71716f70af28d0542a10674857e74e90acd0779e8a573a19d11a04f38683";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-921gs-5hpacd-15s-initramfs-kernel.bin";
              sha256 = "1e188cd14218ed74c1befb753012e601ecb37a0849d7fb9b8f7294acf7a2f2f8";
              sha256_unsigned = "1e188cd14218ed74c1befb753012e601ecb37a0849d7fb9b8f7294acf7a2f2f8";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-921gs-5hpacd-15s"
            "rb-921gs-5hpacd-r2"
          ];
          titles = [
            {
              model = "RouterBOARD 921GS-5HPacD-15s (mANTBox 15s)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-922uags-5hpacd = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "kmod-usb2"
            "kmod-i2c-gpio"
            "kmod-sfp"
          ];
          image_prefix = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-922uags-5hpacd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-922uags-5hpacd-initramfs-kernel.bin";
              sha256 = "5d08da8ff715af95c4bbf0ec59db6e273937ab24c47282e32d7c482fe2c43b69";
              sha256_unsigned = "5d08da8ff715af95c4bbf0ec59db6e273937ab24c47282e32d7c482fe2c43b69";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-922uags-5hpacd-squashfs-sysupgrade.bin";
              sha256 = "d8af2d69b858be15873b60b004bc8d777af8e74b42b501d24a258dfa31f3643f";
              sha256_unsigned = "2913955fc984b0859d675736f0204c1e82e8fd97d2d96ee42a014d65353a7a3c";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-922uags-5hpacd"
            "rb-922uags-5hpacd"
          ];
          titles = [
            {
              model = "RouterBOARD 922UAGS-5HPacD";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-951g-2hnd = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-951g-2hnd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-951g-2hnd-squashfs-sysupgrade.bin";
              sha256 = "7f9af40ea95041fb0e7bfa1f6c965dbdc31546f55dae288e1673ea5c6133e770";
              sha256_unsigned = "17ea28d7438eeb1b7f3b6d6230337b1a5c0e0303e551edce15172f922a4b2595";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-951g-2hnd-initramfs-kernel.bin";
              sha256 = "9d90a711d6315df52c6999f62162ae9ffdac3dc5e119e86ed0f8442be59ccc09";
              sha256_unsigned = "9d90a711d6315df52c6999f62162ae9ffdac3dc5e119e86ed0f8442be59ccc09";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-951g-2hnd"
            "rb-951g-2hnd"
          ];
          titles = [
            {
              model = "RouterBOARD 951G-2HnD";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-951ui-2hnd = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-951ui-2hnd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-951ui-2hnd-squashfs-sysupgrade.bin";
              sha256 = "e5c6575de2f20578c459144d77f3a34fd3e0cd3036e6dc22915bb2202d852ded";
              sha256_unsigned = "8852dd103ec67f096b3483d2e024dd6d8f837fde6b827b39092e0351edb83356";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-951ui-2hnd-initramfs-kernel.bin";
              sha256 = "960af70081fb5d6b00a19a08e92d8eb2a7fb0f0fe2fba732098cf971432cc46c";
              sha256_unsigned = "960af70081fb5d6b00a19a08e92d8eb2a7fb0f0fe2fba732098cf971432cc46c";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-951ui-2hnd"
            "rb-951ui-2hnd"
          ];
          titles = [
            {
              model = "RouterBOARD 951Ui-2HnD";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-951ui-2nd = {
          device_packages = [
            "-yafut"
          ];
          image_prefix = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-951ui-2nd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-951ui-2nd-initramfs-kernel.bin";
              sha256 = "b31c8ccfef31baf1213368ef1b52cf319445aae6f6e9a3f43b62425ce4b88987";
              sha256_unsigned = "b31c8ccfef31baf1213368ef1b52cf319445aae6f6e9a3f43b62425ce4b88987";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-951ui-2nd-squashfs-sysupgrade.bin";
              sha256 = "f09dbb819ecf5e161d55ed6426714417c7e3a3f2d7ae5bbad2abdeae4ac3f72d";
              sha256_unsigned = "ba185b1db42d74d8c3dc71fbe6043802f1de8e38ac58cb8b631201d7518d9f23";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-951ui-2nd"
            "rb-951ui-2nd"
          ];
          titles = [
            {
              model = "RouterBOARD 951Ui-2nD (hAP)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-952ui-5ac2nd = {
          device_packages = [
            "-yafut"
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca9887-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-952ui-5ac2nd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-952ui-5ac2nd-initramfs-kernel.bin";
              sha256 = "59e25280bf0f29fac40f0a46924f2105f489f642f5ba0bf16faeba37711c2e77";
              sha256_unsigned = "59e25280bf0f29fac40f0a46924f2105f489f642f5ba0bf16faeba37711c2e77";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-952ui-5ac2nd-squashfs-sysupgrade.bin";
              sha256 = "b76bd87b54612025d1a293e12db88a8b0ecc605626e0b12ad7d56e149dfa074f";
              sha256_unsigned = "df48f4c9c4448c0847298ee8f1e81108b33fcaba2f2329b0229f59f24d10b869";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-952ui-5ac2nd"
            "rb-952ui-5ac2nd"
          ];
          titles = [
            {
              model = "RouterBOARD 952Ui-5ac2nD (hAP ac lite)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-962uigs-5hact2hnt = {
          device_packages = [
            "-yafut"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "kmod-usb2"
            "kmod-i2c-gpio"
            "kmod-sfp"
          ];
          image_prefix = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-962uigs-5hact2hnt";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-962uigs-5hact2hnt-squashfs-sysupgrade.bin";
              sha256 = "9917273e94491037eabdb67c27354a46afcf97b1641082e3ffa97ebbe9e585cb";
              sha256_unsigned = "167c133b83ca257d6e1dd79bf6c60878b39f0fa9ec485ef10c0cc59957453312";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-962uigs-5hact2hnt-initramfs-kernel.bin";
              sha256 = "cb8b119edbe4929c55cccb892873416e798b37db05de91016323728384fa21fb";
              sha256_unsigned = "cb8b119edbe4929c55cccb892873416e798b37db05de91016323728384fa21fb";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-962uigs-5hact2hnt"
            "rb-962uigs-5hact2hnt"
          ];
          titles = [
            {
              model = "RouterBOARD 962UiGS-5HacT2HnT (hAP ac)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-lhg-2nd = {
          device_packages = [
            "-yafut"
          ];
          image_prefix = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-lhg-2nd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-lhg-2nd-initramfs-kernel.bin";
              sha256 = "dee535481e3cb1b19fbeff2a53bdd461fc22150d4d8926365d2e029a82be3969";
              sha256_unsigned = "dee535481e3cb1b19fbeff2a53bdd461fc22150d4d8926365d2e029a82be3969";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-lhg-2nd-squashfs-sysupgrade.bin";
              sha256 = "e3569b24d9b9b883d5e95ee6e1f20061dceb120c286feac84355128661de065b";
              sha256_unsigned = "da75d7b966c7cb22253a8d5e99f4ba9b3d396dde2007d698fc99b2fffc7cf0db";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-lhg-2nd"
          ];
          titles = [
            {
              model = "RouterBOARD LHG 2nD (LHG 2)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-lhg-5nd = {
          device_packages = [
            "-yafut"
            "rssileds"
          ];
          image_prefix = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-lhg-5nd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-lhg-5nd-squashfs-sysupgrade.bin";
              sha256 = "3ff86d4b642b3aecd427bdee7c09ba9c61ab5c84a6c286bad10a0ae91bf7b1d8";
              sha256_unsigned = "ee17f6be4339f348f33892868e32ea7d09ee8de349545991ca762b8b2fa854dc";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-lhg-5nd-initramfs-kernel.bin";
              sha256 = "19e89a50d513d3c953aa4843cef08822509c24f44ced7d67dfcfd0944a9f67d4";
              sha256_unsigned = "19e89a50d513d3c953aa4843cef08822509c24f44ced7d67dfcfd0944a9f67d4";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-lhg-5nd"
          ];
          titles = [
            {
              model = "RouterBOARD LHG 5nD (LHG 5)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-map-2nd = {
          device_packages = [
            "-yafut"
            "kmod-usb2"
            "kmod-ledtrig-gpio"
          ];
          image_prefix = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-map-2nd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-map-2nd-initramfs-kernel.bin";
              sha256 = "3048b03c70bd55bede3d96073b8f2e8d0648daa1e74ad4f05f8491e77866552b";
              sha256_unsigned = "3048b03c70bd55bede3d96073b8f2e8d0648daa1e74ad4f05f8491e77866552b";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-map-2nd-squashfs-sysupgrade.bin";
              sha256 = "c504c7df722b22c6528b77f8de15ee4b9de0e0083cce7e0bfbf0074ac19be233";
              sha256_unsigned = "649f244acdd6db2d73d9ac62f6a036c9f1b81f4fc10bb1043ab317ee25a8700a";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-map-2nd"
          ];
          titles = [
            {
              model = "RouterBOARD mAP-2nD (mAP)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-mapl-2nd = {
          device_packages = [
            "-yafut"
          ];
          image_prefix = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-mapl-2nd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-mapl-2nd-initramfs-kernel.bin";
              sha256 = "bc3c0cc1dbd88321104316509ecdb113d2d2c816293136fc0c5cd27910a17e19";
              sha256_unsigned = "bc3c0cc1dbd88321104316509ecdb113d2d2c816293136fc0c5cd27910a17e19";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-mapl-2nd-squashfs-sysupgrade.bin";
              sha256 = "ec4477030a868ab7d7bf8dc5c110948eb45c2d237589884e0ff808f64a7571c6";
              sha256_unsigned = "3c6c78db54db803fceb958cc1006452411e522e0dcf0e14749c461d2ac942def";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-mapl-2nd"
          ];
          titles = [
            {
              model = "RouterBOARD mAPL-2nD (mAP lite)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-sxt-5nd-r2 = {
          device_packages = [
            "rssileds"
            "kmod-gpio-beeper"
          ];
          image_prefix = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-sxt-5nd-r2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-sxt-5nd-r2-squashfs-sysupgrade.bin";
              sha256 = "07e545b99e2a424f384ef3d1820a47a7b4941cf24e212cfb6547187d7ab4a674";
              sha256_unsigned = "27259735f4582c62057d8d4ea6b9377f15d22e7c15a4b48d37890b615a2be3b1";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-sxt-5nd-r2-initramfs-kernel.bin";
              sha256 = "207a10460470317ecda8e2e2ea8378bb189f8b76d2ee4887e58e0882798779d4";
              sha256_unsigned = "207a10460470317ecda8e2e2ea8378bb189f8b76d2ee4887e58e0882798779d4";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-sxt-5nd-r2"
            "rb-sxt5n"
          ];
          titles = [
            {
              model = "RouterBOARD SXT 5nD r2 (SXT Lite5)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-wap-2nd = {
          device_packages = [
            "-yafut"
          ];
          image_prefix = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-wap-2nd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-wap-2nd-initramfs-kernel.bin";
              sha256 = "21ee7c728a0fd3e890528befec0e656343b1413bf6d2ff462af701b9e036c0eb";
              sha256_unsigned = "21ee7c728a0fd3e890528befec0e656343b1413bf6d2ff462af701b9e036c0eb";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-wap-2nd-squashfs-sysupgrade.bin";
              sha256 = "5f011618babfda6c55d198fe60ad65d27a6ac8447c0d0a137ed7b5f5b73fba07";
              sha256_unsigned = "eec984bc19e09d0b465864b747aedd7a6fd3a1b7b7fabf18f06678870c55ad91";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-wap-2nd"
          ];
          titles = [
            {
              model = "RouterBOARD wAP-2nD (wAP)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-wap-g-5hact2hnd = {
          device_packages = [
            "-yafut"
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-wap-g-5hact2hnd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-wap-g-5hact2hnd-initramfs-kernel.bin";
              sha256 = "bbdc6d862798a5ae155648ba747e1ab7cdbb5d817605a92fcc9c0f796cb6f286";
              sha256_unsigned = "bbdc6d862798a5ae155648ba747e1ab7cdbb5d817605a92fcc9c0f796cb6f286";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-wap-g-5hact2hnd-squashfs-sysupgrade.bin";
              sha256 = "33c75f224df121af07936e20d0a94ff4ffd614eaa14c000334ceb3ce49b6ffdc";
              sha256_unsigned = "858d9599ca498a1049647bb77c94834c471ee1ddfc1a31efe7313a668502113a";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-wap-g-5hact2hnd"
            "rb-wapg-5hact2hnd"
          ];
          titles = [
            {
              model = "RouterBOARD wAP G-5HacT2HnD (wAP AC)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-wapr-2nd = {
          device_packages = [
            "-yafut"
            "kmod-usb2"
            "rssileds"
          ];
          image_prefix = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-wapr-2nd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-wapr-2nd-initramfs-kernel.bin";
              sha256 = "41b6d24f9d0272ad38389d93051f6fcf72e6e25a22d42de5e07c7d6956e0ae88";
              sha256_unsigned = "41b6d24f9d0272ad38389d93051f6fcf72e6e25a22d42de5e07c7d6956e0ae88";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ath79-mikrotik-mikrotik_routerboard-wapr-2nd-squashfs-sysupgrade.bin";
              sha256 = "11fdd1e9f3bafc62dc97e36fa052050e6d4dded99b3a088ba403b76a2dc3a702";
              sha256_unsigned = "ba7c2279d9b987102b5470f626e828c62864e1c84a5ea9c336539c5c352f06a6";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-wapr-2nd"
          ];
          titles = [
            {
              model = "RouterBOARD wAPR-2nD (wAP R)";
              vendor = "MikroTik";
            }
          ];
        };
      };
      source_date_epoch = 1738744361;
      target = "ath79/mikrotik";
      version_code = "r32824-6a73dae98c9c";
      version_number = "24.10.0";
    };
    tiny = {
      arch_packages = "mips_24kc";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-ath9k"
        "kmod-gpio-button-hotplug"
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
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "ppp"
        "ppp-mod-pppoe"
        "swconfig"
        "uboot-envtools"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
        "wpad-basic-openssl"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "f72615a35b2631a11f1cae8037055909";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        dlink_dap-1720-a1 = {
          device_packages = [
            "-swconfig"
            "ath10k-firmware-qca988x-ct"
            "kmod-ath10k-ct-smallbuffers"
            "rssileds"
          ];
          image_prefix = "immortalwrt-24.10.0-ath79-tiny-dlink_dap-1720-a1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ath79-tiny-dlink_dap-1720-a1-initramfs-kernel.bin";
              sha256 = "e3a38f857bb9f03f931048007ac564aa32de7a4942fba0a922e5dc65b024171c";
              sha256_unsigned = "e3a38f857bb9f03f931048007ac564aa32de7a4942fba0a922e5dc65b024171c";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ath79-tiny-dlink_dap-1720-a1-squashfs-factory.bin";
              sha256 = "76d0a6f1fa960c0b9f160746f43a816f4fe967a935aa8302d8f409206c149400";
              sha256_unsigned = "76d0a6f1fa960c0b9f160746f43a816f4fe967a935aa8302d8f409206c149400";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ath79-tiny-dlink_dap-1720-a1-squashfs-sysupgrade.bin";
              sha256 = "28e5d996a7c48268c015bae27a5eca61fc1b67cefd451a1e674764520a47a225";
              sha256_unsigned = "97f0236126804255913c702a94970b9bca3cb592a7a6dbdb1ae5eb974ce23817";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "dlink,dap-1720-a1"
          ];
          titles = [
            {
              model = "DAP-1720";
              variant = "A1";
              vendor = "D-Link";
            }
          ];
        };
        dlink_dir-859-a1 = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "kmod-ath10k-ct-smallbuffers"
          ];
          image_prefix = "immortalwrt-24.10.0-ath79-tiny-dlink_dir-859-a1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ath79-tiny-dlink_dir-859-a1-squashfs-factory.bin";
              sha256 = "fe0e4bb878de15df97d1fccab0c635f9850ab4c98cb5410ebd06546edcc35a64";
              sha256_unsigned = "fe0e4bb878de15df97d1fccab0c635f9850ab4c98cb5410ebd06546edcc35a64";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ath79-tiny-dlink_dir-859-a1-initramfs-kernel.bin";
              sha256 = "2f0f9e80bbdb99a0e0c4978d3b0484449f3e2b18f3b20747022ebb7fced76ad6";
              sha256_unsigned = "2f0f9e80bbdb99a0e0c4978d3b0484449f3e2b18f3b20747022ebb7fced76ad6";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ath79-tiny-dlink_dir-859-a1-squashfs-sysupgrade.bin";
              sha256 = "316841f919531a6d267152ab2b0e1e7aec75e1c710a5cf49e90a81383dafb913";
              sha256_unsigned = "76f342fa74ca56d94662f1aa83d18705a86ccc5b98358b3d8ad7f88b96a2499b";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "dlink,dir-859-a1"
          ];
          titles = [
            {
              model = "DIR-859";
              variant = "A1";
              vendor = "D-Link";
            }
          ];
        };
        dlink_dir-859-a3 = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "kmod-ath10k-ct-smallbuffers"
          ];
          image_prefix = "immortalwrt-24.10.0-ath79-tiny-dlink_dir-859-a3";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ath79-tiny-dlink_dir-859-a3-initramfs-kernel.bin";
              sha256 = "e451a4987c48d39dcacb08c05ef97b5b5bb248d949e4a9c040c466bd1bed4cf7";
              sha256_unsigned = "e451a4987c48d39dcacb08c05ef97b5b5bb248d949e4a9c040c466bd1bed4cf7";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ath79-tiny-dlink_dir-859-a3-squashfs-sysupgrade.bin";
              sha256 = "47dd1b87a473ff0d9d740d4d1698f7aab830b82ed7a3e6414124213d6cbd341b";
              sha256_unsigned = "a8c6557af2e5aca77d64a428e460946ab29ad81362507998d29835b78d6049bc";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ath79-tiny-dlink_dir-859-a3-squashfs-factory.bin";
              sha256 = "de02841152b836c499f8f512df6bdfdf0d93c9e4ad23cd9cf6cea26e752714b9";
              sha256_unsigned = "de02841152b836c499f8f512df6bdfdf0d93c9e4ad23cd9cf6cea26e752714b9";
              type = "factory";
            }
          ];
          supported_devices = [
            "dlink,dir-859-a3"
          ];
          titles = [
            {
              model = "DIR-859";
              variant = "A3";
              vendor = "D-Link";
            }
          ];
        };
        dlink_dir-869-a1 = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "kmod-ath10k-ct-smallbuffers"
          ];
          image_prefix = "immortalwrt-24.10.0-ath79-tiny-dlink_dir-869-a1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ath79-tiny-dlink_dir-869-a1-initramfs-kernel.bin";
              sha256 = "35df0dbd00ee83bff7a8062375c02f4e3a12f1d55b15d8f2e0c86d377b015471";
              sha256_unsigned = "35df0dbd00ee83bff7a8062375c02f4e3a12f1d55b15d8f2e0c86d377b015471";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ath79-tiny-dlink_dir-869-a1-squashfs-sysupgrade.bin";
              sha256 = "8b41f33ec7cbc9b5710ff08ad0e7e4ecedee855281c29950ce1a90e1c0f74d96";
              sha256_unsigned = "0c86c5bf2e3661a24fa8e9bc1bfae2de6edc70b5c5af4804d20b6e47326d3502";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ath79-tiny-dlink_dir-869-a1-squashfs-factory.bin";
              sha256 = "52bd0aa8b3940198e7440dd3e14a7e52542b038ac714d4752b608c64ff3c0cab";
              sha256_unsigned = "52bd0aa8b3940198e7440dd3e14a7e52542b038ac714d4752b608c64ff3c0cab";
              type = "factory";
            }
          ];
          supported_devices = [
            "dlink,dir-869-a1"
            "dir-869-a1"
          ];
          titles = [
            {
              model = "DIR-869";
              variant = "A1";
              vendor = "D-Link";
            }
          ];
        };
        nec_wg600hp = {
          device_packages = [
            "kmod-usb2"
            "-uboot-envtools"
          ];
          image_prefix = "immortalwrt-24.10.0-ath79-tiny-nec_wg600hp";
          images = [
            {
              name = "immortalwrt-24.10.0-ath79-tiny-nec_wg600hp-uboot.bin";
              sha256 = "28b43f18e62a9eaaa042f941bcf9c91f612435b2ca8f36fd5cd544af8d9d2ee6";
              sha256_unsigned = "28b43f18e62a9eaaa042f941bcf9c91f612435b2ca8f36fd5cd544af8d9d2ee6";
              type = "uboot.bin";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ath79-tiny-nec_wg600hp-initramfs-kernel.bin";
              sha256 = "837c14a1641250a60224d762aa3dbf94de3bd7223e7027c0bc906972864bd385";
              sha256_unsigned = "837c14a1641250a60224d762aa3dbf94de3bd7223e7027c0bc906972864bd385";
              type = "kernel";
            }
            {
              name = "immortalwrt-24.10.0-ath79-tiny-nec_wg600hp-initramfs-factory.bin";
              sha256 = "4f1197b634c38915a2b2f32c016f34c79b629517dc620ded8277392c8f3e5742";
              sha256_unsigned = "4f1197b634c38915a2b2f32c016f34c79b629517dc620ded8277392c8f3e5742";
              type = "initramfs-factory.bin";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ath79-tiny-nec_wg600hp-squashfs-sysupgrade.bin";
              sha256 = "0f34b0e1471c10753f1ed39e96c718a809d10c924426d970e20a04ac81b881e3";
              sha256_unsigned = "7292a185bf28a09ab0cbae097030ddd8028189295dfc750b396ceffb7563f363";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "nec,wg600hp"
          ];
          titles = [
            {
              model = "Aterm WG600HP";
              vendor = "NEC";
            }
          ];
        };
        nec_wr8750n = {
          device_packages = [
            "kmod-usb2"
            "-uboot-envtools"
          ];
          image_prefix = "immortalwrt-24.10.0-ath79-tiny-nec_wr8750n";
          images = [
            {
              name = "immortalwrt-24.10.0-ath79-tiny-nec_wr8750n-initramfs-factory.bin";
              sha256 = "6c1645f192065dd0e1f50927a303651d2bcd40a3a246ab3210081f4dd67cd4a1";
              sha256_unsigned = "6c1645f192065dd0e1f50927a303651d2bcd40a3a246ab3210081f4dd67cd4a1";
              type = "initramfs-factory.bin";
            }
            {
              name = "immortalwrt-24.10.0-ath79-tiny-nec_wr8750n-uboot.bin";
              sha256 = "28b43f18e62a9eaaa042f941bcf9c91f612435b2ca8f36fd5cd544af8d9d2ee6";
              sha256_unsigned = "28b43f18e62a9eaaa042f941bcf9c91f612435b2ca8f36fd5cd544af8d9d2ee6";
              type = "uboot.bin";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ath79-tiny-nec_wr8750n-squashfs-sysupgrade.bin";
              sha256 = "1d41e4af3de2c625c43b9fb0fa46fff8deaaec991833d80e8d4891140bdaeae9";
              sha256_unsigned = "30d35d392a9de6e98fe603e46df8f0a56a2d7f9e72706cd558f8573926d7e9ae";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ath79-tiny-nec_wr8750n-initramfs-kernel.bin";
              sha256 = "660c6fccdf40fc488b5aa90aac535d46a791dffb493a9e482602f187dfd851c1";
              sha256_unsigned = "660c6fccdf40fc488b5aa90aac535d46a791dffb493a9e482602f187dfd851c1";
              type = "kernel";
            }
          ];
          supported_devices = [
            "nec,wr8750n"
          ];
          titles = [
            {
              model = "Aterm WR8750N";
              vendor = "NEC";
            }
          ];
        };
        nec_wr9500n = {
          device_packages = [
            "kmod-usb2"
            "-uboot-envtools"
          ];
          image_prefix = "immortalwrt-24.10.0-ath79-tiny-nec_wr9500n";
          images = [
            {
              name = "immortalwrt-24.10.0-ath79-tiny-nec_wr9500n-initramfs-factory.bin";
              sha256 = "31d5e3afb92001f3707bd0756730e64182e769b591c459bd567a8f8176b04330";
              sha256_unsigned = "31d5e3afb92001f3707bd0756730e64182e769b591c459bd567a8f8176b04330";
              type = "initramfs-factory.bin";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ath79-tiny-nec_wr9500n-initramfs-kernel.bin";
              sha256 = "c5ce8e6b48f9efa07564c3a5f064daea4e2ae99fed326e862b0cf67814bf4f89";
              sha256_unsigned = "c5ce8e6b48f9efa07564c3a5f064daea4e2ae99fed326e862b0cf67814bf4f89";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ath79-tiny-nec_wr9500n-squashfs-sysupgrade.bin";
              sha256 = "338ea25fcf4de9022309fa995edb8b01260d134b72cdf9ed017208ed0b020274";
              sha256_unsigned = "09e1028d7eccd379e9890c141dad117980c93470c180eb8b850049fa9df04e10";
              type = "sysupgrade";
            }
            {
              name = "immortalwrt-24.10.0-ath79-tiny-nec_wr9500n-uboot.bin";
              sha256 = "28b43f18e62a9eaaa042f941bcf9c91f612435b2ca8f36fd5cd544af8d9d2ee6";
              sha256_unsigned = "28b43f18e62a9eaaa042f941bcf9c91f612435b2ca8f36fd5cd544af8d9d2ee6";
              type = "uboot.bin";
            }
          ];
          supported_devices = [
            "nec,wr9500n"
          ];
          titles = [
            {
              model = "Aterm WR9500N";
              vendor = "NEC";
            }
          ];
        };
      };
      source_date_epoch = 1738744361;
      target = "ath79/tiny";
      version_code = "r32824-6a73dae98c9c";
      version_number = "24.10.0";
    };
  };
  bcm27xx = {
    bcm2708 = {
      arch_packages = "arm_arm1176jzf-s_vfp";
      default_packages = [
        "autocore"
        "automount"
        "base-files"
        "bcm27xx-gpu-fw"
        "bcm27xx-utils"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-fs-vfat"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-nls-cp437"
        "kmod-nls-iso8859-1"
        "kmod-sound-arm-bcm2835"
        "kmod-sound-core"
        "kmod-usb-hid"
        "libc"
        "libgcc"
        "libustream-openssl"
        "logd"
        "luci-app-cpufreq"
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
      ];
      linux_kernel = {
        release = "1";
        vermagic = "4358b2d1867bfbe14830b9d15e4ac967";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        rpi = {
          device_packages = [
            "cypress-firmware-43430-sdio"
            "brcmfmac-nvram-43430-sdio"
            "kmod-brcmfmac"
            "wpad-basic-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm27xx-bcm2708-rpi";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-bcm27xx-bcm2708-rpi-ext4-sysupgrade.img.gz";
              sha256 = "b41fc3c7a885db24181f90c380de44d36d2dde85c0db5808c93001fad0aa602e";
              sha256_unsigned = "caf0a63a5e2f7258f85e909bdd291777de5894ecb1b1b20f25cedc960a1295df";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm27xx-bcm2708-rpi-squashfs-sysupgrade.img.gz";
              sha256 = "22f364b0efa617992d2734cb083febe3f2b2c25c12695c73194d06eff6c785d6";
              sha256_unsigned = "777438809ffca98ebd15265a6b4ebddbd900014aea36872f4834989a08242b21";
              type = "sysupgrade";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-bcm27xx-bcm2708-rpi-ext4-factory.img.gz";
              sha256 = "d58d26cf144f2b1e7a47b5e81469938e14f839a24548c993fdfc1afc75e626ed";
              sha256_unsigned = "d58d26cf144f2b1e7a47b5e81469938e14f839a24548c993fdfc1afc75e626ed";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm27xx-bcm2708-rpi-squashfs-factory.img.gz";
              sha256 = "c62a3d2b719970bf8caa212c8b3f7513fd506dba9ef31ede16670790f73d6669";
              sha256_unsigned = "c62a3d2b719970bf8caa212c8b3f7513fd506dba9ef31ede16670790f73d6669";
              type = "factory";
            }
          ];
          supported_devices = [
            "rpi-a"
            "rpi-a-plus"
            "rpi-b"
            "rpi-b-plus"
            "rpi-cm"
            "rpi-zero"
            "rpi-zero-w"
            "raspberrypi,model-a"
            "raspberrypi,model-a-plus"
            "raspberrypi,model-b"
            "raspberrypi,model-b-plus"
            "raspberrypi,model-b-rev2"
            "raspberrypi,compute-module"
            "raspberrypi,compute-module-1"
            "raspberrypi,model-zero"
            "raspberrypi,model-zero-w"
          ];
          titles = [
            {
              model = "A/A+/B/B+/CM/Zero/ZeroW";
              vendor = "Raspberry Pi";
            }
          ];
        };
      };
      source_date_epoch = 1738744361;
      target = "bcm27xx/bcm2708";
      version_code = "r32824-6a73dae98c9c";
      version_number = "24.10.0";
    };
    bcm2710 = {
      arch_packages = "aarch64_cortex-a53";
      default_packages = [
        "autocore"
        "automount"
        "base-files"
        "bcm27xx-gpu-fw"
        "bcm27xx-utils"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-fs-vfat"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-nls-cp437"
        "kmod-nls-iso8859-1"
        "kmod-sound-arm-bcm2835"
        "kmod-sound-core"
        "kmod-usb-hid"
        "libc"
        "libgcc"
        "libustream-openssl"
        "logd"
        "luci-app-cpufreq"
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
      ];
      linux_kernel = {
        release = "1";
        vermagic = "bd2b7555472b170865f7125d43d63ad1";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        rpi-3 = {
          device_packages = [
            "cypress-firmware-43430-sdio"
            "brcmfmac-nvram-43430-sdio"
            "cypress-firmware-43455-sdio"
            "brcmfmac-nvram-43455-sdio"
            "kmod-brcmfmac"
            "wpad-basic-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm27xx-bcm2710-rpi-3";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-bcm27xx-bcm2710-rpi-3-ext4-sysupgrade.img.gz";
              sha256 = "01110d51fe0aad2d69db01cd34463c65c6d3506aeda1bbe78ac5458e2d83621b";
              sha256_unsigned = "32089e3352dc9cf449eb7ee7c7bf58d5f5fa18cf2f18bfad73cdae6f52692ae2";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm27xx-bcm2710-rpi-3-squashfs-sysupgrade.img.gz";
              sha256 = "95d64bc3684e297e1f66df81be536035167b12dc1f1aea725c636653cf100fd5";
              sha256_unsigned = "9df33d356c517eb53565d89a954604d4862f10e715568dc865b0e7d75357e50b";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm27xx-bcm2710-rpi-3-squashfs-factory.img.gz";
              sha256 = "2ab91f74126b81247ccea679483b34d661c0bc2e9aa0fbc730d3ebee28231373";
              sha256_unsigned = "2ab91f74126b81247ccea679483b34d661c0bc2e9aa0fbc730d3ebee28231373";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-bcm27xx-bcm2710-rpi-3-ext4-factory.img.gz";
              sha256 = "adfd34065d9814b039c2fc40a8c055192b539096e0f8dda715468e9aa3bdbd3a";
              sha256_unsigned = "adfd34065d9814b039c2fc40a8c055192b539096e0f8dda715468e9aa3bdbd3a";
              type = "factory";
            }
          ];
          supported_devices = [
            "rpi-3-a-plus"
            "rpi-3-b"
            "rpi-3-b-plus"
            "rpi-zero-2"
            "rpi-zero-2-w"
            "raspberrypi,2-model-b-rev2"
            "raspberrypi,3-model-a-plus"
            "raspberrypi,3-model-b"
            "raspberrypi,3-model-b-plus"
            "raspberrypi,3-compute-module"
            "raspberrypi,compute-module-3"
            "raspberrypi,model-zero-2"
            "raspberrypi,model-zero-2-w"
          ];
          titles = [
            {
              model = "3A+/3B/3B+/CM3/Zero2/Zero2W";
              variant = "(64bit)";
              vendor = "Raspberry Pi";
            }
            {
              model = "2B-1.2";
              variant = "(64bit)";
              vendor = "Raspberry Pi";
            }
          ];
        };
      };
      source_date_epoch = 1738744361;
      target = "bcm27xx/bcm2710";
      version_code = "r32824-6a73dae98c9c";
      version_number = "24.10.0";
    };
    bcm2712 = {
      arch_packages = "aarch64_cortex-a76";
      default_packages = [
        "autocore"
        "automount"
        "base-files"
        "bcm27xx-gpu-fw"
        "bcm27xx-utils"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-fs-vfat"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-nls-cp437"
        "kmod-nls-iso8859-1"
        "kmod-sound-arm-bcm2835"
        "kmod-sound-core"
        "kmod-usb-hid"
        "libc"
        "libgcc"
        "libustream-openssl"
        "logd"
        "luci-app-cpufreq"
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
      ];
      linux_kernel = {
        release = "1";
        vermagic = "f8438e4beb1a9ceabdbbc86a225772b2";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        rpi-5 = {
          device_packages = [
            "cypress-firmware-43455-sdio"
            "brcmfmac-nvram-43455-sdio"
            "kmod-brcmfmac"
            "wpad-basic-mbedtls"
            "kmod-hwmon-pwmfan"
            "kmod-thermal"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm27xx-bcm2712-rpi-5";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-bcm27xx-bcm2712-rpi-5-ext4-factory.img.gz";
              sha256 = "30fbb79a8dd76cad594b66ea50c3dc0bab44880af21b410af8fd0f2218fbc250";
              sha256_unsigned = "30fbb79a8dd76cad594b66ea50c3dc0bab44880af21b410af8fd0f2218fbc250";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-bcm27xx-bcm2712-rpi-5-ext4-sysupgrade.img.gz";
              sha256 = "bf73024431dc81401e0fc1367413094e76f6761c3fbe359563e29711f212f66d";
              sha256_unsigned = "6442f405f5d96f4b3a0d0126b0f2e27e6451dd4c3007d6f4addc3a0ed57dae03";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm27xx-bcm2712-rpi-5-squashfs-sysupgrade.img.gz";
              sha256 = "0f80179ef594426198b00553ce938c3c06c8760e86081cbca42e512a903b0f18";
              sha256_unsigned = "9fbbb66b9ae97a6855ab042614bf65db7958f83c591a137cdad44a5466e60ba2";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm27xx-bcm2712-rpi-5-squashfs-factory.img.gz";
              sha256 = "7b358a329998eb5456e2450908746e2f5e2394eb44e8d3d023204b975d697813";
              sha256_unsigned = "7b358a329998eb5456e2450908746e2f5e2394eb44e8d3d023204b975d697813";
              type = "factory";
            }
          ];
          supported_devices = [
            "raspberrypi,5-model-b"
          ];
          titles = [
            {
              model = "5";
              vendor = "Raspberry Pi";
            }
          ];
        };
      };
      source_date_epoch = 1738744361;
      target = "bcm27xx/bcm2712";
      version_code = "r32824-6a73dae98c9c";
      version_number = "24.10.0";
    };
  };
  bcm47xx = {
    generic = {
      arch_packages = "mipsel_mips32";
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
        "procd-ujail"
        "swconfig"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
        "wpad-basic-openssl"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "c89eebfa90373fe5164888f90d5133d0";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        linksys_e3000-v1 = {
          device_packages = [
            "kmod-bgmac"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm47xx-generic-linksys_e3000-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm47xx-generic-linksys_e3000-v1-squashfs.bin";
              sha256 = "f19de03f0aeb746b181d0647d759de4a39b9fbf8b2658d448324988f70dca547";
              sha256_unsigned = "f19de03f0aeb746b181d0647d759de4a39b9fbf8b2658d448324988f70dca547";
              type = "bin";
            }
          ];
          supported_devices = [
            "linksys,e3000-v1"
          ];
          titles = [
            {
              model = "E3000";
              variant = "v1";
              vendor = "Linksys";
            }
          ];
        };
        linksys_wrt610n-v1 = {
          device_packages = [
            "kmod-tg3"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm47xx-generic-linksys_wrt610n-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm47xx-generic-linksys_wrt610n-v1-squashfs.bin";
              sha256 = "5280e5773d0a80229129b70296d63089b17f33a6ea96952416a90bbcb99039e3";
              sha256_unsigned = "5280e5773d0a80229129b70296d63089b17f33a6ea96952416a90bbcb99039e3";
              type = "bin";
            }
          ];
          supported_devices = [
            "linksys,wrt610n-v1"
          ];
          titles = [
            {
              model = "WRT610N";
              variant = "v1";
              vendor = "Linksys";
            }
          ];
        };
        linksys_wrt610n-v2 = {
          device_packages = [
            "kmod-bgmac"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm47xx-generic-linksys_wrt610n-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm47xx-generic-linksys_wrt610n-v2-squashfs.bin";
              sha256 = "17441bfb3effa593feeaf8bfb06f83637f9be8dba3d9c1f575b7781f5d97131d";
              sha256_unsigned = "17441bfb3effa593feeaf8bfb06f83637f9be8dba3d9c1f575b7781f5d97131d";
              type = "bin";
            }
          ];
          supported_devices = [
            "linksys,wrt610n-v2"
          ];
          titles = [
            {
              model = "WRT610N";
              variant = "v2";
              vendor = "Linksys";
            }
          ];
        };
        standard = {
          device_packages = [
            "kmod-b44"
            "kmod-bgmac"
            "kmod-tg3"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm47xx-generic-standard";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm47xx-generic-standard-squashfs.trx";
              sha256 = "19f73c5092cc7dbc0833f468a44ed75371f5bf351fbc2e8aab4cf003fd9e37d5";
              sha256_unsigned = "19f73c5092cc7dbc0833f468a44ed75371f5bf351fbc2e8aab4cf003fd9e37d5";
              type = "trx";
            }
          ];
          supported_devices = [
            "standard"
          ];
          titles = [
            {
              model = "Image with LZMA loader and LZMA compressed kernel";
              vendor = "Generic";
            }
          ];
        };
      };
      source_date_epoch = 1738744361;
      target = "bcm47xx/generic";
      version_code = "r32824-6a73dae98c9c";
      version_number = "24.10.0";
    };
    legacy = {
      arch_packages = "mipsel_mips32";
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
      linux_kernel = {
        release = "1";
        vermagic = "d19055388e2499fdfaf7b040658aacfd";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        dlink_dwl-3150 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-bcm47xx-legacy-dlink_dwl-3150";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm47xx-legacy-dlink_dwl-3150-squashfs.bin";
              sha256 = "72f8b6280a5afb11e50e1d5b73cd944bbd9a654932d42b7e28dd4c24450d7cf0";
              sha256_unsigned = "72f8b6280a5afb11e50e1d5b73cd944bbd9a654932d42b7e28dd4c24450d7cf0";
              type = "bin";
            }
          ];
          supported_devices = [
            "dlink,dwl-3150"
          ];
          titles = [
            {
              model = "DWL-3150";
              vendor = "D-Link";
            }
          ];
        };
        standard = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-bcm47xx-legacy-standard";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm47xx-legacy-standard-squashfs.trx";
              sha256 = "9f5b58deac1c282ca353c8fd2996f794ddcbf3f4f9fb0d6adb698d9de5b6447e";
              sha256_unsigned = "9f5b58deac1c282ca353c8fd2996f794ddcbf3f4f9fb0d6adb698d9de5b6447e";
              type = "trx";
            }
          ];
          supported_devices = [
            "standard"
          ];
          titles = [
            {
              model = "Image with LZMA loader and LZMA compressed kernel";
              vendor = "Generic";
            }
          ];
        };
        standard-noloader-gz = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-bcm47xx-legacy-standard-noloader-gz";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm47xx-legacy-standard-noloader-gz-squashfs.trx";
              sha256 = "75b7f43011b5e560dcd07d422da3628b3dfbcc0e2cfa6dd7dbda931dc05aaf95";
              sha256_unsigned = "75b7f43011b5e560dcd07d422da3628b3dfbcc0e2cfa6dd7dbda931dc05aaf95";
              type = "trx";
            }
          ];
          supported_devices = [
            "standard-noloader-gz"
          ];
          titles = [
            {
              model = "Image with gzipped kernel";
              vendor = "Generic";
            }
          ];
        };
      };
      source_date_epoch = 1738744361;
      target = "bcm47xx/legacy";
      version_code = "r32824-6a73dae98c9c";
      version_number = "24.10.0";
    };
  };
  bcm4908 = {
    generic = {
      arch_packages = "aarch64_cortex-a53";
      default_packages = [
        "base-files"
        "bcm4908img"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "fdt-utils"
        "firewall4"
        "fstools"
        "kmod-gpio-button-hotplug"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-usb-ledtrig-usbport"
        "kmod-usb-ohci"
        "kmod-usb2"
        "kmod-usb3"
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
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "ppp"
        "ppp-mod-pppoe"
        "procd-ujail"
        "uboot-envtools"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "b378cfc59ce3f3c5af144a02e9df870d";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        asus_gt-ac5300 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-bcm4908-generic-asus_gt-ac5300";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm4908-generic-asus_gt-ac5300-squashfs.bin";
              sha256 = "09d25cb341228d52597ccc268473357acc7c8ab6142ae8c76bdc9d081495b5fb";
              sha256_unsigned = "09d25cb341228d52597ccc268473357acc7c8ab6142ae8c76bdc9d081495b5fb";
              type = "bin";
            }
          ];
          supported_devices = [
            "asus,gt-ac5300"
          ];
          titles = [
            {
              model = "GT-AC5300";
              vendor = "ASUS";
            }
          ];
        };
        netgear_r8000p = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-bcm4908-generic-netgear_r8000p";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm4908-generic-netgear_r8000p-squashfs.bin";
              sha256 = "b8b85d76ac03446be33158e981573273c625bbf3406e10bc5596ef1e7d8db19d";
              sha256_unsigned = "b8b85d76ac03446be33158e981573273c625bbf3406e10bc5596ef1e7d8db19d";
              type = "bin";
            }
          ];
          supported_devices = [
            "netgear,r8000p"
          ];
          titles = [
            {
              model = "R8000P";
              vendor = "Netgear";
            }
          ];
        };
      };
      source_date_epoch = 1738744361;
      target = "bcm4908/generic";
      version_code = "r32824-6a73dae98c9c";
      version_number = "24.10.0";
    };
  };
  bcm53xx = {
    generic = {
      arch_packages = "arm_cortex-a9";
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
        "osafeloader"
        "oseama"
        "otrx"
        "ppp"
        "ppp-mod-pppoe"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "495200fcbf5ac25ae7d40996af581598";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        asus_rt-ac3100 = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4366b1-pcie"
            "wpad-basic-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4366c0-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm53xx-generic-asus_rt-ac3100";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm53xx-generic-asus_rt-ac3100-squashfs.trx";
              sha256 = "99e325122136b74126c4d49877b598f56f169097744657042a3dcc4a7b509fc8";
              sha256_unsigned = "99e325122136b74126c4d49877b598f56f169097744657042a3dcc4a7b509fc8";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-ac3100"
          ];
          titles = [
            {
              model = "RT-AC3100";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-ac56u = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm53xx-generic-asus_rt-ac56u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm53xx-generic-asus_rt-ac56u-squashfs.trx";
              sha256 = "59b849c5bb9886810bbf109b2f032d002c5c5dbc000851b27d4d80e1000f91a0";
              sha256_unsigned = "59b849c5bb9886810bbf109b2f032d002c5c5dbc000851b27d4d80e1000f91a0";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-ac56u"
          ];
          titles = [
            {
              model = "RT-AC56U";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-ac68u = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm53xx-generic-asus_rt-ac68u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm53xx-generic-asus_rt-ac68u-squashfs.trx";
              sha256 = "882aaf0544d0c80642f1f2b1560d315cf4ded8acfcc5b6278d42ca0b20e77551";
              sha256_unsigned = "882aaf0544d0c80642f1f2b1560d315cf4ded8acfcc5b6278d42ca0b20e77551";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-ac68u"
          ];
          titles = [
            {
              model = "RT-AC68U";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-ac87u = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm53xx-generic-asus_rt-ac87u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm53xx-generic-asus_rt-ac87u-squashfs.trx";
              sha256 = "1d25d83c6074b50dfa3d19fbb85fb767367a79bf022d36b0b0c99412696cbc98";
              sha256_unsigned = "1d25d83c6074b50dfa3d19fbb85fb767367a79bf022d36b0b0c99412696cbc98";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-ac87u"
          ];
          titles = [
            {
              model = "RT-AC87U";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-ac88u = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4366b1-pcie"
            "wpad-basic-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4366c0-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm53xx-generic-asus_rt-ac88u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm53xx-generic-asus_rt-ac88u-squashfs.trx";
              sha256 = "84dee08b07bfc9027c891dd27425e641af4c09dbfdf5924e5998b5e3413061c1";
              sha256_unsigned = "84dee08b07bfc9027c891dd27425e641af4c09dbfdf5924e5998b5e3413061c1";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-ac88u"
          ];
          titles = [
            {
              model = "RT-AC88U";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-n18u = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm53xx-generic-asus_rt-n18u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm53xx-generic-asus_rt-n18u-squashfs.trx";
              sha256 = "dedaa8ecf82932921972825ad8f34de776bab0ffd793c903706ecf323e4301a7";
              sha256_unsigned = "dedaa8ecf82932921972825ad8f34de776bab0ffd793c903706ecf323e4301a7";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-n18u"
          ];
          titles = [
            {
              model = "RT-N18U";
              vendor = "ASUS";
            }
          ];
        };
        buffalo_wxr-1900dhp = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm53xx-generic-buffalo_wxr-1900dhp";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm53xx-generic-buffalo_wxr-1900dhp-squashfs.trx";
              sha256 = "a79ab331945522adf91a58c1bcb3e571c6976415598b4f5951b59b78b5d0ec71";
              sha256_unsigned = "a79ab331945522adf91a58c1bcb3e571c6976415598b4f5951b59b78b5d0ec71";
              type = "trx";
            }
          ];
          supported_devices = [
            "buffalo,wxr-1900dhp"
          ];
          titles = [
            {
              model = "WXR-1900DHP";
              vendor = "Buffalo";
            }
          ];
        };
        buffalo_wzr-1750dhp = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm53xx-generic-buffalo_wzr-1750dhp";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm53xx-generic-buffalo_wzr-1750dhp-squashfs.trx";
              sha256 = "1f87d11e3ba6a279a130d0a6de9461d06aa2e24cc19d921857fc5717c329b021";
              sha256_unsigned = "1f87d11e3ba6a279a130d0a6de9461d06aa2e24cc19d921857fc5717c329b021";
              type = "trx";
            }
          ];
          supported_devices = [
            "buffalo,wzr-1750dhp"
          ];
          titles = [
            {
              model = "WZR-1750DHP";
              vendor = "Buffalo";
            }
          ];
        };
        buffalo_wzr-600dhp2 = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm53xx-generic-buffalo_wzr-600dhp2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm53xx-generic-buffalo_wzr-600dhp2-squashfs.trx";
              sha256 = "89a728219bf59d1f80ced210dcf07500928d5130096bac9bc546206e24f38590";
              sha256_unsigned = "89a728219bf59d1f80ced210dcf07500928d5130096bac9bc546206e24f38590";
              type = "trx";
            }
          ];
          supported_devices = [
            "buffalo,wzr-600dhp2"
          ];
          titles = [
            {
              model = "WZR-600DHP2";
              vendor = "Buffalo";
            }
          ];
        };
        buffalo_wzr-900dhp = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm53xx-generic-buffalo_wzr-900dhp";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm53xx-generic-buffalo_wzr-900dhp-squashfs.factory-DHP-EU.bin";
              sha256 = "77f911f7d62c64d295fac317fe145dc57974110e2d4f7e7a0bb8fcdfaee85562";
              sha256_unsigned = "77f911f7d62c64d295fac317fe145dc57974110e2d4f7e7a0bb8fcdfaee85562";
              type = "factory-DHP-EU";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm53xx-generic-buffalo_wzr-900dhp-squashfs.factory-DHP2-JP.bin";
              sha256 = "42d571b57160dfb5d1a7226c05312b16501d38ea15ec46b01e6f9cf3695c9302";
              sha256_unsigned = "42d571b57160dfb5d1a7226c05312b16501d38ea15ec46b01e6f9cf3695c9302";
              type = "factory-DHP2-JP";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm53xx-generic-buffalo_wzr-900dhp-squashfs.trx";
              sha256 = "82e8d1af0978c75bc49453fd1da787e9e49d698d266230ae743269014b9fced4";
              sha256_unsigned = "82e8d1af0978c75bc49453fd1da787e9e49d698d266230ae743269014b9fced4";
              type = "trx";
            }
          ];
          supported_devices = [
            "buffalo,wzr-900dhp"
          ];
          titles = [
            {
              model = "WZR-900DHP";
              vendor = "Buffalo";
            }
          ];
        };
        dlink_dir-885l = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4366b1-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm53xx-generic-dlink_dir-885l";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm53xx-generic-dlink_dir-885l-squashfs.bin";
              sha256 = "c96b07ad8918d95b43124b5cc7488a24022646cd61f4e58fbc9015de279d4571";
              sha256_unsigned = "c96b07ad8918d95b43124b5cc7488a24022646cd61f4e58fbc9015de279d4571";
              type = "bin";
            }
          ];
          supported_devices = [
            "dlink,dir-885l"
          ];
          titles = [
            {
              model = "DIR-885L";
              vendor = "D-Link";
            }
          ];
        };
        dlink_dir-890l = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-43602a1-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm53xx-generic-dlink_dir-890l";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm53xx-generic-dlink_dir-890l-squashfs.bin";
              sha256 = "165e567ec3e3683f1170503e966887e15260617fd828b4789a8cc6b354395e68";
              sha256_unsigned = "165e567ec3e3683f1170503e966887e15260617fd828b4789a8cc6b354395e68";
              type = "bin";
            }
          ];
          supported_devices = [
            "dlink,dir-890l"
          ];
          titles = [
            {
              model = "DIR-890L";
              vendor = "D-Link";
            }
          ];
        };
        dlink_dwl-8610ap = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-b43"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm53xx-generic-dlink_dwl-8610ap";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm53xx-generic-dlink_dwl-8610ap-squashfs.factory.tar";
              sha256 = "cb4aba819c7bed8267542958858d0d890493788813bf3f3800c2270b83744669";
              sha256_unsigned = "cb4aba819c7bed8267542958858d0d890493788813bf3f3800c2270b83744669";
              type = "factory";
            }
          ];
          supported_devices = [
            "dlink,dwl-8610ap"
          ];
          titles = [
            {
              model = "DWL-8610AP";
              vendor = "D-Link";
            }
          ];
        };
        linksys_ea6300-v1 = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm53xx-generic-linksys_ea6300-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm53xx-generic-linksys_ea6300-v1-squashfs.trx";
              sha256 = "c3f3cbe357ee978e140df1bb7cb3f1b509d3141a04867aadf4bf73abe2e200c9";
              sha256_unsigned = "c3f3cbe357ee978e140df1bb7cb3f1b509d3141a04867aadf4bf73abe2e200c9";
              type = "trx";
            }
          ];
          supported_devices = [
            "linksys,ea6300-v1"
          ];
          titles = [
            {
              model = "EA6300";
              variant = "v1";
              vendor = "Linksys";
            }
          ];
        };
        linksys_ea6500-v2 = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm53xx-generic-linksys_ea6500-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm53xx-generic-linksys_ea6500-v2-squashfs.trx";
              sha256 = "8afb5e3f1f36e6abff13226f7feba33a1c4fb7c3365c7043f9640390f377a81e";
              sha256_unsigned = "8afb5e3f1f36e6abff13226f7feba33a1c4fb7c3365c7043f9640390f377a81e";
              type = "trx";
            }
          ];
          supported_devices = [
            "linksys,ea6500-v2"
          ];
          titles = [
            {
              model = "EA6500";
              variant = "v2";
              vendor = "Linksys";
            }
          ];
        };
        linksys_ea9200 = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-43602a1-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm53xx-generic-linksys_ea9200";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm53xx-generic-linksys_ea9200-squashfs.trx";
              sha256 = "4d388f760cc62f209974ae8533ac6b13df2a23d7bb99429dc452c36511003a09";
              sha256_unsigned = "4d388f760cc62f209974ae8533ac6b13df2a23d7bb99429dc452c36511003a09";
              type = "trx";
            }
          ];
          supported_devices = [
            "linksys,ea9200"
          ];
          titles = [
            {
              model = "EA9200";
              variant = "v1";
              vendor = "Linksys";
            }
          ];
        };
        linksys_ea9500 = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4366c0-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm53xx-generic-linksys_ea9500";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm53xx-generic-linksys_ea9500-squashfs.trx";
              sha256 = "fbc342a8f4b86df92f0e0051ed1a0801aff1ee39aefdf37178e3c504920053d0";
              sha256_unsigned = "fbc342a8f4b86df92f0e0051ed1a0801aff1ee39aefdf37178e3c504920053d0";
              type = "trx";
            }
          ];
          supported_devices = [
            "linksys,ea9500"
          ];
          titles = [
            {
              model = "EA9500";
              vendor = "Linksys";
            }
          ];
        };
        luxul_abr-4500 = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm53xx-generic-luxul_abr-4500";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm53xx-generic-luxul_abr-4500-squashfs.lxl";
              sha256 = "16e5141da9849c1593fca869dc8f5e3c88a25b9e572f7078da655cc82c39b909";
              sha256_unsigned = "16e5141da9849c1593fca869dc8f5e3c88a25b9e572f7078da655cc82c39b909";
              type = "lxl";
            }
          ];
          supported_devices = [
            "luxul,abr-4500"
          ];
          titles = [
            {
              model = "ABR-4500";
              vendor = "Luxul";
            }
          ];
        };
        luxul_xap-1610 = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4366c0-pcie"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm53xx-generic-luxul_xap-1610";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm53xx-generic-luxul_xap-1610-squashfs.lxl";
              sha256 = "b6befc42873b1aee09deb321969b9f8206d233b06b9cf01ec5474600bc61e7db";
              sha256_unsigned = "b6befc42873b1aee09deb321969b9f8206d233b06b9cf01ec5474600bc61e7db";
              type = "lxl";
            }
          ];
          supported_devices = [
            "luxul,xap-1610"
          ];
          titles = [
            {
              model = "XAP-1610";
              vendor = "Luxul";
            }
          ];
        };
        luxul_xbr-4500 = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm53xx-generic-luxul_xbr-4500";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm53xx-generic-luxul_xbr-4500-squashfs.lxl";
              sha256 = "90c959901a81a8824f88ffad83fb20cf1e33437a4e37377b0126b6085cb9edd1";
              sha256_unsigned = "90c959901a81a8824f88ffad83fb20cf1e33437a4e37377b0126b6085cb9edd1";
              type = "lxl";
            }
          ];
          supported_devices = [
            "luxul,xbr-4500"
          ];
          titles = [
            {
              model = "XBR-4500";
              vendor = "Luxul";
            }
          ];
        };
        luxul_xwr-3150 = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4366c0-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm53xx-generic-luxul_xwr-3150";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm53xx-generic-luxul_xwr-3150-squashfs.lxl";
              sha256 = "d2b4ab55a88cade847e2f617eeaaa869a37cc717edfd8e8049a9bc7275df8d30";
              sha256_unsigned = "d2b4ab55a88cade847e2f617eeaaa869a37cc717edfd8e8049a9bc7275df8d30";
              type = "lxl";
            }
          ];
          supported_devices = [
            "luxul,xwr-3150"
          ];
          titles = [
            {
              model = "XWR-3150";
              vendor = "Luxul";
            }
          ];
        };
        meraki_mr26 = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-b43"
            "kmod-hwmon-ina2xx"
            "kmod-leds-uleds"
            "nu801"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm53xx-generic-meraki_mr26";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm53xx-generic-meraki_mr26-squashfs.trx";
              sha256 = "7fa1fd8d7e1741950a13db591bb925a061fccf45808a390bba7919a8ccc4f9fd";
              sha256_unsigned = "7fa1fd8d7e1741950a13db591bb925a061fccf45808a390bba7919a8ccc4f9fd";
              type = "trx";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm53xx-generic-meraki_mr26-squashfs.sysupgrade.bin";
              sha256 = "8c0d6ae87fd98afa7644eb958f95a84dd3b9864c288778b0d1cd755ac2dedf14";
              sha256_unsigned = "704b9308da8d3abcb55b72bb398103c81f3665c948846f04bb8340159a9d7226";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "meraki,mr26"
          ];
          titles = [
            {
              model = "MR26";
              vendor = "Meraki";
            }
          ];
        };
        meraki_mr32 = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-b43"
            "kmod-leds-pwm"
            "kmod-hwmon-ina2xx"
            "kmod-bluetooth"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm53xx-generic-meraki_mr32";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm53xx-generic-meraki_mr32-squashfs.sysupgrade.bin";
              sha256 = "43a7f744bca2060ed6cddf69df7a3d4030081ac0f79ceada5782d9b7a4899ee9";
              sha256_unsigned = "d1a707cb266f0a53a2a12cef5605863a9e64ff9ddd5ab03878b6b08421f63fe4";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm53xx-generic-meraki_mr32-squashfs.trx";
              sha256 = "b6294a7636da75071c0baf119b412189230d6cde4fda3768c21dec4fe4b1ae6c";
              sha256_unsigned = "b6294a7636da75071c0baf119b412189230d6cde4fda3768c21dec4fe4b1ae6c";
              type = "trx";
            }
          ];
          supported_devices = [
            "meraki,mr32"
          ];
          titles = [
            {
              model = "MR32";
              vendor = "Meraki";
            }
          ];
        };
        meraki_mx64 = {
          device_packages = [
            "-oseama"
            "kmod-leds-pwm"
            "kmod-usb-ehci"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm53xx-generic-meraki_mx64";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm53xx-generic-meraki_mx64-squashfs.sysupgrade.bin";
              sha256 = "949c4ee2f018e2af36f6cd755980b1b88dd1d9ae8e7716885e5bbd8be46a6ffd";
              sha256_unsigned = "09db083f1524c8a7b8ec6f32c0e862207fb443ecc5dd9d2c8fcda7001c6e5830";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "meraki,mx64"
          ];
          titles = [
            {
              model = "MX64";
              vendor = "Cisco Meraki";
            }
          ];
        };
        meraki_mx64_a0 = {
          device_packages = [
            "-oseama"
            "kmod-leds-pwm"
            "kmod-usb-ehci"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm53xx-generic-meraki_mx64_a0";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm53xx-generic-meraki_mx64_a0-squashfs.sysupgrade.bin";
              sha256 = "4cecbb06c1b8c1f90e302cda5d713e073ea96aaf870a9fdf665ee62b251e35ea";
              sha256_unsigned = "7977481fa8c9127a7aeb810ecabf9693bcff7537bd7c690382b2883d5ea0dbed";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "meraki,mx64,a0"
          ];
          titles = [
            {
              model = "MX64";
              variant = "A0";
              vendor = "Cisco Meraki";
            }
          ];
        };
        meraki_mx65 = {
          device_packages = [
            "-oseama"
            "kmod-leds-pwm"
            "kmod-usb-ehci"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm53xx-generic-meraki_mx65";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm53xx-generic-meraki_mx65-squashfs.sysupgrade.bin";
              sha256 = "99244279628e363967974090128e95e8949885824ce643c42b51d556df8df550";
              sha256_unsigned = "6e986efefcc66874a7e61c8e22123e03c968ee2dd7c0a20131cd165fba1dd836";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "meraki,mx65"
          ];
          titles = [
            {
              model = "MX65";
              vendor = "Cisco Meraki";
            }
          ];
        };
        netgear_r6250 = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm53xx-generic-netgear_r6250";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm53xx-generic-netgear_r6250-squashfs.chk";
              sha256 = "418e7d1dec7bf9330b3739ace1ec6f3094610c7ed2201bd3ac47d0ccb2a0f9af";
              sha256_unsigned = "418e7d1dec7bf9330b3739ace1ec6f3094610c7ed2201bd3ac47d0ccb2a0f9af";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,r6250"
          ];
          titles = [
            {
              model = "R6250";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_r6300-v2 = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm53xx-generic-netgear_r6300-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm53xx-generic-netgear_r6300-v2-squashfs.chk";
              sha256 = "ad49e575c2f2235ce289f14c15d76df967b44e916fa65ecd9f3012ed0848db41";
              sha256_unsigned = "ad49e575c2f2235ce289f14c15d76df967b44e916fa65ecd9f3012ed0848db41";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,r6300-v2"
          ];
          titles = [
            {
              model = "R6300";
              variant = "v2";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_r7000 = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm53xx-generic-netgear_r7000";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm53xx-generic-netgear_r7000-squashfs.chk";
              sha256 = "af0eeaa4add5f0b53dd7613357a9b15f19b9a20043e302c9fd53bf418e3ea3ed";
              sha256_unsigned = "af0eeaa4add5f0b53dd7613357a9b15f19b9a20043e302c9fd53bf418e3ea3ed";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,r7000"
          ];
          titles = [
            {
              model = "R7000";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_r7900 = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-43602a1-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm53xx-generic-netgear_r7900";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm53xx-generic-netgear_r7900-squashfs.chk";
              sha256 = "e5094c1b00516377159e9e4c6b9fd6aa909746ab635ceda571a80e7e3d61249a";
              sha256_unsigned = "e5094c1b00516377159e9e4c6b9fd6aa909746ab635ceda571a80e7e3d61249a";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,r7900"
          ];
          titles = [
            {
              model = "R7900";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_r8000 = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-43602a1-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm53xx-generic-netgear_r8000";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm53xx-generic-netgear_r8000-squashfs.chk";
              sha256 = "0832ec78b4485b9d77c6d20476c1d9319560ddaaa438eb4ad34dfad61266b995";
              sha256_unsigned = "0832ec78b4485b9d77c6d20476c1d9319560ddaaa438eb4ad34dfad61266b995";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,r8000"
          ];
          titles = [
            {
              model = "R8000";
              vendor = "NETGEAR";
            }
          ];
        };
        phicomm_k3 = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4366c0-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "-brcmfmac-firmware-4366c0-pcie"
            "brcmfmac-firmware-4366c0-pcie-k3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm53xx-generic-phicomm_k3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm53xx-generic-phicomm_k3-squashfs.trx";
              sha256 = "24f60059ce282e3eb2195d37da0fe40a2ca3598ae67d4a84a4a84e84005cd320";
              sha256_unsigned = "24f60059ce282e3eb2195d37da0fe40a2ca3598ae67d4a84a4a84e84005cd320";
              type = "trx";
            }
          ];
          supported_devices = [
            "phicomm,k3"
          ];
          titles = [
            {
              model = "K3";
              vendor = "PHICOMM";
            }
            {
              model = "QUANTUM DAX";
              vendor = "Wavlink";
            }
            {
              model = "WL-WN538A8";
              vendor = "Wavlink";
            }
          ];
        };
        smartrg_sr400ac = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-43602a1-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm53xx-generic-smartrg_sr400ac";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm53xx-generic-smartrg_sr400ac-squashfs.trx";
              sha256 = "89a66f5a2abb20fc3dc6a2004612d2e16bff2ffeb0990753445b3f1a82e49288";
              sha256_unsigned = "89a66f5a2abb20fc3dc6a2004612d2e16bff2ffeb0990753445b3f1a82e49288";
              type = "trx";
            }
          ];
          supported_devices = [
            "smartrg,sr400ac"
          ];
          titles = [
            {
              model = "SR400ac";
              vendor = "SmartRG";
            }
          ];
        };
        tenda_ac9 = {
          device_packages = [
            "wpad-basic-openssl"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-bcm53xx-generic-tenda_ac9";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-bcm53xx-generic-tenda_ac9-squashfs.trx";
              sha256 = "5f516e6355174d8e60ee3290e9c2b065264ab26573d3b2e20391be8da06190de";
              sha256_unsigned = "5f516e6355174d8e60ee3290e9c2b065264ab26573d3b2e20391be8da06190de";
              type = "trx";
            }
          ];
          supported_devices = [
            "tenda,ac9"
          ];
          titles = [
            {
              model = "AC9";
              vendor = "Tenda";
            }
          ];
        };
      };
      source_date_epoch = 1738744361;
      target = "bcm53xx/generic";
      version_code = "r32824-6a73dae98c9c";
      version_number = "24.10.0";
    };
  };
  d1 = {
    generic = {
      arch_packages = "riscv64_riscv64";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
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
        "mtd"
        "netifd"
        "nftables"
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "ppp"
        "ppp-mod-pppoe"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "42e3dfa825470e42f7d546af54a93633";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        "100ask_dongshan-nezha-stu" = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-d1-generic-100ask_dongshan-nezha-stu";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-d1-generic-100ask_dongshan-nezha-stu-squashfs-sdcard.img.gz";
              sha256 = "304e71469ff60a0c122cf16ef42daef28590caee089f1e411cb8bb266465600e";
              sha256_unsigned = "ca7217847303eb3fb6c8647e65116b86347eeb1505019bc8f657f4992a6ccb1c";
              type = "sdcard";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-d1-generic-100ask_dongshan-nezha-stu-ext4-sdcard.img.gz";
              sha256 = "9a416e7f9bee93eaa1a58f2fac9c6cd5a1739be6095b43868efe94070c50b125";
              sha256_unsigned = "80466418b6f38bec33a21a3708202dcb8a3ccef01d775f0943a36a160358ee45";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "100ask,dongshan-nezha-stu"
            "dongshan_nezha_stu"
          ];
          titles = [
            {
              model = "Nezha STU devkit";
              vendor = "Dongshan";
            }
          ];
        };
        allwinner_d1-nezha = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-d1-generic-allwinner_d1-nezha";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-d1-generic-allwinner_d1-nezha-squashfs-sdcard.img.gz";
              sha256 = "4c44eb8c478b972abcd8eeb0d06e8d6884efbba6f59c5cfa8c1e048aa794c79f";
              sha256_unsigned = "242071e4121900a77a08828689203ffd6635af55ce7524390cec97f0ec44ced5";
              type = "sdcard";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-d1-generic-allwinner_d1-nezha-ext4-sdcard.img.gz";
              sha256 = "0278287d8b4316e0fef173652edbbc37b79c76e301c5775ad46f467b4c513b1f";
              sha256_unsigned = "ab3655584e056a5be4a0823d5e11dc891099a3551af49f130e48ca0bea5118f1";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "allwinner,d1-nezha"
            "nezha"
          ];
          titles = [
            {
              model = "D1";
              vendor = "Nezha";
            }
          ];
        };
        sipeed_lichee-rv-dock = {
          device_packages = [
            "kmod-rtw88-8723ds"
            "wpad-basic-mbedtls"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-d1-generic-sipeed_lichee-rv-dock";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-d1-generic-sipeed_lichee-rv-dock-ext4-sdcard.img.gz";
              sha256 = "9122b5da23e0a28d2d57752b8b975df9908e4a3002141a569f22736839496da2";
              sha256_unsigned = "fd7b677420dfffc47a5cd20618a9585b8653e8d9b6dbfb5035691b22de829ffd";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-d1-generic-sipeed_lichee-rv-dock-squashfs-sdcard.img.gz";
              sha256 = "9f876e763f5811d1b0b9e89038639a2572dbce3baa5131bc2a7ea6dfffd3f240";
              sha256_unsigned = "52e02fc81ed09feb6e16ba335f74ab9d29cfa6b241a6e9c6d599637fc3c38e0a";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "sipeed,lichee-rv-dock"
            "lichee_rv_dock"
          ];
          titles = [
            {
              model = "LicheePi RV (dock)";
              vendor = "Sipeed";
            }
          ];
        };
        widora_mangopi-mq-pro = {
          device_packages = [
            "kmod-rtw88-8723ds"
            "wpad-basic-mbedtls"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-d1-generic-widora_mangopi-mq-pro";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-d1-generic-widora_mangopi-mq-pro-ext4-sdcard.img.gz";
              sha256 = "77ba5c2dbd1983d8d02d3e26d645757cce1e362ee42f38879d85d1b05b402c65";
              sha256_unsigned = "e3f62ca4ec412351d569adf3170be3b8ecbdc61552423e951e5d6f1b9d5ebfb5";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-d1-generic-widora_mangopi-mq-pro-squashfs-sdcard.img.gz";
              sha256 = "ff1a1ef59bfd1c826298764992b6556dd3ae04eebcc4dad50ac4b815b6597f03";
              sha256_unsigned = "a92ace61cd07e3c5acc5bf480d7bae12bc4fde1b2f6e1992fbf0678b25f35b4c";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "widora,mangopi-mq-pro"
            "mangopi_mq_pro"
          ];
          titles = [
            {
              model = "MQ Pro";
              vendor = "MangoPi";
            }
          ];
        };
      };
      source_date_epoch = 1738744361;
      target = "d1/generic";
      version_code = "r32824-6a73dae98c9c";
      version_number = "24.10.0";
    };
  };
  imx = {
    cortexa53 = {
      arch_packages = "aarch64_cortex-a53";
      default_packages = [
        "base-files"
        "blkid"
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
        "ppp"
        "ppp-mod-pppoe"
        "procd-ujail"
        "uboot-envtools"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "450f04f8379385447f77d7387b9a5d62";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        gateworks_venice = {
          device_packages = [
            "kmod-hwmon-gsc"
            "kmod-rtc-ds1672"
            "kmod-eeprom-at24"
            "kmod-gpio-button-hotplug"
            "kmod-leds-gpio"
            "kmod-pps-gpio"
            "kmod-lan743x"
            "kmod-sky2"
            "kmod-iio-st_accel-i2c"
            "kmod-can"
            "kmod-can-flexcan"
            "kmod-can-mcp251x"
          ];
          image_prefix = "immortalwrt-24.10.0-imx-cortexa53-gateworks_venice";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-imx-cortexa53-gateworks_venice-squashfs-img.gz";
              sha256 = "b2274b7e678f47cb7b7301e017c9653ecc5f9ca580c1aed89fbe709ab51aaa9e";
              sha256_unsigned = "57c70cbfa8cbcf221776f4fffffaaac2710a47bce20e7cbed91fec9fb88ed032";
              type = "img";
            }
          ];
          supported_devices = [
            "gateworks,venice"
          ];
          titles = [
            {
              model = "i.MX8M Venice";
              vendor = "Gateworks";
            }
          ];
        };
      };
      source_date_epoch = 1738744361;
      target = "imx/cortexa53";
      version_code = "r32824-6a73dae98c9c";
      version_number = "24.10.0";
    };
    cortexa7 = {
      arch_packages = "arm_cortex-a7_neon-vfpv4";
      default_packages = [
        "base-files"
        "blkid"
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
        "ppp"
        "ppp-mod-pppoe"
        "procd-ujail"
        "uboot-envtools"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "87e636f3167e487c3639904567b70d67";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        technexion_imx7d-pico-pi = {
          device_packages = [
            "kmod-sound-core"
            "kmod-sound-soc-imx"
            "kmod-sound-soc-imx-sgtl5000"
            "kmod-can"
            "kmod-can-flexcan"
            "kmod-can-raw"
            "kmod-leds-gpio"
            "kmod-input-touchscreen-edt-ft5x06"
            "kmod-usb-hid"
            "kmod-btsdio"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4339-sdio"
            "cypress-nvram-4339-sdio"
          ];
          image_prefix = "immortalwrt-24.10.0-imx-cortexa7-technexion_imx7d-pico-pi";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-imx-cortexa7-technexion_imx7d-pico-pi-squashfs-combined.bin";
              sha256 = "6f5b04c891ba8dadcee59bef1364ecbe68eaa3812723dd36af20b94fc711ac11";
              sha256_unsigned = "6f5b04c891ba8dadcee59bef1364ecbe68eaa3812723dd36af20b94fc711ac11";
              type = "combined";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-imx-cortexa7-technexion_imx7d-pico-pi-squashfs-sysupgrade.bin";
              sha256 = "df7d1e0ca821c9e841e0b0fdac501ed9f74c35fbadee812baa3568adac894d45";
              sha256_unsigned = "d3d9b96bfe29db870a05245fc4cc4e30f0533f3989b21e02c17fa79c2cb6a0e2";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "technexion,imx7d-pico-pi"
          ];
          titles = [
            {
              model = "PICO-PI-IMX7D";
              vendor = "TechNexion";
            }
          ];
        };
      };
      source_date_epoch = 1738744361;
      target = "imx/cortexa7";
      version_code = "r32824-6a73dae98c9c";
      version_number = "24.10.0";
    };
    cortexa9 = {
      arch_packages = "arm_cortex-a9_neon";
      default_packages = [
        "base-files"
        "blkid"
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
        "ppp"
        "ppp-mod-pppoe"
        "procd-ujail"
        "uboot-envtools"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "fa1956f080f53e389c94655ddf62060b";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        solidrun_cubox-i = {
          device_packages = [
            "kmod-drm-imx"
            "kmod-drm-imx-hdmi"
            "kmod-usb-hid"
          ];
          image_prefix = "immortalwrt-24.10.0-imx-cortexa9-solidrun_cubox-i";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-imx-cortexa9-solidrun_cubox-i-squashfs-combined.bin";
              sha256 = "6ffb4a302860f2546f15efb83f09d26fc57fb0821d725d4f98c13bcd2cd2b1a8";
              sha256_unsigned = "6ffb4a302860f2546f15efb83f09d26fc57fb0821d725d4f98c13bcd2cd2b1a8";
              type = "combined";
            }
          ];
          supported_devices = [
            "solidrun,cubox-i"
          ];
          titles = [
            {
              model = "CuBox-i";
              vendor = "SolidRun";
            }
          ];
        };
        toradex_apalis = {
          device_packages = [
            "kmod-can"
            "kmod-can-flexcan"
            "kmod-can-raw"
            "kmod-leds-gpio"
            "kmod-gpio-button-hotplug"
            "kmod-pps-gpio"
            "kmod-rtc-ds1307"
          ];
          image_prefix = "immortalwrt-24.10.0-imx-cortexa9-toradex_apalis";
          images = [
            {
              name = "immortalwrt-24.10.0-imx-cortexa9-toradex_apalis-recovery.scr";
              sha256 = "2ab29c5040cbd786388a2a9d945d1f059c84d6a1e8000d37674579c42aa72bba";
              sha256_unsigned = "2ab29c5040cbd786388a2a9d945d1f059c84d6a1e8000d37674579c42aa72bba";
              type = "recovery.scr";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-imx-cortexa9-toradex_apalis-squashfs.combined.bin";
              sha256 = "86f2ca38722e1031370a4157ecbe2c4be5124faf6c12367d66f950ef62aba356";
              sha256_unsigned = "86f2ca38722e1031370a4157ecbe2c4be5124faf6c12367d66f950ef62aba356";
              type = "combined";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-imx-cortexa9-toradex_apalis-squashfs.sysupgrade.bin";
              sha256 = "1776efed16dcc0f38333e739ba2df84fe34b25304dc7c5cfa44b090ed9c433fa";
              sha256_unsigned = "9f7df84aa78ec8a88a6c721c2f24d37a74e3d97b78557c8faa7b0bd7e650f686";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "apalis,ixora"
            "apalis,eval"
          ];
          titles = [
            {
              model = "Apalis family";
              vendor = "Toradex";
            }
          ];
        };
        ventana = {
          device_packages = [
            "kmod-sky2"
            "kmod-sound-core"
            "kmod-sound-soc-imx"
            "kmod-sound-soc-imx-sgtl5000"
            "kmod-can"
            "kmod-can-flexcan"
            "kmod-can-raw"
            "kmod-hwmon-gsc"
            "kmod-leds-gpio"
            "kmod-pps-gpio"
            "kobs-ng"
            "kmod-gpio-button-hotplug"
          ];
          image_prefix = "immortalwrt-24.10.0-imx-cortexa9-gateworks_ventana-large";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-imx-cortexa9-gateworks_ventana-large-squashfs-nand.ubi";
              sha256 = "ac854e55e08de289700432afaf948ed2eb8411301f1b56bdffdd2f45c627438b";
              sha256_unsigned = "ac854e55e08de289700432afaf948ed2eb8411301f1b56bdffdd2f45c627438b";
              type = "nand";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-imx-cortexa9-gateworks_ventana-squashfs-nand.ubi";
              sha256 = "e746ca3798b5d12747dc4628c4ecc707316db30bf452ed7aac6e78a7053d1cbe";
              sha256_unsigned = "e746ca3798b5d12747dc4628c4ecc707316db30bf452ed7aac6e78a7053d1cbe";
              type = "nand";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-imx-cortexa9-gateworks_ventana-squashfs-img.gz";
              sha256 = "a596648f7e3fd6bee5e6fd1e62fb80d07d6d4c872939038b50502391f2eba5f4";
              sha256_unsigned = "a596648f7e3fd6bee5e6fd1e62fb80d07d6d4c872939038b50502391f2eba5f4";
              type = "img";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-imx-cortexa9-gateworks_ventana-squashfs-bootfs.tar.gz";
              sha256 = "8b2629abded4d97a2290ac79b22117d48ff558bafab5bfa68b5fbbba59408149";
              sha256_unsigned = "8b2629abded4d97a2290ac79b22117d48ff558bafab5bfa68b5fbbba59408149";
              type = "bootfs";
            }
          ];
          supported_devices = [
            "gateworks,ventana-large"
          ];
          titles = [
            {
              model = "Ventana family";
              variant = "large NAND flash";
              vendor = "Gateworks";
            }
          ];
        };
      };
      source_date_epoch = 1738744361;
      target = "imx/cortexa9";
      version_code = "r32824-6a73dae98c9c";
      version_number = "24.10.0";
    };
  };
  ipq40xx = {
    chromium = {
      arch_packages = "arm_cortex-a7_neon-vfpv4";
      default_packages = [
        "ath10k-board-qca4019"
        "ath10k-firmware-qca4019-ct"
        "autocore"
        "automount"
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-ath10k-ct"
        "kmod-gpio-button-hotplug"
        "kmod-leds-gpio"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-usb-dwc3"
        "kmod-usb-dwc3-qcom"
        "kmod-usb3"
        "libc"
        "libgcc"
        "libustream-openssl"
        "logd"
        "luci-app-cpufreq"
        "luci-app-package-manager"
        "luci-compat"
        "luci-lib-base"
        "luci-lib-ipkg"
        "luci-light"
        "mtd"
        "netifd"
        "nftables"
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "ppp"
        "ppp-mod-pppoe"
        "procd-ujail"
        "uboot-envtools"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
        "wpad-openssl"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "094d8b16bb529404580d3a4f9ed4cba1";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        google_wifi = {
          device_packages = [
            "partx-utils"
            "mkf2fs"
            "e2fsprogs"
            "kmod-fs-ext4"
            "kmod-fs-f2fs"
            "kmod-google-firmware"
            "kmod-ramoops"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-chromium-google_wifi";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-chromium-google_wifi-initramfs-fit-zImage.itb.vboot";
              sha256 = "8629270a9c16e62fc788f31323a91d3f86221e9096062c214f5ea461ca7b914f";
              sha256_unsigned = "8629270a9c16e62fc788f31323a91d3f86221e9096062c214f5ea461ca7b914f";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-chromium-google_wifi-squashfs-sysupgrade.bin";
              sha256 = "c407f99db026b9ac39acdcd0150e86b14cc914f1c9f05dd478a56cbb72012d91";
              sha256_unsigned = "e2578529f47b1384e26fc6814fb57d731dd9c1d0ca70c8717ce40d05dfccd8ef";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-chromium-google_wifi-squashfs-factory.bin";
              sha256 = "cf575df9b66902eb5c0bbaf5aa66ad13607d0e7caeb542d723852983c4f9c499";
              sha256_unsigned = "cf575df9b66902eb5c0bbaf5aa66ad13607d0e7caeb542d723852983c4f9c499";
              type = "factory";
            }
          ];
          supported_devices = [
            "google,wifi"
          ];
          titles = [
            {
              model = "WiFi (Gale)";
              vendor = "Google";
            }
          ];
        };
      };
      source_date_epoch = 1738744361;
      target = "ipq40xx/chromium";
      version_code = "r32824-6a73dae98c9c";
      version_number = "24.10.0";
    };
    generic = {
      arch_packages = "arm_cortex-a7_neon-vfpv4";
      default_packages = [
        "ath10k-board-qca4019"
        "ath10k-firmware-qca4019-ct"
        "autocore"
        "automount"
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-ath10k-ct"
        "kmod-gpio-button-hotplug"
        "kmod-leds-gpio"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-usb-dwc3"
        "kmod-usb-dwc3-qcom"
        "kmod-usb3"
        "libc"
        "libgcc"
        "libustream-openssl"
        "logd"
        "luci-app-cpufreq"
        "luci-app-package-manager"
        "luci-compat"
        "luci-lib-base"
        "luci-lib-ipkg"
        "luci-light"
        "mtd"
        "netifd"
        "nftables"
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "ppp"
        "ppp-mod-pppoe"
        "procd-ujail"
        "uboot-envtools"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
        "wpad-openssl"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "84f9106e8227751c729160286d49cb60";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        "8dev_habanero-dvk" = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-8dev_habanero-dvk";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-8dev_habanero-dvk-initramfs-uImage.itb";
              sha256 = "b2e4ebd494e57f9fc9921c7e1da84f9d4025c562961d3c4a0cec449334fc7dc2";
              sha256_unsigned = "b2e4ebd494e57f9fc9921c7e1da84f9d4025c562961d3c4a0cec449334fc7dc2";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-8dev_habanero-dvk-squashfs-sysupgrade.bin";
              sha256 = "6645d81b49885347b850fab57c7e921537856c2bfc1466bd4bbb2289bf3a079d";
              sha256_unsigned = "ab87c8cc983f47b3e3c9065dea1cce305287e9b62edaed92372824be81eb456a";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "8dev,habanero-dvk"
          ];
          titles = [
            {
              model = "Habanero DVK";
              vendor = "8devices";
            }
          ];
        };
        "8dev_jalapeno" = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-8dev_jalapeno";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-8dev_jalapeno-initramfs-uImage.itb";
              sha256 = "056da9bdbd2131ca25d5fc2b20146d00c39161ec0bccbd86a95a226739e0230b";
              sha256_unsigned = "056da9bdbd2131ca25d5fc2b20146d00c39161ec0bccbd86a95a226739e0230b";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-8dev_jalapeno-squashfs-sysupgrade.bin";
              sha256 = "7b22df2ebe452cf8b453e3634faed9dd89dbf099963cd09f5979a791f8061240";
              sha256_unsigned = "080807abb77703771e9f3d566798e6516d3fd30e8eba9d328998bb1ff5ee1211";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-8dev_jalapeno-squashfs-factory.ubi";
              sha256 = "be6531667cef8e08774e741c7fee5fe66c5518c3192145fe2a7280a214a9bad9";
              sha256_unsigned = "be6531667cef8e08774e741c7fee5fe66c5518c3192145fe2a7280a214a9bad9";
              type = "factory";
            }
          ];
          supported_devices = [
            "8dev,jalapeno"
          ];
          titles = [
            {
              model = "Jalapeno";
              vendor = "8devices";
            }
          ];
        };
        alfa-network_ap120c-ac = {
          device_packages = [
            "kmod-usb-acm"
            "kmod-tpm-i2c-atmel"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-alfa-network_ap120c-ac";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-alfa-network_ap120c-ac-squashfs-sysupgrade.bin";
              sha256 = "7c9832c8d2a90525dadcbb56163ce4602515f5436040d7eb9b7a8b1fd5ed5c00";
              sha256_unsigned = "0cb2cf5f0ae4745ed5b4fe635f4e40bc128a03a23e9b1ace3cef3161c9250080";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-alfa-network_ap120c-ac-squashfs-factory.bin";
              sha256 = "41176963b182a3bb76e2eff201e2599a097a27babfc2a4043843676e94409a7c";
              sha256_unsigned = "41176963b182a3bb76e2eff201e2599a097a27babfc2a4043843676e94409a7c";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-alfa-network_ap120c-ac-initramfs-uImage.itb";
              sha256 = "f5ec6b5019de2ad06035bd1151f91d941249c548209af73416d8bd8cbfa6e0c4";
              sha256_unsigned = "f5ec6b5019de2ad06035bd1151f91d941249c548209af73416d8bd8cbfa6e0c4";
              type = "kernel";
            }
          ];
          supported_devices = [
            "alfa-network,ap120c-ac"
          ];
          titles = [
            {
              model = "AP120C-AC";
              vendor = "ALFA Network";
            }
          ];
        };
        aruba_ap-303 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-aruba_ap-303";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-aruba_ap-303-squashfs-sysupgrade.bin";
              sha256 = "8a7a817b3bdcd40e84f0f634e3c09f3465e09b7b4e99b7c9e4dedc7d88caff9f";
              sha256_unsigned = "c3d1cf810764b1f21d69ee2be31b13d01c658e7d7040ed7c323a72f8cf3099f7";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-aruba_ap-303-initramfs-uImage.itb";
              sha256 = "cc07e8f8bf8d45e3ba6264b6740a531981a170d975ca2e6503611013fe85b503";
              sha256_unsigned = "cc07e8f8bf8d45e3ba6264b6740a531981a170d975ca2e6503611013fe85b503";
              type = "kernel";
            }
          ];
          supported_devices = [
            "aruba,ap-303"
          ];
          titles = [
            {
              model = "AP-303";
              vendor = "Aruba";
            }
          ];
        };
        aruba_ap-303h = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-aruba_ap-303h";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-aruba_ap-303h-squashfs-sysupgrade.bin";
              sha256 = "fe4a394df4fa0d4dfc87decd6caa8df5c5db0db3b76ea4bcd6d34c45f3f88577";
              sha256_unsigned = "094d15bc2816540ed43ba90e4718d7920d0e9357bd559978b9bd9a328126d02d";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-aruba_ap-303h-initramfs-uImage.itb";
              sha256 = "08dc973bb8d6dd42834101403127fb954befadc6b9da32f43adb3d9caf057845";
              sha256_unsigned = "08dc973bb8d6dd42834101403127fb954befadc6b9da32f43adb3d9caf057845";
              type = "kernel";
            }
          ];
          supported_devices = [
            "aruba,ap-303h"
          ];
          titles = [
            {
              model = "AP-303H";
              vendor = "Aruba";
            }
          ];
        };
        aruba_ap-365 = {
          device_packages = [
            "kmod-hwmon-ad7418"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-aruba_ap-365";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-aruba_ap-365-initramfs-uImage.itb";
              sha256 = "34ce91be60a741c6026a0dd2565719aaa00b5582cfc82ede5ff7ee06bd659828";
              sha256_unsigned = "34ce91be60a741c6026a0dd2565719aaa00b5582cfc82ede5ff7ee06bd659828";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-aruba_ap-365-squashfs-sysupgrade.bin";
              sha256 = "13b8da5048f6cc6ed5ed5fce2dceb447851c77f363f807c80a865d2c4ca17bf3";
              sha256_unsigned = "c34bc47ae5c6f81608f47bd46dc0d8c832c6e88ee94dad2da0ac7a526b342ed4";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "aruba,ap-365"
          ];
          titles = [
            {
              model = "AP-365";
              vendor = "Aruba";
            }
          ];
        };
        asus_map-ac2200 = {
          device_packages = [
            "ath10k-firmware-qca9888-ct"
            "kmod-ath3k"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-asus_map-ac2200";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-asus_map-ac2200-initramfs-uImage.itb";
              sha256 = "ef7ca9c524679aa981a7c736b40fe3b3e7ed484febae069d31a9f41c27ddb31c";
              sha256_unsigned = "ef7ca9c524679aa981a7c736b40fe3b3e7ed484febae069d31a9f41c27ddb31c";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-asus_map-ac2200-squashfs-sysupgrade.bin";
              sha256 = "f30f32b0aea6c4651b0538f443ab2f86e1b8a3152f05de079fd1cd20cccb0e6e";
              sha256_unsigned = "46615ac832a2b20c1c4bd6e2138f21bed6af7a083da6d1fa4442dac27eaa261d";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "asus,map-ac2200"
          ];
          titles = [
            {
              model = "Lyra (MAP-AC2200)";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-ac42u = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-asus_rt-ac42u";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-asus_rt-ac42u-initramfs-uImage.itb";
              sha256 = "774f1f3fdfd1552d852b174c687398f127973824e2a16b101f15a72533c3d132";
              sha256_unsigned = "774f1f3fdfd1552d852b174c687398f127973824e2a16b101f15a72533c3d132";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-asus_rt-ac42u-squashfs-sysupgrade.bin";
              sha256 = "84a6a4af5c2237a5e7cadf0fe695800a2b2c79268f9d90968c57a88bcaa1d475";
              sha256_unsigned = "a9c3c19f9331ef03d40fda371544e027f090017b3b6a3fb25d957a6d66f52427";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "asus,rt-ac42u"
          ];
          titles = [
            {
              model = "RT-AC42U";
              vendor = "ASUS";
            }
            {
              model = "RT-ACRH17";
              vendor = "ASUS";
            }
            {
              model = "RT-AC2200";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-ac58u = {
          device_packages = [
            "-kmod-ath10k-ct"
            "kmod-ath10k-ct-smallbuffers"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-asus_rt-ac58u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-asus_rt-ac58u-squashfs-sysupgrade.bin";
              sha256 = "2b0a30753565accdc5b351f43372ae00d2a216f7648b1fb23095d02ae436957f";
              sha256_unsigned = "ff36d536b498c22238d003ccd16773d22c425b31a03407f944c8c2ba66433bfa";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-asus_rt-ac58u-initramfs-uImage.itb";
              sha256 = "4bdc50176fbae3f3481c761249a4427818619f4cd0a6f2e18e68e5bb0d7f7c62";
              sha256_unsigned = "4bdc50176fbae3f3481c761249a4427818619f4cd0a6f2e18e68e5bb0d7f7c62";
              type = "kernel";
            }
          ];
          supported_devices = [
            "asus,rt-ac58u"
          ];
          titles = [
            {
              model = "RT-AC58U";
              vendor = "ASUS";
            }
            {
              model = "RT-ACRH13";
              vendor = "ASUS";
            }
          ];
        };
        avm_fritzbox-4040 = {
          device_packages = [
            "fritz-tffs"
            "fritz-caldata"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-avm_fritzbox-4040";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-avm_fritzbox-4040-squashfs-eva.bin";
              sha256 = "11a8b456549825da0879c37127bd69de268c8f8e592d6cddd8f8ab75f984350b";
              sha256_unsigned = "11a8b456549825da0879c37127bd69de268c8f8e592d6cddd8f8ab75f984350b";
              type = "eva";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-avm_fritzbox-4040-squashfs-sysupgrade.bin";
              sha256 = "3c8337a6507dc1b68ebdc51b9e03e8a253bb1449d140a8e88cb8dd5750fa9748";
              sha256_unsigned = "57e67ea9aaf8a9c016a911f370c6937839a30709d7c5c96cca935a105b521af5";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-avm_fritzbox-4040-initramfs-uImage.itb";
              sha256 = "906c476deef285c4b61867444dd9de85a4100f2d925c019e5ee085820b3c4bc9";
              sha256_unsigned = "906c476deef285c4b61867444dd9de85a4100f2d925c019e5ee085820b3c4bc9";
              type = "kernel";
            }
          ];
          supported_devices = [
            "avm,fritzbox-4040"
          ];
          titles = [
            {
              model = "FRITZ!Box 4040";
              vendor = "AVM";
            }
          ];
        };
        avm_fritzbox-7530 = {
          device_packages = [
            "fritz-caldata"
            "fritz-tffs-nand"
            "ltq-vdsl-vr11-app"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-avm_fritzbox-7530";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-avm_fritzbox-7530-initramfs-uImage.itb";
              sha256 = "3f7e7b61c9dd7e4613619d5fa8b0e08a3b6741202354921d04052eac87c43131";
              sha256_unsigned = "3f7e7b61c9dd7e4613619d5fa8b0e08a3b6741202354921d04052eac87c43131";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-avm_fritzbox-7530-squashfs-sysupgrade.bin";
              sha256 = "329a0d8f9f7affe0c92914c8c01b253f7cde01f5da00e9bf3fd0f98cc84b1b10";
              sha256_unsigned = "9a5a315e6d1d3bf5b2fb447df6a374a575de2d98153409630464c2e40515ee5f";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "avm,fritzbox-7530"
          ];
          titles = [
            {
              model = "FRITZ!Box 7530";
              vendor = "AVM";
            }
            {
              model = "FRITZ!Box 7520";
              vendor = "AVM";
            }
          ];
        };
        avm_fritzrepeater-1200 = {
          device_packages = [
            "fritz-caldata"
            "fritz-tffs-nand"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-avm_fritzrepeater-1200";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-avm_fritzrepeater-1200-squashfs-sysupgrade.bin";
              sha256 = "542fb0c1a084e120ccda80e483b387939fee9bfb4a950ec0e6b1bee120111e01";
              sha256_unsigned = "e1f851b839f62310c80f1364d97c1bb2569d3ac86a4356a5b969fbe361a3f84e";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-avm_fritzrepeater-1200-initramfs-uImage.itb";
              sha256 = "5fc997ce23905d4410b9a7bb5cd3a8fc29c77391ddcac9b48c048203648ccd99";
              sha256_unsigned = "5fc997ce23905d4410b9a7bb5cd3a8fc29c77391ddcac9b48c048203648ccd99";
              type = "kernel";
            }
          ];
          supported_devices = [
            "avm,fritzrepeater-1200"
          ];
          titles = [
            {
              model = "FRITZ!Repeater 1200";
              vendor = "AVM";
            }
          ];
        };
        avm_fritzrepeater-3000 = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
            "fritz-caldata"
            "fritz-tffs-nand"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-avm_fritzrepeater-3000";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-avm_fritzrepeater-3000-initramfs-uImage.itb";
              sha256 = "5d154f549b71ae21044548c1fd97b1d72784f766643718e56d364302c00aebd0";
              sha256_unsigned = "5d154f549b71ae21044548c1fd97b1d72784f766643718e56d364302c00aebd0";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-avm_fritzrepeater-3000-squashfs-sysupgrade.bin";
              sha256 = "53e09cd3d98264500a8e8d4511f1124aa010f3b98458c99074f605fd5e5de9cb";
              sha256_unsigned = "3b2b5ab9333414fbb3bd410384b47175d9b5daa9e5381cb600fd4d756c8f6361";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "avm,fritzrepeater-3000"
          ];
          titles = [
            {
              model = "FRITZ!Repeater 3000";
              vendor = "AVM";
            }
          ];
        };
        buffalo_wtr-m2133hp = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-buffalo_wtr-m2133hp";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-buffalo_wtr-m2133hp-squashfs-sysupgrade.bin";
              sha256 = "470476dac24a34ea3b2263df8427c2931fb7f2d5458e04266d671387f302163a";
              sha256_unsigned = "5c19980e9780aae6c2d635bb08b4092e8593549a615df9ebf623fc59e0e2d670";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-buffalo_wtr-m2133hp-squashfs-factory.ubi";
              sha256 = "c2d337bbe470854df614d59da7cd2b0ef34ff6c86ad7fd3f8da5c2eebf932cb1";
              sha256_unsigned = "c2d337bbe470854df614d59da7cd2b0ef34ff6c86ad7fd3f8da5c2eebf932cb1";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-buffalo_wtr-m2133hp-initramfs-uImage.itb";
              sha256 = "582ac91380060f99fec285b1aa09e5b556ac2b1e39610ec5ef1655ab097c96a9";
              sha256_unsigned = "582ac91380060f99fec285b1aa09e5b556ac2b1e39610ec5ef1655ab097c96a9";
              type = "kernel";
            }
          ];
          supported_devices = [
            "buffalo,wtr-m2133hp"
          ];
          titles = [
            {
              model = "WTR-M2133HP";
              vendor = "Buffalo";
            }
          ];
        };
        cellc_rtl30vw = {
          device_packages = [
            "kmod-usb-net-qmi-wwan"
            "kmod-usb-serial-option"
            "uqmi"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-cellc_rtl30vw";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-cellc_rtl30vw-initramfs-zImage.itb";
              sha256 = "c08b5ce229e911b5dfe3dd77ecf539e09d36f735046b944c7be7c79734d35e52";
              sha256_unsigned = "c08b5ce229e911b5dfe3dd77ecf539e09d36f735046b944c7be7c79734d35e52";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-cellc_rtl30vw-squashfs-sysupgrade.bin";
              sha256 = "9596dd72b5d3904ae6e6ebfb25c5c2e9d504329a5c3bdd2bbed931d8e6d3c245";
              sha256_unsigned = "8af9674a0406f044a77a9600ea8c705c6bc52322c5f6bf8de127eeda61752096";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-cellc_rtl30vw-squashfs-factory.bin";
              sha256 = "168a204c31eda93ec2691ca759b4368d43b5179925e075703688b63ecf2267d1";
              sha256_unsigned = "168a204c31eda93ec2691ca759b4368d43b5179925e075703688b63ecf2267d1";
              type = "factory";
            }
          ];
          supported_devices = [
            "cellc,rtl30vw"
          ];
          titles = [
            {
              model = "RTL30VW";
              vendor = "Cell C";
            }
          ];
        };
        dlink_dap-2610 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-dlink_dap-2610";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-dlink_dap-2610-squashfs-factory.bin";
              sha256 = "36d5c70cd1d2d6b86d36cf82734f5241f873555b84dcb1b2c1bb672f6f5c0bd3";
              sha256_unsigned = "36d5c70cd1d2d6b86d36cf82734f5241f873555b84dcb1b2c1bb672f6f5c0bd3";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-dlink_dap-2610-squashfs-sysupgrade.bin";
              sha256 = "31376753242525ec7428e18fc0458e4c6bf29eb742fd1c57f218e677f54969c7";
              sha256_unsigned = "513da085ff83149b1b9e7cc868a42b8bd8d85e7c6f14b8a58447d962eda0c929";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-dlink_dap-2610-initramfs-uImage.itb";
              sha256 = "1c355080bdb1f8b605ae567985f62178e7364719ce87279555cf8542488bbaa2";
              sha256_unsigned = "1c355080bdb1f8b605ae567985f62178e7364719ce87279555cf8542488bbaa2";
              type = "kernel";
            }
          ];
          supported_devices = [
            "dlink,dap-2610"
          ];
          titles = [
            {
              model = "DAP-2610";
              vendor = "D-Link";
            }
          ];
        };
        edgecore_ecw5211 = {
          device_packages = [
            "kmod-tpm-i2c-atmel"
            "kmod-usb-acm"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-edgecore_ecw5211";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-edgecore_ecw5211-initramfs-uImage.itb";
              sha256 = "604d9b184ea51b031d0bc1a3640a4fb77c70773dd52e5a2c9881ec9c20304e3e";
              sha256_unsigned = "604d9b184ea51b031d0bc1a3640a4fb77c70773dd52e5a2c9881ec9c20304e3e";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-edgecore_ecw5211-squashfs-factory.ubi";
              sha256 = "255217b872fe0673805f57a32e6a7df6f8fd34f1af42181e20026d8b18969383";
              sha256_unsigned = "255217b872fe0673805f57a32e6a7df6f8fd34f1af42181e20026d8b18969383";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-edgecore_ecw5211-squashfs-sysupgrade.bin";
              sha256 = "a77a0a51991cdc7ac8fdfadb14a03bb7e56e77c16f8b153553568b06d749233a";
              sha256_unsigned = "eff670c9355e3c686d3e10d98ed41846b347eb6b5140df5b6c8b7546c655c836";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "edgecore,ecw5211"
          ];
          titles = [
            {
              model = "ECW5211";
              vendor = "Edgecore";
            }
          ];
        };
        engenius_eap1300 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-engenius_eap1300";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-engenius_eap1300-squashfs-sysupgrade.bin";
              sha256 = "0111c9afe5046752f84d5cbafa1e6a1d5141580ac07b71bf399a8fac510e64cd";
              sha256_unsigned = "196d701ae4820bfb73191cff99c64d4e62899975f68cdeba1f6a39772561a695";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-engenius_eap1300-initramfs-uImage.itb";
              sha256 = "9e14cf32ce940f74e831a7381b6f9b465f8f20c496ae37ed876e97beeed52c9a";
              sha256_unsigned = "9e14cf32ce940f74e831a7381b6f9b465f8f20c496ae37ed876e97beeed52c9a";
              type = "kernel";
            }
          ];
          supported_devices = [
            "engenius,eap1300"
          ];
          titles = [
            {
              model = "EAP1300";
              vendor = "EnGenius";
            }
            {
              model = "EAP1300EXT";
              vendor = "EnGenius";
            }
          ];
        };
        extreme-networks_ws-ap3915i = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-extreme-networks_ws-ap3915i";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-extreme-networks_ws-ap3915i-initramfs-uImage.itb";
              sha256 = "491dcbaecc0838db232fe52923ad2c67439890d39dec927903fb6fe8aee8e4d3";
              sha256_unsigned = "491dcbaecc0838db232fe52923ad2c67439890d39dec927903fb6fe8aee8e4d3";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-extreme-networks_ws-ap3915i-squashfs-sysupgrade.bin";
              sha256 = "f62dc90444f08bb7bb2cc209996ec3947f6f9dd18826344e21697d4584c16484";
              sha256_unsigned = "5cd9fa3617c406a667980a6188ebf23072b173c525bc154efaa71efa8f8c1d53";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "extreme-networks,ws-ap3915i"
          ];
          titles = [
            {
              model = "WS-AP3915i";
              vendor = "Extreme Networks";
            }
          ];
        };
        extreme-networks_ws-ap391x = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-extreme-networks_ws-ap391x";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-extreme-networks_ws-ap391x-squashfs-sysupgrade.bin";
              sha256 = "06c9c7e4a26ae01bf21bc4597f76ad8410dcc2cce59de33127dfff3c0b2504e7";
              sha256_unsigned = "555156a3cae592679a7319a6be76b67c3fd7b47494e0bb7d6a767b805177285b";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-extreme-networks_ws-ap391x-initramfs-uImage.itb";
              sha256 = "7acf6b288720dbd307031123f2667077ada98389d42d9115938748a20a8a3939";
              sha256_unsigned = "7acf6b288720dbd307031123f2667077ada98389d42d9115938748a20a8a3939";
              type = "kernel";
            }
          ];
          supported_devices = [
            "extreme-networks,ws-ap391x"
          ];
          titles = [
            {
              model = "WS-AP391x";
              vendor = "Extreme Networks";
            }
          ];
        };
        ezviz_cs-w3-wd1200g-eup = {
          device_packages = [
            "-kmod-ath10k-ct"
            "kmod-ath10k-ct-smallbuffers"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-ezviz_cs-w3-wd1200g-eup";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-ezviz_cs-w3-wd1200g-eup-squashfs-sysupgrade.bin";
              sha256 = "91be0c21d3701276da274898f3f83df71a7741bcbea6602d8588b485e919403b";
              sha256_unsigned = "ccec03b641a42eefc2b55beefd0d2684cf21c2566f87f5d3abf159f10cd33822";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-ezviz_cs-w3-wd1200g-eup-initramfs-uImage.itb";
              sha256 = "2604ee0617fbbf25e775d361cd1df5befda85fabd8da84e2ef32188688ccb1bb";
              sha256_unsigned = "2604ee0617fbbf25e775d361cd1df5befda85fabd8da84e2ef32188688ccb1bb";
              type = "kernel";
            }
          ];
          supported_devices = [
            "ezviz,cs-w3-wd1200g-eup"
          ];
          titles = [
            {
              model = "CS-W3-WD1200G";
              variant = "EUP";
              vendor = "EZVIZ";
            }
          ];
        };
        glinet_gl-a1300 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-glinet_gl-a1300";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-glinet_gl-a1300-squashfs-factory.ubi";
              sha256 = "cdf5196e66c538336438aef19fab8fa223f2b7747ecae8e10917e4193f9612cb";
              sha256_unsigned = "cdf5196e66c538336438aef19fab8fa223f2b7747ecae8e10917e4193f9612cb";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-glinet_gl-a1300-initramfs-uImage.itb";
              sha256 = "e3f39ae795935efd0b887d22dd12291845455d54d09e7068e1dca970c27a34a2";
              sha256_unsigned = "e3f39ae795935efd0b887d22dd12291845455d54d09e7068e1dca970c27a34a2";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-glinet_gl-a1300-squashfs-sysupgrade.bin";
              sha256 = "4fbe0630d73b20ebd0ab0c05899e7b323d11b41ef5f6b4ae54fd3af0833cba1d";
              sha256_unsigned = "467ed686d2f561ee1af136c8e334e109bf047359f1735bd79c596b69d045a888";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "glinet,gl-a1300"
          ];
          titles = [
            {
              model = "GL-A1300";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_gl-ap1300 = {
          device_packages = [
            "kmod-usb-net-qmi-wwan"
            "kmod-usb-serial-option"
            "uqmi"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-glinet_gl-ap1300";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-glinet_gl-ap1300-initramfs-uImage.itb";
              sha256 = "d2297833e5f46f94d5c29aff584d53ff1c89f45996d4f5cd2d57faedc2bf68cc";
              sha256_unsigned = "d2297833e5f46f94d5c29aff584d53ff1c89f45996d4f5cd2d57faedc2bf68cc";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-glinet_gl-ap1300-squashfs-sysupgrade.bin";
              sha256 = "86648d6f61475e121511f376a4e7bb928bd99a4c18501b8d6d8b5d448cf1a0dd";
              sha256_unsigned = "d8c19a9fd9fdbc396eb417cf66b98d659f3b7c726e63ae68bc6e255aa50eb6c5";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-glinet_gl-ap1300-squashfs-factory.ubi";
              sha256 = "d1e5b2edfcec6e307373fc5f61b4ebfe42046e00242ccb7a3bc95cd62c466ac7";
              sha256_unsigned = "d1e5b2edfcec6e307373fc5f61b4ebfe42046e00242ccb7a3bc95cd62c466ac7";
              type = "factory";
            }
          ];
          supported_devices = [
            "glinet,gl-ap1300"
          ];
          titles = [
            {
              model = "GL-AP1300";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_gl-b1300 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-glinet_gl-b1300";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-glinet_gl-b1300-initramfs-zImage.itb";
              sha256 = "5d5f78118d524e24fb8d42b1617acc70c579760b27a2c8e615ec3aba47cb3047";
              sha256_unsigned = "5d5f78118d524e24fb8d42b1617acc70c579760b27a2c8e615ec3aba47cb3047";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-glinet_gl-b1300-squashfs-sysupgrade.bin";
              sha256 = "625d1fe016abf37738fa64aa659dd55f796822dc26635f63d6aeaa8b863cf439";
              sha256_unsigned = "fce9a19aad62f6b992758748ab22022c8682aad1af6be8c727d99e90f0e8e887";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "glinet,gl-b1300"
          ];
          titles = [
            {
              model = "GL-B1300";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_gl-b2200 = {
          device_packages = [
            "ath10k-firmware-qca9888-ct"
            "kmod-fs-ext4"
            "kmod-mmc"
            "kmod-spi-dev"
            "mkf2fs"
            "e2fsprogs"
            "kmod-fs-f2fs"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-glinet_gl-b2200";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-glinet_gl-b2200-squashfs-sysupgrade.bin";
              sha256 = "9f087796ee720ec003007de4be22caf33b1864c975dacd92c1a4a819ebffa099";
              sha256_unsigned = "c7d17e45bf6876b53275f33fd2673824563b2ec0f7922bd01c9c249a108ad612";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-glinet_gl-b2200-squashfs-emmc.img.gz";
              sha256 = "e45ba5ea1793a2567de2299e826bab032f9426615e1c745c4e890d00349d359a";
              sha256_unsigned = "56d32c62dbbd0c6c92a9d95acc1a349d0c28df9f77e5f942d8dc9dcc4df6dc19";
              type = "emmc";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-glinet_gl-b2200-initramfs-recovery.itb";
              sha256 = "80172f786ec13f095e0bcb8fc4980beda9acbfe33f01a0f7851bd650ef5b1b63";
              sha256_unsigned = "80172f786ec13f095e0bcb8fc4980beda9acbfe33f01a0f7851bd650ef5b1b63";
              type = "kernel";
            }
          ];
          supported_devices = [
            "glinet,gl-b2200"
          ];
          titles = [
            {
              model = "GL-B2200";
              vendor = "GL.iNet";
            }
          ];
        };
        linksys_ea6350v3 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-linksys_ea6350v3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-linksys_ea6350v3-squashfs-sysupgrade.bin";
              sha256 = "08b938fc01113cf1cb6b51ab1615c0907050561211116c0ec3e03de487b4a957";
              sha256_unsigned = "6202c33c3d71637c0d627d0938dc51934e1a0e1ae070d110b5c68186bf002774";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-linksys_ea6350v3-squashfs-factory.bin";
              sha256 = "3624409ba0395cebe80dde1209c0e9020ef49979120da46c0951b8b78807f53d";
              sha256_unsigned = "3624409ba0395cebe80dde1209c0e9020ef49979120da46c0951b8b78807f53d";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-linksys_ea6350v3-initramfs-zImage.itb";
              sha256 = "353c5005ef6082f523dae98d66edfb1945a27781d67eeb29754d26c083fe35b1";
              sha256_unsigned = "353c5005ef6082f523dae98d66edfb1945a27781d67eeb29754d26c083fe35b1";
              type = "kernel";
            }
          ];
          supported_devices = [
            "linksys,ea6350v3"
          ];
          titles = [
            {
              model = "EA6350";
              variant = "v3";
              vendor = "Linksys";
            }
          ];
        };
        linksys_ea8300 = {
          device_packages = [
            "ath10k-firmware-qca9888-ct"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-linksys_ea8300";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-linksys_ea8300-squashfs-factory.bin";
              sha256 = "6485c3e12b31ad9800714310b21264337582a7c3cc3006a95909bc710abfa749";
              sha256_unsigned = "6485c3e12b31ad9800714310b21264337582a7c3cc3006a95909bc710abfa749";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-linksys_ea8300-squashfs-sysupgrade.bin";
              sha256 = "002e0df6e471e4add0439e2948778888424b99e6da0c428dfa611c50419d94ba";
              sha256_unsigned = "61090db7a41ae583c539fba8c4634d6be28f88e4421efb5821967d100ae690ee";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-linksys_ea8300-initramfs-zImage.itb";
              sha256 = "a257eff93e677ddf84e3a7150e4015c97b38d4be9ffc1b0f1a91575625432343";
              sha256_unsigned = "a257eff93e677ddf84e3a7150e4015c97b38d4be9ffc1b0f1a91575625432343";
              type = "kernel";
            }
          ];
          supported_devices = [
            "linksys,ea8300"
          ];
          titles = [
            {
              model = "EA8300";
              vendor = "Linksys";
            }
          ];
        };
        linksys_mr8300 = {
          device_packages = [
            "ath10k-firmware-qca9888-ct"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-linksys_mr8300";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-linksys_mr8300-squashfs-sysupgrade.bin";
              sha256 = "8e8d86bb97c1b3a9680a9e723885abdd12ee385c85f211520e8a3dfdc5262535";
              sha256_unsigned = "5296562534dc978e6a31ad75e61515debd79bb5749207ff5da9f1d95697f9c7a";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-linksys_mr8300-initramfs-zImage.itb";
              sha256 = "fe142b6802785ecc4e7000ba63701a5a1b0dd0848b6049da89f3946136bc7421";
              sha256_unsigned = "fe142b6802785ecc4e7000ba63701a5a1b0dd0848b6049da89f3946136bc7421";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-linksys_mr8300-squashfs-factory.bin";
              sha256 = "b19cc0ec86346e3772c44ac7aa6fa8386f204685f4c6cc1a35673a88f8f28e23";
              sha256_unsigned = "b19cc0ec86346e3772c44ac7aa6fa8386f204685f4c6cc1a35673a88f8f28e23";
              type = "factory";
            }
          ];
          supported_devices = [
            "linksys,mr8300"
          ];
          titles = [
            {
              model = "MR8300";
              vendor = "Linksys";
            }
          ];
        };
        linksys_whw01 = {
          device_packages = [
            "uboot-envtools"
            "kmod-leds-pca963x"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-linksys_whw01";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-linksys_whw01-initramfs-zImage.itb";
              sha256 = "fe3a305e5274f675c4eee8e1ce675ff98eaf29f71f60fca85321dfae6b13fd3f";
              sha256_unsigned = "fe3a305e5274f675c4eee8e1ce675ff98eaf29f71f60fca85321dfae6b13fd3f";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-linksys_whw01-squashfs-factory.bin";
              sha256 = "fc7828a3d5aefafb0ea9aa4a014761f54ed69134e6ecc38312cc6d6e9b8ed30d";
              sha256_unsigned = "fc7828a3d5aefafb0ea9aa4a014761f54ed69134e6ecc38312cc6d6e9b8ed30d";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-linksys_whw01-squashfs-sysupgrade.bin";
              sha256 = "e85187106034811af7c7efc074b4d8e33de704f71dce28dc13b1bca95608b25f";
              sha256_unsigned = "c20f867457033b49bb2303204d4d64439438e0e945714b24b4aea7f6c81d17b8";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "linksys,whw01"
          ];
          titles = [
            {
              model = "WHW01";
              vendor = "Linksys";
            }
          ];
        };
        linksys_whw03 = {
          device_packages = [
            "ath10k-firmware-qca9888-ct"
            "kmod-leds-pca963x"
            "kmod-spi-dev"
            "kmod-bluetooth"
            "kmod-fs-ext4"
            "e2fsprogs"
            "kmod-fs-f2fs"
            "mkf2fs"
            "losetup"
            "ipq-wifi-linksys_whw03"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-linksys_whw03";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-linksys_whw03-squashfs-sysupgrade.bin";
              sha256 = "f85f08dbe03441ca4f76d62dbe5f45b1e4c8136a87c91b5688de72c3e2a9f073";
              sha256_unsigned = "cf4724b084c9a38bcd704d291d282bea5ef8a1356b6c1110e01dbb3c6b4e4530";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-linksys_whw03-initramfs-zImage.itb";
              sha256 = "2f9c2d3c28324958339df3dadd128c68c6487ca133071328b99c50522c1892ea";
              sha256_unsigned = "2f9c2d3c28324958339df3dadd128c68c6487ca133071328b99c50522c1892ea";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-linksys_whw03-squashfs-factory.bin";
              sha256 = "f435dba8376402a5242b66d2a4fbc9ba8fa938452531e0b79a018ab84df8b56d";
              sha256_unsigned = "f435dba8376402a5242b66d2a4fbc9ba8fa938452531e0b79a018ab84df8b56d";
              type = "factory";
            }
          ];
          supported_devices = [
            "linksys,whw03"
          ];
          titles = [
            {
              model = "WHW03";
              vendor = "Linksys";
            }
          ];
        };
        linksys_whw03v2 = {
          device_packages = [
            "ath10k-firmware-qca9888-ct"
            "kmod-leds-pca963x"
            "kmod-spi-dev"
            "kmod-bluetooth"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-linksys_whw03v2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-linksys_whw03v2-initramfs-zImage.itb";
              sha256 = "4432d4e6f55cad5f903d30b72bef7769510cf1eae290cfc4267d0da896c87243";
              sha256_unsigned = "4432d4e6f55cad5f903d30b72bef7769510cf1eae290cfc4267d0da896c87243";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-linksys_whw03v2-squashfs-factory.bin";
              sha256 = "de297321d251e02d0d4487bd808407d62b02be80233ddf7d7abe9e1b280e0739";
              sha256_unsigned = "de297321d251e02d0d4487bd808407d62b02be80233ddf7d7abe9e1b280e0739";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-linksys_whw03v2-squashfs-sysupgrade.bin";
              sha256 = "65923752b0f373dcbef192cbbb222c9995c8a7ed752abdcf6bca9cbe1a45a312";
              sha256_unsigned = "afa69acb735d32d7b6d0ef9be897fad685b5e5e0b5859c9cb1106a5170d97b70";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "linksys,whw03v2"
          ];
          titles = [
            {
              model = "WHW03";
              variant = "V2";
              vendor = "Linksys";
            }
          ];
        };
        luma_wrtq-329acn = {
          device_packages = [
            "kmod-ath3k"
            "kmod-eeprom-at24"
            "kmod-i2c-gpio"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-luma_wrtq-329acn";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-luma_wrtq-329acn-squashfs-sysupgrade.bin";
              sha256 = "f390bf4e0f1b5c8704be894785ee7e0fb850870076c4f3419ed346e5594b2548";
              sha256_unsigned = "ba82eba4cc6e5cd05049697f97102a1da4a3a37b005799f7a316c3043ef58d03";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-luma_wrtq-329acn-initramfs-uImage.itb";
              sha256 = "de81f230b85452fe0e30c1000925b2b517b09835dc2bea620518d12daaaa30f0";
              sha256_unsigned = "de81f230b85452fe0e30c1000925b2b517b09835dc2bea620518d12daaaa30f0";
              type = "kernel";
            }
          ];
          supported_devices = [
            "luma,wrtq-329acn"
          ];
          titles = [
            {
              model = "WRTQ-329ACN";
              vendor = "Luma Home";
            }
          ];
        };
        meraki_mr33 = {
          device_packages = [
            "ath10k-firmware-qca9887-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-meraki_mr33";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-meraki_mr33-initramfs-uImage.itb";
              sha256 = "a6070c69cf4701cca06601f097c4e0b751c5a2d1b458f13690df959729e5c000";
              sha256_unsigned = "a6070c69cf4701cca06601f097c4e0b751c5a2d1b458f13690df959729e5c000";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-meraki_mr33-squashfs-sysupgrade.bin";
              sha256 = "5fb26ee8f0411fefc19164266485a2589a390db23fa80c453c1edfceef4e9a15";
              sha256_unsigned = "d0eff94581e0fa0de167b705a6febc64ce2ea6d11bf3e63e22f90c0af3aa8b25";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "meraki,mr33"
          ];
          titles = [
            {
              model = "MR33";
              vendor = "Cisco Meraki";
            }
          ];
        };
        meraki_mr74 = {
          device_packages = [
            "ath10k-firmware-qca9887-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-meraki_mr74";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-meraki_mr74-squashfs-sysupgrade.bin";
              sha256 = "3bcaf75bc169b409bd87e3377f3aca3f426f3f8fd3baac3193b75a8e21488ee6";
              sha256_unsigned = "137b8b43bdb0cc9fcb1bd41f949ff1f53a6d602a04baa19d2442f459efcea68f";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-meraki_mr74-initramfs-uImage.itb";
              sha256 = "7747b87d91068b059bff4e41dfca4f25aa44f9729f0c1aca7c91468f428a9775";
              sha256_unsigned = "7747b87d91068b059bff4e41dfca4f25aa44f9729f0c1aca7c91468f428a9775";
              type = "kernel";
            }
          ];
          supported_devices = [
            "meraki,mr74"
          ];
          titles = [
            {
              model = "MR74";
              vendor = "Cisco Meraki";
            }
          ];
        };
        mobipromo_cm520-79f = {
          device_packages = [
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-mobipromo_cm520-79f";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-mobipromo_cm520-79f-initramfs-zImage.itb";
              sha256 = "59601376d2ad74b41d288ac79657019a5028381c21a280c9b49ad4dc2c2cc1c4";
              sha256_unsigned = "59601376d2ad74b41d288ac79657019a5028381c21a280c9b49ad4dc2c2cc1c4";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-mobipromo_cm520-79f-squashfs-sysupgrade.bin";
              sha256 = "1847c1682da8897ec97bbc5fc32421d98e56988682454d53eee76b2f504f01fc";
              sha256_unsigned = "d38b49b97d4105be84c37b40ee3a2af4ce472096fa87e43e55fda95fc73feef9";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-mobipromo_cm520-79f-squashfs-factory.ubi";
              sha256 = "707d48b7629c3dc03bc3026bd765b83a9b7b4b0592c44e39041212d60e00787d";
              sha256_unsigned = "707d48b7629c3dc03bc3026bd765b83a9b7b4b0592c44e39041212d60e00787d";
              type = "factory";
            }
          ];
          supported_devices = [
            "mobipromo,cm520-79f"
          ];
          titles = [
            {
              model = "CM520-79F";
              vendor = "MobiPromo";
            }
          ];
        };
        netgear_ex6100v2 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-netgear_ex6100v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-netgear_ex6100v2-squashfs-sysupgrade.bin";
              sha256 = "97f742f4169892c383c56de4ed556517baa86f35992dad71f601d7c22e79be58";
              sha256_unsigned = "17803d41575d0db52b6a3266a03b54ab8fc1d2958cad1c5b14f332c3b3935c61";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-netgear_ex6100v2-initramfs-zImage.itb";
              sha256 = "f09d04e6e6b205d75c94ffd503e0974d850127250a018a57fe65add16c941c31";
              sha256_unsigned = "f09d04e6e6b205d75c94ffd503e0974d850127250a018a57fe65add16c941c31";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-netgear_ex6100v2-squashfs-factory.img";
              sha256 = "3423c526e04063a1cd1875c4e025836d36ccf15456f990d0ea2ab3902ff3f0e3";
              sha256_unsigned = "3423c526e04063a1cd1875c4e025836d36ccf15456f990d0ea2ab3902ff3f0e3";
              type = "factory";
            }
          ];
          supported_devices = [
            "netgear,ex6100v2"
          ];
          titles = [
            {
              model = "EX6100";
              variant = "v2";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_ex6150v2 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-netgear_ex6150v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-netgear_ex6150v2-squashfs-factory.img";
              sha256 = "a1631b3bbe28ace775a21b88e5bb8f50a6c91154f089e54096cd451864af4854";
              sha256_unsigned = "a1631b3bbe28ace775a21b88e5bb8f50a6c91154f089e54096cd451864af4854";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-netgear_ex6150v2-initramfs-zImage.itb";
              sha256 = "ef0018e1a6df5d08cae03ec90179f9902b13756853c0363d0e139f396c38cf8b";
              sha256_unsigned = "ef0018e1a6df5d08cae03ec90179f9902b13756853c0363d0e139f396c38cf8b";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-netgear_ex6150v2-squashfs-sysupgrade.bin";
              sha256 = "7bd0a62fa61b7511dcf059259d046a545c54fc8fa4fe8a4925df2bfa9199a52f";
              sha256_unsigned = "e5bf8058e7165e2c384db9fb2dd82bbbf53521ff9a4ee695c19e3cbd29e5e4a5";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,ex6150v2"
          ];
          titles = [
            {
              model = "EX6150";
              variant = "v2";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_lbr20 = {
          device_packages = [
            "ipq-wifi-netgear_lbr20"
            "ath10k-firmware-qca9888-ct"
            "kmod-usb-net-qmi-wwan"
            "kmod-usb-serial-option"
            "uqmi"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-netgear_lbr20";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-netgear_lbr20-initramfs-zImage.itb";
              sha256 = "410f565d900e424d63d8ce0ba753c93950b34a33241c5b245b2c5eb655e7f51e";
              sha256_unsigned = "410f565d900e424d63d8ce0ba753c93950b34a33241c5b245b2c5eb655e7f51e";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-netgear_lbr20-squashfs-sysupgrade.bin";
              sha256 = "2252d0111b144354fdc0c7584d9a13bb4a1f8a33a3c64ff563eaf83ce5242ea5";
              sha256_unsigned = "17a899748b9653723b1a431b659cfd6fcda33e130506208e814bdd8f165e5e6b";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-netgear_lbr20-squashfs-factory.img";
              sha256 = "5f532f48ceae8888bab39d5094af9cfb8aaac9f768d95a7b380176290c47b444";
              sha256_unsigned = "5f532f48ceae8888bab39d5094af9cfb8aaac9f768d95a7b380176290c47b444";
              type = "factory";
            }
          ];
          supported_devices = [
            "netgear,lbr20"
          ];
          titles = [
            {
              model = "LBR20";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_rbr40 = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
            "e2fsprogs"
            "kmod-fs-ext4"
            "losetup"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-netgear_rbr40";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-netgear_rbr40-initramfs-zImage.itb";
              sha256 = "de0f49cf06a22bbebee6fe3c2bbac153fc22312cf4469cdd24d58a1602d2742f";
              sha256_unsigned = "de0f49cf06a22bbebee6fe3c2bbac153fc22312cf4469cdd24d58a1602d2742f";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-netgear_rbr40-squashfs-sysupgrade.bin";
              sha256 = "a8eb5cc2804d2709b67e2b0075568bc16564de70a014a14cdc35c04d8d672a18";
              sha256_unsigned = "8da64b200f4fb4c51d3daa8d2a0e078293c3944556dd34bb561f3f123f435420";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-netgear_rbr40-squashfs-factory.img";
              sha256 = "9402e47ed24d4b76077490af71581f720bdd96b8c6f7b647aa00f2dec490f9a4";
              sha256_unsigned = "9402e47ed24d4b76077490af71581f720bdd96b8c6f7b647aa00f2dec490f9a4";
              type = "factory";
            }
          ];
          supported_devices = [
            "netgear,rbr40"
          ];
          titles = [
            {
              model = "RBR40";
              variant = "v1";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_rbr50 = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
            "e2fsprogs"
            "kmod-fs-ext4"
            "losetup"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-netgear_rbr50";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-netgear_rbr50-squashfs-factory.img";
              sha256 = "09081d8d3c3cfc8fef6a8d46c9dbb50b4a178eb8e295c0cede1d76e5db7cc8dc";
              sha256_unsigned = "09081d8d3c3cfc8fef6a8d46c9dbb50b4a178eb8e295c0cede1d76e5db7cc8dc";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-netgear_rbr50-initramfs-zImage.itb";
              sha256 = "ccee9dd4f56711856de9df6ae81a70778be50370400f3524748b3e50ae3cdccc";
              sha256_unsigned = "ccee9dd4f56711856de9df6ae81a70778be50370400f3524748b3e50ae3cdccc";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-netgear_rbr50-squashfs-sysupgrade.bin";
              sha256 = "43ae6c172f058df9c366ba9aae5832ca93e65952ffb291794911d1fc0971ebda";
              sha256_unsigned = "2c2c214bc73db62e3c41c148ee4837c4ed3c423b813106826663982591b55725";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,rbr50"
          ];
          titles = [
            {
              model = "RBR50";
              variant = "v1";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_rbs40 = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
            "e2fsprogs"
            "kmod-fs-ext4"
            "losetup"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-netgear_rbs40";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-netgear_rbs40-squashfs-sysupgrade.bin";
              sha256 = "f33e13e5b600ab81eb6e6ade2b5b8181a860bbd8181b73a17ac75ac354df4609";
              sha256_unsigned = "525612f46516e8a34f396e9e22a80cf89701678f8c5453566f46cc28aab2d63d";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-netgear_rbs40-initramfs-zImage.itb";
              sha256 = "8c770979b64b6cc4c10781478fbac1f11dc97e8f86e39081ffec5ab57c8c2a3b";
              sha256_unsigned = "8c770979b64b6cc4c10781478fbac1f11dc97e8f86e39081ffec5ab57c8c2a3b";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-netgear_rbs40-squashfs-factory.img";
              sha256 = "4efdb71b8366d6331a3bc5b91b0971441f34722d887d8ba40e45aad97bc6613b";
              sha256_unsigned = "4efdb71b8366d6331a3bc5b91b0971441f34722d887d8ba40e45aad97bc6613b";
              type = "factory";
            }
          ];
          supported_devices = [
            "netgear,rbs40"
          ];
          titles = [
            {
              model = "RBS40";
              variant = "v1";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_rbs50 = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
            "e2fsprogs"
            "kmod-fs-ext4"
            "losetup"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-netgear_rbs50";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-netgear_rbs50-initramfs-zImage.itb";
              sha256 = "30dedf31c49c596612c5668f4ea86da9fe97b2e37fdbd47b575c9288cb7d785d";
              sha256_unsigned = "30dedf31c49c596612c5668f4ea86da9fe97b2e37fdbd47b575c9288cb7d785d";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-netgear_rbs50-squashfs-sysupgrade.bin";
              sha256 = "0e4e08cd3852881809d51383aebb4b37f33b8d17d759d678067013fa62e95ea8";
              sha256_unsigned = "bdb38a7dca107472c99f83069769b3696a10af692664642fcc73a782326653a4";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-netgear_rbs50-squashfs-factory.img";
              sha256 = "99fc0ce919458bd52b5e386e52f6fe152497161c3894b74494c6317368beca39";
              sha256_unsigned = "99fc0ce919458bd52b5e386e52f6fe152497161c3894b74494c6317368beca39";
              type = "factory";
            }
          ];
          supported_devices = [
            "netgear,rbs50"
          ];
          titles = [
            {
              model = "RBS50";
              variant = "v1";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_srr60 = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
            "e2fsprogs"
            "kmod-fs-ext4"
            "losetup"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-netgear_srr60";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-netgear_srr60-initramfs-zImage.itb";
              sha256 = "3fc23d662b1fe5583945a5b4ffaef7bbf910cb8a65498fdea4ecf3a5f75692d5";
              sha256_unsigned = "3fc23d662b1fe5583945a5b4ffaef7bbf910cb8a65498fdea4ecf3a5f75692d5";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-netgear_srr60-squashfs-sysupgrade.bin";
              sha256 = "299d5ed1afd0c8a3515b4463ea7d1a535ba2b11a07f8fabc8db0f9f5a412e5b0";
              sha256_unsigned = "63c8da31f97fddcda7a6e3f6d5baa8517c797802c979a6b1f8bfd16a8ff061df";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-netgear_srr60-squashfs-factory.img";
              sha256 = "1892a918157bdad72a66875b16ee0b9775e964cd2fe8b01fb3263d9a967fa9d9";
              sha256_unsigned = "1892a918157bdad72a66875b16ee0b9775e964cd2fe8b01fb3263d9a967fa9d9";
              type = "factory";
            }
          ];
          supported_devices = [
            "netgear,srr60"
          ];
          titles = [
            {
              model = "SRR60";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_srs60 = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
            "e2fsprogs"
            "kmod-fs-ext4"
            "losetup"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-netgear_srs60";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-netgear_srs60-squashfs-sysupgrade.bin";
              sha256 = "d69d1a42a294e3e9a11d67379d3ddba294746236b4c2fbb95c3eb1a86b47f378";
              sha256_unsigned = "70f1ec051484f85d7cad6343bfbbe55f984d7e998b23543f02bfc14cf00fc9cd";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-netgear_srs60-initramfs-zImage.itb";
              sha256 = "48ec5384d209049a381cdab58f9306985d38d493a858d8e9902859379cce3150";
              sha256_unsigned = "48ec5384d209049a381cdab58f9306985d38d493a858d8e9902859379cce3150";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-netgear_srs60-squashfs-factory.img";
              sha256 = "39c312cdbdee0450680118da2f55af70c6a46541067b706117da87fc7136c838";
              sha256_unsigned = "39c312cdbdee0450680118da2f55af70c6a46541067b706117da87fc7136c838";
              type = "factory";
            }
          ];
          supported_devices = [
            "netgear,srs60"
          ];
          titles = [
            {
              model = "SRS60";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wac510 = {
          device_packages = [
            "uboot-envtools"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-netgear_wac510";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-netgear_wac510-squashfs-sysupgrade.bin";
              sha256 = "b04d0db2081a8c352e4d7c8744457392d6ba0ba04bebd37189c6d9dd0d9e4d6a";
              sha256_unsigned = "b11114426b179118e4198899dc6f8b82a72a9e469d9879bce1d1c40e6a7002e7";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-netgear_wac510-squashfs-factory.tar";
              sha256 = "d08b99e709781b929767c9508cd08a881e466fb2cc9ad8138b613977fc8209f4";
              sha256_unsigned = "d08b99e709781b929767c9508cd08a881e466fb2cc9ad8138b613977fc8209f4";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-netgear_wac510-squashfs-factory.ubi";
              sha256 = "7b45b91f84c09bcd442519fc8ab3a5d474199f49732461e60d6aed3453647617";
              sha256_unsigned = "7b45b91f84c09bcd442519fc8ab3a5d474199f49732461e60d6aed3453647617";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-netgear_wac510-initramfs-uImage.itb";
              sha256 = "9add670527375e9bfdaa10bed8d541a87698dd79d67a2130a0ce29eb71413562";
              sha256_unsigned = "9add670527375e9bfdaa10bed8d541a87698dd79d67a2130a0ce29eb71413562";
              type = "kernel";
            }
          ];
          supported_devices = [
            "netgear,wac510"
          ];
          titles = [
            {
              model = "WAC510";
              vendor = "Netgear";
            }
          ];
        };
        openmesh_a42 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-openmesh_a42";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-openmesh_a42-squashfs-sysupgrade.bin";
              sha256 = "b91faa010da0946735300df1a6b915f130633804f6bbb69b53f2b5d73bfb7ace";
              sha256_unsigned = "6312b3a9b5cd0598a9e568d8f58e0646d217071ffa96c6f9cd38d40a14fe1429";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-openmesh_a42-initramfs-uImage.itb";
              sha256 = "c2df4b510056cea81a730c4c0a2bfe68755c5f5f236c667c037d3061ad6a5a80";
              sha256_unsigned = "c2df4b510056cea81a730c4c0a2bfe68755c5f5f236c667c037d3061ad6a5a80";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-openmesh_a42-squashfs-factory.bin";
              sha256 = "344c1733a452b42fda719a0d965d9afd36cbafcae139a3c54fc62a75301f9379";
              sha256_unsigned = "344c1733a452b42fda719a0d965d9afd36cbafcae139a3c54fc62a75301f9379";
              type = "factory";
            }
          ];
          supported_devices = [
            "openmesh,a42"
          ];
          titles = [
            {
              model = "A42";
              vendor = "OpenMesh";
            }
          ];
        };
        openmesh_a62 = {
          device_packages = [
            "ath10k-firmware-qca9888-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-openmesh_a62";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-openmesh_a62-squashfs-sysupgrade.bin";
              sha256 = "6db16abd89e8a4f60a598fb18d69af74d65b4c96724d8b4a0f5529b4f6cd3175";
              sha256_unsigned = "7dcaeff2d51602a950a8974ae72906f6ce9a47e317a52934d39e86aa9146eda6";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-openmesh_a62-initramfs-uImage.itb";
              sha256 = "5f64266585eea6a6751d378262ceb8122a7d3b9639037f73f6bd5f9f03748d95";
              sha256_unsigned = "5f64266585eea6a6751d378262ceb8122a7d3b9639037f73f6bd5f9f03748d95";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-openmesh_a62-squashfs-factory.bin";
              sha256 = "e4e5aef4c0fa75c98e6314d995610a2d599ac8d51739052c74b4d62a8f894ce0";
              sha256_unsigned = "e4e5aef4c0fa75c98e6314d995610a2d599ac8d51739052c74b4d62a8f894ce0";
              type = "factory";
            }
          ];
          supported_devices = [
            "openmesh,a62"
          ];
          titles = [
            {
              model = "A62";
              vendor = "OpenMesh";
            }
          ];
        };
        p2w_r619ac-128m = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-p2w_r619ac-128m";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-p2w_r619ac-128m-squashfs-factory.ubi";
              sha256 = "229413d336e0a8b0a60bc0e09fedc8533f820255995c8c9ca8071e3fbd3adee9";
              sha256_unsigned = "229413d336e0a8b0a60bc0e09fedc8533f820255995c8c9ca8071e3fbd3adee9";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-p2w_r619ac-128m-initramfs-zImage.itb";
              sha256 = "c076236f66e2c608ca350b386f6ff6703c969ce53598afc75123a1ade7197a79";
              sha256_unsigned = "c076236f66e2c608ca350b386f6ff6703c969ce53598afc75123a1ade7197a79";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-p2w_r619ac-128m-squashfs-sysupgrade.bin";
              sha256 = "21bc6047b66acae44d8b133277126355c9570fa9013e1697a1fca8c8035f97b1";
              sha256_unsigned = "e29c64559acf71ca9e8a4b99237bb4cb38c10b8ada86c1e2d63424632f68fd0d";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "p2w,r619ac-128m"
          ];
          titles = [
            {
              model = "R619AC";
              variant = "128M NAND";
              vendor = "P&W";
            }
          ];
        };
        p2w_r619ac-64m = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-p2w_r619ac-64m";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-p2w_r619ac-64m-squashfs-sysupgrade.bin";
              sha256 = "b33e1b08ccfcf0182c5a8fb97bc964c390325379c04e72023c71ec208fdac21f";
              sha256_unsigned = "553335b27a40b886d037e9f571eaa6e649b9fb9088d6ead5f3b45488f1c8a2e6";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-p2w_r619ac-64m-initramfs-zImage.itb";
              sha256 = "c58aba9ea8916d556408606e94d3e623d1f4d1011faaea1b24d990bf9ce3f3e6";
              sha256_unsigned = "c58aba9ea8916d556408606e94d3e623d1f4d1011faaea1b24d990bf9ce3f3e6";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-p2w_r619ac-64m-squashfs-factory.bin";
              sha256 = "e7e281cff4c745c96cacdb1b4208675b64a5411e8e8ad8c46b4566afe2b2e9b1";
              sha256_unsigned = "e7e281cff4c745c96cacdb1b4208675b64a5411e8e8ad8c46b4566afe2b2e9b1";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-p2w_r619ac-64m-squashfs-factory.ubi";
              sha256 = "55c1a4f7e114341aa6064c815ca1047b91367a78becb0d61935ca346b8dc5f27";
              sha256_unsigned = "55c1a4f7e114341aa6064c815ca1047b91367a78becb0d61935ca346b8dc5f27";
              type = "factory";
            }
          ];
          supported_devices = [
            "p2w,r619ac-64m"
          ];
          titles = [
            {
              model = "R619AC";
              variant = "64M NAND";
              vendor = "P&W";
            }
          ];
        };
        pakedge_wr-1 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-pakedge_wr-1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-pakedge_wr-1-initramfs-uImage.itb";
              sha256 = "0bc8b2f7ffc6f5e4855691eca5804fe34c6f655438ddb3dfbbee3b3c795dffa4";
              sha256_unsigned = "0bc8b2f7ffc6f5e4855691eca5804fe34c6f655438ddb3dfbbee3b3c795dffa4";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-pakedge_wr-1-squashfs-sysupgrade.bin";
              sha256 = "51c53dc02eaa6f548148971b30a6b67c8dd964e0c306d8fe5c743d0a53ab349d";
              sha256_unsigned = "6ff5211acf9c78ff9dd1a168bebdb5e8f891367a9785471403e2bdb8fe2fa006";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "pakedge,wr-1"
          ];
          titles = [
            {
              model = "WR-1";
              vendor = "Pakedge";
            }
          ];
        };
        plasmacloud_pa1200 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-plasmacloud_pa1200";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-plasmacloud_pa1200-squashfs-factory.bin";
              sha256 = "212330436b48c480bff645720f954f22e5d67df0231b97695488480e79c3466f";
              sha256_unsigned = "212330436b48c480bff645720f954f22e5d67df0231b97695488480e79c3466f";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-plasmacloud_pa1200-initramfs-uImage.itb";
              sha256 = "420dcdf121505e99022ee75f7709f61b977f53af191f2b34322a9c4599219eff";
              sha256_unsigned = "420dcdf121505e99022ee75f7709f61b977f53af191f2b34322a9c4599219eff";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-plasmacloud_pa1200-squashfs-sysupgrade.bin";
              sha256 = "64123d58ab7b0abac80c20ac32dbf4ad2a32161bc0ced5126ee488b786e8c9e9";
              sha256_unsigned = "cb7b477ffb3cfc1f710aa7a7e6f6d5611840e47c1dd31cfaaf5761e223f134f0";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "plasmacloud,pa1200"
          ];
          titles = [
            {
              model = "PA1200";
              vendor = "Plasma Cloud";
            }
          ];
        };
        plasmacloud_pa2200 = {
          device_packages = [
            "ath10k-firmware-qca9888-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-plasmacloud_pa2200";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-plasmacloud_pa2200-initramfs-uImage.itb";
              sha256 = "2daf7b65bb0b787b1fe5ec70f01f77996f19aacb54af0f183a7a6606f76c7ce4";
              sha256_unsigned = "2daf7b65bb0b787b1fe5ec70f01f77996f19aacb54af0f183a7a6606f76c7ce4";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-plasmacloud_pa2200-squashfs-factory.bin";
              sha256 = "56020038b056732defbefca4c188db8dca90e487751712d17264968f3e8e4de5";
              sha256_unsigned = "56020038b056732defbefca4c188db8dca90e487751712d17264968f3e8e4de5";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-plasmacloud_pa2200-squashfs-sysupgrade.bin";
              sha256 = "ad90d9f08ad5ebdfcc20c248769a3e6ea40c4f9ecb022a4d9b287eb788641538";
              sha256_unsigned = "d2e87340b65f43601456afdc32dd615a1ab6d0eb107463ca31cad4c0e758f0ac";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "plasmacloud,pa2200"
          ];
          titles = [
            {
              model = "PA2200";
              vendor = "Plasma Cloud";
            }
          ];
        };
        qxwlan_e2600ac-c1 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-qxwlan_e2600ac-c1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-qxwlan_e2600ac-c1-initramfs-uImage.itb";
              sha256 = "cb45e47f047c2c29efed1ba417644512c07d26c1a103d8ad365dab098b8ad021";
              sha256_unsigned = "cb45e47f047c2c29efed1ba417644512c07d26c1a103d8ad365dab098b8ad021";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-qxwlan_e2600ac-c1-squashfs-sysupgrade.bin";
              sha256 = "b5e001a39a1a5f67bea72ae1e1effb929536417890b881240016286d5a2a3a00";
              sha256_unsigned = "f7d3464b8c8c0783653ea476600429a9cc1b089f5aa33fa3a8b0d5f013287dd9";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "qxwlan,e2600ac-c1"
          ];
          titles = [
            {
              model = "E2600AC";
              variant = "C1";
              vendor = "Qxwlan";
            }
          ];
        };
        qxwlan_e2600ac-c2 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-qxwlan_e2600ac-c2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-qxwlan_e2600ac-c2-squashfs-sysupgrade.bin";
              sha256 = "1920271b54fa6a4c32d99bdc083ab7312fae818ff7aa9f227685a15db8e35656";
              sha256_unsigned = "f45b708d94863dc1a122388023fbfefcd0be51e2136c961ad55405cce81100d6";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-qxwlan_e2600ac-c2-squashfs-factory.ubi";
              sha256 = "b672ed48845140e7039b0f4eb8706bc2d83fcbf7f7fe99d0f2dcd379ab0140e6";
              sha256_unsigned = "b672ed48845140e7039b0f4eb8706bc2d83fcbf7f7fe99d0f2dcd379ab0140e6";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-qxwlan_e2600ac-c2-initramfs-uImage.itb";
              sha256 = "2ef6469f5e151a3cc9c334ea3e953342bd1d4b610683c3312527cc6e31aad334";
              sha256_unsigned = "2ef6469f5e151a3cc9c334ea3e953342bd1d4b610683c3312527cc6e31aad334";
              type = "kernel";
            }
          ];
          supported_devices = [
            "qxwlan,e2600ac-c2"
          ];
          titles = [
            {
              model = "E2600AC";
              variant = "C2";
              vendor = "Qxwlan";
            }
          ];
        };
        skspruce_wia3300-20 = {
          device_packages = [
            "-ath10k-board-qca4019"
            "ipq-wifi-skspruce_wia3300-20"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-skspruce_wia3300-20";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-skspruce_wia3300-20-initramfs-zImage.itb";
              sha256 = "830e5c40843b45317c1e45026a6a9deed1297bbbdd885e16523561c2e2ff277b";
              sha256_unsigned = "830e5c40843b45317c1e45026a6a9deed1297bbbdd885e16523561c2e2ff277b";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-skspruce_wia3300-20-squashfs-sysupgrade.bin";
              sha256 = "57726ddb65b8df7b91a5cfe2644f0a2c375a81fa6c2dcef7104f6e826f7484a0";
              sha256_unsigned = "9cd0011782d015e9991f0ee9464964d79caf2b9491da04da847ca1cadac20628";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "skspruce,wia3300-20"
          ];
          titles = [
            {
              model = "WIA3300-20";
              vendor = "SKSpruce";
            }
          ];
        };
        sony_ncp-hg100-cellular = {
          device_packages = [
            "e2fsprogs"
            "kmod-fs-ext4"
            "uqmi"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-sony_ncp-hg100-cellular";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-sony_ncp-hg100-cellular-squashfs-sysupgrade.bin";
              sha256 = "ef506a8e354e31ff17db9fbaa653c7a0e1ab51475c3eeede61cb58eef1ce7195";
              sha256_unsigned = "d9ae8371954363c6a4e87e1e63e9211aee9b7a496e2e3893676e1308a42d6ad7";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-sony_ncp-hg100-cellular-initramfs-uImage.itb";
              sha256 = "8e9fc445cdca7f1241c9f31d8976611633907d9fc394992c3f3df6adb44f33cc";
              sha256_unsigned = "8e9fc445cdca7f1241c9f31d8976611633907d9fc394992c3f3df6adb44f33cc";
              type = "kernel";
            }
          ];
          supported_devices = [
            "sony,ncp-hg100-cellular"
          ];
          titles = [
            {
              model = "NCP-HG100/Cellular";
              vendor = "Sony";
            }
          ];
        };
        teltonika_rutx50 = {
          device_packages = [
            "kmod-usb-net-qmi-wwan"
            "kmod-usb-serial-option"
            "uqmi"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-teltonika_rutx50";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-teltonika_rutx50-squashfs-factory.ubi";
              sha256 = "00c7bf11f27a1319c21e9c2a8b796b9d2ddb2be9953e1e479d1db13c2d0febe8";
              sha256_unsigned = "00c7bf11f27a1319c21e9c2a8b796b9d2ddb2be9953e1e479d1db13c2d0febe8";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-teltonika_rutx50-initramfs-uImage.itb";
              sha256 = "6fa6ffb303c1dc6165f2ae8575b9d10f7f8f648d0642faae14e507357d74f4bf";
              sha256_unsigned = "6fa6ffb303c1dc6165f2ae8575b9d10f7f8f648d0642faae14e507357d74f4bf";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-teltonika_rutx50-squashfs-sysupgrade.bin";
              sha256 = "12edcc08d9cb2e9fcdd6b37ea4bcda26e3ee56f07ccd2a9cf6ff116c36c940f4";
              sha256_unsigned = "5f859f27ffb89fc59aa6cd3890e61f41436f0ff6efb4482de868c10a9f074fda";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "teltonika,rutx50"
          ];
          titles = [
            {
              model = "RUTX50";
              vendor = "Teltonika";
            }
          ];
        };
        wallys_dr40x9 = {
          device_packages = [
            "ipq-wifi-wallys_dr40x9"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-wallys_dr40x9";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-wallys_dr40x9-squashfs-factory.ubi";
              sha256 = "c5ebeb5bf66e1b8a499b7384de4a5cac53efbf6d402d7f33ea3e67e5e0cb889e";
              sha256_unsigned = "c5ebeb5bf66e1b8a499b7384de4a5cac53efbf6d402d7f33ea3e67e5e0cb889e";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-wallys_dr40x9-squashfs-sysupgrade.bin";
              sha256 = "daae757a50aaafee9638f9fdbbb7954e82ea75e38e898c8fe7e883bf4e38e7c1";
              sha256_unsigned = "43b7c78ba187f688a74d265d6450463ed1095c79fae9185c8c9f7afb43bb8c02";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-wallys_dr40x9-initramfs-uImage.itb";
              sha256 = "5a96a8d548fc236f88e42c8599f851c9b238f99c8329ea7c37b08f000ee4aee8";
              sha256_unsigned = "5a96a8d548fc236f88e42c8599f851c9b238f99c8329ea7c37b08f000ee4aee8";
              type = "kernel";
            }
          ];
          supported_devices = [
            "wallys,dr40x9"
          ];
          titles = [
            {
              model = "DR40X9";
              vendor = "Wallys";
            }
          ];
        };
        yyets_le1 = {
          device_packages = [
            "ipq-wifi-yyets_le1"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-yyets_le1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-yyets_le1-initramfs-zImage.itb";
              sha256 = "654096c1ccdf4876a1de2f3ee57d442e7430c510365dc546661a315d9b22cac4";
              sha256_unsigned = "654096c1ccdf4876a1de2f3ee57d442e7430c510365dc546661a315d9b22cac4";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-yyets_le1-squashfs-factory.bin";
              sha256 = "9c62a75afa7bea42fd0ba47a8fec648d3c369e51baa7e3a3f8e1aa885c5d036a";
              sha256_unsigned = "9c62a75afa7bea42fd0ba47a8fec648d3c369e51baa7e3a3f8e1aa885c5d036a";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-yyets_le1-squashfs-sysupgrade.bin";
              sha256 = "2921b40a7773a1a3468a10e4713b9cf3d20f009efa1659147ceba1d2659d5cae";
              sha256_unsigned = "77e3e65d735baa67ae2b03ba6f5c3e30e5a65ffd19af510cc36c9631c01a8222";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "yyets,le1"
          ];
          titles = [
            {
              model = "LE1";
              vendor = "YYeTs";
            }
          ];
        };
        zte_mf18a = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-zte_mf18a";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-zte_mf18a-squashfs-sysupgrade.bin";
              sha256 = "1b692487f2de90bd69886fff8c0d8d3886a6056d4bb9886c9dcac4f8e2c0f313";
              sha256_unsigned = "be4ac8ee9313dc11d51b512596de5cd832fcbe1e77859c9feb124ae215fa9e3c";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-zte_mf18a-initramfs-uImage.itb";
              sha256 = "93fe39751e0fc6542ccc908c655fc7dfe00178b927be132a8462f7c251157057";
              sha256_unsigned = "93fe39751e0fc6542ccc908c655fc7dfe00178b927be132a8462f7c251157057";
              type = "kernel";
            }
          ];
          supported_devices = [
            "zte,mf18a"
          ];
          titles = [
            {
              model = "MF18A";
              vendor = "ZTE";
            }
          ];
        };
        zte_mf282plus = {
          device_packages = [
            "kmod-usb-acm"
            "kmod-usb-net-rndis"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-zte_mf282plus";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-zte_mf282plus-squashfs-factory.bin";
              sha256 = "df612f4f281b2447b2dd15e570dc5200e20afb7f8016dcb1d7dc8ecc98675779";
              sha256_unsigned = "df612f4f281b2447b2dd15e570dc5200e20afb7f8016dcb1d7dc8ecc98675779";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-zte_mf282plus-squashfs-recovery.bin";
              sha256 = "bbeb0a382834cb8713011877fc3461d033ca20bc129eeedbcecf2b0ca8215819";
              sha256_unsigned = "f6f456e9833960e6df113f912af866f333f4beb23ec472187d4ca15785a745b7";
              type = "recovery";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-zte_mf282plus-initramfs-zImage.itb";
              sha256 = "7582fa4209df0d573f8b763cf516921da3d3e0a892416f77ca0120f9d0f943d6";
              sha256_unsigned = "7582fa4209df0d573f8b763cf516921da3d3e0a892416f77ca0120f9d0f943d6";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-zte_mf282plus-squashfs-sysupgrade.bin";
              sha256 = "c800f3b165198665dad4bf45bb2130b664d53fa7bb8c63bc8a5c4da1104a8512";
              sha256_unsigned = "481ba5e79b5f804d8e4e98a89ee03bcded531812e1fcc96b8ae384f73894917f";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "zte,mf282plus"
          ];
          titles = [
            {
              model = "MF282Plus";
              vendor = "ZTE";
            }
          ];
        };
        zte_mf286d = {
          device_packages = [
            "kmod-usb-net-qmi-wwan"
            "kmod-usb-serial-option"
            "uqmi"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-zte_mf286d";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-zte_mf286d-initramfs-zImage.itb";
              sha256 = "07790428522b0fa2efcd63f93ad35c0a9e2e1776bb87c21a9eb9fd4149c68ce5";
              sha256_unsigned = "07790428522b0fa2efcd63f93ad35c0a9e2e1776bb87c21a9eb9fd4149c68ce5";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-zte_mf286d-squashfs-sysupgrade.bin";
              sha256 = "12ebc0a6794fef4a99a6f19c144a15ef994d408e79e43e403c2cb5271b9ff1e0";
              sha256_unsigned = "a4a46c39f75d50d426fdb3931a8c68fe7b01e5929db37c877c78ddfa8c252757";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "zte,mf286d"
          ];
          titles = [
            {
              model = "MF286D";
              vendor = "ZTE";
            }
          ];
        };
        zte_mf287 = {
          device_packages = [
            "kmod-usb-net-qmi-wwan"
            "kmod-usb-serial-option"
            "uqmi"
            "ipq-wifi-zte_mf287"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-zte_mf287";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-zte_mf287-initramfs-zImage.itb";
              sha256 = "350148332f966aa8a3bcb34c0152e84bf2a192fae4b297f34e0f09704e4a6a42";
              sha256_unsigned = "350148332f966aa8a3bcb34c0152e84bf2a192fae4b297f34e0f09704e4a6a42";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-zte_mf287-squashfs-recovery.bin";
              sha256 = "203093f6996b24c74bdf4579dcd0fe4775e859be502a55a0c25eaf06ed02b3f3";
              sha256_unsigned = "48036d0da172c59f09babdafb86816c902886a054701d09517f519de9ef28ab2";
              type = "recovery";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-zte_mf287-squashfs-sysupgrade.bin";
              sha256 = "b3968f431a1599d1e5e001e19e94835186f60a2421f645d479db4c357d93528a";
              sha256_unsigned = "41d484fa65e4503bce1e899118f8194a9fddb2649f33184ea091f1466d226ac6";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-zte_mf287-squashfs-factory.bin";
              sha256 = "4e9ba589dd51bd4f00bceeef7e7074be5c9c6254be96b5b3e5b045f24d5303ed";
              sha256_unsigned = "4e9ba589dd51bd4f00bceeef7e7074be5c9c6254be96b5b3e5b045f24d5303ed";
              type = "factory";
            }
          ];
          supported_devices = [
            "zte,mf287"
          ];
          titles = [
            {
              model = "MF287";
              vendor = "ZTE";
            }
          ];
        };
        zte_mf287plus = {
          device_packages = [
            "kmod-usb-net-qmi-wwan"
            "kmod-usb-serial-option"
            "uqmi"
            "ipq-wifi-zte_mf287plus"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-zte_mf287plus";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-zte_mf287plus-initramfs-zImage.itb";
              sha256 = "7ee6982ba6011aaec4d603267ca5de9603ee2e5eadc3d506894ad9be67444e21";
              sha256_unsigned = "7ee6982ba6011aaec4d603267ca5de9603ee2e5eadc3d506894ad9be67444e21";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-zte_mf287plus-squashfs-sysupgrade.bin";
              sha256 = "fbf25b4dfa347ece14f90c18dd526d6a7115bb8581ba638724fb6fcb773de79e";
              sha256_unsigned = "c20aea441a39c5f43452464fd4df773a0bc096dbca53b502fa21aa14058ed879";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-zte_mf287plus-squashfs-recovery.bin";
              sha256 = "8f947c163c3210ae480dee2b5d9369da21bd3b40260fee0a1a288d848f57d789";
              sha256_unsigned = "4f4e28b451816d1c4c870d8d395b5c400b3ac8b4cdad3dff89ab2c89a5f4d5e4";
              type = "recovery";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-zte_mf287plus-squashfs-factory.bin";
              sha256 = "4b9aeec17e2de432e300d7806eea8db910be72997c3de8f1666fd59c34766da5";
              sha256_unsigned = "4b9aeec17e2de432e300d7806eea8db910be72997c3de8f1666fd59c34766da5";
              type = "factory";
            }
          ];
          supported_devices = [
            "zte,mf287plus"
          ];
          titles = [
            {
              model = "MF287Plus";
              vendor = "ZTE";
            }
          ];
        };
        zte_mf287pro = {
          device_packages = [
            "kmod-usb-net-qmi-wwan"
            "kmod-usb-serial-option"
            "uqmi"
            "ipq-wifi-zte_mf287plus"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-zte_mf287pro";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-zte_mf287pro-initramfs-zImage.itb";
              sha256 = "762673f7a6c60a4c80697676578caaa980347e198cb637dfe83d0b5403709578";
              sha256_unsigned = "762673f7a6c60a4c80697676578caaa980347e198cb637dfe83d0b5403709578";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-zte_mf287pro-squashfs-sysupgrade.bin";
              sha256 = "8e6d921ee53909a47658cb6dd17eb34b2b112f4893e794f3dc99a81c9bb1fe81";
              sha256_unsigned = "9732f6533282bce41905cf551e1f7123c1d0d45bdc45eb60c1d320a9ac662a7d";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-zte_mf287pro-squashfs-factory.bin";
              sha256 = "d1f7426510b9717ff42834060e8ac00f8caae02d14c0f9b1b81afdf6193eed0b";
              sha256_unsigned = "d1f7426510b9717ff42834060e8ac00f8caae02d14c0f9b1b81afdf6193eed0b";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-zte_mf287pro-squashfs-recovery.bin";
              sha256 = "79b36a0fce656107c24af4ca55a6f6118cbc6b4f3d03b3990d2c60f877250e00";
              sha256_unsigned = "7bc9c14e5163292e06790045f731bc320db5bc5d2bcd85158e58bb6cb6e30456";
              type = "recovery";
            }
          ];
          supported_devices = [
            "zte,mf287pro"
          ];
          titles = [
            {
              model = "MF287Pro";
              vendor = "ZTE";
            }
          ];
        };
        zte_mf289f = {
          device_packages = [
            "kmod-usb-net-qmi-wwan"
            "kmod-usb-serial-option"
            "uqmi"
            "ath10k-firmware-qca9984-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-zte_mf289f";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-zte_mf289f-initramfs-zImage.itb";
              sha256 = "c907d15e30f9e077d8734dfac2df7f25eabcbe8e265a175421f3468ffd06f2b6";
              sha256_unsigned = "c907d15e30f9e077d8734dfac2df7f25eabcbe8e265a175421f3468ffd06f2b6";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-zte_mf289f-squashfs-sysupgrade.bin";
              sha256 = "b587d9e9fca566acf0015a78fab1f438a3136b56d0b727053bd0fdcd4171fa83";
              sha256_unsigned = "e55de30ab913084c8614813ca632188896838049dab4e722cf6af87bad6ac0ee";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "zte,mf289f"
          ];
          titles = [
            {
              model = "MF289F";
              vendor = "ZTE";
            }
          ];
        };
        zyxel_nbg6617 = {
          device_packages = [
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-generic-zyxel_nbg6617";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-zyxel_nbg6617-squashfs-sysupgrade.bin";
              sha256 = "7d399b9cc01030cc3359b5b43be22b4c667ab8480961dd190f0fe0e42f77d337";
              sha256_unsigned = "3357f5c84aa08179d8fdc1a4de3de84d86a799be03c416d071c2f311f5a5f56b";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-zyxel_nbg6617-initramfs-uImage.itb";
              sha256 = "8e172476cd066a69876245d2d49232a938fcbc6aa34cd925e1d4d74b59caa95f";
              sha256_unsigned = "8e172476cd066a69876245d2d49232a938fcbc6aa34cd925e1d4d74b59caa95f";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-generic-zyxel_nbg6617-squashfs-factory.bin";
              sha256 = "b5c73fce188a95cd2eb012b07b3ae06a769babcf70dfcee7803124940878b448";
              sha256_unsigned = "b5c73fce188a95cd2eb012b07b3ae06a769babcf70dfcee7803124940878b448";
              type = "factory";
            }
          ];
          supported_devices = [
            "zyxel,nbg6617"
          ];
          titles = [
            {
              model = "NBG6617";
              vendor = "Zyxel";
            }
          ];
        };
      };
      source_date_epoch = 1738744361;
      target = "ipq40xx/generic";
      version_code = "r32824-6a73dae98c9c";
      version_number = "24.10.0";
    };
    mikrotik = {
      arch_packages = "arm_cortex-a7_neon-vfpv4";
      default_packages = [
        "ath10k-firmware-qca4019-ct"
        "autocore"
        "automount"
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-ath10k-ct"
        "kmod-gpio-button-hotplug"
        "kmod-leds-gpio"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-usb-dwc3"
        "kmod-usb-dwc3-qcom"
        "kmod-usb3"
        "libc"
        "libgcc"
        "libustream-openssl"
        "logd"
        "luci-app-cpufreq"
        "luci-app-package-manager"
        "luci-compat"
        "luci-lib-base"
        "luci-lib-ipkg"
        "luci-light"
        "mtd"
        "netifd"
        "nftables"
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "ppp"
        "ppp-mod-pppoe"
        "procd-ujail"
        "uboot-envtools"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
        "wpad-openssl"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "3583ba0dd6baf6903ff3c88aa70e0693";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        mikrotik_cap-ac = {
          device_packages = [
            "-kmod-ath10k-ct"
            "kmod-ath10k-ct-smallbuffers"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-mikrotik-mikrotik_cap-ac";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-mikrotik-mikrotik_cap-ac-squashfs-sysupgrade.bin";
              sha256 = "bd563106fb2926202b85d02a86f6ba66cb5a9b9d276ecaa94dbee4e117180875";
              sha256_unsigned = "7425fbf0e7a5c3e8f4bb7c8e2ff1150e103870c6abecc76dbeb618c464b25d94";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-mikrotik-mikrotik_cap-ac-initramfs-kernel.bin";
              sha256 = "39c5d3fd27051680d6a51a71601cfed09231672a43af57c6e1539b8bd20863db";
              sha256_unsigned = "39c5d3fd27051680d6a51a71601cfed09231672a43af57c6e1539b8bd20863db";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,cap-ac"
          ];
          titles = [
            {
              model = "cAP ac";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_hap-ac2 = {
          device_packages = [
            "-kmod-ath10k-ct"
            "kmod-ath10k-ct-smallbuffers"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-mikrotik-mikrotik_hap-ac2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-mikrotik-mikrotik_hap-ac2-squashfs-sysupgrade.bin";
              sha256 = "7df93b757a7e7ed87c4b50c439d54f7fc145a9e79a03eb90726fa58eda280684";
              sha256_unsigned = "cfde406c33347b7cfe3846c81376df6e4ac4e18adf8012f127fcaec70840bc7f";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-mikrotik-mikrotik_hap-ac2-initramfs-kernel.bin";
              sha256 = "04059dba8920e263af622e6ead515f775d33e2e63e2425a06cb4df678de74d28";
              sha256_unsigned = "04059dba8920e263af622e6ead515f775d33e2e63e2425a06cb4df678de74d28";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,hap-ac2"
          ];
          titles = [
            {
              model = "hAP ac2";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_hap-ac3 = {
          device_packages = [
            "kmod-ledtrig-gpio"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-mikrotik-mikrotik_hap-ac3";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-mikrotik-mikrotik_hap-ac3-initramfs-kernel.bin";
              sha256 = "138bad0e4bcda3d13d1fb6557abd15d1a7bcec130d60582651382785e2c0daec";
              sha256_unsigned = "138bad0e4bcda3d13d1fb6557abd15d1a7bcec130d60582651382785e2c0daec";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-mikrotik-mikrotik_hap-ac3-squashfs-sysupgrade.bin";
              sha256 = "348c2ec5a182562089e64ca7ba980d0a6d649db3378a37d2e9dd622da299971f";
              sha256_unsigned = "9e6f6724d19da91199d32a9f80c831065ba6155db5bce6ffbec8c32af3f51c64";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,hap-ac3"
          ];
          titles = [
            {
              model = "hAP ac3";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_hap-ac3-lte6-kit = {
          device_packages = [
            "kmod-ledtrig-gpio"
            "kmod-usb-acm"
            "kmod-usb-net-rndis"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-mikrotik-mikrotik_hap-ac3-lte6-kit";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-mikrotik-mikrotik_hap-ac3-lte6-kit-squashfs-sysupgrade.bin";
              sha256 = "3399ce35655c9a79411df8e23c65d0db244c9a91ce0a8487bc23d0b59e565ecf";
              sha256_unsigned = "28fe7ed5a719f2b684c8adea1c9d2c07e489e327d6730f414cbf5ab1ec214c6f";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-mikrotik-mikrotik_hap-ac3-lte6-kit-initramfs-kernel.bin";
              sha256 = "9c5cc75f869262d696ccff12eaea9c4088c93a8760c54fa7ea90a003e0ccb909";
              sha256_unsigned = "9c5cc75f869262d696ccff12eaea9c4088c93a8760c54fa7ea90a003e0ccb909";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,hap-ac3-lte6-kit"
          ];
          titles = [
            {
              model = "hAP ac3 LTE6 kit";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_lhgg-60ad = {
          device_packages = [
            "-kmod-ath10k-ct"
            "-ath10k-firmware-qca4019-ct"
            "kmod-wil6210"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-mikrotik-mikrotik_lhgg-60ad";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-mikrotik-mikrotik_lhgg-60ad-initramfs-kernel.bin";
              sha256 = "1b70de07dc160356ead7cdf20b956d0923a10d97e078df194d1fbce087bf6efd";
              sha256_unsigned = "1b70de07dc160356ead7cdf20b956d0923a10d97e078df194d1fbce087bf6efd";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-mikrotik-mikrotik_lhgg-60ad-squashfs-sysupgrade.bin";
              sha256 = "d083874f9ace3388ff17ce24adf274131a01749c1b6ad8a5cfe8754b02f23671";
              sha256_unsigned = "b092eaaada727b1a03c7d2d1a33384d14f670764e999f1ae1163534a5f74a3df";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,lhgg-60ad"
          ];
          titles = [
            {
              model = "Wireless Wire Dish LHGG-60ad";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_sxtsq-5-ac = {
          device_packages = [
            "rssileds"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-mikrotik-mikrotik_sxtsq-5-ac";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-mikrotik-mikrotik_sxtsq-5-ac-squashfs-sysupgrade.bin";
              sha256 = "6fd1a6dade161d28bd03472b140a9c96b671af632d9d41fdbe23e18936a2311d";
              sha256_unsigned = "e88e749eaa6a216dbcedbdd5dd33c3e2a1a71b90cada12b17f64dce7188b7338";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-mikrotik-mikrotik_sxtsq-5-ac-initramfs-kernel.bin";
              sha256 = "10befe33d1f4eda31bc9018cf109ca04f34746985e5f401ef30510985c01eb20";
              sha256_unsigned = "10befe33d1f4eda31bc9018cf109ca04f34746985e5f401ef30510985c01eb20";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,sxtsq-5-ac"
          ];
          titles = [
            {
              model = "SXTsq 5 ac (RBSXTsqG-5acD)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_wap-ac = {
          device_packages = [
            "-kmod-ath10k-ct"
            "kmod-ath10k-ct-smallbuffers"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-mikrotik-mikrotik_wap-ac";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-mikrotik-mikrotik_wap-ac-squashfs-sysupgrade.bin";
              sha256 = "0b4a806aa3b3096e523c43e893fd3f9554267f47a25eea2c89c9cd337e171e76";
              sha256_unsigned = "089d847b858e95c6d41e1fcff8568e1dbbfa0bdab37d514cc3e09008c3b7a676";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-mikrotik-mikrotik_wap-ac-initramfs-kernel.bin";
              sha256 = "822162b9221123f744e1ff3450fd4e57c292626080e08c8f32b5749903e1f2a2";
              sha256_unsigned = "822162b9221123f744e1ff3450fd4e57c292626080e08c8f32b5749903e1f2a2";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,wap-ac"
          ];
          titles = [
            {
              model = "wAP ac";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_wap-ac-lte = {
          device_packages = [
            "kmod-usb-net-qmi-wwan"
            "kmod-usb-serial-option"
            "uqmi"
            "kmod-usb-acm"
            "kmod-usb-net-rndis"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-mikrotik-mikrotik_wap-ac-lte";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-mikrotik-mikrotik_wap-ac-lte-initramfs-kernel.bin";
              sha256 = "a8a744d5d6b4d0847792cb0b9cfebd6ac47f3aa6fd98412f6a834110ec021361";
              sha256_unsigned = "a8a744d5d6b4d0847792cb0b9cfebd6ac47f3aa6fd98412f6a834110ec021361";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-mikrotik-mikrotik_wap-ac-lte-squashfs-sysupgrade.bin";
              sha256 = "967336c054e22fe7eeb617c1d0532f1bdc5815a8963d8189a0e94f8c10b7c550";
              sha256_unsigned = "1490f5686d159df844b419631fc5c158142bde0f0de2c3460bc6e56f25e55d56";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,wap-ac-lte"
          ];
          titles = [
            {
              model = "wAP ac LTE";
              vendor = "MikroTik";
            }
            {
              model = "wAP ac LTE6";
              vendor = "Mikrotik";
            }
          ];
        };
        mikrotik_wap-r-ac = {
          device_packages = [
            "kmod-usb-net-qmi-wwan"
            "kmod-usb-serial-option"
            "uqmi"
            "kmod-usb-acm"
            "kmod-usb-net-rndis"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq40xx-mikrotik-mikrotik_wap-r-ac";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq40xx-mikrotik-mikrotik_wap-r-ac-squashfs-sysupgrade.bin";
              sha256 = "40a8f97b87a70350e399d070ed8f6debcd1a3d7d5853b23b313badf6fb405154";
              sha256_unsigned = "6854ef7693631a6b597b1734c8339272377e164ec9caa21e506646b4a89faddb";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq40xx-mikrotik-mikrotik_wap-r-ac-initramfs-kernel.bin";
              sha256 = "18659eec036e8826053a30b7501115990e3cd5dc370e1109c2304a0e6c6aae00";
              sha256_unsigned = "18659eec036e8826053a30b7501115990e3cd5dc370e1109c2304a0e6c6aae00";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,wap-r-ac"
          ];
          titles = [
            {
              model = "wAP R ac";
              vendor = "MikroTik";
            }
          ];
        };
      };
      source_date_epoch = 1738744361;
      target = "ipq40xx/mikrotik";
      version_code = "r32824-6a73dae98c9c";
      version_number = "24.10.0";
    };
  };
  ipq806x = {
    chromium = {
      arch_packages = "arm_cortex-a15_neon-vfpv4";
      default_packages = [
        "autocore"
        "automount"
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-ata-ahci"
        "kmod-ata-ahci-platform"
        "kmod-ath10k-ct"
        "kmod-gpio-button-hotplug"
        "kmod-leds-gpio"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-phy-qcom-ipq806x-usb"
        "kmod-usb-dwc3-qcom"
        "kmod-usb-ledtrig-usbport"
        "kmod-usb-ohci"
        "kmod-usb2"
        "kmod-usb3"
        "libc"
        "libgcc"
        "libustream-openssl"
        "logd"
        "luci-app-cpufreq"
        "luci-app-package-manager"
        "luci-compat"
        "luci-lib-base"
        "luci-lib-ipkg"
        "luci-light"
        "mtd"
        "netifd"
        "nftables"
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "ppp"
        "ppp-mod-pppoe"
        "procd-ujail"
        "uboot-envtools"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
        "wpad-openssl"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "b2ae979ba0bb5d3b38a8232bac368b90";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        asus_onhub = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "e2fsprogs"
            "kmod-fs-ext4"
            "losetup"
            "partx-utils"
            "mkf2fs"
            "kmod-fs-f2fs"
            "ucode"
            "kmod-google-firmware"
            "kmod-tpm-i2c-infineon"
            "kmod-sound-soc-ipq8064-storm"
            "kmod-usb-storage"
            "kmod-ramoops"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq806x-chromium-asus_onhub";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-chromium-asus_onhub-squashfs-sysupgrade.bin";
              sha256 = "3780aff89950f58cf5b4b48146fd03e2f7b28d2d4a6ae196df7b00b9482de347";
              sha256_unsigned = "9900163b7c681aa3dc93c84736c2c369a68ab69b8975d088ec31af872053b7c6";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-chromium-asus_onhub-squashfs-factory.bin";
              sha256 = "a628ae86b072a08b3f8946012e4c81cca123b1357d2245f55a342e263bf0e91a";
              sha256_unsigned = "a628ae86b072a08b3f8946012e4c81cca123b1357d2245f55a342e263bf0e91a";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq806x-chromium-asus_onhub-initramfs-fit-zImage.itb.vboot";
              sha256 = "c63efe297d05d0106831d9329901478c586a6d6961eb521beef751fecd3c8458";
              sha256_unsigned = "c63efe297d05d0106831d9329901478c586a6d6961eb521beef751fecd3c8458";
              type = "kernel";
            }
          ];
          supported_devices = [
            "asus,onhub"
          ];
          titles = [
            {
              model = "OnHub SRT-AC1900";
              vendor = "ASUS";
            }
          ];
        };
        tplink_onhub = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "e2fsprogs"
            "kmod-fs-ext4"
            "losetup"
            "partx-utils"
            "mkf2fs"
            "kmod-fs-f2fs"
            "ucode"
            "kmod-google-firmware"
            "kmod-tpm-i2c-infineon"
            "kmod-sound-soc-ipq8064-storm"
            "kmod-usb-storage"
            "kmod-ramoops"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq806x-chromium-tplink_onhub";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-chromium-tplink_onhub-squashfs-factory.bin";
              sha256 = "1fe38877854a856a3a6aab95d0830cc27e420541f76dd7037a4f6f6dcddb637e";
              sha256_unsigned = "1fe38877854a856a3a6aab95d0830cc27e420541f76dd7037a4f6f6dcddb637e";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-chromium-tplink_onhub-squashfs-sysupgrade.bin";
              sha256 = "9650069080b0c3bcee6f4bd472358f336d320187f8ebe46d50cfc3acad61c1f7";
              sha256_unsigned = "c3c4bd0cd60b3a82dc787494f386312e31cafa0becaf3cd8dd2169c1e992d4f9";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq806x-chromium-tplink_onhub-initramfs-fit-zImage.itb.vboot";
              sha256 = "506188844878b5febe6aaaff836f8399eb705f07d1f90f0c03df9c94601dc695";
              sha256_unsigned = "506188844878b5febe6aaaff836f8399eb705f07d1f90f0c03df9c94601dc695";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,onhub"
          ];
          titles = [
            {
              model = "OnHub AC1900 Cloud Router";
              vendor = "TP-Link";
            }
          ];
        };
      };
      source_date_epoch = 1738744361;
      target = "ipq806x/chromium";
      version_code = "r32824-6a73dae98c9c";
      version_number = "24.10.0";
    };
    generic = {
      arch_packages = "arm_cortex-a15_neon-vfpv4";
      default_packages = [
        "autocore"
        "automount"
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-ata-ahci"
        "kmod-ata-ahci-platform"
        "kmod-ath10k-ct"
        "kmod-gpio-button-hotplug"
        "kmod-leds-gpio"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-phy-qcom-ipq806x-usb"
        "kmod-usb-dwc3-qcom"
        "kmod-usb-ledtrig-usbport"
        "kmod-usb-ohci"
        "kmod-usb2"
        "kmod-usb3"
        "libc"
        "libgcc"
        "libustream-openssl"
        "logd"
        "luci-app-cpufreq"
        "luci-app-package-manager"
        "luci-compat"
        "luci-lib-base"
        "luci-lib-ipkg"
        "luci-light"
        "mtd"
        "netifd"
        "nftables"
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "ppp"
        "ppp-mod-pppoe"
        "procd-ujail"
        "uboot-envtools"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
        "wpad-openssl"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "820e1c1f6e04baa37766405078d58108";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        arris_tr4400-v2 = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq806x-generic-arris_tr4400-v2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-arris_tr4400-v2-initramfs-uImage";
              sha256 = "90e7c86cfdfb13e29628dd7e38cb66f1ed9bc2ba1c0d676b881a8a0ee1311868";
              sha256_unsigned = "90e7c86cfdfb13e29628dd7e38cb66f1ed9bc2ba1c0d676b881a8a0ee1311868";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-arris_tr4400-v2-squashfs-sysupgrade.bin";
              sha256 = "f1ea3722d8ae1ceba57a9e769ebc2a867c87cbdf74454f23d94ce851652da544";
              sha256_unsigned = "c3cd151456b4401b5df70d9c07a6ec7961478a821e6f0a68e350d7038fc0e42c";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "arris,tr4400-v2"
          ];
          titles = [
            {
              model = "TR4400";
              variant = "v2";
              vendor = "Arris";
            }
          ];
        };
        askey_rt4230w-rev6 = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq806x-generic-askey_rt4230w-rev6";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-askey_rt4230w-rev6-initramfs-uImage";
              sha256 = "bdb406239fd4455612c45dccdd0bc204ffbda0afee379910c2c68cd6360ba9df";
              sha256_unsigned = "bdb406239fd4455612c45dccdd0bc204ffbda0afee379910c2c68cd6360ba9df";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-askey_rt4230w-rev6-squashfs-sysupgrade.bin";
              sha256 = "e495f3fd18a93ce4ca8ccb4dc5e0dd37cf9a7f0cf033006fb86343ca83b1e312";
              sha256_unsigned = "4beac88a0dbd1312f9121c1f5c3560408380df7dd150987c947a437457bca1f3";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "askey,rt4230w-rev6"
          ];
          titles = [
            {
              model = "RT4230W";
              variant = "REV6";
              vendor = "Askey";
            }
          ];
        };
        asrock_g10 = {
          device_packages = [
            "kmod-i2c-gpio"
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq806x-generic-asrock_g10";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-asrock_g10-squashfs-nand-sysupgrade.bin";
              sha256 = "1b75ac8c2dd4760400bafaef7ff994c45ac99ff4b3a064e47d8f70c58968777f";
              sha256_unsigned = "bfc72a5c7827eb997ae199adcbca3a8627bab8005848dbb14f11bf93d8dba347";
              type = "nand-sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-asrock_g10-initramfs-fit-uImage.itb";
              sha256 = "fd94fc5095eeb7d223ef9e21330ddac03395d6370966aade1654bc291833bfb8";
              sha256_unsigned = "fd94fc5095eeb7d223ef9e21330ddac03395d6370966aade1654bc291833bfb8";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-asrock_g10-squashfs-nand-factory.bin";
              sha256 = "5bee28ff9e2660f411b05230e9ed85a040e3456b4fa2ef1271f60c22fbd03314";
              sha256_unsigned = "5bee28ff9e2660f411b05230e9ed85a040e3456b4fa2ef1271f60c22fbd03314";
              type = "nand-factory";
            }
          ];
          supported_devices = [
            "asrock,g10"
          ];
          titles = [
            {
              model = "G10";
              vendor = "ASRock";
            }
          ];
        };
        buffalo_wxr-2533dhp = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq806x-generic-buffalo_wxr-2533dhp";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-buffalo_wxr-2533dhp-squashfs-sysupgrade.bin";
              sha256 = "1acb654bbe0038a12eea43db0448dcb398707569eff26f7eb0c1109860fffc4d";
              sha256_unsigned = "9bc02b538979e595d1457613f9d3c4362b6f4a6e295050d906db0c7c2e3bbf6b";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-buffalo_wxr-2533dhp-initramfs-uImage";
              sha256 = "d3b84025cd8a4b2d57dffd93430c648819f8c1849d84583a81dd62bb8997ecaf";
              sha256_unsigned = "d3b84025cd8a4b2d57dffd93430c648819f8c1849d84583a81dd62bb8997ecaf";
              type = "kernel";
            }
          ];
          supported_devices = [
            "buffalo,wxr-2533dhp"
          ];
          titles = [
            {
              model = "WXR-2533DHP";
              vendor = "Buffalo";
            }
          ];
        };
        compex_wpq864 = {
          device_packages = [
            "kmod-gpio-beeper"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq806x-generic-compex_wpq864";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-compex_wpq864-squashfs-nand-factory.bin";
              sha256 = "68898ccf9f1a7889167fd0f04ad4dd61ead9058489d7e70e6a97178ea38b7dc2";
              sha256_unsigned = "68898ccf9f1a7889167fd0f04ad4dd61ead9058489d7e70e6a97178ea38b7dc2";
              type = "nand-factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-compex_wpq864-initramfs-fit-uImage.itb";
              sha256 = "de11a9c65f4c5a46f199f3adb6e1cf164f88bc492457b4f0ae867041e1b5b98b";
              sha256_unsigned = "de11a9c65f4c5a46f199f3adb6e1cf164f88bc492457b4f0ae867041e1b5b98b";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-compex_wpq864-squashfs-nand-sysupgrade.bin";
              sha256 = "982aac7bb2961eba811ca428ceb9ced5e2c657542205d144718cf09200ef3558";
              sha256_unsigned = "410df45ee0f9aba9700fe42169bd5e5e9a669c1bd1bf6e80ee8e2ea0f47ecd2c";
              type = "nand-sysupgrade";
            }
          ];
          supported_devices = [
            "compex,wpq864"
          ];
          titles = [
            {
              model = "WPQ864";
              vendor = "Compex";
            }
          ];
        };
        edgecore_ecw5410 = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq806x-generic-edgecore_ecw5410";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-edgecore_ecw5410-squashfs-nand-sysupgrade.bin";
              sha256 = "ecb6a2953594f3bec5f41f846bea2f18b41b6e3e568e8518588a338da47b4943";
              sha256_unsigned = "0927b18ed22fa53278ea3e25562cbe590868e5f1229d69a737064d0c80b0be0a";
              type = "nand-sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-edgecore_ecw5410-initramfs-fit-uImage.itb";
              sha256 = "1f6d0df699f9ea00cd13c7cd9cf1b24b5b2919bcbaf006b205eaeadc1706adca";
              sha256_unsigned = "1f6d0df699f9ea00cd13c7cd9cf1b24b5b2919bcbaf006b205eaeadc1706adca";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-edgecore_ecw5410-squashfs-nand-factory.bin";
              sha256 = "9e8bb5e6a91ce456f778d4a564a8c35dee26a40773e4892978a2cdc3d4825e2f";
              sha256_unsigned = "9e8bb5e6a91ce456f778d4a564a8c35dee26a40773e4892978a2cdc3d4825e2f";
              type = "nand-factory";
            }
          ];
          supported_devices = [
            "edgecore,ecw5410"
          ];
          titles = [
            {
              model = "ECW5410";
              vendor = "Edgecore";
            }
          ];
        };
        extreme_ap3935 = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq806x-generic-extreme_ap3935";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-extreme_ap3935-initramfs-uImage";
              sha256 = "1d0193918af4b447bf2c8c58b2bcfe66d22ad0d2d5a6e5835f8ca720e098c7d0";
              sha256_unsigned = "1d0193918af4b447bf2c8c58b2bcfe66d22ad0d2d5a6e5835f8ca720e098c7d0";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-extreme_ap3935-squashfs-nand-factory.bin";
              sha256 = "77293dd4ff74727ec665e8151a54dc8ea18425dc0bfc798f2eb0ab0b94d5205b";
              sha256_unsigned = "77293dd4ff74727ec665e8151a54dc8ea18425dc0bfc798f2eb0ab0b94d5205b";
              type = "nand-factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-extreme_ap3935-squashfs-nand-sysupgrade.bin";
              sha256 = "9d5dbe53a74f8e5b4fdee1fa40eff6508852e22045be1859ebf6a5c7e7367293";
              sha256_unsigned = "51133dd5cfb9070fb7a185e188cbd3bdd4aaa0e18d89afe07c3d3a1f6944ec2e";
              type = "nand-sysupgrade";
            }
          ];
          supported_devices = [
            "extreme,ap3935"
          ];
          titles = [
            {
              model = "AP3935";
              vendor = "Extreme Networks";
            }
          ];
        };
        fortinet_fap-421e = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq806x-generic-fortinet_fap-421e";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-fortinet_fap-421e-squashfs-sysupgrade.bin";
              sha256 = "2ec915895a707df4a18ec0237f0a2951cf42323453f1cb422194a3c3f37d35b7";
              sha256_unsigned = "8b8f0d09459b613361068d9d3ee0c9416c4e5564418bbee1b95e7d936b273c1d";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-fortinet_fap-421e-initramfs-fit-uImage.itb";
              sha256 = "91788cae9ef41aa0192ee2a2101d7caeb64665c276c72848bfd263771031e730";
              sha256_unsigned = "91788cae9ef41aa0192ee2a2101d7caeb64665c276c72848bfd263771031e730";
              type = "kernel";
            }
          ];
          supported_devices = [
            "fortinet,fap-421e"
          ];
          titles = [
            {
              model = "FAP-421E";
              vendor = "Fortinet";
            }
          ];
        };
        linksys_e8350-v1 = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq806x-generic-linksys_e8350-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-linksys_e8350-v1-initramfs-uImage";
              sha256 = "b2a7ca0db3a8f38be61559efec04daa5ae5d82168d91139ae6c98e7fd44802c8";
              sha256_unsigned = "b2a7ca0db3a8f38be61559efec04daa5ae5d82168d91139ae6c98e7fd44802c8";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-linksys_e8350-v1-squashfs-factory.bin";
              sha256 = "c652de7f6085053f8f9000bdd62ae89d1517d97331443675fe821edb2cfcc1ed";
              sha256_unsigned = "c652de7f6085053f8f9000bdd62ae89d1517d97331443675fe821edb2cfcc1ed";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-linksys_e8350-v1-squashfs-sysupgrade.bin";
              sha256 = "42624d2ce58fe9de1be682b9cc2a5b92344e274e3d6574fb6403499bea0fbffe";
              sha256_unsigned = "daeb6fa185fc13d22860364d3cfd353727a9acdc06b0090174ee94fe27a3d8be";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "linksys,e8350-v1"
          ];
          titles = [
            {
              model = "E8350";
              variant = "v1";
              vendor = "Linksys";
            }
          ];
        };
        linksys_ea7500-v1 = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq806x-generic-linksys_ea7500-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-linksys_ea7500-v1-squashfs-sysupgrade.bin";
              sha256 = "be0f95641650b64655690e053b517b83e9758af6da4294b7fc00924c10395f7c";
              sha256_unsigned = "24dade921a4d743bdee5a613fe72d03efca9f0b5b87da87fecc9160ac404f0bc";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-linksys_ea7500-v1-initramfs-uImage";
              sha256 = "74341ebad6379406669e288839abe502254acf45b85f49dbd7aa12d79c2b71b3";
              sha256_unsigned = "74341ebad6379406669e288839abe502254acf45b85f49dbd7aa12d79c2b71b3";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-linksys_ea7500-v1-squashfs-factory.bin";
              sha256 = "49967084a4dad9290cd7109087e8cc58300ff293c1bd864a067ee38b1d8340cd";
              sha256_unsigned = "49967084a4dad9290cd7109087e8cc58300ff293c1bd864a067ee38b1d8340cd";
              type = "factory";
            }
          ];
          supported_devices = [
            "linksys,ea7500-v1"
          ];
          titles = [
            {
              model = "EA7500";
              variant = "v1";
              vendor = "Linksys";
            }
          ];
        };
        linksys_ea8500 = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq806x-generic-linksys_ea8500";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-linksys_ea8500-squashfs-factory.bin";
              sha256 = "88131380ba5a67e2cf4f7d9469d3d3d7dac50fe79226a42daddad67582286e76";
              sha256_unsigned = "88131380ba5a67e2cf4f7d9469d3d3d7dac50fe79226a42daddad67582286e76";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-linksys_ea8500-initramfs-uImage";
              sha256 = "beddf8051d4f015f689339efaf1512dc144630d1132be8a6a15537419987f187";
              sha256_unsigned = "beddf8051d4f015f689339efaf1512dc144630d1132be8a6a15537419987f187";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-linksys_ea8500-squashfs-sysupgrade.bin";
              sha256 = "1624fea583c508bed946b014becc6ae3ba44a6984ec55c0a978e1073742ba11f";
              sha256_unsigned = "26f47ec8f51ccaa280e8c3d15c31793d7685a0ebaea7f51af7668142b2f21e67";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "linksys,ea8500"
            "ea8500"
          ];
          titles = [
            {
              model = "EA8500";
              vendor = "Linksys";
            }
          ];
        };
        meraki_mr42 = {
          device_packages = [
            "-kmod-ata-ahci"
            "-kmod-ata-ahci-platform"
            "-kmod-usb-ohci"
            "-kmod-usb2"
            "-kmod-usb-ledtrig-usbport"
            "-kmod-phy-qcom-ipq806x-usb"
            "-kmod-usb3"
            "-kmod-usb-dwc3-qcom"
            "-uboot-envtools"
            "ath10k-firmware-qca9887-ct"
            "ath10k-firmware-qca99x0-ct"
            "kmod-eeprom-at24"
            "kmod-hwmon-ina2xx"
            "kmod-leds-tlc591xx"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq806x-generic-meraki_mr42";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-meraki_mr42-squashfs-sysupgrade.bin";
              sha256 = "d28a8f797f1c9e8fba70a48208bdd85acf18e787751350a399935526d71f3398";
              sha256_unsigned = "bbec339da0161e0ca58d221c27e2527470884961849a1ed3957ee9998dfe5050";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-meraki_mr42-initramfs-fit-uImage.itb";
              sha256 = "58f5df90740dfaea3a93503159775767d10420df8fcb60e22028bcb345df6709";
              sha256_unsigned = "58f5df90740dfaea3a93503159775767d10420df8fcb60e22028bcb345df6709";
              type = "kernel";
            }
          ];
          supported_devices = [
            "meraki,mr42"
          ];
          titles = [
            {
              model = "MR42";
              vendor = "Cisco Meraki";
            }
          ];
        };
        meraki_mr52 = {
          device_packages = [
            "-kmod-ata-ahci"
            "-kmod-ata-ahci-platform"
            "-kmod-usb-ohci"
            "-kmod-usb2"
            "-kmod-usb-ledtrig-usbport"
            "-kmod-phy-qcom-ipq806x-usb"
            "-kmod-usb3"
            "-kmod-usb-dwc3-qcom"
            "-uboot-envtools"
            "ath10k-firmware-qca9887-ct"
            "ath10k-firmware-qca9984-ct"
            "kmod-eeprom-at24"
            "kmod-hwmon-ina2xx"
            "kmod-leds-tlc591xx"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq806x-generic-meraki_mr52";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-meraki_mr52-initramfs-fit-uImage.itb";
              sha256 = "6c7a7b8500b8888a2679d9922e1e6a3e95cca459360d27f740c61b23b0a0972b";
              sha256_unsigned = "6c7a7b8500b8888a2679d9922e1e6a3e95cca459360d27f740c61b23b0a0972b";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-meraki_mr52-squashfs-sysupgrade.bin";
              sha256 = "c62cf2656f6bc1e80bcaa5e911804400ec6f047435f0d6c1af7c4a9299094a6f";
              sha256_unsigned = "d8c0d8ad17cc97c40dfc3d446830055c3dd1d87e55a9ae1b8ee3737b32e06020";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "meraki,mr52"
          ];
          titles = [
            {
              model = "MR52";
              vendor = "Cisco Meraki";
            }
          ];
        };
        nec_wg2600hp = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq806x-generic-nec_wg2600hp";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-nec_wg2600hp-squashfs-sysupgrade.bin";
              sha256 = "fa63a1a220f82f363e376d1115eabbe75765a55f7c9a54cd3b78a56bd4231ab7";
              sha256_unsigned = "418f58ef8adf9abb3e354cd2184897bb605357e008f5a6cbd1b683bd4452d175";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-nec_wg2600hp-initramfs-uImage";
              sha256 = "ad9e6a1b382ee56ead1716006043969e8b2a1cb9f684ad58c710a60d0211f7ae";
              sha256_unsigned = "ad9e6a1b382ee56ead1716006043969e8b2a1cb9f684ad58c710a60d0211f7ae";
              type = "kernel";
            }
          ];
          supported_devices = [
            "nec,wg2600hp"
          ];
          titles = [
            {
              model = "Aterm WG2600HP";
              vendor = "NEC";
            }
          ];
        };
        nec_wg2600hp3 = {
          device_packages = [
            "-kmod-ata-ahci"
            "-kmod-ata-ahci-platform"
            "-kmod-usb-ohci"
            "-kmod-usb2"
            "-kmod-usb-ledtrig-usbport"
            "-kmod-phy-qcom-ipq806x-usb"
            "-kmod-usb3"
            "-kmod-usb-dwc3-qcom"
            "ath10k-firmware-qca9984-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq806x-generic-nec_wg2600hp3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-nec_wg2600hp3-squashfs-sysupgrade.bin";
              sha256 = "fa7ffe4f634dff549186676db2359d50ee4b083368d64a90d6b502bb7c693a06";
              sha256_unsigned = "9ba1587871bb2b4b3a12c5afa49a920609be25f1342323feb2c35b5c48c4eb08";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-nec_wg2600hp3-initramfs-uImage";
              sha256 = "fc03565707724d0ef19dd393c0b35c461032588916f8df183c550870a8ad9604";
              sha256_unsigned = "fc03565707724d0ef19dd393c0b35c461032588916f8df183c550870a8ad9604";
              type = "kernel";
            }
          ];
          supported_devices = [
            "nec,wg2600hp3"
          ];
          titles = [
            {
              model = "Aterm WG2600HP3";
              vendor = "NEC Platforms";
            }
          ];
        };
        netgear_d7800 = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq806x-generic-netgear_d7800";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-netgear_d7800-squashfs-factory.img";
              sha256 = "62271c4a3cf929dd42973ae9486c7100143972c16be8303006f58bf1af664a48";
              sha256_unsigned = "62271c4a3cf929dd42973ae9486c7100143972c16be8303006f58bf1af664a48";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-netgear_d7800-initramfs-uImage";
              sha256 = "ed5c0e5ac1c1e8b231895bb5f727d1506c78d76c4e8825fcf453aac30ca090a8";
              sha256_unsigned = "ed5c0e5ac1c1e8b231895bb5f727d1506c78d76c4e8825fcf453aac30ca090a8";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-netgear_d7800-squashfs-sysupgrade.bin";
              sha256 = "df02bccafea983c3ce4ac44c7088054cbe7457dd20445cd0ae204b2308e0e1da";
              sha256_unsigned = "8e1f9475717ef169ea677577afe36a57eb428150d727427ec891af7b71108722";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,d7800"
            "d7800"
          ];
          titles = [
            {
              model = "Nighthawk X4 D7800";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_r7500 = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq806x-generic-netgear_r7500";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-netgear_r7500-squashfs-factory.img";
              sha256 = "af7d707d65d9dbe8c830e2933f1cdcfefcbd2bcbdd7069867a057569cc7672b2";
              sha256_unsigned = "af7d707d65d9dbe8c830e2933f1cdcfefcbd2bcbdd7069867a057569cc7672b2";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-netgear_r7500-squashfs-sysupgrade.bin";
              sha256 = "f6dc589f61758769eb2282ae3a555184d54af11b5421b6d61dc010977692cd4d";
              sha256_unsigned = "3df3eb28372761e9eea235e42a62f221b07d32f7a2a167023c9d09be51f39366";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-netgear_r7500-initramfs-uImage";
              sha256 = "15065e1ecdc079f37b9a97131fb451ca149455e7ca4d3667dc823c2b1bed54e4";
              sha256_unsigned = "15065e1ecdc079f37b9a97131fb451ca149455e7ca4d3667dc823c2b1bed54e4";
              type = "kernel";
            }
          ];
          supported_devices = [
            "netgear,r7500"
            "r7500"
          ];
          titles = [
            {
              model = "Nighthawk X4 R7500";
              variant = "v1";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_r7500v2 = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq806x-generic-netgear_r7500v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-netgear_r7500v2-squashfs-sysupgrade.bin";
              sha256 = "218cd97deab76e3eb47d4558d5d09094192ff71a25451fc4e8ee1035975f2e8f";
              sha256_unsigned = "1f5c5ce54ca51d60f5e9d2801998fad4440bb6064d2d34abfd552a0e3ffb9d61";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-netgear_r7500v2-initramfs-uImage";
              sha256 = "01bcc0472ae760ea83981943c51281265bf08713b94f01aa8d6d4fe70d0c9672";
              sha256_unsigned = "01bcc0472ae760ea83981943c51281265bf08713b94f01aa8d6d4fe70d0c9672";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-netgear_r7500v2-squashfs-factory.img";
              sha256 = "b3c3e4e436110a35e22e1b94f524c4ab20d7f50f4b600c5f01059ff14af53cdd";
              sha256_unsigned = "b3c3e4e436110a35e22e1b94f524c4ab20d7f50f4b600c5f01059ff14af53cdd";
              type = "factory";
            }
          ];
          supported_devices = [
            "netgear,r7500v2"
            "r7500v2"
          ];
          titles = [
            {
              model = "Nighthawk X4 R7500";
              variant = "v2";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_r7800 = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
            "kmod-ramoops"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq806x-generic-netgear_r7800";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-netgear_r7800-squashfs-factory.img";
              sha256 = "24dd5bd23b5fbfc6984a924930f3ae5b71f201ac0e03fbdf9f8c7faa34eefaa0";
              sha256_unsigned = "24dd5bd23b5fbfc6984a924930f3ae5b71f201ac0e03fbdf9f8c7faa34eefaa0";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-netgear_r7800-squashfs-sysupgrade.bin";
              sha256 = "8dc044e16faea6c9c4334692172bf4442013a486218373b9d30e300a5d60d7d6";
              sha256_unsigned = "4d5142134d07e3330af4332aea6c3fc2958c32529a37a995eebdeba855d7a4eb";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-netgear_r7800-initramfs-uImage";
              sha256 = "59d5b8b245e40efae354ddb157f5b1ae31ef1deafff6003bf78bada9536ed08c";
              sha256_unsigned = "59d5b8b245e40efae354ddb157f5b1ae31ef1deafff6003bf78bada9536ed08c";
              type = "kernel";
            }
          ];
          supported_devices = [
            "netgear,r7800"
            "r7800"
          ];
          titles = [
            {
              model = "Nighthawk X4S R7800";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_xr450 = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
            "kmod-ramoops"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq806x-generic-netgear_xr450";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-netgear_xr450-squashfs-sysupgrade.bin";
              sha256 = "d7d1908fe6b1f7620e8272bf079dc0ecfb2d38686f4d6b2fa5ca2eaf1bdeae07";
              sha256_unsigned = "096d4c7e75a2a15fa4bdd9175bdfbe8aab3d6ec0b4adf88f631fdcb0928c96d3";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-netgear_xr450-squashfs-factory.img";
              sha256 = "73680b0d9d93cce22738583ceb0d4ac2a9882b0a69089564793860cc101909c4";
              sha256_unsigned = "73680b0d9d93cce22738583ceb0d4ac2a9882b0a69089564793860cc101909c4";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-netgear_xr450-initramfs-uImage";
              sha256 = "d8fea202032353da87b11082224372e88bee9972c350c646304c7c1294b38e31";
              sha256_unsigned = "d8fea202032353da87b11082224372e88bee9972c350c646304c7c1294b38e31";
              type = "kernel";
            }
          ];
          supported_devices = [
            "netgear,xr450"
          ];
          titles = [
            {
              model = "Nighthawk XR450";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_xr500 = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
            "kmod-ramoops"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq806x-generic-netgear_xr500";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-netgear_xr500-initramfs-uImage";
              sha256 = "d96970c05a9e4a820425115ad53d72e894ffeccd23508d850bf8611c24ff7835";
              sha256_unsigned = "d96970c05a9e4a820425115ad53d72e894ffeccd23508d850bf8611c24ff7835";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-netgear_xr500-squashfs-sysupgrade.bin";
              sha256 = "bd1503885360c18582204a7e97808b691b3b0eb5f387a85d8db26146be1effe6";
              sha256_unsigned = "cd8290af7c2f362bea0b23a16fccce16010fa62f56741588228dbc0e9e07fa6f";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-netgear_xr500-squashfs-factory.img";
              sha256 = "8e3e2236b276c7d40c275651077dbcb29226ce8a19c33e7e2718555f29280c73";
              sha256_unsigned = "8e3e2236b276c7d40c275651077dbcb29226ce8a19c33e7e2718555f29280c73";
              type = "factory";
            }
          ];
          supported_devices = [
            "netgear,xr500"
          ];
          titles = [
            {
              model = "Nighthawk XR500";
              vendor = "NETGEAR";
            }
          ];
        };
        nokia_ac400i = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq806x-generic-nokia_ac400i";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-nokia_ac400i-initramfs-fit-uImage.itb";
              sha256 = "f344c10f0f108c715ccd8f6d04001c8e635b9a5b16f4c4b715028eed0be11a1f";
              sha256_unsigned = "f344c10f0f108c715ccd8f6d04001c8e635b9a5b16f4c4b715028eed0be11a1f";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-nokia_ac400i-squashfs-nand-factory.bin";
              sha256 = "af4120ba36cd14840aa9a6240d61b38379589e8a12a0b51286950f02de6d1967";
              sha256_unsigned = "af4120ba36cd14840aa9a6240d61b38379589e8a12a0b51286950f02de6d1967";
              type = "nand-factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-nokia_ac400i-squashfs-nand-sysupgrade.bin";
              sha256 = "6eee358e4b9c3b9a48a316933c3ce36c6ca69a4d12da83df0d6bdbae8ee56527";
              sha256_unsigned = "bf9ce6292238bb5021e7ee60664332798d2797d4b1f97c86e7038dd4e93cd140";
              type = "nand-sysupgrade";
            }
          ];
          supported_devices = [
            "nokia,ac400i"
          ];
          titles = [
            {
              model = "AC400i";
              vendor = "Nokia";
            }
          ];
        };
        qcom_ipq8064-ap148 = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq806x-generic-qcom_ipq8064-ap148";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-qcom_ipq8064-ap148-squashfs-nand-sysupgrade.bin";
              sha256 = "62437e38a7cf1f23591adb2914f54b5490cfe3bb174db0015c46bf3e65c6fe76";
              sha256_unsigned = "963505492c70a637e9bb6b3451c24450e13e8128f58e479980832380c1666223";
              type = "nand-sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-qcom_ipq8064-ap148-initramfs-fit-uImage.itb";
              sha256 = "7db4f29ff58f41005d2c2f19aca4bf10d53867d580356b29d27212f341c7e826";
              sha256_unsigned = "7db4f29ff58f41005d2c2f19aca4bf10d53867d580356b29d27212f341c7e826";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-qcom_ipq8064-ap148-squashfs-nand-factory.bin";
              sha256 = "76886367bf17523840f618e94b569ae87ecef06ac8a2ce80dd0ddbd4156f6d62";
              sha256_unsigned = "76886367bf17523840f618e94b569ae87ecef06ac8a2ce80dd0ddbd4156f6d62";
              type = "nand-factory";
            }
          ];
          supported_devices = [
            "qcom,ipq8064-ap148"
            "ap148"
          ];
          titles = [
            {
              model = "AP148";
              variant = "standard";
              vendor = "Qualcomm";
            }
          ];
        };
        qcom_ipq8064-ap148-legacy = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq806x-generic-qcom_ipq8064-ap148-legacy";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-qcom_ipq8064-ap148-legacy-squashfs-nand-sysupgrade.bin";
              sha256 = "5c94c18b90b80860a657f3e9448e0b6e0ccfcdbfecde2d9dfbb870fde1e15a9f";
              sha256_unsigned = "b158619decf72129d8b4e926b3c4a284bfedd83ca2f2b7ad2754c0dd8d8213cf";
              type = "nand-sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-qcom_ipq8064-ap148-legacy-squashfs-nand-factory.bin";
              sha256 = "33582b576abbb50eb7f40c84e8ff4638c6a93aa819c779238e0db2d983b62cbc";
              sha256_unsigned = "33582b576abbb50eb7f40c84e8ff4638c6a93aa819c779238e0db2d983b62cbc";
              type = "nand-factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-qcom_ipq8064-ap148-legacy-initramfs-uImage";
              sha256 = "0aad3d7d1a962e6aae83ba78534cd8ba525fef33045f0a6754e36bf479cebacd";
              sha256_unsigned = "0aad3d7d1a962e6aae83ba78534cd8ba525fef33045f0a6754e36bf479cebacd";
              type = "kernel";
            }
          ];
          supported_devices = [
            "qcom,ipq8064-ap148"
            "ap148"
          ];
          titles = [
            {
              model = "AP148";
              variant = "legacy";
              vendor = "Qualcomm";
            }
          ];
        };
        qcom_ipq8064-ap161 = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq806x-generic-qcom_ipq8064-ap161";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-qcom_ipq8064-ap161-squashfs-nand-factory.bin";
              sha256 = "865803356e0126b6528e95f0206a4b17fb043fe526f002f8547854c18ffbe014";
              sha256_unsigned = "865803356e0126b6528e95f0206a4b17fb043fe526f002f8547854c18ffbe014";
              type = "nand-factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-qcom_ipq8064-ap161-squashfs-nand-sysupgrade.bin";
              sha256 = "b837934a4bd5e5ad464700bf9b38d9b04d3de7dd4695744ec2bf3412c342df79";
              sha256_unsigned = "5826ee577966967b59449fb2bbcd3e06b2d6bc62b72ce7f854392678ae6cf358";
              type = "nand-sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-qcom_ipq8064-ap161-initramfs-fit-uImage.itb";
              sha256 = "e780dd007cc0042d29cf3065f95b66ee8ada020e5babb02f80dbbebf081c366f";
              sha256_unsigned = "e780dd007cc0042d29cf3065f95b66ee8ada020e5babb02f80dbbebf081c366f";
              type = "kernel";
            }
          ];
          supported_devices = [
            "qcom,ipq8064-ap161"
          ];
          titles = [
            {
              model = "AP161";
              vendor = "Qualcomm";
            }
          ];
        };
        qcom_ipq8064-db149 = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq806x-generic-qcom_ipq8064-db149";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-qcom_ipq8064-db149-squashfs-sysupgrade.bin";
              sha256 = "a3c6d2efe0ede5111ea01b8fb169d0ca579e850a8cc5cb024a52d81ec7b3a37e";
              sha256_unsigned = "a26b23e1f59b2e0c32b8516254998e024677653a490e57cef5db36fdb4df2146";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-qcom_ipq8064-db149-initramfs-fit-uImage.itb";
              sha256 = "25ea9b44811183db33a17732b69e52c63182a1367a198c57f72fe666cc1a91e6";
              sha256_unsigned = "25ea9b44811183db33a17732b69e52c63182a1367a198c57f72fe666cc1a91e6";
              type = "kernel";
            }
          ];
          supported_devices = [
            "qcom,ipq8064-db149"
          ];
          titles = [
            {
              model = "DB149";
              vendor = "Qualcomm";
            }
          ];
        };
        ruijie_rg-mtfi-m520 = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "kmod-hwmon-lm75"
            "kmod-rtc-pcf8563"
            "kmod-fs-f2fs"
            "losetup"
            "mkf2fs"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq806x-generic-ruijie_rg-mtfi-m520";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-ruijie_rg-mtfi-m520-squashfs-factory.bin";
              sha256 = "553554efae8111d3759a2cfe3bacde8f0cfeaf21cf992cc09252e0f64cef5773";
              sha256_unsigned = "553554efae8111d3759a2cfe3bacde8f0cfeaf21cf992cc09252e0f64cef5773";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-ruijie_rg-mtfi-m520-initramfs-uImage";
              sha256 = "fd92aea8a88449e068e9e64f79410de51af6dc803addfeaff026f8e5a675a9e7";
              sha256_unsigned = "fd92aea8a88449e068e9e64f79410de51af6dc803addfeaff026f8e5a675a9e7";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-ruijie_rg-mtfi-m520-squashfs-sysupgrade.bin";
              sha256 = "bde125daf08db4e8bbbb70b3eb1c1fc39cb6e0b2b4db54ba366b8a16ecfa5ae3";
              sha256_unsigned = "1538042a90a9757ab5d051af40740b5532659aec9e353bb94a59000cc3dd0d39";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "ruijie,rg-mtfi-m520"
          ];
          titles = [
            {
              model = "RG-MTFi-M520";
              vendor = "Ruijie";
            }
          ];
        };
        tplink_ad7200 = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
            "kmod-ramoops"
            "kmod-wil6210"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq806x-generic-tplink_ad7200";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-tplink_ad7200-squashfs-factory.bin";
              sha256 = "b00cc7a8b0fde05ad7733aa3d0d2947c6772ae1045d83f45076644b79185d72a";
              sha256_unsigned = "b00cc7a8b0fde05ad7733aa3d0d2947c6772ae1045d83f45076644b79185d72a";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-tplink_ad7200-initramfs-uImage";
              sha256 = "bdc1e1f83016d13b800e3027fa9b5c8ca62c67368229febb76b66c2ea5ac5445";
              sha256_unsigned = "bdc1e1f83016d13b800e3027fa9b5c8ca62c67368229febb76b66c2ea5ac5445";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-tplink_ad7200-squashfs-sysupgrade.bin";
              sha256 = "5b5371e9df606d4f426c294cbe96fff001f7ae249d4d3ae233a78ec733952443";
              sha256_unsigned = "1b2b4e9f3b938be69b613e548f73498e8134690d9cd2a6c6bfa9c4d2772a7cd6";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "tplink,ad7200"
          ];
          titles = [
            {
              model = "AD7200";
              variant = "v1/v2";
              vendor = "TP-Link";
            }
            {
              model = "Talon AD7200";
              variant = "v1/v2";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_c2600 = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
            "kmod-ramoops"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq806x-generic-tplink_c2600";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-tplink_c2600-squashfs-sysupgrade.bin";
              sha256 = "cf55d14869a6e43b1cc3f3b46e8ab96b98f791797a45019a9cd1b243d35637ec";
              sha256_unsigned = "d83aab311a40f90e62b72b830bac7c1a9e960d20596d95c06bb352395c3f4ea1";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-tplink_c2600-squashfs-factory.bin";
              sha256 = "ea15cf7660551fb39da0c8a0dd6093218c4722ef2648445d0c040a6faf0d9cb2";
              sha256_unsigned = "ea15cf7660551fb39da0c8a0dd6093218c4722ef2648445d0c040a6faf0d9cb2";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-tplink_c2600-initramfs-uImage";
              sha256 = "48567e671690dfa861fbc16512dba0363ca5cae4c4cdeb41333d2c95fe84be25";
              sha256_unsigned = "48567e671690dfa861fbc16512dba0363ca5cae4c4cdeb41333d2c95fe84be25";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,c2600"
            "c2600"
          ];
          titles = [
            {
              model = "Archer C2600";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_vr2600v = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq806x-generic-tplink_vr2600v";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-tplink_vr2600v-initramfs-uImage";
              sha256 = "e884f81d3461832f7368b672b0575f25c88fbe2ad4188f30c4a9b61feec75ac7";
              sha256_unsigned = "e884f81d3461832f7368b672b0575f25c88fbe2ad4188f30c4a9b61feec75ac7";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-tplink_vr2600v-squashfs-sysupgrade.bin";
              sha256 = "ca241d7bb09cd81ff70c90bc19158f0f24648ab2734c9687bb3458d03f9f6a72";
              sha256_unsigned = "6279668bdc3d1c2fd5765dbb24ea0fc2b8a606ef4462197681367febca8c080f";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "tplink,vr2600v"
            "vr2600v"
          ];
          titles = [
            {
              model = "Archer VR2600v";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        ubnt_unifi-ac-hd = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq806x-generic-ubnt_unifi-ac-hd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-ubnt_unifi-ac-hd-initramfs-fit-uImage.itb";
              sha256 = "576ed77d3c1d74418192c94445dd1d3653e8ccf08e5abd6e1eea776af0ee321a";
              sha256_unsigned = "576ed77d3c1d74418192c94445dd1d3653e8ccf08e5abd6e1eea776af0ee321a";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-ubnt_unifi-ac-hd-squashfs-sysupgrade.bin";
              sha256 = "e34009597fa69a65f042023463b5bd32730128f97088494ee6f421b2463fe5fc";
              sha256_unsigned = "9824e893812a75e4e942b4c8839917a0ec921505ddb15acde3a2ebc82686ca6a";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "ubnt,unifi-ac-hd"
          ];
          titles = [
            {
              model = "UniFi AC HD";
              vendor = "Ubiquiti";
            }
          ];
        };
        xiaomi_mi-router-hd = {
          device_packages = [
            "kmod-i2c-gpio"
            "kmod-hwmon-lm75"
            "kmod-hwmon-drivetemp"
            "ath10k-firmware-qca9984-ct"
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq806x-generic-xiaomi_mi-router-hd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-xiaomi_mi-router-hd-squashfs-sysupgrade.bin";
              sha256 = "eefe8e8f45b13a8df9e23bfd8615c66a9c0c984d303ac3191b36698de1279f49";
              sha256_unsigned = "8fd5bbbf03f8cbedd7a7932b4255d7f34ea9a8f44f53ab6fc2e569e5598f5cde";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-xiaomi_mi-router-hd-initramfs-uImage";
              sha256 = "d200b067c6976953590b43e9cd09766ece3f2d90e92777d7238ce4b878e30ef2";
              sha256_unsigned = "d200b067c6976953590b43e9cd09766ece3f2d90e92777d7238ce4b878e30ef2";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-xiaomi_mi-router-hd-squashfs-factory.bin";
              sha256 = "b3606f6df2e3d5333494a88f2ddb220e11e09b54fe39751f5f82a599242ac478";
              sha256_unsigned = "b3606f6df2e3d5333494a88f2ddb220e11e09b54fe39751f5f82a599242ac478";
              type = "factory";
            }
          ];
          supported_devices = [
            "xiaomi,mi-router-hd"
          ];
          titles = [
            {
              model = "Mi Router HD";
              vendor = "Xiaomi";
            }
          ];
        };
        zyxel_nbg6817 = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
            "e2fsprogs"
            "kmod-fs-ext4"
            "losetup"
          ];
          image_prefix = "immortalwrt-24.10.0-ipq806x-generic-zyxel_nbg6817";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-zyxel_nbg6817-squashfs-sysupgrade.bin";
              sha256 = "3ec658492c3368988a5347d58a7f5e3d9af210a96bd76b614a8a15c00750850d";
              sha256_unsigned = "38cb56f8e42c86904077eae22a7d0107b5a8767fd95f72c6043ddb024e58cd69";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-zyxel_nbg6817-squashfs-factory.bin";
              sha256 = "1269622f3d4b4c327892fe8c4ef6d787dea4cd228c52366601c5d26a0729974e";
              sha256_unsigned = "1269622f3d4b4c327892fe8c4ef6d787dea4cd228c52366601c5d26a0729974e";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.0-ipq806x-generic-zyxel_nbg6817-initramfs-uImage";
              sha256 = "cb58705e253be2b8656a12df324e5b6249ea421b2132b7b3decde12114fe1cf7";
              sha256_unsigned = "cb58705e253be2b8656a12df324e5b6249ea421b2132b7b3decde12114fe1cf7";
              type = "kernel";
            }
          ];
          supported_devices = [
            "zyxel,nbg6817"
            "nbg6817"
          ];
          titles = [
            {
              model = "NBG6817";
              vendor = "Zyxel";
            }
          ];
        };
      };
      source_date_epoch = 1738744361;
      target = "ipq806x/generic";
      version_code = "r32824-6a73dae98c9c";
      version_number = "24.10.0";
    };
  };
  ixp4xx = {
    generic = {
      arch_packages = "armeb_xscale";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "fconfig"
        "firewall4"
        "fstools"
        "kmod-crypto-hw-ixp4xx"
        "kmod-leds-gpio"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-usb-ledtrig-usbport"
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
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "ppp"
        "ppp-mod-pppoe"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "f1172ba4833b84a29d24c7875d6f9709";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        dlink_dsm_g600_a = {
          device_packages = [
            "ixp4xx-microcode-ethernet"
            "kmod-rtc-pcf8563"
            "kmod-via-velocity"
            "kmod-ata-artop"
            "kmod-ath5k"
            "wpad-basic-mbedtls"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.0-ixp4xx-generic-dlink_dsm_g600_a";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ixp4xx-generic-dlink_dsm_g600_a-squashfs-kernel.bin";
              sha256 = "55e624bc4e127ad37b5a227e2d28b4331fba7277f213efcb204baad879502f73";
              sha256_unsigned = "55e624bc4e127ad37b5a227e2d28b4331fba7277f213efcb204baad879502f73";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ixp4xx-generic-dlink_dsm_g600_a-squashfs-rootfs.bin";
              sha256 = "6bfc878b4c9c4c63eee5f7567041ffd2085863e7742465400b2f9ca3afa0f16e";
              sha256_unsigned = "6bfc878b4c9c4c63eee5f7567041ffd2085863e7742465400b2f9ca3afa0f16e";
              type = "rootfs";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-ixp4xx-generic-dlink_dsm_g600_a-ext4-kernel.bin";
              sha256 = "55e624bc4e127ad37b5a227e2d28b4331fba7277f213efcb204baad879502f73";
              sha256_unsigned = "55e624bc4e127ad37b5a227e2d28b4331fba7277f213efcb204baad879502f73";
              type = "kernel";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-ixp4xx-generic-dlink_dsm_g600_a-ext4-rootfs.bin";
              sha256 = "79402a826a20745438b6880db5d6c3e49622c91392c3134ff1dc2fd1e29d23da";
              sha256_unsigned = "79402a826a20745438b6880db5d6c3e49622c91392c3134ff1dc2fd1e29d23da";
              type = "rootfs";
            }
          ];
          supported_devices = [
            "dlink,dsm,g600,a"
          ];
          titles = [
            {
              model = "DSM G600 A";
              vendor = "D-Link";
            }
          ];
        };
        gateworks_avila = {
          device_packages = [
            "ixp4xx-microcode-ethernet"
            "kmod-rtc-ds1672"
            "kmod-eeprom-at24"
            "kmod-hwmon-ad7418"
          ];
          image_prefix = "immortalwrt-24.10.0-ixp4xx-generic-gateworks_avila";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-ixp4xx-generic-gateworks_avila-ext4-rootfs.bin";
              sha256 = "060b1aeaa63fe3f813bb9372d2cc30b28091ada526926eb42e3919778e2e4bb5";
              sha256_unsigned = "060b1aeaa63fe3f813bb9372d2cc30b28091ada526926eb42e3919778e2e4bb5";
              type = "rootfs";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-ixp4xx-generic-gateworks_avila-ext4-kernel.bin";
              sha256 = "8faa7c6127d57c18b084b4196836262c40417d845a75a14042779e1c0cf5dec9";
              sha256_unsigned = "8faa7c6127d57c18b084b4196836262c40417d845a75a14042779e1c0cf5dec9";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ixp4xx-generic-gateworks_avila-squashfs-kernel.bin";
              sha256 = "8faa7c6127d57c18b084b4196836262c40417d845a75a14042779e1c0cf5dec9";
              sha256_unsigned = "8faa7c6127d57c18b084b4196836262c40417d845a75a14042779e1c0cf5dec9";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ixp4xx-generic-gateworks_avila-squashfs-rootfs.bin";
              sha256 = "20b63b6cd9254c513ddfc555fc58836a052677f2ba4cd89c264f98b21aa864cb";
              sha256_unsigned = "20b63b6cd9254c513ddfc555fc58836a052677f2ba4cd89c264f98b21aa864cb";
              type = "rootfs";
            }
          ];
          supported_devices = [
            "gateworks,avila"
          ];
          titles = [
            {
              model = "Avila GW2348-4";
              vendor = "Gateworks";
            }
          ];
        };
        gateworks_cambria = {
          device_packages = [
            "ixp4xx-microcode-ethernet"
            "kmod-rtc-ds1672"
            "kmod-eeprom-at24"
            "kmod-hwmon-ad7418"
          ];
          image_prefix = "immortalwrt-24.10.0-ixp4xx-generic-gateworks_cambria";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-ixp4xx-generic-gateworks_cambria-ext4-rootfs.bin";
              sha256 = "060b1aeaa63fe3f813bb9372d2cc30b28091ada526926eb42e3919778e2e4bb5";
              sha256_unsigned = "060b1aeaa63fe3f813bb9372d2cc30b28091ada526926eb42e3919778e2e4bb5";
              type = "rootfs";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ixp4xx-generic-gateworks_cambria-squashfs-kernel.bin";
              sha256 = "943881eeb501c1e0c4e1fb095375209472a8fbb17ffdec29ffc946156838e3a5";
              sha256_unsigned = "943881eeb501c1e0c4e1fb095375209472a8fbb17ffdec29ffc946156838e3a5";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ixp4xx-generic-gateworks_cambria-squashfs-rootfs.bin";
              sha256 = "20b63b6cd9254c513ddfc555fc58836a052677f2ba4cd89c264f98b21aa864cb";
              sha256_unsigned = "20b63b6cd9254c513ddfc555fc58836a052677f2ba4cd89c264f98b21aa864cb";
              type = "rootfs";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-ixp4xx-generic-gateworks_cambria-ext4-kernel.bin";
              sha256 = "943881eeb501c1e0c4e1fb095375209472a8fbb17ffdec29ffc946156838e3a5";
              sha256_unsigned = "943881eeb501c1e0c4e1fb095375209472a8fbb17ffdec29ffc946156838e3a5";
              type = "kernel";
            }
          ];
          supported_devices = [
            "gateworks,cambria"
          ];
          titles = [
            {
              model = "Cambria GW2358-4";
              vendor = "Gateworks";
            }
          ];
        };
        iomega_nas100d = {
          device_packages = [
            "ixp4xx-microcode-ethernet"
            "kmod-rtc-pcf8563"
          ];
          image_prefix = "immortalwrt-24.10.0-ixp4xx-generic-iomega_nas100d";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ixp4xx-generic-iomega_nas100d-squashfs-factory.bin";
              sha256 = "85e9b0ac10fc9004c1d75f0e6cb0ea564a57458e472b2c2469161207a1ee8f45";
              sha256_unsigned = "85e9b0ac10fc9004c1d75f0e6cb0ea564a57458e472b2c2469161207a1ee8f45";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-ixp4xx-generic-iomega_nas100d-ext4-factory.bin";
              sha256 = "85e9b0ac10fc9004c1d75f0e6cb0ea564a57458e472b2c2469161207a1ee8f45";
              sha256_unsigned = "85e9b0ac10fc9004c1d75f0e6cb0ea564a57458e472b2c2469161207a1ee8f45";
              type = "factory";
            }
          ];
          supported_devices = [
            "iomega,nas100d"
          ];
          titles = [
            {
              model = "NAS100d";
              vendor = "Iomega";
            }
          ];
        };
        usrobotics_usr8200 = {
          device_packages = [
            "ixp4xx-microcode-ethernet"
            "kmod-rtc-r7301"
            "kmod-firewire"
            "kmod-firewire-ohci"
            "kmod-dsa-mv88e6060"
          ];
          image_prefix = "immortalwrt-24.10.0-ixp4xx-generic-usrobotics_usr8200";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ixp4xx-generic-usrobotics_usr8200-squashfs-rootfs.bin";
              sha256 = "9fa8c580292c9137e224914ea8abcf47c4f1c568d00b30669193c73752233445";
              sha256_unsigned = "9fa8c580292c9137e224914ea8abcf47c4f1c568d00b30669193c73752233445";
              type = "rootfs";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-ixp4xx-generic-usrobotics_usr8200-ext4-kernel.bin";
              sha256 = "4844845ef13b763429358176437d64c2eb510f2a4f75c615cf85a6deec270471";
              sha256_unsigned = "4844845ef13b763429358176437d64c2eb510f2a4f75c615cf85a6deec270471";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-ixp4xx-generic-usrobotics_usr8200-squashfs-kernel.bin";
              sha256 = "4844845ef13b763429358176437d64c2eb510f2a4f75c615cf85a6deec270471";
              sha256_unsigned = "4844845ef13b763429358176437d64c2eb510f2a4f75c615cf85a6deec270471";
              type = "kernel";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-ixp4xx-generic-usrobotics_usr8200-ext4-rootfs.bin";
              sha256 = "b172aa4db4603147b748bd67650026c64da56065bd913a07cacd690050a6fd5e";
              sha256_unsigned = "b172aa4db4603147b748bd67650026c64da56065bd913a07cacd690050a6fd5e";
              type = "rootfs";
            }
          ];
          supported_devices = [
            "usrobotics,usr8200"
          ];
          titles = [
            {
              model = "USR8200";
              vendor = "USRobotics";
            }
          ];
        };
      };
      source_date_epoch = 1738744361;
      target = "ixp4xx/generic";
      version_code = "r32824-6a73dae98c9c";
      version_number = "24.10.0";
    };
  };
  lantiq = { };
  layerscape = {
    armv7 = {
      arch_packages = "arm_cortex-a7_neon-vfpv4";
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
        "kmod-usb-dwc3"
        "kmod-usb-storage"
        "kmod-usb3"
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
      linux_kernel = {
        release = "1";
        vermagic = "f1a54324c0df8c116618032f62034c86";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        fsl_ls1021a-iot-sdboot = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-layerscape-armv7-fsl_ls1021a-iot-sdboot";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-layerscape-armv7-fsl_ls1021a-iot-sdboot-squashfs-sysupgrade.bin";
              sha256 = "57d50f3029d26247c6c862acf9c81d887e59f0f1534016125a382a7b42c2d1d8";
              sha256_unsigned = "6e5e032200b4a10490318f5b360d248ec70adb2518a92882ff510f544ebd0cd3";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-layerscape-armv7-fsl_ls1021a-iot-sdboot-squashfs-sdcard.img.gz";
              sha256 = "9b697f96f1e1d637a7633118b92710428ce91bdd7f38c51a790f6bd6afa2f4b5";
              sha256_unsigned = "9b697f96f1e1d637a7633118b92710428ce91bdd7f38c51a790f6bd6afa2f4b5";
              type = "sdcard";
            }
          ];
          supported_devices = [ ];
          titles = [
            {
              model = "LS1021A-IoT";
              variant = "SD Card Boot";
              vendor = "NXP";
            }
          ];
        };
        fsl_ls1021a-twr = {
          device_packages = [
            "~layerscape-rcw"
          ];
          image_prefix = "immortalwrt-24.10.0-layerscape-armv7-fsl_ls1021a-twr";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-layerscape-armv7-fsl_ls1021a-twr-squashfs-sysupgrade.bin";
              sha256 = "67b71eab658d7218131c2b943b4c99ad8226b8cc59abf3d869ee75b0468ca2dc";
              sha256_unsigned = "816ca2026ecc1202e69933237c3989625ac8f3095ca92fce149dc50b47ba67cb";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-layerscape-armv7-fsl_ls1021a-twr-squashfs-firmware.bin";
              sha256 = "dc33bc2210edbaad6184e616fdb8a170d5f0aad6bc1d614e914aefcfc1714cd2";
              sha256_unsigned = "dc33bc2210edbaad6184e616fdb8a170d5f0aad6bc1d614e914aefcfc1714cd2";
              type = "firmware";
            }
          ];
          supported_devices = [
            "fsl,ls1021a-twr"
          ];
          titles = [
            {
              model = "TWR-LS1021A";
              variant = "Default";
              vendor = "NXP";
            }
          ];
        };
        fsl_ls1021a-twr-sdboot = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.0-layerscape-armv7-fsl_ls1021a-twr-sdboot";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-layerscape-armv7-fsl_ls1021a-twr-sdboot-squashfs-sdcard.img.gz";
              sha256 = "afc0bdcb147f77dc6523b52cb6158f5d2fe9c2aca1b3ac93ad3f62ba4847d113";
              sha256_unsigned = "afc0bdcb147f77dc6523b52cb6158f5d2fe9c2aca1b3ac93ad3f62ba4847d113";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.0-layerscape-armv7-fsl_ls1021a-twr-sdboot-squashfs-sysupgrade.bin";
              sha256 = "1d345d289a161f8f3f7bdea428d8b93660df50febb04affe71e31b66ea47d11b";
              sha256_unsigned = "0d23729edcbc45e80f37ccd9b908a804a3df1f31e9258e458896421104c2cd15";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "fsl,ls1021a-twr-sdboot"
          ];
          titles = [
            {
              model = "TWR-LS1021A";
              variant = "SD Card Boot";
              vendor = "NXP";
            }
          ];
        };
      };
      source_date_epoch = 1738744361;
      target = "layerscape/armv7";
      version_code = "r32824-6a73dae98c9c";
      version_number = "24.10.0";
    };
  };
  loongarch64 = {
    generic = {
      arch_packages = "loongarch64_generic";
      default_packages = [
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
      linux_kernel = {
        release = "1";
        vermagic = "017895cce0441b061a734cecfc6030d4";
        version = "6.6.73";
      };
      metadata_version = 1;
      profiles = {
        generic = {
          device_packages = [
            "kmod-r8169"
            "kmod-drm-amdgpu"
          ];
          image_prefix = "immortalwrt-24.10.0-loongarch64-generic-generic";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-loongarch64-generic-generic-ext4-rootfs.img.gz";
              sha256 = "949715b65ca4dd60a08a3d251a3fd28cc7104093d7736e233abc95094078385f";
              sha256_unsigned = "949715b65ca4dd60a08a3d251a3fd28cc7104093d7736e233abc95094078385f";
              type = "rootfs";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.0-loongarch64-generic-generic-ext4-combined-efi.img.gz";
              sha256 = "390d69a67e70e61cca67461b37b8248bdf9ad0fd881b69fa5b880d1d128f0364";
              sha256_unsigned = "846ef9065141b4bcffd7e10e7429f773dc4d40c915a56de0d3a89b67966cf82b";
              type = "combined-efi";
            }
          ];
          supported_devices = [ ];
          titles = [
            {
              model = "LoongArch64";
              vendor = "Generic";
            }
          ];
        };
      };
      source_date_epoch = 1738744361;
      target = "loongarch64/generic";
      version_code = "r32824-6a73dae98c9c";
      version_number = "24.10.0";
    };
  };
  malta = { };
}