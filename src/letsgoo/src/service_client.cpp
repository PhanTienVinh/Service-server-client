#include "ros/ros.h"
#include "letsgoo/string_length.h"

int main(int argc, char **argv)
{
    ros::init(argc, argv, "client_node");
    ros::NodeHandle nh;

    ros::ServiceClient client = nh.serviceClient<letsgoo::string_length>("finding_length");

    letsgoo::string_length nhap;
    nhap.request.chuoi = atoll(argv[1]);
    if(client.call(nhap))
    {
        ROS_INFO("Do dai cua chuoi la: %ld", nhap.response.do_dai);
    }
    else
    {
        ROS_ERROR("Failed to call");
        return 1;

    }

    return 0;
}