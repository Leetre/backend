/**
 * Vandy SLAM!
 */
#include <string>
#include<iostream>
#include<algorithm>
#include<fstream>
#include<chrono>
#include<MapPoint.h>

#include<opencv2/core/core.hpp>

#include<System.h>

#define TEST "test"

using namespace std;

struct PointMap {
    PointMap() {}

    int num_pts() {
        return pts.size();
    }

    float pt_at(int vect, int coord) {
        return pts.at(vect).at(coord);
    }

    void add_pt(ORB_SLAM2::MapPoint *pt) {
        if (pt != nullptr) {
            vector<float> new_pt;
            for (int i = 0; i < 3; i++) {
                new_pt.push_back(pt->GetWorldPos().at<float>(i));
            }
            pts.push_back(new_pt);
        } else {
            cout << "null\n";
        }
    }

    vector<vector<float>> pts;
};


struct SLAMMap
{

    ~SLAMMap() {
        delete SLAM;
    }

    vector<double> localize_with_image(string img_path) {
        cv::Mat im = cv::imread(img_path, CV_LOAD_IMAGE_UNCHANGED);
        vector<double> localization;

        SLAM->TrackMonocular(im, get_time_stamp(img_path));

        return localization;
    }

    double get_time_stamp(string img_path) {
        // TODO: complete me! (Extract relative timestamp from path)
        return 0.0;
    }

    SLAMMap(string arg1, string arg2, string arg3): SLAM(new ORB_SLAM2::System(arg1, arg2, ORB_SLAM2::System::MONOCULAR, false)) {

        vector<string> vstrImageFilenames;
        vector<double> vTimestamps;
        string strFile = arg3+"/rgb.txt";
        LoadImages(strFile, vstrImageFilenames, vTimestamps);

        int nImages = vstrImageFilenames.size();

        vector<float> vTimesTrack;
        vTimesTrack.resize(nImages);

        cout << endl << "-------" << endl;
        cout << "Start processing sequence ..." << endl;
        cout << "Images in the sequence: " << nImages << endl << endl;

        // Main loop
        cv::Mat im;
        for(int ni=0; ni<nImages; ni++)
        {
            // Read image from file
            im = cv::imread(arg3+"/"+vstrImageFilenames[ni],CV_LOAD_IMAGE_UNCHANGED);
            double tframe = vTimestamps[ni];

            cout << "tframe is: " << tframe << endl;

            if(im.empty())
            {
                cerr << endl << "Failed to load image at: "
                     << string(arg3) << "/" << vstrImageFilenames[ni] << endl;
                return;
            }

#ifdef COMPILEDWITHC11
            std::chrono::steady_clock::time_point t1 = std::chrono::steady_clock::now();
#else
            std::chrono::monotonic_clock::time_point t1 = std::chrono::monotonic_clock::now();
#endif

            // Pass the image to the SLAM system
            SLAM->TrackMonocular(im,tframe);

#ifdef COMPILEDWITHC11
            std::chrono::steady_clock::time_point t2 = std::chrono::steady_clock::now();
#else
            std::chrono::monotonic_clock::time_point t2 = std::chrono::monotonic_clock::now();
#endif

            double ttrack= std::chrono::duration_cast<std::chrono::duration<double> >(t2 - t1).count();

            vTimesTrack[ni]=ttrack;

            cout << "step took: " << ttrack << " s\n";

            // Wait to load the next frame
            double T=0;
            if(ni<nImages-1)
                T = vTimestamps[ni+1]-tframe;
            else if(ni>0)
                T = tframe-vTimestamps[ni-1];

            if(ttrack<T)
                usleep((T-ttrack)*1e6);
        }
        cout << "done initing\n";
        if (SLAM == nullptr) {
            cout << "is null\n";
        } else {
            cout << "is NOT null \n";
        }
    }

    SLAMMap() {
        string arg1, arg2, arg3;
        string name = TEST;
        get_args(name, arg1, arg2, arg3);

        *this = SLAMMap(arg1, arg2, arg3);
    }

    void check() {
        if (SLAM == nullptr) {
            cout << "is null\n";
        } else {
            cout << "is NOT null \n";
        }
    }

    struct PointMap get_points() {
        struct PointMap pts;
        vector<ORB_SLAM2::MapPoint*> map_pts = SLAM->GetTrackedMapPoints();
        cout << map_pts.size();
        for (ORB_SLAM2::MapPoint* &map_pt : map_pts) {
            pts.add_pt(map_pt);
        }
        return pts;
    }

    void get_args(string &map_name, string &arg1, string &arg2, string &arg3) {
        arg1 = "Vocabulary/ORBvoc.txt";
        if (map_name == TEST) {
            arg2 = "Examples/Monocular/TUM1.yaml";
            arg3 = "./rgbd_dataset_freiburg1_xyz";
        } else {

        }
    }

    string test() {return TEST;}

    ORB_SLAM2::System *SLAM = nullptr;

    void LoadImages(const string &strFile, vector<string> &vstrImageFilenames, vector<double> &vTimestamps)
    {
        cout << strFile << " ------------\n";
        ifstream f;
        f.open(strFile.c_str());

        // skip first three lines
        string s0;
        getline(f,s0);
        getline(f,s0);
        getline(f,s0);

        while(!f.eof())
        {
            string s;
            getline(f,s);
            if(!s.empty())
            {
                stringstream ss;
                ss << s;
                double t;
                string sRGB;
                ss >> t;
                vTimestamps.push_back(t);
                ss >> sRGB;
                vstrImageFilenames.push_back(sRGB);
            }
        }
    }


};


#include <boost/python.hpp>
using namespace boost::python;

BOOST_PYTHON_MODULE(slam_map)
        {
                class_<SLAMMap>("slam_map", init<string, string, string>())
                        .def(init<>())
                        .def("test", &SLAMMap::test)
                        .def("get_pts", &SLAMMap::get_points)
                        .def("check", &SLAMMap::check)
                ;

                class_<PointMap>("point_map", init<>())
                        .def("num_pts", &PointMap::num_pts)
                        .def("pt_at", &PointMap::pt_at)
                ;

        }
