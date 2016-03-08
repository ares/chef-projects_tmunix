projects_tmunix Cookbook
========================
Installs tmunix from git and does some basic setup of it

Requirements
------------
Requires projects cookook


Usage
-----
#### projects_tmunix::default

e.g.
Just include `projects_tmunix` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[projects_tmunix]"
  ]
}
```
