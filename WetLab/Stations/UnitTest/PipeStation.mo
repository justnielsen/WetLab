within WetLab.Stations.UnitTest;
model PipeStation
  extends Modelica.Icons.Example;

  Modelica.Fluid.Sources.MassFlowSource_T source(
    m_flow=1,
    redeclare package Medium = Medium,
    nPorts=1)
    annotation (Placement(transformation(extent={{-60,-10},{-40,10}})));
  Modelica.Fluid.Sources.Boundary_pT sink(redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{60,-10},{40,10}})));
  replaceable package Medium = Buildings.Media.Water
    annotation (__Dymola_choicesAllMatching=true);
  Interfaces.Actuators actuators
    annotation (Placement(transformation(extent={{-10,40},{10,60}})));
  Modelica.Blocks.Sources.Constant valveOpening1(k=0.5) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={-40,90})));
  Modelica.Blocks.Sources.Constant valveOpening2(k=0.5) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={0,90})));
  Modelica.Blocks.Sources.Constant valveOpening3(k=0.5) annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={40,90})));
  WetLab.Stations.PipeStation pipeStation(redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{-20,-20},{20,20}})));
equation
  connect(source.ports[1], pipeStation.port_11) annotation (Line(points={{-40,0},
          {-32,0},{-32,12},{-20,12}}, color={0,127,255}));
  connect(pipeStation.port_12, sink.ports[1]) annotation (Line(points={{20,16},
          {30,16},{30,0},{40,0}}, color={0,127,255}));
  connect(actuators, pipeStation.actuators)
    annotation (Line(points={{0,50},{0,20},{4,20}}, color={0,220,127}));
  connect(valveOpening1.y, actuators.pipelineActuators_a.valve_opening1)
    annotation (Line(points={{-40,79},{-40,50.05},{0.05,50.05}}, color={0,0,127}));
  connect(valveOpening2.y, actuators.pipelineActuators_a.valve_opening2)
    annotation (Line(points={{0,79},{0,64},{0,50.05},{0.05,50.05}}, color={0,0,
          127}));
  connect(valveOpening3.y, actuators.pipelineActuators_a.valve_opening3)
    annotation (Line(points={{40,79},{40,50.05},{0.05,50.05}}, color={0,0,127}));
    annotation(preferredView="diagram");
end PipeStation;
