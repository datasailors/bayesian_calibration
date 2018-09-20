# Bayesian Calibration of Engineering Equations using Tensorflow Probability

This repo contains sample code to perform probabilistic parameter estimation using MCMC in order to build a stochastic models for Prognostic and Health Management of engineering systems. The implementations are based on examples shown in the book [Prognostics and Health Management of Engineering Systems: An Introduction](https://books.google.com/books?id=pv9RDQAAQBAJ&lpg=PR3&dq=prognostics%20and%20health%20management%20of%20engineering%20systems&pg=PR3#v=onepage&q=prognostics%20and%20health%20management%20of%20engineering%20systems&f=false) by Kim, An and Choi. 

### Examples

The examples are:
- [Crack Propagation Model](https://github.com/bhgedigital/bayesian_calibration/blob/master/notebooks/Simple_Probabilistic_Crack_Growth_Model_logY.ipynb)
- Battery Degradation Model [Link to be updated]

Details on how to run the notebooks above are given below, in our __Implementation__ section.

### Implementation: depend-on-docker

Depend on Docker, a.k.a as {Do},  is an easy to use project template that helps start working quickly on any of your projects. It lets you embed the knowledge you have about your software into a container that hides away complexities and makes it easy to build, ship, and run on Linux or Windows, locally, in a data center, and on any cloud. To accomplish all of it, the only dependency you need is Docker!

Knowing that we don't want to have to set-up the environment for building probabilistic models every time we mode to a different machine, we've package all the necessary dependencies - chiefly Tensorflow and Tensorflow Probability - into our image. Running the Jupyter notebooks become very simple: `./run.sh` will get you your own Jupyter Notebook server! After that, simply open Chrome and browse to https://localhost:8888. 

For now the project has been built to run CPU only, we'll get to the GPU enabled project soon, hang on tight. 

If you're into having the full experience, by building your own image, read-on or click the {Do} link below for the full documentation. 

#### How to  [{Do}](https://github.com/bhgedigital/depend-on-docker)

For ease of use, all Docker commands required to use this project have been embedded into intuitively named native shell scripts.

##### Build

    Linux: ./build.sh 

Builds the Docker container image and tags it using the registry and version tag settings specified in your environment file

##### Ship (push and pull)

    Linux: ./push.sh or ./pull.sh 

Pushes or pulls the Docker container image to of from the registry specified in your environment file

##### Run

    Linux: ./run.sh [command] 

Creates a docker container and, if no argument is specified, executes the startup script. If a command line is specified as an argument to the run script, this command line is executed in the container in place of the default startup script.

##### Logs

    Linux: ./logs.sh 

Tails the output of the command executed inside the container. Use Ctrl-C to stop the tail.

##### Exec

    Linux: ./exec.sh [command] 

This script requires a running container to exist. It executes the specified command in the running container. If no command is specified as an argument, then a default command is executed to open a new interactive shell within the container.

##### Status

    Linux: ./status.sh 

This script shows the current status of the Docker container including any mapped ports.

##### Stop

    Linux: ./stop.sh 

Stops the container and cleans up its files.

