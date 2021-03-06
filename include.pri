QT += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

LIBS += -L$$PWD/external-libs/lib -lalize -lboost_unit_test_framework

INCLUDEPATH += $$PWD \
               $$PWD/external-libs/include

QMAKE_CXXFLAGS += -std=c++14

HEADERS += \
    $$PWD/utils/utils.hpp \
    $$PWD/models/gmmmodel.hpp \
    $$PWD/models/learning_algo.hpp \
    $$PWD/dao/ModelDao.hpp \
    $$PWD/external-libs/include/alize.h \
    $$PWD/external-libs/include/alizeString.h \
    $$PWD/external-libs/include/AudioFileReader.h \
    $$PWD/external-libs/include/AudioFrame.h \
    $$PWD/external-libs/include/AudioInputStream.h \
    $$PWD/external-libs/include/AutoDestructor.h \
    $$PWD/external-libs/include/BoolMatrix.h \
    $$PWD/external-libs/include/CmdLine.h \
    $$PWD/external-libs/include/Config.h \
    $$PWD/external-libs/include/ConfigChecker.h \
    $$PWD/external-libs/include/ConfigFileReaderAbstract.h \
    $$PWD/external-libs/include/ConfigFileReaderRaw.h \
    $$PWD/external-libs/include/ConfigFileReaderXml.h \
    $$PWD/external-libs/include/ConfigFileWriter.h \
    $$PWD/external-libs/include/Distrib.h \
    $$PWD/external-libs/include/DistribGD.h \
    $$PWD/external-libs/include/DistribGF.h \
    $$PWD/external-libs/include/DistribRefVector.h \
    $$PWD/external-libs/include/DoubleSquareMatrix.h \
    $$PWD/external-libs/include/Exception.h \
    $$PWD/external-libs/include/Feature.h \
    $$PWD/external-libs/include/FeatureFileList.h \
    $$PWD/external-libs/include/FeatureFileReader.h \
    $$PWD/external-libs/include/FeatureFileReaderAbstract.h \
    $$PWD/external-libs/include/FeatureFileReaderHTK.h \
    $$PWD/external-libs/include/FeatureFileReaderRaw.h \
    $$PWD/external-libs/include/FeatureFileReaderSingle.h \
    $$PWD/external-libs/include/FeatureFileReaderSPro3.h \
    $$PWD/external-libs/include/FeatureFileReaderSPro4.h \
    $$PWD/external-libs/include/FeatureFileWriter.h \
    $$PWD/external-libs/include/FeatureFlags.h \
    $$PWD/external-libs/include/FeatureInputStream.h \
    $$PWD/external-libs/include/FeatureInputStreamModifier.h \
    $$PWD/external-libs/include/FeatureMultipleFileReader.h \
    $$PWD/external-libs/include/FeatureServer.h \
    $$PWD/external-libs/include/FileReader.h \
    $$PWD/external-libs/include/FileWriter.h \
    $$PWD/external-libs/include/FrameAcc.h \
    $$PWD/external-libs/include/FrameAccGD.h \
    $$PWD/external-libs/include/FrameAccGF.h \
    $$PWD/external-libs/include/Histo.h \
    $$PWD/external-libs/include/Label.h \
    $$PWD/external-libs/include/LabelFileReader.h \
    $$PWD/external-libs/include/LabelServer.h \
    $$PWD/external-libs/include/LabelSet.h \
    $$PWD/external-libs/include/LKVector.h \
    $$PWD/external-libs/include/Matrix.h \
    $$PWD/external-libs/include/Mixture.h \
    $$PWD/external-libs/include/MixtureDict.h \
    $$PWD/external-libs/include/MixtureFileReader.h \
    $$PWD/external-libs/include/MixtureFileReaderAbstract.h \
    $$PWD/external-libs/include/MixtureFileReaderAmiral.h \
    $$PWD/external-libs/include/MixtureFileReaderRaw.h \
    $$PWD/external-libs/include/MixtureFileReaderXml.h \
    $$PWD/external-libs/include/MixtureFileWriter.h \
    $$PWD/external-libs/include/MixtureGD.h \
    $$PWD/external-libs/include/MixtureGDStat.h \
    $$PWD/external-libs/include/MixtureGF.h \
    $$PWD/external-libs/include/MixtureGFStat.h \
    $$PWD/external-libs/include/MixtureServer.h \
    $$PWD/external-libs/include/MixtureServerFileReader.h \
    $$PWD/external-libs/include/MixtureServerFileReaderAbstract.h \
    $$PWD/external-libs/include/MixtureServerFileReaderRaw.h \
    $$PWD/external-libs/include/MixtureServerFileReaderXml.h \
    $$PWD/external-libs/include/MixtureServerFileWriter.h \
    $$PWD/external-libs/include/MixtureStat.h \
    $$PWD/external-libs/include/Object.h \
    $$PWD/external-libs/include/RealVector.h \
    $$PWD/external-libs/include/RefVector.h \
    $$PWD/external-libs/include/Seg.h \
    $$PWD/external-libs/include/SegAbstract.h \
    $$PWD/external-libs/include/SegCluster.h \
    $$PWD/external-libs/include/SegServer.h \
    $$PWD/external-libs/include/SegServerFileReaderAbstract.h \
    $$PWD/external-libs/include/SegServerFileReaderRaw.h \
    $$PWD/external-libs/include/SegServerFileWriter.h \
    $$PWD/external-libs/include/StatServer.h \
    $$PWD/external-libs/include/ULongVector.h \
    $$PWD/external-libs/include/ViterbiAccum.h \
    $$PWD/external-libs/include/XLine.h \
    $$PWD/external-libs/include/XList.h \
    $$PWD/external-libs/include/XListFileReader.h \
    $$PWD/external-libs/include/XmlParser.h \
    $$PWD/dao/FileModelDao.hpp \
    $$PWD/features/FeatureReader.hpp \
    $$PWD/exceptions/simple_exceptions.hpp \
    $$PWD/models/diagonal_model.hpp \
    $$PWD/models/verificator.hpp

SOURCES += \
    $$PWD/utils/utils.cpp \
    $$PWD/models/diagonal_model.cpp \
    $$PWD/models/gmmmodel.cpp \
    $$PWD/models/learning_algo.cpp \
    $$PWD/dao/FileModelDao.cpp \
    $$PWD/features/FeatureReader.cpp \
    $$PWD/models/verificator.cpp

DISTFILES += \
    $$PWD/external-libs/lib/libalize.a






