#include "ros/ros.h"
#include "letsgoo/string_length.h"

bool loading(letsgoo::string_length::Request &req, letsgoo::string_length::Response &res)
{
    res.do_dai = req.chuoi.length();

    return true;
}


int main(int argc, char **argv)
{
    ros::init(argc, argv, "server_node");
    ros::NodeHandle nh;

    ros::ServiceServer service = nh.advertiseService("finding_length",loading);

    ros::spin();

    return 0;
}