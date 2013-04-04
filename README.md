Composer Cookbook
====================
Allows for installation of Composer on Debian (/Ubuntu) boxes.

Requirements
------------

#### packages
- `php` - Composer runs using PHP.

Attributes
----------
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['composer']['bin']</tt></td>
    <td>String</td>
    <td>The location of the Composer binary file</td>
    <td><tt>/usr/local/bin/composer</tt></td>
  </tr>
</table>

Usage
-----
Just include `composer` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[composer]"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Bryan te Beek
