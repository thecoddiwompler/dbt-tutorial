# Installation Instructions for dbt

Follow these steps to install dbt (Data Build Tool):

## Prerequisites

Ensure you have the following prerequisites installed on your system:

- Python (3.7 or later)
- pip (Python package installer)

You can check if you have Python and pip installed by running:
```sh
python --version
pip --version
```


## Installation Steps

1. Create and Activate a Virtual Environment: <br><br>Open your terminal and run the following commands to create and activate a virtual environment:

    ```sh
    python -m venv dbt_venv
    source dbt_venv/bin/activate  # For Linux/Mac
    .\dbt_venv\Scripts\activate   # For Windows
    ```

2. Install dbt: <br>
Within your activated virtual environment, install dbt using pip:

    ```sh
    pip install dbt-core dbt-postgres
    ```

3. Verify the Installation:<br>
To verify that dbt has been installed correctly, run:

    ```sh
    dbt --version
    ```

    You should be able to see something like this:

    ```sh
    Core:
        - installed: 1.8.1
        - latest:    1.8.1 - Up to date!
    Plugins:
        - postgres: 1.8.1 - Up to date!
    ```


## Setup

1. Create a file called profiles.yml in ~/.dbt (if not exist)

    ```sh
    cd
    mkdir .dbt
    cd .dbt
    vim profiles.yml
    ```

2. Configure the connection details for Postgres in your profiles.yml (Replace Credentials in the example with your actual DB credentials)

    ```sh
    jaffle_shop:
        outputs:
            dev:
            dbname: employee
            host: localhost
            pass: xxxxxxxxx
            port: 5432
            schema: jaffle_shop
            threads: 1
            type: postgres
            user: xxxxxxxxx
        target: dev
    ```

3. Clone the repository to your projects folder

    ```sh
    git clone https://github.com/thecoddiwompler/dbt-tutorial.git
    ```

4. Verify Setup:

    ```sh
    cd dbt-tutorial
    dbt clean && dbt compile
    ```

If the above command completes without errors you are all set.

5. Run requirements file

    ```sh
    pip install -r requirements.txt
    ```


# Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices