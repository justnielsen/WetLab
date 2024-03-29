within WetLab.Interfaces;
expandable connector Transducers "Measurement bus"
  PipelineTransducers pipelineTransducers_a "Sub-bus for pipeline A measurements in pipe station";
  PipelineTransducers pipelineTransducers_b "Sub-bus for pipeline B measurements in pipe station";
  PipelineTransducers pipelineTransducers_c "Sub-bus for pipeline C measurements in pipe station";
  PipelineTransducers pipelineTransducers_d "Sub-bus for pipeline D measurements in pipe station";

  annotation (
    preferredView="text",
    Diagram(coordinateSystem(preserveAspectRatio=false)),
    Icon(graphics={Polygon(
          points={{-100,100},{100,100},{100,0},{100,-100},{-100,-100},{-100,100}},
          lineColor={255,170,213},
          fillColor={127,0,127},
          fillPattern=FillPattern.Solid), Text(
          extent={{-60,60},{60,-60}},
          lineColor={255,255,255},
          fillColor={127,0,127},
          fillPattern=FillPattern.Solid,
          textString="T")}));

end Transducers;
