within WetLab.Stations;
model PipeStation "Model of pipe station"
  replaceable package Medium = Buildings.Media.Water annotation (
      choicesAllMatching=true);

  Templates.PipeLine pipeLine_A(redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{-10,40},{10,60}})));
  Templates.PipeLine pipeLine_B(redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{-10,0},{10,20}})));
  Templates.PipeLine pipeLine_C(redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{-10,-40},{10,-20}})));
  Templates.PipeLine pipeLine_D(redeclare package Medium = Medium)
    annotation (Placement(transformation(extent={{-10,-80},{10,-60}})));
  Interfaces.Transducers transducers annotation (Placement(transformation(
          extent={{-30,90},{-10,110}}), iconTransformation(extent={{-30,90},{
            -10,110}})));
  Interfaces.Actuators actuators
    annotation (Placement(transformation(extent={{10,90},{30,110}}),
        iconTransformation(extent={{10,90},{30,110}})));
  Modelica.Fluid.Interfaces.FluidPort_a port_11(redeclare package Medium =
        Medium) annotation (Placement(transformation(extent={{-100,40},{-80,60}}),
        iconTransformation(extent={{-110,50},{-90,70}})));
  Modelica.Fluid.Interfaces.FluidPort_a port_21(redeclare package Medium =
        Medium) annotation (Placement(transformation(extent={{-100,0},{-80,20}}),
        iconTransformation(extent={{-110,10},{-90,30}})));
  Modelica.Fluid.Interfaces.FluidPort_a port_31(redeclare package Medium =
        Medium) annotation (Placement(transformation(extent={{-100,-40},{-80,-20}}),
        iconTransformation(extent={{-110,-30},{-90,-10}})));
  Modelica.Fluid.Interfaces.FluidPort_a port_41(redeclare package Medium =
        Medium) annotation (Placement(transformation(extent={{-100,-80},{-80,-60}}),
        iconTransformation(extent={{-110,-70},{-90,-50}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_12(redeclare package Medium =
        Medium) annotation (Placement(transformation(extent={{80,50},{100,70}}),
        iconTransformation(extent={{90,70},{110,90}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_13(redeclare package Medium =
        Medium) annotation (Placement(transformation(extent={{80,30},{100,50}}),
        iconTransformation(extent={{90,50},{110,70}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_22(redeclare package Medium =
        Medium) annotation (Placement(transformation(extent={{80,10},{100,30}}),
        iconTransformation(extent={{90,24},{110,44}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_23(redeclare package Medium =
        Medium) annotation (Placement(transformation(extent={{80,-10},{100,10}}),
        iconTransformation(extent={{90,4},{110,24}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_32(redeclare package Medium =
        Medium) annotation (Placement(transformation(extent={{80,-30},{100,-10}}),
        iconTransformation(extent={{90,-24},{110,-4}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_33(redeclare package Medium =
        Medium) annotation (Placement(transformation(extent={{80,-50},{100,-30}}),
        iconTransformation(extent={{90,-44},{110,-24}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_42(redeclare package Medium =
        Medium) annotation (Placement(transformation(extent={{80,-70},{100,-50}}),
        iconTransformation(extent={{90,-70},{110,-50}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_43(redeclare package Medium =
        Medium) annotation (Placement(transformation(extent={{80,-90},{100,-70}}),
        iconTransformation(extent={{90,-90},{110,-70}})));
equation
  connect(transducers.pipelineTransducers_a, pipeLine_A.pipelineTransducers)
    annotation (Line(points={{-19.95,100.05},{-19.95,70},{-2,70},{-2,60}},color=
         {255,170,213}));
  connect(transducers.pipelineTransducers_b, pipeLine_B.pipelineTransducers)
    annotation (Line(points={{-19.95,100.05},{-19.95,30},{-2,30},{-2,20}},color=
         {255,170,213}));
  connect(transducers.pipelineTransducers_c, pipeLine_C.pipelineTransducers)
    annotation (Line(points={{-19.95,100.05},{-19.95,-10},{-2,-10},{-2,-20}},
        color={255,170,213}));
  connect(transducers.pipelineTransducers_d, pipeLine_D.pipelineTransducers)
    annotation (Line(points={{-19.95,100.05},{-19.95,-50},{-2,-50},{-2,-60}},
        color={255,170,213}));
  connect(actuators.pipelineActuators_a, pipeLine_A.pipelineActuators)
    annotation (Line(points={{20.05,100.05},{20.05,70},{2,70},{2,60}},color={0,220,
          127}));
  connect(actuators.pipelineActuators_b, pipeLine_B.pipelineActuators)
    annotation (Line(points={{20.05,100.05},{20.05,30},{2,30},{2,20}},color={0,220,
          127}));
  connect(actuators.pipelineActuators_c, pipeLine_C.pipelineActuators)
    annotation (Line(points={{20.05,100.05},{20.05,-10},{2,-10},{2,-20}},color={
          0,220,127}));
  connect(actuators.pipelineActuators_d, pipeLine_D.pipelineActuators)
    annotation (Line(points={{20.05,100.05},{20.05,-50},{2,-50},{2,-60}},color={
          0,220,127}));
  connect(pipeLine_A.port_1, port_11)
    annotation (Line(points={{-10,50},{-90,50}}, color={0,127,255}));
  connect(pipeLine_B.port_1, port_21)
    annotation (Line(points={{-10,10},{-90,10}}, color={0,127,255}));
  connect(pipeLine_C.port_1, port_31)
    annotation (Line(points={{-10,-30},{-90,-30}}, color={0,127,255}));
  connect(pipeLine_D.port_1, port_41)
    annotation (Line(points={{-10,-70},{-90,-70}}, color={0,127,255}));
  connect(pipeLine_D.port_3, port_43) annotation (Line(points={{10,-70},{40,-70},
          {40,-80},{90,-80}}, color={0,127,255}));
  connect(pipeLine_D.port_2, port_42) annotation (Line(points={{10,-64},{40,-64},
          {40,-60},{90,-60}}, color={0,127,255}));
  connect(pipeLine_C.port_3, port_33) annotation (Line(points={{10,-30},{40,-30},
          {40,-40},{90,-40}}, color={0,127,255}));
  connect(pipeLine_C.port_2, port_32) annotation (Line(points={{10,-24},{40,-24},
          {40,-20},{90,-20}}, color={0,127,255}));
  connect(pipeLine_B.port_3, port_23) annotation (Line(points={{10,10},{40,10},{
          40,0},{90,0}}, color={0,127,255}));
  connect(pipeLine_B.port_2, port_22) annotation (Line(points={{10,16},{40,16},{
          40,20},{90,20}}, color={0,127,255}));
  connect(pipeLine_A.port_3, port_13) annotation (Line(points={{10,50},{40,50},{
          40,40},{90,40}}, color={0,127,255}));
  connect(pipeLine_A.port_2, port_12) annotation (Line(points={{10,56},{40,56},{
          40,60},{90,60}}, color={0,127,255}));
  annotation (Icon(coordinateSystem(initialScale=0.2), graphics={
                               Rectangle(
          extent={{-100,100},{100,-100}},
          lineColor={28,108,200},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Line(points={{-80,80},{36,80}},color={28,108,200}),
        Line(
          points={{36,80},{38,80},{40,76},{38,72},{36,72}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{-2,4},{0,4},{2,0},{0,-4},{-2,-4}},
          color={28,108,200},
          smooth=Smooth.Bezier,
          origin={-78,68},
          rotation=180),
        Line(
          points={{-76,72},{36,72}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{-76,64},{36,64}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{36,64},{38,64},{40,60},{38,56},{36,56}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{-76,56},{36,56}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{-2,4},{0,4},{2,0},{0,-4},{-2,-4}},
          color={28,108,200},
          smooth=Smooth.Bezier,
          origin={-78,52},
          rotation=180),
        Line(
          points={{-76,48},{36,48}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{36,48},{38,48},{40,44},{38,40},{36,40}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{-76,40},{36,40}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{-2,4},{0,4},{2,0},{0,-4},{-2,-4}},
          color={28,108,200},
          smooth=Smooth.Bezier,
          origin={-78,36},
          rotation=180),
        Line(
          points={{-76,32},{36,32}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{36,32},{44,32},{48,36},{48,44}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{-6,-6},{2,-6},{6,-2},{6,6}},
          color={28,108,200},
          smooth=Smooth.Bezier,
          origin={54,74},
          rotation=180),
        Line(
          points={{48,44},{48,68}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{80,80},{60,80}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(points={{-80,20},{36,20}},color={28,108,200}),
        Line(
          points={{36,20},{38,20},{40,16},{38,12},{36,12}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{-2,4},{0,4},{2,0},{0,-4},{-2,-4}},
          color={28,108,200},
          smooth=Smooth.Bezier,
          origin={-78,8},
          rotation=180),
        Line(
          points={{-76,12},{36,12}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{-76,4},{36,4}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{36,4},{38,4},{40,0},{38,-4},{36,-4}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{-76,-4},{36,-4}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{-2,4},{0,4},{2,0},{0,-4},{-2,-4}},
          color={28,108,200},
          smooth=Smooth.Bezier,
          origin={-78,-8},
          rotation=180),
        Line(
          points={{-76,-12},{36,-12}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{36,-12},{38,-12},{40,-16},{38,-20},{36,-20}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{-76,-20},{36,-20}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{-2,4},{0,4},{2,0},{0,-4},{-2,-4}},
          color={28,108,200},
          smooth=Smooth.Bezier,
          origin={-78,-24},
          rotation=180),
        Line(
          points={{-76,-28},{36,-28}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{36,-28},{44,-28},{48,-24},{48,-16}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{-6,-6},{2,-6},{6,-2},{6,6}},
          color={28,108,200},
          smooth=Smooth.Bezier,
          origin={54,14},
          rotation=180),
        Line(
          points={{48,-16},{48,8}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{80,20},{60,20}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(points={{-80,-40},{36,-40}},
                                       color={28,108,200}),
        Line(
          points={{36,-40},{38,-40},{40,-44},{38,-48},{36,-48}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{-2,4},{0,4},{2,0},{0,-4},{-2,-4}},
          color={28,108,200},
          smooth=Smooth.Bezier,
          origin={-78,-52},
          rotation=180),
        Line(
          points={{-76,-48},{36,-48}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{-76,-56},{36,-56}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{36,-56},{38,-56},{40,-60},{38,-64},{36,-64}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{-76,-64},{36,-64}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{-2,4},{0,4},{2,0},{0,-4},{-2,-4}},
          color={28,108,200},
          smooth=Smooth.Bezier,
          origin={-78,-68},
          rotation=180),
        Line(
          points={{-76,-72},{36,-72}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{36,-72},{38,-72},{40,-76},{38,-80},{36,-80}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{-76,-80},{36,-80}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{-2,4},{0,4},{2,0},{0,-4},{-2,-4}},
          color={28,108,200},
          smooth=Smooth.Bezier,
          origin={-78,-84},
          rotation=180),
        Line(
          points={{-76,-88},{36,-88}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{36,-88},{44,-88},{48,-84},{48,-76}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{-6,-6},{2,-6},{6,-2},{6,6}},
          color={28,108,200},
          smooth=Smooth.Bezier,
          origin={54,-46},
          rotation=180),
        Line(
          points={{48,-76},{48,-52}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{80,-40},{60,-40}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Text(
          extent={{-180,-110},{180,-150}},
          lineColor={28,108,200},
          textString="%name")}),                                 Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end PipeStation;
