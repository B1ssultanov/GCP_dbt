{#
    This macro returns the description of the vendorid 
#}

{% macro get_vendorid_description(vendorid) -%}

    case {{ dbt.safe_cast("vendorid", api.Column.translate_type("integer")) }}  
        when 1 then 'Yedyge'
        when 2 then 'Georgy'
        when 3 then 'No name'
        when 4 then 'Genadiy'
        when 5 then 'Gosha'
        when 6 then 'Gogol'
        else 'EMPTY'
    end

{%- endmacro %}