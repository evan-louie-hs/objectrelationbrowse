{* DO NOT EDIT THIS FILE! Use an override template instead. *}
{let content=$class_attribute.content}

	
	{* Type. *}
	<div class="block">
	    <strong>{'Type of objects'|i18n( 'design/standard/class/datatype' )}:</strong>
	    <p>
	    {switch match=$content.type}
	    {case match=0}{'New and existing objects'|i18n( 'design/standard/class/datatype' )}{/case}
	    {case match=1}{'Only new objects'|i18n( 'design/standard/class/datatype' )}{/case}
	    {case match=2}{'Only existing objects'|i18n( 'design/standard/class/datatype' )}{/case}
	    {case}<i>{'Empty'|i18n( 'design/standard/class/datatype' )}</i>{/case}
	    {/switch}
	    </p>
	</div>
	
	<fieldset>
		<legend>{'Existing Objects'|i18n( 'design/standard/class/datatype' )}:</legend>

			{* Selection method. *}
			<div class="block">
			    <strong>{'Type of listing'|i18n( 'design/standard/class/datatype' )}:</strong>
			    <p>
			    {switch match=$content.selection_type}
			     {case match=0}{'Browse'|i18n( 'design/standard/class/datatype' )}{/case}
			     {case match=1}{'Dynamic list'|i18n( 'design/standard/class/datatype' )}{/case}
			     {case match=2}{'Multiple selection list'|i18n( 'design/standard/class/datatype' )}{/case}
			     {case match=3}{'Dropdown'|i18n( 'design/standard/class/datatype' )}{/case}
			     {case match=4}{'List with checkboxes'|i18n( 'design/standard/class/datatype' )}{/case}
			     {case match=4}{'List with radiobuttons'|i18n( 'design/standard/class/datatype' )}{/case}
			    {/switch}
			    </p>
			</div>

			{* Type. *}
			<div class="block">
			    <strong>{'Depth'|i18n( 'design/standard/class/datatype' )}:</strong>
			    <p>
			    {switch match=$content.depth}
				    {case match=1}{'List'|i18n( 'design/standard/class/datatype' )}{/case}
				    {case match=0}{'Tree'|i18n( 'design/standard/class/datatype' )}{/case}
				    {case match=0}{'Tree - 2 levels'|i18n( 'design/standard/class/datatype' )}{/case}
				    {case match=0}{'Tree - 3 levels'|i18n( 'design/standard/class/datatype' )}{/case}
				    {case match=0}{'Tree - 4 levels'|i18n( 'design/standard/class/datatype' )}{/case}
				    {case match=0}{'Tree - 5 levels'|i18n( 'design/standard/class/datatype' )}{/case}
			    {/switch}
			    </p>
			</div>
			
			{* Default location. *}
			<div class="block">
			<strong>{'Default selection node'|i18n( 'design/standard/class/datatype' )}:</strong>
			{section show=$content.default_selection}
				{let default_selection=fetch( content, node, hash( node_id, $content.default_selection.node_id ) )}
				<table class="list" cellspacing="0">
				<tr>
				    <th>{'Name'|i18n( 'design/standard/class/datatype' )}</th>
				    <th>{'Type'|i18n( 'design/standard/class/datatype' )}</th>
				    <th>{'Section'|i18n( 'design/standard/class/datatype' )}</th>
				</tr>
				<tr>
				    <td>{$default_selection.class_identifier|class_icon( small, $default_selection.class_name )}&nbsp;<a href={$default_selection.url_alias|ezurl}>{$default_selection.name|wash}</a></td>
				    <td>{$default_selection.class_name|wash}</td>
				    <td>{let section_object=fetch( section, object, hash( section_id, $default_selection.object.section_id ) )}{section show=$section_object}{$section_object.name|wash}</a>{section-else}<i>{'Unknown section'|i18n( 'design/standard/class/datatype' )}</i>{/section}{/let}</td>
				</tr>
				</table>
				{/let}
			{section-else}
				<p>{'No default selection node selected.'|i18n( 'design/standard/class/datatype' )}</p>
			{/section}
			</div>
			
			{* Selectable content classes. *}
			<div class="block">
			    <strong>{'Selectable content classes'|i18n( 'design/standard/class/datatype' )}:</strong>
			    {section show=$content.class_constraint_list|count|lt( 1 )}
				<p>{'Any'|i18n( 'design/standard/class/datatype' )}</p>
			    {section-else}
				<ul>
				{section var=Classes loop=$content.class_constraint_list}<li>{$Classes.item}</li>{/section}
				</ul>
			    {/section}
			</div>	
	</fieldset>
	<br/>
	<fieldset>
		<legend>{'New Objects'|i18n( 'design/standard/class/datatype' )}:</legend>
		
		{* Createable content classes content classes. *}
		<div class="block">
		    <strong>{'Selectable content classes'|i18n( 'design/standard/class/datatype' )}:</strong>
		    {section show=$content.class_create_constraint_list|count|lt( 1 )}
			<p>{'Any'|i18n( 'design/standard/class/datatype' )}</p>
		    {section-else}
			<ul>
			{section var=Classes loop=$content.class_create_constraint_list}<li>{$Classes.item}</li>{/section}
			</ul>
		    {/section}
		</div>	
		
		{* Default location. *}
		<div class="block">
		<strong>{'Default location for new objects'|i18n( 'design/standard/class/datatype' )}:</strong>
		{section show=$content.default_placement}
			{let default_location=fetch( content, node, hash( node_id, $content.default_placement.node_id ) )}
			<table class="list" cellspacing="0">
			<tr>
			    <th>{'Name'|i18n( 'design/standard/class/datatype' )}</th>
			    <th>{'Type'|i18n( 'design/standard/class/datatype' )}</th>
			    <th>{'Section'|i18n( 'design/standard/class/datatype' )}</th>
			</tr>
			<tr>
			    <td>{$default_location.class_identifier|class_icon( small, $default_location.class_name )}&nbsp;<a href={$default_location.url_alias|ezurl}>{$default_location.name|wash}</a></td>
			    <td>{$default_location.class_name|wash}</td>
			    <td>{let section_object=fetch( section, object, hash( section_id, $default_location.object.section_id ) )}{section show=$section_object}{$section_object.name|wash}</a>{section-else}<i>{'Unknown section'|i18n( 'design/standard/class/datatype' )}</i>{/section}{/let}</td>
			</tr>
			</table>
			{/let}
		{section-else}
			<p>{'New objects will not be placed in the content tree.'|i18n( 'design/standard/class/datatype' )}</p>
		{/section}
		</div>
	</fieldset>

	{* Allow edit. *}
	<div class="block">
	    <strong>{'Allow inline edit'|i18n( 'design/standard/class/datatype' )}:</strong>
	    <p>
	        {switch match=$content.allow_edit}
	        {case match=0}{'No'|i18n( 'design/standard/class/datatype' )}{/case}
	        {case match=1}{'Yes'|i18n( 'design/standard/class/datatype' )}{/case}
	        {/switch}
    	    </p>	    
	</div>

	
		
	
	

{/let}
