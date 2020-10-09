## Requirements

The following requirements are needed by this module:

- azurerm (~>1.34)

## Providers

The following providers are used by this module:

- azurerm (~>1.34)

## Required Inputs

No required input.

## Optional Inputs

The following input variables are optional (have default values):

### always\_on

Description:  Should the app be loaded at all times?

Type: `bool`

Default: `true`

### app\_service\_name

Description: n/a

Type: `string`

Default: `""`

### app\_service\_php\_version

Description: The php version to use

Type: `string`

Default: `"7.2"`

### ftps\_state

Description: State of FTP / FTPS service for this App Service. Possible values include: AllAllowed, FtpsOnly and Disabled

Type: `string`

Default: `"FtpsOnly"`

### https\_only

Description: Can the App Service only be accessed via HTTPS?

Type: `bool`

Default: `true`

### kind

Description: The kind of the App Service Plan to create. Possible values are Windows (also available as App), Linux, elastic (for Premium Consumption) and FunctionApp (for a Consumption Plan). Defaults to Windows. Changing this forces a new resource to be created.

Type: `string`

Default: `"Windows"`

### plan\_name

Description: n/a

Type: `string`

Default: `""`

### ressource\_group\_location

Description: n/a

Type: `string`

Default: `"West Europe"`

### ressource\_group\_name

Description: n/a

Type: `string`

Default: `""`

### sku\_capacity

Description: Specifies the number of workers associated with this app service plan

Type: `string`

Default: `"2"`

### sku\_size

Description: Specifies the plan's instance size

Type: `string`

Default: `"S1"`

### sku\_tier

Description: Specifies the plan's pricing tier

Type: `string`

Default: `"Standard"`

## Outputs

The following outputs are exported:

### app\_service\_id

Description: n/a

