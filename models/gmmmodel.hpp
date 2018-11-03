﻿#ifndef GMMMODEL_HPP
#define GMMMODEL_HPP

#include <alize/alize.h>
#include<memory>
#include <stdexcept>
#include <vector>
#include "models/learning_algo.hpp"
class LearningAlgo;

class IndexOutOfBounds : std::out_of_range
{
public:
  explicit IndexOutOfBounds(std::string msg) : out_of_range(msg)
  {}
};

class InvalidFeatureVectorSize: std::invalid_argument
{
public :
  explicit InvalidFeatureVectorSize(std::string msg):invalid_argument(msg)
  {}
};

class GmmModel
{
public:

  const uint32_t  MIXTURE_IDX = 0; //, DISTRIB_COUNT
  alize::Config conf_;
  alize::MixtureServer s_;
  std::unique_ptr<LearningAlgo> algo_;
  alize::DistribType type_;
  //alize::FeatureServer features_;
  std::vector<alize::Feature> features_;

  virtual void initDefaultMixture(uint32_t distrib_cnt);

public:
  GmmModel() = delete;
  explicit GmmModel(const alize::Config &conf);
  GmmModel(const GmmModel &other) = delete;
  GmmModel& operator=(const GmmModel &other) = delete;

  GmmModel(GmmModel &&other);
  GmmModel& operator =(GmmModel &&other) = delete;

  alize::Config getConfig()const;

  virtual void addLearnAlgo(std::unique_ptr<LearningAlgo> &&algo_to_set);
  virtual std::unique_ptr<LearningAlgo>& getLearnAlgo();
  virtual void learnModelUsingLearnAlgo(std::unique_ptr<LearningAlgo> &algo);
  void learnModel();

  void addTrainingFeature(const alize::Feature &feature);
  std::vector<alize::Feature> getTrainingFeatures();

  double countLikehoodWithWeight(const alize::Feature &arg)const;
  double countLikehoodWithWeight(const alize::Feature &arg, uint32_t distrib_idx)const;

  uint32_t getDistribCount()const;
  double getDistribWeight(uint32_t distrib_idx)const;
  void setDistribWeight(uint32_t distrib, double new_weight);

  alize::RealVector<double> getDistribMean(uint32_t distrib)const;
  void setDistribMean(uint32_t distrib, const alize::RealVector<double> &new_mean);

  virtual void setDistribCovariance(uint32_t distrib, const alize::RealVector<double> &diagonal_covariance) = 0;
  virtual void setDistribCovariance(uint32_t distrib, const alize::DoubleMatrix &covariance) = 0;

  uint32_t getFeatureVectorSize()const;

  virtual ~GmmModel() = default;
  static std::vector<alize::Feature> extractAllFeatures(alize::FeatureServer &s);

};

#endif // GMMMODEL_HPP