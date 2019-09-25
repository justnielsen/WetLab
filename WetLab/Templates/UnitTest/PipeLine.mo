within WetLab.Templates.UnitTest;
model PipeLine
  extends Modelica.Icons.Example;
  WetLab.Templates.PipeLine pipeLine(redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));

  Modelica.Fluid.Sources.MassFlowSource_T source(
    m_flow=1,
    nPorts=1,
    redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{-60,-10},{-40,10}})));
  Modelica.Fluid.Sources.Boundary_pT sink(nPorts=1, redeclare package Medium =
        Medium)
    annotation (Placement(transformation(extent={{60,-10},{40,10}})));
  replaceable package Medium = Buildings.Media.Water
    annotation (__Dymola_choicesAllMatching=true);
  Interfaces.PipelineActuators pipelineActuators
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
equation
  connect(source.ports[1], pipeLine.port_1)
    annotation (Line(points={{-40,0},{-10,0}}, color={0,127,255}));
  connect(pipeLine.port_3, sink.ports[1])
    annotation (Line(points={{10,0},{40,0}}, color={0,127,255}));
  connect(pipeLine.pipelineActuators, pipelineActuators) annotation (Line(
        points={{2,9},{2,50},{0,50}}, color={0,220,127}), Text(
      string="%second",
      index=1,
      extent={{-3,6},{-3,6}},
      horizontalAlignment=TextAlignment.Right));
  connect(valveOpening1.y, pipelineActuators.valve_opening1) annotation (Line(
        points={{-40,79},{-40,50.05},{0.05,50.05}}, color={0,0,127}));
  connect(valveOpening2.y, pipelineActuators.valve_opening2) annotation (Line(
        points={{0,79},{0,64},{0,50.05},{0.05,50.05}}, color={0,0,127}));
  connect(valveOpening3.y, pipelineActuators.valve_opening3) annotation (Line(
        points={{40,79},{40,50.05},{0.05,50.05}}, color={0,0,127}));
    annotation(preferredView="diagram");
end PipeLine;
