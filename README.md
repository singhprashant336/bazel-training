Bazel Training
  Welcome to the Bazel Training repository! This repository serves as a comprehensive guide and collection of resources for learning Bazel, a powerful build tool developed by Google. Whether you're new to Bazel or looking to enhance your skills.

Introduction
  Bazel is an open-source build and test tool that emphasizes speed, reproducibility, and correctness. It is used extensively within Google and by many other organizations for building large-scale software projects. Bazel supports multiple programming languages, platforms, and environments, making it an ideal choice for modern software development workflows.

Getting Started
  To begin your journey with Bazel, follow these simple steps:

Install Bazel: If you haven't already installed Bazel on your system, refer to the official Bazel installation guide for instructions tailored to your operating system.
  Clone this Repository: Clone or download this repository to your local machine using the following command:
  bash
  Copy code
  git clone https://github.com/singhprashant336/bazel-training.git
  Explore the Examples: Dive into the examples directory to find various examples demonstrating different aspects of Bazel. Each example comes with its own README file, providing detailed instructions on how to build, test, and run the code using Bazel.
  Experiment and Learn: Modify the examples, try out different build configurations, and explore the capabilities of Bazel. Learning by doing is often the most effective way to understand a new tool.
  Examples
  The examples directory contains a variety of examples covering different use cases and scenarios. Here are a few examples you can explore:
  
  hello-world: A simple example demonstrating how to build and run a basic "Hello, World!" program using Bazel.
  java-app: An example illustrating how to build and test a Java application with Bazel.
  cpp-library: An example demonstrating how to build a C++ library and link it with an executable using Bazel.
  Each example is accompanied by its own README file with detailed instructions and explanations.

CI/CD Pipelines:
  This has been achived by using Github self hosted Runner. Following is the brief overview of the same.
  Overview: GitHub Actions allows you to automate tasks in your GitHub repository. Self-hosted runners enable you to run GitHub Actions workflows on machines that you manage and control, such as virtual machines, physical machines, or containers.
  Prerequisites: Before adding self-hosted runners, ensure that you have administrative access to the repository where you want to add the runners. You'll also need to install and configure the self-hosted runner application on the machine where you want to host the runners.
  Adding a Runner:
  Navigate to your repository on GitHub.
  Go to the "Settings" tab.
  In the left sidebar, click on "Actions".
  Under "Self-hosted runners", click on "Add runner".
  Follow the provided instructions to download, configure, and start the runner application on your machine.
  Configuring a Runner:
  During the setup process, you'll be prompted to provide a token for authentication. This token is used to connect the runner to your repository.
  You can also specify additional configuration options, such as the labels for the runner and whether it should be enabled for public repositories.
  Verifying the Runner:
  Once the runner is set up and running, you can verify its status in the repository settings under "Actions" > "Self-hosted runners".
  The status will indicate whether the runner is online and available to run workflows.
  Managing Runners:
  You can view and manage self-hosted runners in the repository settings.
  Options include removing runners, disabling runners for public repositories, and viewing runner details.
  Scaling Runners:
  GitHub Actions allows you to scale your self-hosted runner capacity based on your workflow needs.
  You can add multiple self-hosted runners to a repository or distribute runners across different repositories.
  Overall, the document provides step-by-step instructions for setting up and managing self-hosted runners in GitHub Actions, empowering users to customize their workflow execution environment to suit their specific requirements.
  For the current project, I have added the following steps to be run during Job execution:
     - run: bazel --output_base=C:\actions-runner\_work\_temp\ci-bazel-out build --config py_tool //main:hello_world
     - run: bazel --output_base=C:\actions-runner\_work\_temp\ci-bazel-out run --config py_tool //main:hello_world
     - run: bazel --output_base=C:\actions-runner\_work\_temp\ci-bazel-out test --config py_tool //main/tests/...
  
       The job ensures to run the tests for the built project.
     
Contributing
  Contributions to this repository are welcome! If you have any improvements, bug fixes, or new examples to contribute, please feel free to open a pull request. Before submitting a pull request, ensure that your changes adhere to the repository's coding standards and guidelines.
