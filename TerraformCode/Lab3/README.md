1. **What Are Terraform Output Values?**
   - Output values in Terraform provide a way to make information about your infrastructure available.
   - They are similar to return values in programming languages.
   - Outputs allow you to expose specific attributes of your resources for various purposes.

2. **Use Cases for Output Values:**
   - **Child Modules:** Child modules can use outputs to expose resource attributes to their parent module.
   - **Root Modules:** Root modules can display specific values in the CLI output after running `terraform apply`.
   - **Remote State:** Outputs from the root module can be accessed by other configurations using `terraform_remote_state`.

3. **Example with Azure Resource Group:**
   - You've defined three output blocks:
     - `resource_group_id`: Exposes the ID of the created Azure resource group.
     - `resource_group_location`: Exposes the location (region) of the resource group.
     - `name`: Exposes the name of the resource group.
   - Additionally, there's an example for an `admin_password` output (marked as sensitive).

