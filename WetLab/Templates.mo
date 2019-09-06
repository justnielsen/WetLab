within WetLab;
package Templates "Model templates and partial models"
  model PipeLine
    extends WetLab.Icons.PipeLine;

    replaceable package Medium = Buildings.Media.Water constrainedby
      Modelica.Media.Interfaces.PartialMedium "Medium model" annotation (
        choicesAllMatching=true);

    Buildings.Fluid.FixedResistances.Pipe pipe_1(
      nSeg=2,
      thicknessIns=0,
      lambdaIns=1,
      diameter=0.15,
      length=5)
      annotation (Placement(transformation(extent={{-120,-70},{-100,-50}})));
    Buildings.Fluid.FixedResistances.Pipe pipe_2(
      nSeg=2,
      thicknessIns=0,
      lambdaIns=1,
      diameter=0.15,
      length=5)
      annotation (Placement(transformation(extent={{-40,-70},{-20,-50}})));
    Buildings.Fluid.FixedResistances.Pipe pipe_3(
      nSeg=2,
      thicknessIns=0,
      lambdaIns=1,
      diameter=0.15,
      length=5) annotation (Placement(transformation(extent={{40,-70},{60,-50}})));
    Buildings.Fluid.FixedResistances.Pipe pipe_4(
      nSeg=2,
      thicknessIns=0,
      lambdaIns=1,
      diameter=0.15,
      length=5)
      annotation (Placement(transformation(extent={{120,-70},{140,-50}})));
    Buildings.Fluid.FixedResistances.Junction junction_1
      annotation (Placement(transformation(extent={{-80,-50},{-60,-70}})));
    Buildings.Fluid.FixedResistances.Junction junction_2
      annotation (Placement(transformation(extent={{0,-50},{20,-70}})));
    Buildings.Fluid.FixedResistances.Junction junction_3
      annotation (Placement(transformation(extent={{80,-50},{100,-70}})));
    Buildings.Fluid.Actuators.Valves.TwoWayEqualPercentage valve_1 annotation (
        Placement(transformation(
          extent={{-10,-10},{10,10}},
          rotation=90,
          origin={-70,-30})));
    Buildings.Fluid.FixedResistances.Junction junction_4
      annotation (Placement(transformation(extent={{0,-10},{20,10}})));
    Buildings.Fluid.FixedResistances.Junction junction_5
      annotation (Placement(transformation(extent={{80,-10},{100,10}})));
    Buildings.Fluid.Actuators.Valves.TwoWayEqualPercentage valve_2 annotation (
        Placement(transformation(
          extent={{-10,-10},{10,10}},
          rotation=90,
          origin={10,-30})));
    Buildings.Fluid.Actuators.Valves.TwoWayEqualPercentage valve_3 annotation (
        Placement(transformation(
          extent={{-10,-10},{10,10}},
          rotation=90,
          origin={90,-30})));
    Buildings.Fluid.Sensors.TemperatureTwoPort temperature_3
      annotation (Placement(transformation(extent={{150,-70},{170,-50}})));
    Buildings.Fluid.Sensors.TemperatureTwoPort temperature_2
      annotation (Placement(transformation(extent={{120,-10},{140,10}})));
    Buildings.Fluid.Sensors.Pressure pressure_2
      annotation (Placement(transformation(extent={{140,0},{160,20}})));
    Buildings.Fluid.Sensors.Pressure pressure_3
      annotation (Placement(transformation(extent={{168,-60},{188,-40}})));
    Buildings.Fluid.Sensors.MassFlowRate massFlow_3
      annotation (Placement(transformation(extent={{-150,-70},{-130,-50}})));
    Buildings.Fluid.Sensors.TemperatureTwoPort temperature_1
      annotation (Placement(transformation(extent={{-190,-70},{-170,-50}})));
    Buildings.Fluid.Sensors.Pressure pressure_1
      annotation (Placement(transformation(extent={{-172,-60},{-152,-40}})));
    Modelica.Fluid.Interfaces.FluidPort_a port_a annotation (Placement(
          transformation(extent={{-210,-70},{-190,-50}}), iconTransformation(
            extent={{-110,-10},{-090,10}})));
    Modelica.Fluid.Interfaces.FluidPort_b port_b annotation (Placement(
          transformation(extent={{190,-50},{210,-70}}), iconTransformation(extent=
             {{90,-10},{110,10}})));
    Modelica.Fluid.Interfaces.FluidPort_b port_b1 annotation (Placement(
          transformation(extent={{190,-10},{210,10}}), iconTransformation(extent={
              {90,50},{110,70}})));
    Interfaces.Transducers transducers annotation (Placement(transformation(
            extent={{-30,80},{-10,100}}), iconTransformation(extent={{-30,80},{-10,
              100}})));
    Interfaces.Actuators actuators annotation (Placement(transformation(extent={{10,
              80},{30,100}}), iconTransformation(extent={{10,80},{30,100}})));
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
    connect(transducers.T_1, temperature_1.T) annotation (Line(points={{-20,90},
            {-20,70},{-180,70},{-180,-49}}, color={255,170,213}));
    connect(transducers.p_1, pressure_1.p) annotation (Line(points={{-20,90},{
            -20,70},{-146,70},{-146,-50},{-151,-50}}, color={255,170,213}));
    connect(transducers.m_flow_1, massFlow_3.m_flow) annotation (Line(points={{
            -20,90},{-20,70},{-140,70},{-140,-49}}, color={255,170,213}));
    connect(actuators.opening_1, valve_1.y) annotation (Line(points={{20,90},{
            20,50},{-100,50},{-100,-30},{-82,-30}}, color={213,255,170}));
    connect(actuators.opening_2, valve_2.y) annotation (Line(points={{20,90},{
            20,50},{-20,50},{-20,-30},{-2,-30}}, color={213,255,170}));
    connect(actuators.opening_3, valve_3.y) annotation (Line(points={{20,90},{
            20,50},{60,50},{60,-30},{78,-30}}, color={213,255,170}));
    connect(transducers.T_2, temperature_2.T) annotation (Line(points={{-20,90},
            {-20,70},{130,70},{130,11}}, color={255,170,213}));
    connect(transducers.p_2, pressure_2.p) annotation (Line(points={{-20,90},{
            -20,70},{170,70},{170,10},{161,10}}, color={255,170,213}));
    connect(transducers.T_3, temperature_3.T) annotation (Line(points={{-20,90},
            {-20,70},{112,70},{112,-30},{160,-30},{160,-49}}, color={255,170,
            213}));
    connect(transducers.p_3, pressure_3.p) annotation (Line(points={{-20,90},{
            -20,70},{112,70},{112,-30},{196,-30},{196,-50},{189,-50}}, color={
            255,170,213}));
    annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
              {100,100}})), Diagram(coordinateSystem(preserveAspectRatio=true,
            extent={{-200,-100},{200,100}})));
  end PipeLine;

  package UnitTest
    extends Modelica.Icons.ExamplesPackage;
    model PipeLine
      extends Modelica.Icons.Example;
      WetLab.Templates.PipeLine pipeLine
        annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
    end PipeLine;
  end UnitTest;
end Templates;
