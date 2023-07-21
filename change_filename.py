import os
from glob import glob
from tqdm import tqdm


if __name__ == '__main__':
    scales = ['X2', 'X3', 'X4']

    for s in scales:
        files = glob(os.path.join('datasets', 'DF2K', 'DF2K_train_LR_bicubic', s, '*.png'))
        for f in tqdm(files):
            new_f = f.replace(s.lower(), '')
            os.rename(f, new_f)

        files = glob(os.path.join('datasets', 'DF2K', 'DF2K_train_LR_unknown', s, '*.png'))
        for f in tqdm(files):
            new_f = f.replace(s.lower(), '')
            os.rename(f, new_f)

        files = glob(os.path.join('datasets', 'DIV2K', 'DIV2K_train_LR_bicubic', s, '*.png'))
        for f in tqdm(files):
            new_f = f.replace(s.lower(), '')
            os.rename(f, new_f)

        files = glob(os.path.join('datasets', 'DIV2K', 'DIV2K_train_LR_unknown', s, '*.png'))
        for f in tqdm(files):
            new_f = f.replace(s.lower(), '')
            os.rename(f, new_f)

        files = glob(os.path.join('datasets', 'DIV2K', 'DIV2K_valid_LR_bicubic', s, '*.png'))
        for f in tqdm(files):
            new_f = f.replace(s.lower(), '')
            os.rename(f, new_f)

        files = glob(os.path.join('datasets', 'DIV2K', 'DIV2K_valid_LR_unknown', s, '*.png'))
        for f in tqdm(files):
            new_f = f.replace(s.lower(), '')
            os.rename(f, new_f)

        files = glob(os.path.join('datasets', 'Flickr2K', 'Flickr2K_LR_bicubic', s, '*.png'))
        for f in tqdm(files):
            new_f = f.replace(s.lower(), '')
            os.rename(f, new_f)

        files = glob(os.path.join('datasets', 'Flickr2K', 'Flickr2K_LR_unknown', s, '*.png'))
        for f in tqdm(files):
            new_f = f.replace(s.lower(), '')
            os.rename(f, new_f)
