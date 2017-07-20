---
layout: methode-archicad
group: bonnes-pratiques
title: Attribution des classifications
comments: true
---

...

## Uniformat CSI 2010

~~~
...
~~~

## Uniformat II 2015

~~~
<?xml version="1.0" encoding="utf-8"?>
<Rules Name="UNIFORMAT II 2015">
	<Rule>
		<Name>UNIFORMAT II 2015</Name>
		<Description>Use this table for arranging construction information based on functional elements, or parts of a facility characterized by their functions.

'Apply' creates a Classification Reference for selected IFC entity, using UniFormat-required attributes derived from the item that you choose in the following list.
		</Description>
		<ApplicableTo>
			<ClassName>IfcObject</ClassName>
			<ClassName>IfcTypeObject</ClassName>
		</ApplicableTo>
		<Data>
			<DataDescriptors>
				<DataDescriptor Variable="number" Title="Code" />
				<DataDescriptor Variable="title" Title="Ouvrage" />
			</DataDescriptors>
			<DataEntries>{% for classification in site.data.uniformat-ii-2015 %}
			<DataEntry number="{{ classification.code }}" title="{{ classification.title_FR }}">{% endfor %}
			</DataEntries>
		</Data>
		<Script>
			<CreateClassificationReference>
				<IfcRelAssociatesClassification Name="UNIFORMAT II 2015">
					<IfcClassificationReference Name="$title" ItemReference="$number" Location="www.astm.org/Standards/E1557.htm">
						<IfcClassification Source="www.astm.org" Name="UNIFORMAT II 2015" Edition="ASTM E1557 - 09(2015)">
							<IfcCalendarDate DayComponent="1" MonthComponent="10" YearComponent="2015"/> <!-- EditionDate -->
						</IfcClassification>
					</IfcClassificationReference>
				</IfcRelAssociatesClassification>
			</CreateClassificationReference>
		</Script>
	</Rule>
</Rules>
~~~
