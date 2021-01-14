# Virtual Environment

## Create Virtual Environment
To create a virtual environment execute the following command:
```shell
python3 -m venv .venv
```
This will create a new folder `.venv` in the current working directory containing the virtual environment with the Python interpreter and `pip` pre-installed.

## Activate Virtual Environment
To use the newly created virtual environment execute one of the following commands based on the shell you are using:

* **bash:**
	```shell
	source .venv/bin/activate
	```
* [**fish**](https://fishshell.com/)**:**
	```shell
	. .venv/bin/activate.fish
	```
## Recommended Packages To Install
* **Minimum:**
	* [wheel](https://pypi.org/project/wheel/)
	* [setuptools](https://pypi.org/project/setuptools/)
    ```shell
    python3 -m pip install --upgrade pip wheel setuptools
    ```
* **Optional:**
	* [PyContracts](https://pypi.org/project/PyContracts/): For [Design by contract (DbC)](https://en.wikipedia.org/wiki/Design_by_contract)
	* [pytest](https://pypi.org/project/pytest/): For [testing](https://en.wikipedia.org/wiki/Software_testing)
    ```shell
    python3 -m pip install PyContracts pytest
    ```


# Requirements Files

## Create Requirements Files
```shell
python3 -m pip freeze > requirements.txt
```

## Install From Requirements File
```shell
python3 -m pip install -r requirements.txt
```

# References
* [pip documentation](https://pip.pypa.io/en/stable/reference/pip_install/#options)
* [venv documentation](https://docs.python.org/3/library/venv.html)
