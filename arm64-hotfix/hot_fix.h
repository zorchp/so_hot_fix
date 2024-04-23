int init_hot_fix_signal();
typedef struct {
  void *new_func;
  void *old_func;
} FIXTABLE;
