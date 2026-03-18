# AI vs. Human Text Classification

This project explores the use of various Recurrent Neural Network (RNN) architectures and Transformers to distinguish between human-written and AI-generated text. As AI models like ChatGPT and Gemini become more sophisticated, identifying the source of content has become increasingly challenging. This study evaluates which neural network architectures are most effective for this classification task.

## Project Abstract

The study utilizes the "AI(LLMS) vs. Human Texts Cleaned and Optimized" dataset from Kaggle, consisting of approximately 1.8 million essays. We trained and evaluated six different neural network models:
- Single-Layer RNN
- Multi-Layer RNN
- LSTM (Long Short-Term Memory)
- RNN Auto-Encoder
- LSTM Auto-Encoder
- Transformer

**Key Findings:**
- **LSTM** emerged as the best overall model, balancing high accuracy (99.85% train, 98.82% test) with efficient computational performance (1.25 minutes per epoch).
- **RNN and Multi-Layer RNN** were the fastest but performed poorly (53-54% accuracy), barely exceeding random guessing.
- **Auto-Encoders and Transformers** achieved high accuracy (97-99%) but required significantly longer training times (4-6 minutes per epoch).

## Repository Structure

The repository maintains a flat structure with the following files:

- `Script.ipynb`: The primary Jupyter Notebook containing the data preprocessing pipeline, model architectures, training loops, and evaluation metrics.
- `Report.pdf`: A comprehensive project report detailing the methodology, dataset characteristics, experimental results, and conclusions.

## Dataset

- **Source:** [Kaggle: AI(LLMS) vs. Human Texts Cleaned and Optimized](https://www.kaggle.com/datasets/yaminh/ai-generated-and-human-written-texts)
- **Size used:** A balanced subset of 30,000 observations (16,065 human-written, 13,935 AI-generated).
- **Features:** 
  - `label`: Binary (0 for human, 1 for AI).
  - `clean_text`: Preprocessed essay content.

## Methodology

### Preprocessing
1. **Tokenization:** Splitting essays into individual word tokens.
2. **Vocabulary Building:** Creating a mapping of unique words to integers, including `<PAD>` and `<UNK>` tokens.
3. **Numerical Encoding:** Utilizing PyTorch's `nn.Embedding` for efficient word-to-vector representation during training.
4. **Padding:** Ensuring uniform sequence lengths for batch processing.

### Training
- **Split:** 80% training, 20% testing.
- **Seed:** 123 (for reproducibility).
- **Batch Size:** 64.
- **Optimization:** Models were trained using PyTorch DataLoaders to optimize memory and GPU utilization.

## Requirements

To run the notebook, you will need:
- Python 3.x
- PyTorch
- Pandas
- NumPy
- KaggleHub (for dataset downloading)

```bash
pip install torch pandas numpy kagglehub
