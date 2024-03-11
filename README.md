# sokyu
Docker environment for stock market analysis and management analysis.

## Features
Only the stock price forecast using this environment has now been verified. Other tasks, such as portfolio optimization, will be worked on.
The name of this repository was given with respect to Sokyu Honma.

## Requirement
Docker

## Usage
```bash
docker-compose up -d --build
docker-compose exec stock_pythondev bash
```
We have confirmed that this can be activated in the following environments.  
* CPU : Intel(R) Core(TM) i7-10700 CPU @ 2.90GHz  
* RAM : 32.0 GB  
* GPU : NVIDIA GeForce GTX 1660 SUPER  

### If the environment is activated,
* ### phpMyAdmin is available at http://127.0.0.1:8080
* ### JupyterLab is available at http://127.0.0.1:8888

## Note
I don't test environments under Linux and Mac.  

We hope you enjoy your life of stock market analysis!  
Thank you!
