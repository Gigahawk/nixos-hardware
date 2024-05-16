{
  hardware.deviceTree.overlays = [
    {
      name = "rpi4-cpu-revision";
      dtsText = ''
        /dts-v1/;
        /plugin/;

        / {
          compatible = "brcm,bcm2711";

          fragment@0 {
            target-path = "/";
            __overlay__ {
              system {
                linux,revision = <0x00d03114>;
              };
            };
          };
        };
      '';
    }
  ];
}
