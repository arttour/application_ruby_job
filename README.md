# application_ruby_jobs-cookbook

TODO: Enter the cookbook description here.

## Supported Platforms

TODO: Centos/Ubuntu/Debian

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['application_ruby_jobs']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### application_ruby_jobs::default

Include `application_ruby_jobs` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[application_ruby_jobs::default]"
  ]
}
```

## License and Authors

Author:: Dave Watts (dwatts@arttour.com)

* Iterate over mutliple jobs
*    done - deploy each job to default_dir/job_name/releases directory
*    done - link to current -> releases/release_id directory
*    TODO: create DB config/ link into current
*    [option] create cron job
