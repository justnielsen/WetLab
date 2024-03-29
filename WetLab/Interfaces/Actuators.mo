within WetLab.Interfaces;
expandable connector Actuators "Actuator bus"
  PipelineActuators pipelineActuators_a "Sub-bus for pipeline A actuator signals in pipe station";
  PipelineActuators pipelineActuators_b "Sub-bus for pipeline B actuator signals in pipe station";
  PipelineActuators pipelineActuators_c "Sub-bus for pipeline C actuator signals in pipe station";
  PipelineActuators pipelineActuators_d "Sub-bus for pipeline D actuator signals in pipe station";

  annotation (
    preferredView="text",
    Diagram(coordinateSystem(preserveAspectRatio=false)),
    Icon(graphics={Polygon(
          points={{-100,100},{100,100},{100,0},{100,-100},{-100,-100},{-100,100}},
          lineColor={0,220,127},
          fillColor={0,127,127},
          fillPattern=FillPattern.Solid), Text(
          extent={{-60,60},{60,-60}},
          lineColor={255,255,255},
          fillColor={127,0,127},
          fillPattern=FillPattern.Solid,
          textString="A")}),
    Documentation(info="<html>
</html>"));
end Actuators;
