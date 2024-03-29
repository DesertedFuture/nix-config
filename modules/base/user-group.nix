{config, ...
}: {
  users.users."scott" = {
    initialPassword="pw123";
    home = "/home/scott";
    isNormalUser = true;
    extraGroups = [
      "users"
      "networkmanager"
      "wheel"
    ];
  };
}
