{
  description = "Devshell templates";

  outputs = { self }: {
    templates = {
      default = {
        path = ./basic;
        description = "A basic devShell with standard tools";
      };

      rust = {
        path = ./rust;
        description = "Rust development environment";
      };

      cpp = {
        path = ./cpp;
        description = "C++ development environment";
      };

      ts = {
        path = ./ts;
        description = "TypeScript development environment";
      };
    };
  };
}
