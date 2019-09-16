within WetLab.Templates;
model PipeLine
  extends WetLab.Icons.PipeLine;

  replaceable package Medium = Buildings.Media.Water constrainedby
    Modelica.Media.Interfaces.PartialMedium "Medium model" annotation (
      choicesAllMatching=true);

      parameter SI.MassFlowRate[4] m_flow_nominal_pipes = {4,3,2,1} "Nominal mass flow rates through pipes 1–4" annotation(Dialog(group="Nominal condition"));
      parameter SI.MassFlowRate[3] m_flow_nominal_valves = {max(0,m_flow_nominal_pipes[i]-m_flow_nominal_pipes[i-1]) for i in 2:4} "Nominal mass flow rates through pipes 1–4" annotation(Dialog(group="Nominal condition"));

  // Main components
  replaceable Buildings.Fluid.FixedResistances.Pipe pipe_1(
    redeclare package Medium = Medium,
    m_flow_nominal=m_flow_nominal_pipes[1],
    nSeg=2,
    thicknessIns=0,
    lambdaIns=1,
    diameter=0.15,
    length=5) constrainedby Buildings.Fluid.FixedResistances.BaseClasses.Pipe
    annotation (
    Placement(transformation(extent={{-120,-70},{-100,-50}})),
    choicesAllMatching=true,
    Dialog(group="Pipe specifications"));
  replaceable Buildings.Fluid.FixedResistances.Pipe pipe_2(
    redeclare package Medium = Medium,
    m_flow_nominal=m_flow_nominal_pipes[2],
    nSeg=2,
    thicknessIns=0,
    lambdaIns=1,
    diameter=0.15,
    length=5) constrainedby Buildings.Fluid.FixedResistances.BaseClasses.Pipe
    annotation (
    Placement(transformation(extent={{-40,-70},{-20,-50}})),
    choicesAllMatching=true,
    Dialog(group="Pipe specifications"));
  replaceable Buildings.Fluid.FixedResistances.Pipe pipe_3(
    redeclare package Medium = Medium,
    m_flow_nominal=m_flow_nominal_pipes[3],
    nSeg=2,
    thicknessIns=0,
    lambdaIns=1,
    diameter=0.15,
    length=5) constrainedby Buildings.Fluid.FixedResistances.BaseClasses.Pipe
    annotation (
    Placement(transformation(extent={{40,-70},{60,-50}})),
    choicesAllMatching=true,
    Dialog(group="Pipe specifications"));
  replaceable Buildings.Fluid.FixedResistances.Pipe pipe_4(
    redeclare package Medium = Medium,
    m_flow_nominal=m_flow_nominal_pipes[4],
    nSeg=2,
    thicknessIns=0,
    lambdaIns=1,
    diameter=0.15,
    length=5) constrainedby Buildings.Fluid.FixedResistances.BaseClasses.Pipe
    annotation (
    Placement(transformation(extent={{120,-70},{140,-50}})),
    choicesAllMatching=true,
    Dialog(group="Pipe specifications"));

  replaceable Buildings.Fluid.Actuators.Valves.TwoWayEqualPercentage valve_1(
      redeclare package Medium = Medium,
    m_flow_nominal=m_flow_nominal_valves[1],
    CvData=Buildings.Fluid.Types.CvTypes.Kv,
    Kv=19,
    riseTime=12) "Bürkert ball valve (on/off)"
                                         annotation (
    Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-70,-30})),
    choicesAllMatching=true,
    Dialog(group="Valve specifications"));
  replaceable Buildings.Fluid.Actuators.Valves.TwoWayEqualPercentage valve_2(
      redeclare package Medium = Medium,
    m_flow_nominal=m_flow_nominal_valves[2],
    CvData=Buildings.Fluid.Types.CvTypes.Kv,
    Kv=19,
    riseTime=12) "Bürkert ball valve (on/off)"
                                         annotation (
    Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={10,-30})),
    choicesAllMatching=true,
    Dialog(group="Valve specifications"));
  replaceable Buildings.Fluid.Actuators.Valves.TwoWayEqualPercentage valve_3(
      redeclare package Medium = Medium,
    m_flow_nominal=m_flow_nominal_valves[3],
    CvData=Buildings.Fluid.Types.CvTypes.Kv,
    Kv=19,
    riseTime=12) "Bürkert ball valve (on/off)"
                                         annotation (
    Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={90,-30})),
    choicesAllMatching=true,
    Dialog(group="Valve specifications"));

  // Junctions
  Buildings.Fluid.FixedResistances.Junction junction_1(redeclare package Medium =
        Medium,
    m_flow_nominal={m_flow_nominal_pipes[1],-m_flow_nominal_valves[1],-
        m_flow_nominal_pipes[2]},
                dp_nominal={0,0,0})
    annotation (Placement(transformation(extent={{-80,-50},{-60,-70}})),
    Dialog(group="Junctions"));
  Buildings.Fluid.FixedResistances.Junction junction_2(redeclare package Medium =
        Medium,
    m_flow_nominal={m_flow_nominal_pipes[2],-m_flow_nominal_valves[2],-
        m_flow_nominal_pipes[3]},
                dp_nominal={0,0,0})
    annotation (Placement(transformation(extent={{0,-50},{20,-70}})),
    Dialog(group="Junctions"));
  Buildings.Fluid.FixedResistances.Junction junction_3(redeclare package Medium =
        Medium,
    m_flow_nominal={m_flow_nominal_pipes[3],-m_flow_nominal_valves[3],-
        m_flow_nominal_pipes[4]},
                dp_nominal={0,0,0})
    annotation (Placement(transformation(extent={{80,-50},{100,-70}})),
    Dialog(group="Junctions"));
  Buildings.Fluid.FixedResistances.Junction junction_4(redeclare package Medium =
        Medium,
    m_flow_nominal={m_flow_nominal_valves[1],m_flow_nominal_valves[2],-(
        m_flow_nominal_valves[1] + m_flow_nominal_valves[2])},
                dp_nominal={0,0,0})
                annotation (Placement(transformation(extent={{0,-10},{20,10}})),
    Dialog(group="Junctions"));
  Buildings.Fluid.FixedResistances.Junction junction_5(redeclare package Medium =
        Medium,
    m_flow_nominal={m_flow_nominal_valves[1] + m_flow_nominal_valves[2],
        m_flow_nominal_valves[3],-sum(m_flow_nominal_valves)},
                dp_nominal={0,0,0})
    annotation (Placement(transformation(extent={{80,-10},{100,10}})),
    Dialog(group="Junctions"));

  // Sensors
  replaceable Buildings.Fluid.Sensors.TemperatureTwoPort temperature_1(
      redeclare package Medium = Medium, m_flow_nominal=m_flow_nominal_pipes[1])
                                         constrainedby
    Buildings.Fluid.Interfaces.PartialTwoPort annotation (Placement(
        transformation(extent={{-190,-70},{-170,-50}})),
      choicesAllMatching=true,
    Dialog(tab="Sensors", group="Temperature"));
  replaceable Buildings.Fluid.Sensors.TemperatureTwoPort temperature_2(
      redeclare package Medium = Medium, m_flow_nominal=sum(
        m_flow_nominal_valves))          constrainedby
    Buildings.Fluid.Interfaces.PartialTwoPort annotation (Placement(
        transformation(extent={{120,-10},{140,10}})),
      choicesAllMatching=true,
    Dialog(tab="Sensors", group="Temperature"));
  replaceable Buildings.Fluid.Sensors.TemperatureTwoPort temperature_3(
      redeclare package Medium = Medium, m_flow_nominal=m_flow_nominal_pipes[4])
                                         constrainedby
    Buildings.Fluid.Interfaces.PartialTwoPort annotation (Placement(
        transformation(extent={{150,-70},{170,-50}})),
      choicesAllMatching=true,
    Dialog(tab="Sensors", group="Temperature"));

  Buildings.Fluid.Sensors.Pressure pressure_1(redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{-172,-60},{-152,-40}})));
  Buildings.Fluid.Sensors.Pressure pressure_2(redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{140,0},{160,20}})));
  Buildings.Fluid.Sensors.Pressure pressure_3(redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{168,-60},{188,-40}})));
  Buildings.Fluid.Sensors.MassFlowRate massFlow_3(redeclare package Medium =
        Medium)
    annotation (Placement(transformation(extent={{-150,-70},{-130,-50}})));
  Modelica.Fluid.Interfaces.FluidPort_a port_a(redeclare package Medium =
        Medium) annotation (Placement(transformation(extent={{-210,-70},{-190,-50}}),
        iconTransformation(extent={{-110,-10},{-090,10}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_b(redeclare package Medium =
        Medium) annotation (Placement(transformation(extent={{190,-50},{210,-70}}),
        iconTransformation(extent={{90,-10},{110,10}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_b1(redeclare package Medium =
        Medium) annotation (Placement(transformation(extent={{190,-10},{210,10}}),
        iconTransformation(extent={{90,50},{110,70}})));

  // Signal busses
  Interfaces.Transducers transducers annotation (Placement(transformation(
          extent={{-30,80},{-10,100}}), iconTransformation(extent={{-30,80},{-10,
            100}})));
  Interfaces.Actuators actuators annotation (Placement(transformation(extent={{
            10,80},{30,100}}), iconTransformation(extent={{10,80},{30,100}})));
equation
  connect(pipe_3.port_a, junction_2.port_2)
    annotation (Line(points={{40,-60},{20,-60}}, color={0,127,255}));
  connect(junction_2.port_1, pipe_2.port_b)
    annotation (Line(points={{0,-60},{-20,-60}}, color={0,127,255}));
  connect(pipe_2.port_a, junction_1.port_2)
    annotation (Line(points={{-40,-60},{-60,-60}}, color={0,127,255}));
  connect(junction_1.port_1, pipe_1.port_b)
    annotation (Line(points={{-80,-60},{-100,-60}}, color={0,127,255}));
  connect(pipe_3.port_b, junction_3.port_1)
    annotation (Line(points={{60,-60},{80,-60}}, color={0,127,255}));
  connect(junction_3.port_2, pipe_4.port_a)
    annotation (Line(points={{100,-60},{120,-60}}, color={0,127,255}));
  connect(junction_1.port_3, valve_1.port_a)
    annotation (Line(points={{-70,-50},{-70,-40}}, color={0,127,255}));
  connect(valve_1.port_b, junction_4.port_1)
    annotation (Line(points={{-70,-20},{-70,0},{0,0}}, color={0,127,255}));
  connect(junction_4.port_2, junction_5.port_1)
    annotation (Line(points={{20,0},{80,0}}, color={0,127,255}));
  connect(junction_4.port_3, valve_2.port_b)
    annotation (Line(points={{10,-10},{10,-20}}, color={0,127,255}));
  connect(junction_2.port_3, valve_2.port_a)
    annotation (Line(points={{10,-50},{10,-40}}, color={0,127,255}));
  connect(junction_5.port_3, valve_3.port_b)
    annotation (Line(points={{90,-10},{90,-20}}, color={0,127,255}));
  connect(junction_3.port_3, valve_3.port_a)
    annotation (Line(points={{90,-50},{90,-40}}, color={0,127,255}));
  connect(pipe_4.port_b, temperature_3.port_a)
    annotation (Line(points={{140,-60},{150,-60}}, color={0,127,255}));
  connect(junction_5.port_2, temperature_2.port_a)
    annotation (Line(points={{100,0},{120,0}}, color={0,127,255}));
  connect(temperature_2.port_b, pressure_2.port)
    annotation (Line(points={{140,0},{150,0}}, color={0,127,255}));
  connect(temperature_3.port_b, pressure_3.port)
    annotation (Line(points={{170,-60},{178,-60}}, color={0,127,255}));
  connect(pipe_1.port_a, massFlow_3.port_b)
    annotation (Line(points={{-120,-60},{-130,-60}}, color={0,127,255}));
  connect(temperature_1.port_b, pressure_1.port)
    annotation (Line(points={{-170,-60},{-162,-60}}, color={0,127,255}));
  connect(temperature_1.port_b, massFlow_3.port_a)
    annotation (Line(points={{-170,-60},{-150,-60}}, color={0,127,255}));
  connect(port_a, temperature_1.port_a)
    annotation (Line(points={{-200,-60},{-190,-60}}, color={0,127,255}));
  connect(pressure_2.port, port_b1)
    annotation (Line(points={{150,0},{200,0}}, color={0,127,255}));
  connect(pressure_3.port, port_b)
    annotation (Line(points={{178,-60},{200,-60}}, color={0,127,255}));
  connect(transducers.T_1, temperature_1.T) annotation (Line(points={{-20,90},{-20,
          70},{-180,70},{-180,-49}}, color={255,170,213}));
  connect(transducers.p_1, pressure_1.p) annotation (Line(points={{-20,90},{-20,
          70},{-146,70},{-146,-50},{-151,-50}}, color={255,170,213}));
  connect(transducers.m_flow_1, massFlow_3.m_flow) annotation (Line(points={{-20,
          90},{-20,70},{-140,70},{-140,-49}}, color={255,170,213}));
  connect(actuators.opening_1, valve_1.y) annotation (Line(points={{20,90},{20,50},
          {-100,50},{-100,-30},{-82,-30}}, color={213,255,170}));
  connect(actuators.opening_2, valve_2.y) annotation (Line(points={{20,90},{20,50},
          {-20,50},{-20,-30},{-2,-30}}, color={213,255,170}));
  connect(actuators.opening_3, valve_3.y) annotation (Line(points={{20,90},{20,50},
          {60,50},{60,-30},{78,-30}}, color={213,255,170}));
  connect(transducers.T_2, temperature_2.T) annotation (Line(points={{-20,90},{-20,
          70},{130,70},{130,11}}, color={255,170,213}));
  connect(transducers.p_2, pressure_2.p) annotation (Line(points={{-20,90},{-20,
          70},{170,70},{170,10},{161,10}}, color={255,170,213}));
  connect(transducers.T_3, temperature_3.T) annotation (Line(points={{-20,90},{-20,
          70},{112,70},{112,-30},{160,-30},{160,-49}}, color={255,170,213}));
  connect(transducers.p_3, pressure_3.p) annotation (Line(points={{-20,90},{-20,
          70},{112,70},{112,-30},{196,-30},{196,-50},{189,-50}}, color={255,170,
          213}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
            {100,100}})), Diagram(coordinateSystem(preserveAspectRatio=true,
          extent={{-200,-100},{200,100}})));
end PipeLine;
