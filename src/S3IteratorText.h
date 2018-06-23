#ifndef _S3_ITERATORTEXT_H_
#define _S3_ITERATORTEXT_H_

#include <S3.h>
#include <S3Iterator.h>
#include <Configuration.h>
#include <config.h>
#include <SparseDataset.h>
#include <Synchronization.h>
#include <Serializers.h>
#include <CircularBuffer.h>

#include <thread>
#include <list>
#include <mutex>
#include <queue>
#include <semaphore.h>

namespace cirrus {

class S3IteratorText : public S3Iterator {
 public:
    S3IteratorText(
        const Configuration& c,
        uint64_t file_size,
        uint64_t minibatch_rows, // number of samples in a minibatch
        int worker_id,           // id of this worker
        bool random_access);     // whether to access samples in a rand. fashion

    std::shared_ptr<SparseDataset> get_next_fast();

    void thread_function(const Configuration&);

 private:
  void report_bandwidth(uint64_t elapsed, uint64_t size);
  void push_samples(std::ostringstream* oss);

  template <class T>
    T read_num(uint64_t& index, std::string& data);

  std::vector<std::shared_ptr<SparseDataset>>
    parse_s3_obj_libsvm(std::string& s3_data);

  bool build_dataset_libsvm(
    std::string& data, uint64_t index,
    std::shared_ptr<SparseDataset>& minibatch);
  bool build_dataset_csv(
      const std::string& data, uint64_t index,
      std::shared_ptr<SparseDataset>& minibatch);

  bool build_dataset_vowpal_wabbit(
      const std::string& data, uint64_t index,
      std::shared_ptr<SparseDataset>& minibatch);

  std::pair<uint64_t, uint64_t> get_file_range(uint64_t);

  /**
    * Attributes
    */
  uint64_t file_size = 0;

  std::shared_ptr<Aws::S3::S3Client> s3_client;

  uint64_t read_ahead = 1;

  std::thread* thread;   //< background thread
  std::mutex ring_lock;  //< used to synchronize access
  // used to control number of blocks to prefetch
  PosixSemaphore pref_sem; //<

  uint64_t s3_rows;
  uint64_t minibatch_rows;

  sem_t semaphore;
  // this contains a pointer to memory where a minibatch can be found
  // the int tells whether this is the last minibatch of a block of memory
  CircularBuffer<
    std::vector<std::shared_ptr<SparseDataset>>> minibatches_list;

  // how many minibatches ready to be processed
  std::atomic<int> num_minibatches_ready{0};
  
  int worker_id = 0;
  
  std::default_random_engine re;
  bool random_access = true;
  uint64_t cur_index = 0;
};

}

#endif  // _S3_ITERATORTEXT_H_
