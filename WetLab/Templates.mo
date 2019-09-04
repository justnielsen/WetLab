within WetLab;
package Templates "Model templates and partial models"
  model PipeLine
    Buildings.Fluid.FixedResistances.Pipe pip(
      nSeg=2,
      thicknessIns=0,
      lambdaIns=1,
      diameter=0.15,
      length=5)
      annotation (Placement(transformation(extent={{-120,-10},{-100,10}})));
    Buildings.Fluid.FixedResistances.Pipe pip1(
      nSeg=2,
      thicknessIns=0,
      lambdaIns=1,
      diameter=0.15,
      length=5)
      annotation (Placement(transformation(extent={{-40,-10},{-20,10}})));
    Buildings.Fluid.FixedResistances.Pipe pip2(
      nSeg=2,
      thicknessIns=0,
      lambdaIns=1,
      diameter=0.15,
      length=5)
      annotation (Placement(transformation(extent={{40,-10},{60,10}})));
    Buildings.Fluid.FixedResistances.Pipe pip3(
      nSeg=2,
      thicknessIns=0,
      lambdaIns=1,
      diameter=0.15,
      length=5)
      annotation (Placement(transformation(extent={{120,-10},{140,10}})));
    Buildings.Fluid.FixedResistances.Junction jun
      annotation (Placement(transformation(extent={{-80,10},{-60,-10}})));
    Buildings.Fluid.FixedResistances.Junction jun1
      annotation (Placement(transformation(extent={{0,10},{20,-10}})));
    Buildings.Fluid.FixedResistances.Junction jun2
      annotation (Placement(transformation(extent={{80,10},{100,-10}})));
    Buildings.Fluid.Actuators.Valves.TwoWayEqualPercentage val annotation (
        Placement(transformation(
          extent={{-10,-10},{10,10}},
          rotation=90,
          origin={-70,30})));
    Buildings.Fluid.FixedResistances.Junction jun3
      annotation (Placement(transformation(extent={{0,50},{20,70}})));
    Buildings.Fluid.FixedResistances.Junction jun4
      annotation (Placement(transformation(extent={{80,50},{100,70}})));
    Buildings.Fluid.Actuators.Valves.TwoWayEqualPercentage val1 annotation (
        Placement(transformation(
          extent={{-10,-10},{10,10}},
          rotation=90,
          origin={10,30})));
    Buildings.Fluid.Actuators.Valves.TwoWayEqualPercentage val2 annotation (
        Placement(transformation(
          extent={{-10,-10},{10,10}},
          rotation=90,
          origin={90,30})));
    Buildings.Fluid.Sensors.TemperatureTwoPort senTem
      annotation (Placement(transformation(extent={{150,-10},{170,10}})));
    Buildings.Fluid.Sensors.TemperatureTwoPort senTem1
      annotation (Placement(transformation(extent={{120,50},{140,70}})));
    Buildings.Fluid.Sensors.Pressure senPre
      annotation (Placement(transformation(extent={{140,60},{160,80}})));
    Buildings.Fluid.Sensors.Pressure senPre1
      annotation (Placement(transformation(extent={{170,0},{190,20}})));
    Buildings.Fluid.Sensors.MassFlowRate senMasFlo
      annotation (Placement(transformation(extent={{-150,-10},{-130,10}})));
    Buildings.Fluid.Sensors.TemperatureTwoPort senTem2
      annotation (Placement(transformation(extent={{-192,-10},{-172,10}})));
    Buildings.Fluid.Sensors.Pressure senPre2
      annotation (Placement(transformation(extent={{-172,0},{-152,20}})));
    Modelica.Fluid.Interfaces.FluidPort_a port_a annotation (Placement(
          transformation(extent={{-210,-10},{-190,10}}), iconTransformation(
            extent={{-110,-10},{-090,10}})));
    Modelica.Fluid.Interfaces.FluidPort_b port_b annotation (Placement(
          transformation(extent={{190,-10},{210,10}}), iconTransformation(
            extent={{90,-10},{110,10}})));
    Modelica.Fluid.Interfaces.FluidPort_b port_b1 annotation (Placement(
          transformation(extent={{190,50},{210,70}}), iconTransformation(extent
            ={{90,50},{110,70}})));
  equation
    connect(pip2.port_a, jun1.port_2)
      annotation (Line(points={{40,0},{20,0}}, color={0,127,255}));
    connect(jun1.port_1, pip1.port_b)
      annotation (Line(points={{0,0},{-20,0}}, color={0,127,255}));
    connect(pip1.port_a, jun.port_2)
      annotation (Line(points={{-40,0},{-60,0}}, color={0,127,255}));
    connect(jun.port_1, pip.port_b)
      annotation (Line(points={{-80,0},{-100,0}}, color={0,127,255}));
    connect(pip2.port_b, jun2.port_1)
      annotation (Line(points={{60,0},{80,0}}, color={0,127,255}));
    connect(jun2.port_2, pip3.port_a)
      annotation (Line(points={{100,0},{120,0}}, color={0,127,255}));
    connect(jun.port_3, val.port_a)
      annotation (Line(points={{-70,10},{-70,20}}, color={0,127,255}));
    connect(val.port_b, jun3.port_1)
      annotation (Line(points={{-70,40},{-70,60},{0,60}}, color={0,127,255}));
    connect(jun3.port_2, jun4.port_1)
      annotation (Line(points={{20,60},{80,60}}, color={0,127,255}));
    connect(jun3.port_3, val1.port_b)
      annotation (Line(points={{10,50},{10,40}}, color={0,127,255}));
    connect(jun1.port_3, val1.port_a)
      annotation (Line(points={{10,10},{10,20}}, color={0,127,255}));
    connect(jun4.port_3, val2.port_b)
      annotation (Line(points={{90,50},{90,40}}, color={0,127,255}));
    connect(jun2.port_3, val2.port_a)
      annotation (Line(points={{90,10},{90,20}}, color={0,127,255}));
    connect(pip3.port_b, senTem.port_a)
      annotation (Line(points={{140,0},{150,0}}, color={0,127,255}));
    connect(jun4.port_2, senTem1.port_a)
      annotation (Line(points={{100,60},{120,60}}, color={0,127,255}));
    connect(senTem1.port_b, senPre.port)
      annotation (Line(points={{140,60},{150,60}}, color={0,127,255}));
    connect(senTem.port_b, senPre1.port)
      annotation (Line(points={{170,0},{180,0}}, color={0,127,255}));
    connect(pip.port_a, senMasFlo.port_b)
      annotation (Line(points={{-120,0},{-130,0}}, color={0,127,255}));
    connect(senTem2.port_b, senPre2.port)
      annotation (Line(points={{-172,0},{-162,0}}, color={0,127,255}));
    connect(senTem2.port_b, senMasFlo.port_a)
      annotation (Line(points={{-172,0},{-150,0}}, color={0,127,255}));
    connect(port_a, senTem2.port_a)
      annotation (Line(points={{-200,0},{-192,0}}, color={0,127,255}));
    connect(senPre.port, port_b1)
      annotation (Line(points={{150,60},{200,60}}, color={0,127,255}));
    connect(senPre1.port, port_b)
      annotation (Line(points={{180,0},{200,0}}, color={0,127,255}));
    annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
              {100,100}})), Diagram(coordinateSystem(preserveAspectRatio=false,
            extent={{-200,-100},{200,100}})));
  end PipeLine;
end Templates;
