#!/usr/bin/env python

import startup
 
from absl import app

from csm.experiments.csm.csp import FLAGS, CSPTrainer


def main(_):
    seed = FLAGS.seed
    np.random.seed(seed)
    torch.manual_seed(seed)
    torch.cuda.manual_seed(seed)

    FLAGS.img_height = FLAGS.img_size
    FLAGS.img_width = FLAGS.img_size
    FLAGS.cache_dir = cache_path
    FLAGS.rendering_dir = osp.join(FLAGS.cache_dir, 'rendering', FLAGS.name)
    FLAGS.result_dir = osp.join(FLAGS.cache_dir, 'result', FLAGS.name)
    trainer = CSPTrainer(FLAGS)
    trainer.init_training()
    trainer.train()
    pdb.set_trace()


if __name__ == '__main__':
    app.run(main)
