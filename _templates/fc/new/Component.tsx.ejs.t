---
to: <%= abs_path %>/<%= component_name %>.tsx
---
import React from "react";
<% if (have_style) { -%>
import style from "./style.module.css"
<% } -%>
<% if (have_hooks) { -%>
import { useHooks } from './useHooks'
<% } -%>
<% if (have_props) { -%>

export type Props = {
};
<% } -%>

export const <%= component_name %>: <%- type_annotate %> = <%= props %> => {
<% if (have_hooks) { -%>
  const deps = useHooks<%= props %>
<% } -%>
  return (
<% if (have_style) { -%>
    <<%= tag %> className={style.module}>
<% } else { -%>
    <<%= tag %>>
<% } -%>
    </<%= tag %>>
  );
}