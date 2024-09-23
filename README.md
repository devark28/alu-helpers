## Alucli: Installation and Usage Guide

This document provides instructions on installing and using the `alucli` tool to interact with the `alu-helpers` repository.

### Prerequisites

* **Operating System:** Linux or macOS with Bash installed.

### Installation

There are two main ways to install `alucli`:

**1. Symbolic Link:**

This approach creates a symbolic link to the `alu-helpers/index.sh` script named `alucli` in a directory that's in your `$PATH` environment variable. 

Here's how to do it:

   1. Open a terminal window.
   2. Run the following command with administrator privileges (`sudo`):

      ```bash
      sudo ln -s /alu-helpers/index.sh /usr/local/bin/alucli
      ```

      - Replace `/alu-helpers/index.sh` with the actual path to the `index.sh` script if it's located elsewhere.
      - Replace `/usr/local/bin` with another directory in your `$PATH` if you prefer.


### Usage

The `alucli` tool allows you to interact with the `alu-helpers` repository for various tasks. Here are currently supported commands:

- **`create <name>`**: Creates a new directory or file (specific functionality depends on `alu-helpers` implementation).
- **`setup <arguments>`**: Performs setup operations (specific purpose may vary depending on `alu-helpers`).

**Example:**

To create a new directory named "my-project":

```bash
alucli setup my-project
```

To create a new script named "my-script":

```bash
alucli create my-script
```

**Note:** The specific functionality and arguments supported by `alucli` depend on the implementation within the `alu-helpers/index.sh` script. Consult the script or its documentation (if available) for additional details.


### Additional Notes

* Ensure the `alu-helpers` repository is accessible to the user running `alucli`.
* Refer to the `alu-helpers/index.sh` script or its documentation for any specific requirements or limitations.


By following these steps, you should be able to successfully register and use the `alucli` tool to interact with the `alu-helpers` repository.
