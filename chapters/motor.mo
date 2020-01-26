model DCmotor
  Modelica.Electrical.Analog.Basic.Resistor resistor1(T = 283.15)  annotation(
    Placement(visible = true, transformation(origin = {-40, 54}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Inductor inductor1 annotation(
    Placement(visible = true, transformation(origin = {-12, 54}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.Ground ground1 annotation(
    Placement(visible = true, transformation(origin = {-34, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Mechanics.Rotational.Components.Inertia inertia1( a(start = 0), phi(start = 0), w(start = 0))  annotation(
    Placement(visible = true, transformation(origin = {25, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Basic.EMF emf(useSupport = false)  annotation(
    Placement(visible = true, transformation(origin = {-2, 18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.Analog.Sources.ConstantVoltage constantVoltage1 annotation(
    Placement(visible = true, transformation(origin = {-64, 8}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
equation
  connect(constantVoltage1.n, ground1.p) annotation(
    Line(points = {{-64, -2}, {-64, -2}, {-64, -30}, {-34, -30}, {-34, -44}, {-34, -44}, {-34, -44}}, color = {0, 0, 255}));
  connect(constantVoltage1.n, emf.n) annotation(
    Line(points = {{-64, -2}, {-64, -2}, {-64, -30}, {-2, -30}, {-2, 8}, {-2, 8}}, color = {0, 0, 255}));
  connect(constantVoltage1.p, resistor1.p) annotation(
    Line(points = {{-64, 18}, {-64, 18}, {-64, 54}, {-50, 54}, {-50, 54}}, color = {0, 0, 255}));
  connect(resistor1.n, inductor1.p) annotation(
    Line(points = {{-30, 54}, {-22, 54}}, color = {0, 0, 255}));
  connect(inductor1.n, emf.p) annotation(
    Line(points = {{-2, 54}, {-2, 28}}, color = {0, 0, 255}));
  connect(emf.flange, inertia1.flange_a) annotation(
    Line(points = {{8, 18}, {15, 18}}));
  annotation(
    uses(Modelica(version = "3.2.3")));end DCmotor;