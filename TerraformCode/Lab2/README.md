1. **Definition of Terraform Variables:**
   - **Terraform variables** act as placeholders in your Terraform configuration files.
   - They allow you to parameterize values, making your configurations more flexible and reusable.
   - Variables can represent different types of values (strings, numbers, lists, maps, etc.).
   - You can set default values for variables, making them optional to provide during execution.

2. **How to Use Terraform Variables:**
   - Declare variables using the `variable` block in your Terraform files.
   - Reference these variables within resource configurations using interpolation syntax (e.g., `${var.variable_name}`).
   - When you run Terraform, it prompts you to provide values for variables without defaults.
   - You can provide values via command-line flags, environment variables, or variable definition files.

3. **Example with Azure Resource Group:**
   - Suppose you want to create an Azure Resource Group using Terraform.
   - You define two variables: `location` (for the region) and `name` (for the resource group name).
   - The `default` values are optional but provide a fallback if no value is provided.
   - In your resource block, you use `var.name` and `var.location` to set the resource group's properties.
