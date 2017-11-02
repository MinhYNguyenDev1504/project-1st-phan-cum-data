﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DemoDoAnMot.Classes_Kmeans_1
{
    public class AlgorithmKmeans
    {
        //Khai Báo Biến
        private List<EncryptedUser> listAllUsers;   // ==>List các User cần phân cụm
        private int k;                              // ==>k: Số cụm sẽ được phân thành
        public List<Cluster> ListClusters = new List<Cluster>();// ==> List chứa các cụm Cluster được phân cụm ra

        //Constructors
        public AlgorithmKmeans(List<EncryptedUser> listAllUsers, int k)
        {
            this.ListAllUsers = listAllUsers;
            this.K = k;
        }

        public AlgorithmKmeans()
        {
            listAllUsers = new List<EncryptedUser>();
        }

        //Properties
        public List<EncryptedUser> ListAllUsers { get => listAllUsers; set => listAllUsers = value; }
        public int K { get => k; set => k = value; }

        

        //Method (==>Thuật Toán K-mean<==)
        public List<Cluster> runAlgorithm()
        {
            List<Cluster> Clusters = new List<Cluster>();
            GetCentersForClusters();//==>Chọn k centers cho k cluster theo quy luật hàng rào
            //Step 2: Chạy vòng lặp thuật toán K-means
            do
            {
                //--Cập nhật lại trung tâm cụm và xóa list trong cụm để phân nhóm lại các user cho các cụm
                ListClusters.ForEach(c =>
                        { if (c.ListUsers.Count() != 0) { c.updateCenter(); c.ListUsers.Clear(); } });
                //--Dựa vào khoảng cách Euclide để góm các dữ liệu vào các cụm
                //--Nếu khoảng cách của dữ liệu đến center của cụm nào nhỏ nhất thì dữ liệu thuộc cụm đó 
                //--
                foreach (var u in listAllUsers) //Thao tác với mỗi User
                {
                    int index = 0;//--sẽ lưu index của Cụm Cluster sẽ chưa User này
                    double minDistance = double.MaxValue;
                    for (int i = 0; i < K; i++)
                    {
                        double distance = distanceTwoRecords(ListClusters[i].CenterUser, u);
                        if (distance < minDistance)
                        {
                            index = i;
                            minDistance = distance;
                        }
                    }
                    ListClusters[index].ListUsers.Add(u);
                }
            } while (ListClusters.Sum(c => c.Change) != 0);//--> trung bình cụm và center vẫn còn chênh lệch
             return Clusters;
        }

        //Method Lấy k trung tâm cho k cụm theo quy tắc
        public void GetCentersForClusters()
        {
            var step = (int)(listAllUsers.Count() / K);
            for (int i = 0; i < K; i++)
            {
                ListClusters.Add(new Cluster());
                ListClusters[i].CenterUser = listAllUsers[step + step * i - 1];
            }
        }

        //Method tính khoảng cách giữa 2 records User trong dữ liệu
        //Khoảng cách Euclide
        public double distanceTwoRecords(EncryptedUser a, EncryptedUser b)
        {
            return Math.Sqrt(Math.Pow(a.Sex-b.Sex,2)+
                            Math.Pow(a.Age - b.Age, 2) +
                            Math.Pow(a.Birthday - b.Birthday, 2) +
                            Math.Pow(a.Hometown - b.Hometown, 2) +
                            Math.Pow(a.NowLiving - b.NowLiving, 2) +
                            Math.Pow(a.Friends - b.Friends, 2) +
                            Math.Pow(a.LoveStatus - b.LoveStatus, 2) +
                            Math.Pow(a.Followers - b.Followers, 2)); 
        }
    }
}