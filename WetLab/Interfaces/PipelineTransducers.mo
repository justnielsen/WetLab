within WetLab.Interfaces;
expandable connector PipelineTransducers
  "Measurement bus for single pipeline module"

  SI.Temperature T1 "Temperature at port_1";
  SI.Temperature T2 "Temperature at port_2";
  SI.Temperature T3 "Temperature at port_3";

  Real p1 "Pressure at port_1";
  Real p2 "Pressure at port_2";
  Real p3 "Pressure at port_3";

  SI.MassFlowRate m_flow3 "Mass flow entering at port_1";

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

end PipelineTransducers;
