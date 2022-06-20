# operation-and-maintenance-scripts

curl -sf -L https://raw.githubusercontent.com/VanderChen/operation-and-maintenance-scripts/main/setup_conda_mirror.sh | sh

curl -sf -L https://raw.githubusercontent.com/VanderChen/operation-and-maintenance-scripts/main/setup_maven_mirror.sh | sh



## pip scripts

```bash
python -m pip install -i https://pypi.tuna.tsinghua.edu.cn/simple --upgrade pip && \
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
```