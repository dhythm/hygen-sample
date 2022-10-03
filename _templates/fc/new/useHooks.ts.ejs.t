---
to: "<%= have_hooks ? `${abs_path}/useHooks.ts` : null %>"
---
<% if (have_props) { -%>
import type { Props } from "./<%= component_name %>"

export function useHooks(props: Props) {
  return {}
}
<% } else { -%>
export function useHooks() {
  return {}
}
<% } -%>