﻿#ifndef LEARNING_ALGO_HPP
#define LEARNING_ALGO_HPP

#include<vector>
#include<alize/alize.h>
using namespace std;

class GmmModel;

class LearningAlgo {


public:
  LearningAlgo() = default;
  LearningAlgo(const LearningAlgo &other) = delete;
  LearningAlgo(LearningAlgo &&other) = delete;
  LearningAlgo& operator =(const LearningAlgo &other) = delete;
  LearningAlgo& operator =(LearningAlgo &&other) = delete;
  virtual void LearnModel(GmmModel &model, std::vector<alize::Feature> feature_vec )const = 0;
  virtual ~LearningAlgo() = default;
};

class ExpectationMaximalizationAlgo: public LearningAlgo{
protected:
  std::vector<std::vector<double> > aposteriori_propabilities_;

  void getPosterioriPropability(uint32_t feature_idx, uint32_t distrib_idx)const;
  void setPosterioriPropability(uint32_t feature_idx, uint32_t distrib_idx);

  void performOneIteration();
  void clearAfterIteration();
  void countPosterioriPropabilities(const GmmModel &model,
                                  const std::vector<alize::Feature> &feature_vec);
  double countWeight(uint32_t distrib_idx)const;
  alize::RealVector countMean(uint32_t distrib_idx,
                              const std::vector<alize::Feature> &feature_vec )const;
  alize::RealVector countDiagonalCovariance(uint32_t distrib_idx,
                                            const std::vector<alize::Feature> &feature_vec,
                                            const alize::RealVector &mean)const;
  alize::DoubleSquareMatrix countFullCovariance(uint32_t distrib_idx,
                                                const std::vector<alize::Feature> &feature_vec,
                                                const alize::RealVector &mean)const;

public:
  ExpectationMaximalizationAlgo()=default;
  ExpectationMaximalizationAlgo(const ExpectationMaximalizationAlgo &other)=default;
  ExpectationMaximalizationAlgo& operator=(const ExpectationMaximalizationAlgo &other)=default;

  ExpectationMaximalizationAlgo(ExpectationMaximalizationAlgo &&other) = default;
  ExpectationMaximalizationAlgo& operator =(ExpectationMaximalizationAlgo &&other) = default;

  void LearnModel(GmmModel &model, const std::vector<alize::Feature> &feature_vec )const override;

  ~ExpectationMaximalizationAlgo()override = default;

};

#endif // LEARNING_ALGO_HPP
