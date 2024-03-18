# Amazon Connect Contact Center Deployment

This Terraform configuration provisions an Amazon Connect contact center for InterVision.

## Prerequisites

Before you begin, ensure you have the following:

1. AWS account credentials configured with appropriate permissions.
2. Terraform installed on your local machine. You can download Terraform from [here](https://www.terraform.io/downloads.html) and follow the installation instructions.

## Usage

1. Clone or download this repository to your local machine.

2. Navigate to the directory containing the Terraform configuration files.

3. Open `main.tf` file and review the input variables under the "Configure provider" section. Modify the values as needed to match your desired configuration.

4. Run the following Terraform commands in the terminal:

    ```bash
    terraform init
    terraform plan
    terraform apply
    ```

5. Terraform will prompt you to confirm the action. Type `yes` and press Enter to proceed with provisioning the resources.

6. After Terraform finishes applying the configuration, verify that the Amazon Connect contact center has been deployed successfully in your AWS account.

## Modules

### Contact Center Module

The contact center module (`contact_center/`) provisions an Amazon Connect instance. It includes the following resources:

- `aws_connect_instance`: Creates an Amazon Connect instance with specified configuration.

### Phone Number Module

The phone number module (`phone_number/`) assigns a phone number to the Amazon Connect instance. It includes the following resources:

- `aws_connect_phone_number`: Assigns a phone number to the Amazon Connect instance.

### Contact Flow Module

The contact flow module (`contact_flow/`) defines a contact flow for the Amazon Connect instance. It includes the following resources:

- `aws_connect_contact_flow`: Creates a contact flow with specified configuration.

## Testing

To ensure the functionality and quality of the Terraform configuration, you can perform the following tests:

1. **Syntax Check**: Run `terraform fmt` to format the Terraform code and `terraform validate` to check for syntax errors.

2. **Plan Validation**: After running `terraform plan`, review the plan to ensure that the changes match your expectations and that no errors or unexpected changes are reported.

3. **Functional Testing**: Manually verify that the deployed Amazon Connect contact center functions as expected. Test inbound and outbound calls, contact flows, queue routing, and any other desired functionalities.

4. **Automated Testing**: Implement automated tests using tools such as Terratest or custom scripts to validate the functionality of the Terraform configuration in an automated manner. This can include creating test cases to simulate various scenarios and verifying the expected behavior of the contact center.

## Cleanup

To avoid incurring unnecessary costs, you can destroy the resources provisioned by Terraform by running the following command:

```bash
terraform destroy
