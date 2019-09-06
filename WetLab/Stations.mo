within WetLab;
package Stations
  model HeatingStation
    annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
          coordinateSystem(preserveAspectRatio=false)));
  end HeatingStation;

  model PipeStation "Model of pipe station"
    Templates.PipeLine pipeLine_A
      annotation (Placement(transformation(extent={{-10,40},{10,60}})));
    Templates.PipeLine pipeLine_B
      annotation (Placement(transformation(extent={{-10,0},{10,20}})));
    Templates.PipeLine pipeLine_C
      annotation (Placement(transformation(extent={{-10,-40},{10,-20}})));
    Templates.PipeLine pipeLine_D
      annotation (Placement(transformation(extent={{-10,-80},{10,-60}})));
    Interfaces.Transducers transducers annotation (Placement(transformation(
            extent={{-30,80},{-10,100}}), iconTransformation(extent={{-30,80},{
              -10,100}})));
    Interfaces.Actuators actuators
      annotation (Placement(transformation(extent={{10,80},{30,100}})));
  equation
    connect(transducers, pipeLine_A.transducers) annotation (Line(points={{-20,
            90},{-20,70},{-2,70},{-2,59}}, color={255,170,213}), Text(
        string="%first",
        index=-1,
        extent={{-3,6},{-3,6}},
        horizontalAlignment=TextAlignment.Right));
    connect(transducers, pipeLine_B.transducers) annotation (Line(points={{-20,
            90},{-20,30},{-2,30},{-2,19}}, color={255,170,213}));
    connect(transducers, pipeLine_C.transducers) annotation (Line(points={{-20,
            90},{-20,-10},{-2,-10},{-2,-21}}, color={255,170,213}));
    connect(transducers, pipeLine_D.transducers) annotation (Line(points={{-20,
            90},{-20,-50},{-2,-50},{-2,-61}}, color={255,170,213}));
    annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
          coordinateSystem(preserveAspectRatio=false)));
  end PipeStation;

  model ConsumerStation
    annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
          coordinateSystem(preserveAspectRatio=false)));
  end ConsumerStation;

  model PumpingStation
    annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
          coordinateSystem(preserveAspectRatio=false)));
  end PumpingStation;

  model PipeSewer
    annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
          coordinateSystem(preserveAspectRatio=false)));
  end PipeSewer;
end Stations;
