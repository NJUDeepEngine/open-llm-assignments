# llm-assignments - assignment-5-exploring-llama 🦙

Congratulations!

You've journeyed from starting with pytorch to constructing a complete transformer, equipping you the capability to master most of the modern LLMs.

So in this assignment, we dive into Llama3.2, a SOTA lightweight dense LLM, exploring its end-to-end pipeline, including modeling, inference, and training.

🔥 What'more, as the final assignment, for each basic task, we provide some additional hight-relative tasks but less guided and more challenging, giving you enough room to improvise and explore. Of-course, we will award **generous bonus points** for these extra tasks, with no upper limit (*which means, in theory, you can accomplish only one bonus task well enough to turn the tide and score full marks at the end*).


## Tasks (100 points + bonus🔥)

### Task 1: Llama Model (20 points + bonus🔥)

Please read the description [here](./tasks/task1.md).

### Task 2: Inference Agent (30 points + bonus🔥)

Please read the description [here](./tasks/task2.md).

### Task 3: LoRA Trainer (50 points + bonus🔥)

Please read the description [here](./tasks/task3.md).


## Environment

* You should have python 3.10+ installed on your machine.
* (*Optional*) You had better have Nvidia GPU(s) with CUDA12.0+ installed on your machine, otherwise some features may not work properly (*We will do our best to ensure that the difference in hardware does not affect your score.*).
* You are supposed to install all the necessary dependencies with the following command, **which may vary a little among different assignments**.
    ```python
    pip install -r requirements.txt
    ```
* (*Optional*) You are strongly recommended to use a docker image from [Nvidia Pytorch Release](https://docs.nvidia.com/deeplearning/frameworks/pytorch-release-notes/index.html) like [23.10](https://docs.nvidia.com/deeplearning/frameworks/pytorch-release-notes/rel-23-10.html#rel-23-10) or some newer version as your basic environment in case of denpendency conflicts.


## Submission

* You need to submit your assignment by `git commit` and `git push` this private repository **on the `main` branch** with the specified source files required to fullfill above **before the hard deadline**, otherwise **the delayed assignment will be rejected automatically**.
* Try **NOT to push unnecessary files**, especially some large ones like images, to your repository.
* If you encounter some special problems causing you miss the deadline, please contact the teacher directly (*See [Contact](#contact)*).


## Scoring & Debug & Feedback 🛎️❗

* Since the numerical errors might accumulate too much to be close to the reference implementation with the model goes deeper, as for the final assignment, we do **NOT** continue to adopt pytest-based test cases requiring exact closeness, neither to help you debug nor to evaluate your implementation.
* Instead, we will provide each task an ipython notebook named `test_toy_task{i}.ipynb` with the exported python script named `test_toy_task{i}.py` for the `i`-th task, in which we write down a toy tutorial to go through main functionalities that you're required to implement. In this way, you can directly run the notebook to debug and evaluate your own implementation, focusing **NOT** on precision, but on reasonableness.
* To help you <u>deep debug</u>, as usual, we also provide the docker image tar file named `a_env_light_v{x}.tar` with the **close-sourced reference package** `ref` installed in it, and you can toggle on the boolean flag `TEST_WITH_REF` at the beginning of each notebook to run the cells using `ref` in that docker environment. The following commands show you how to run the toy test files with `ref` in the provided docker container (*to run the ipython notebook in the container, you might need to launch it with vscode attached*):
    ```sh
    # step0. assumming that the tar file "a_env_light_v{x}.tar" is already downloaded into your private repo
    
    # step1. run the given script to load the docker image (default the light one) and execute the container
    bash run_docker.sh # or maybe you need run it with sudo

    # step2. get into the repo path mounted into the container
    cd a_repo

    # step3. run the `test_toy_task{i}.py` for the `i`-th task if you've already toggled on the `TEST_WITH_REF`
    # otherwise, you can just directly run the test_toy_task{i}.py or the test_toy_task{i}.ipynb in your local environment
    python test_toy_task{i}.py
    ```
* As for <u>scoring</u>, there're several things we will decide your points **manually** based on (*including the basic points and the bonus points*):
    * 1. The source code logic and quality of your implementation, not only for this assignment, but also for all the previous assignments.
    * 2. The notebook running results. We will run the **hidden notebooks** to evaluate the required functionalities of your implementation, which are the extensions of the toy notebooks we've mentioned above but more thorough.
    * 3. Besides, you also need to submit a **markdown-style pdf named `./report.pdf` as your final course report**, in which you can introduce how you implement the required functionalities, and solve the encountered problems, especially if you've tried the bonus tasks 🔥.
    * 4. 🔥 With regard to the bonus task, even though we have no limit on the actual format as submisson, you are supposed to give a guidence in `./report.pdf` of how to execute your bonus codes, including the specific environment requirements, the running scripts (`.py` or `.ipynb`), the command / argument instructions, etc. Just imangine that this is the attached repository to your published "paper", and you are obliged to provide a playground for everyone to try out and reproduce your experiments. **NOTE: the quality of this guidence, including readability and reproducibility, is of great importance to your bonus points.**
    * 5. If your bonus submission requires uploading large files such as model weights or docker images, you can upload them to your own `NJU Box` and provide the corresponding links in the report for us to download.
* As for the feedback, if we have any trouble in evaluating your submission, such as environment conflicts, missing files, wrong formats, runtime errors, etc, we will contact you by either creating an issue on your private repo or sending you an message on QQ directly. In the meantime, if everything is fine, your final score will be notified to you through the school's official channel 😊.


## Contact

* If you have any questions about the assignment, you can contact the teacher or any assistants directly through QQ group with the number `208283743`.
* You can subscribe to the teacher's bilibili account with UID `390606417` and watch the online courses [here](https://space.bilibili.com/390606417/channel/collectiondetail?sid=3771310).