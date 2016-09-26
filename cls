[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Prefabs/MQ_00_Basic.prefab b/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Prefabs/MQ_00_Basic.prefab[m
[1mindex 99847df..c1ee95d 100644[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Prefabs/MQ_00_Basic.prefab and b/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Prefabs/MQ_00_Basic.prefab differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Prefabs/MQ_01_Ice.prefab b/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Prefabs/MQ_01_Ice.prefab[m
[1mindex b0bd93c..e4ee14d 100644[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Prefabs/MQ_01_Ice.prefab and b/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Prefabs/MQ_01_Ice.prefab differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Prefabs/MQ_02_Boom.prefab b/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Prefabs/MQ_02_Boom.prefab[m
[1mindex 3130b2f..423174c 100644[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Prefabs/MQ_02_Boom.prefab and b/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Prefabs/MQ_02_Boom.prefab differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Prefabs/MQ_03_Zombie.prefab b/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Prefabs/MQ_03_Zombie.prefab[m
[1mindex 27810e3..45a806d 100644[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Prefabs/MQ_03_Zombie.prefab and b/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Prefabs/MQ_03_Zombie.prefab differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Prefabs/MQ_04_Wizard.prefab b/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Prefabs/MQ_04_Wizard.prefab[m
[1mindex 7a8a93c..0c19fcb 100644[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Prefabs/MQ_04_Wizard.prefab and b/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Prefabs/MQ_04_Wizard.prefab differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Scripts/onMQ/onMQ_AnimControll_Basic.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Scripts/onMQ/onMQ_AnimControll_Basic.cs[m
[1mindex 3856d5e..b876228 100644[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Scripts/onMQ/onMQ_AnimControll_Basic.cs[m	
[1m+++ b/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Scripts/onMQ/onMQ_AnimControll_Basic.cs[m	
[36m@@ -52,14 +52,12 @@[m [mpublic void OnLastFram_Attack()[m
                 */[m
 [m
                 int crithit = (int)Random.Range(myFather.GetComponent<onMQVer3>().myAttack * 2, myFather.GetComponent<onMQVer3>().myAttack * 2.8f);[m
[31m-                //onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
[31m-                //onMonster3.Hitmob(crithit, 1);[m
[32m+[m[32m                onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
[32m+[m[32m                onMonster3.Hitmob(crithit, 1);[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myHP -= (int)crithit;[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>().myHP -= (int)crithit;[m
             }[m
             else {[m
[31m-                print("basic hitpoint-1 else ");[m
[31m-                onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
                 onMonster3.Hitmob(myFather.GetComponent<onMQVer3>().myAttack, 0);[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myHP -= myFather.GetComponent<onMQVer3>().myAttack;[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>().myHP -= myFather.GetComponent<onMQVer3>().myAttack;[m
[36m@@ -70,13 +68,12 @@[m [mpublic void OnLastFram_Attack()[m
             int a = Random.Range(0, 101);[m
             if (a < myFather.GetComponent<onMQVer3>().myCritHit) {[m
                 int crithit = (int)Random.Range(myFather.GetComponent<onMQVer3>().myAttack * 2, myFather.GetComponent<onMQVer3>().myAttack * 2.8f);[m
[31m-                //onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
[31m-                //onMonster3.Hitmob(crithit, 1);[m
[32m+[m[32m                onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
[32m+[m[32m                onMonster3.Hitmob(crithit, 1);[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myHP -= (int)crithit;[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>().myHP -= (int)crithit;[m
             }[m
             else {[m
[31m-                onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
                 onMonster3.Hitmob(myFather.GetComponent<onMQVer3>().myAttack, 0);[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myHP -= myFather.GetComponent<onMQVer3>().myAttack;[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>().myHP -= myFather.GetComponent<onMQVer3>().myAttack/ myFather.GetComponent<onMQVer3>().myAttack;[m
[36m@@ -87,13 +84,12 @@[m [mpublic void OnLastFram_Attack()[m
             int a = Random.Range(0, 101);[m
             if (a < myFather.GetComponent<onMQVer3>().myCritHit) {[m
                 int crithit = (int)Random.Range(myFather.GetComponent<onMQVer3>().myAttack * 2, myFather.GetComponent<onMQVer3>().myAttack * 2.8f);[m
[31m-                //onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
[31m-                //onMonster3.Hitmob(crithit, 1);[m
[32m+[m[32m                onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
[32m+[m[32m                onMonster3.Hitmob(crithit, 1);[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myHP -= (int)crithit;[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>().myHP -= (int)crithit;[m
             }[m
             else {[m
[31m-                onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
                 onMonster3.Hitmob(myFather.GetComponent<onMQVer3>().myAttack, 0);[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myHP -= myFather.GetComponent<onMQVer3>().myAttack;[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>().myHP -= myFather.GetComponent<onMQVer3>().myAttack/ myFather.GetComponent<onMQVer3>().myAttack;[m
[36m@@ -105,13 +101,12 @@[m [mpublic void OnLastFram_Attack()[m
             if (a < myFather.GetComponent<onMQVer3>().myCritHit) {[m
                 int crithit = (int)Random.Range(myFather.GetComponent<onMQVer3>().myAttack * 2, myFather.GetComponent<onMQVer3>().myAttack * 2.8f);[m
                 onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
[31m-                //onMonster3.Hitmob(crithit, 1);[m
[32m+[m[32m                onMonster3.Hitmob(crithit, 1);[m
                 GameObject.Find("hitpoint-4").GetComponent<OnLookAtPoint>().myHP -= crithit;[m
                 GameObject.Find("hitpoint-5").GetComponent<OnLookAtPoint>().myHP -= crithit;[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>().myHP -= crithit;[m
             }[m
             else {[m
[31m-                onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
                 onMonster3.Hitmob(myFather.GetComponent<onMQVer3>().myAttack, 0);[m
                 GameObject.Find("hitpoint-4").GetComponent<OnLookAtPoint>().myHP -= myFather.GetComponent<onMQVer3>().myAttack;[m
                 GameObject.Find("hitpoint-5").GetComponent<OnLookAtPoint>().myHP -= myFather.GetComponent<onMQVer3>().myAttack;[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Scripts/onMQ/onMQ_AnimControll_Boom.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Scripts/onMQ/onMQ_AnimControll_Boom.cs[m
[1mindex 6c02bb8..1dae977 100644[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Scripts/onMQ/onMQ_AnimControll_Boom.cs[m	
[1m+++ b/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Scripts/onMQ/onMQ_AnimControll_Boom.cs[m	
[36m@@ -51,13 +51,12 @@[m [mpublic void OnLastFram_Attack()[m
                 [m
                 */[m
                 int crithit = (int)Random.Range(myFather.GetComponent<onMQVer3>().myAttack * 2, myFather.GetComponent<onMQVer3>().myAttack * 2.8f);[m
[31m-                //onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
[31m-                //onMonster3.Hitmob(crithit, 1);[m
[32m+[m[32m                onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
[32m+[m[32m                onMonster3.Hitmob(crithit, 1);[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myHP -= (int)crithit;[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>().myHP -= (int)crithit;[m
             }[m
             else {[m
[31m-                onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
                 onMonster3.Hitmob(myFather.GetComponent<onMQVer3>().myAttack, 0);[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myHP -= myFather.GetComponent<onMQVer3>().myAttack;[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>().myHP -= myFather.GetComponent<onMQVer3>().myAttack;[m
[36m@@ -69,13 +68,12 @@[m [mpublic void OnLastFram_Attack()[m
             if (a < myFather.GetComponent<onMQVer3>().myCritHit)[m
             {[m
                 int crithit = (int)Random.Range(myFather.GetComponent<onMQVer3>().myAttack * 2, myFather.GetComponent<onMQVer3>().myAttack * 2.8f);[m
[31m-                //onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
[31m-                //onMonster3.Hitmob(crithit, 1);[m
[32m+[m[32m                onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
[32m+[m[32m                onMonster3.Hitmob(crithit, 1);[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myHP -= (int)crithit;[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>().myHP -= (int)crithit;[m
             }[m
             else {[m
[31m-                onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
                 onMonster3.Hitmob(myFather.GetComponent<onMQVer3>().myAttack, 0);[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myHP -= myFather.GetComponent<onMQVer3>().myAttack;[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>().myHP -= myFather.GetComponent<onMQVer3>().myAttack / myFather.GetComponent<onMQVer3>().myAttack;[m
[36m@@ -87,13 +85,12 @@[m [mpublic void OnLastFram_Attack()[m
             if (a < myFather.GetComponent<onMQVer3>().myCritHit)[m
             {[m
                 int crithit = (int)Random.Range(myFather.GetComponent<onMQVer3>().myAttack * 2, myFather.GetComponent<onMQVer3>().myAttack * 2.8f);[m
[31m-                //onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
[31m-                //onMonster3.Hitmob(crithit, 1);[m
[32m+[m[32m                onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
[32m+[m[32m                onMonster3.Hitmob(crithit, 1);[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myHP -= (int)crithit;[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>().myHP -= (int)crithit;[m
             }[m
             else {[m
[31m-                onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
                 onMonster3.Hitmob(myFather.GetComponent<onMQVer3>().myAttack, 0);[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myHP -= myFather.GetComponent<onMQVer3>().myAttack;[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>().myHP -= myFather.GetComponent<onMQVer3>().myAttack / myFather.GetComponent<onMQVer3>().myAttack;[m
[36m@@ -105,14 +102,13 @@[m [mpublic void OnLastFram_Attack()[m
             if (a < myFather.GetComponent<onMQVer3>().myCritHit)[m
             {[m
                 int crithit = (int)Random.Range(myFather.GetComponent<onMQVer3>().myAttack * 2, myFather.GetComponent<onMQVer3>().myAttack * 2.8f);[m
[31m-                //onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
[31m-                //onMonster3.Hitmob(crithit, 1);[m
[32m+[m[32m                onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
[32m+[m[32m                onMonster3.Hitmob(crithit, 1);[m
                 GameObject.Find("hitpoint-4").GetComponent<OnLookAtPoint>().myHP -= crithit;[m
                 GameObject.Find("hitpoint-5").GetComponent<OnLookAtPoint>().myHP -= crithit;[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>().myHP -= crithit;[m
             }[m
             else {[m
[31m-                onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
                 onMonster3.Hitmob(myFather.GetComponent<onMQVer3>().myAttack, 0);[m
                 GameObject.Find("hitpoint-4").GetComponent<OnLookAtPoint>().myHP -= myFather.GetComponent<onMQVer3>().myAttack;[m
                 GameObject.Find("hitpoint-5").GetComponent<OnLookAtPoint>().myHP -= myFather.GetComponent<onMQVer3>().myAttack;[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Scripts/onMQ/onMQ_AnimControll_Ice.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Scripts/onMQ/onMQ_AnimControll_Ice.cs[m
[1mindex 34774a8..86ac77d 100644[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Scripts/onMQ/onMQ_AnimControll_Ice.cs[m	
[1m+++ b/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Scripts/onMQ/onMQ_AnimControll_Ice.cs[m	
[36m@@ -51,13 +51,12 @@[m [mpublic void OnLastFram_Attack()[m
                 [m
                 */[m
                 int crithit = (int)Random.Range(myFather.GetComponent<onMQVer3>().myAttack * 2, myFather.GetComponent<onMQVer3>().myAttack * 2.8f);[m
[31m-                //onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
[31m-                //onMonster3.Hitmob(crithit, 1);[m
[32m+[m[32m                onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
[32m+[m[32m                onMonster3.Hitmob(crithit, 1);[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myHP -= (int)crithit;[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>().myHP -= (int)crithit;[m
             }[m
             else {[m
[31m-                onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
                 onMonster3.Hitmob(myFather.GetComponent<onMQVer3>().myAttack, 0);[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myHP -= myFather.GetComponent<onMQVer3>().myAttack;[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>().myHP -= myFather.GetComponent<onMQVer3>().myAttack;[m
[36m@@ -69,13 +68,12 @@[m [mpublic void OnLastFram_Attack()[m
             if (a < myFather.GetComponent<onMQVer3>().myCritHit)[m
             {[m
                 int crithit = (int)Random.Range(myFather.GetComponent<onMQVer3>().myAttack * 2, myFather.GetComponent<onMQVer3>().myAttack * 2.8f);[m
[31m-                //onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
[31m-                //onMonster3.Hitmob(crithit, 1);[m
[32m+[m[32m                onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
[32m+[m[32m                onMonster3.Hitmob(crithit, 1);[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myHP -= (int)crithit;[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>().myHP -= (int)crithit;[m
             }[m
             else {[m
[31m-                onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
                 onMonster3.Hitmob(myFather.GetComponent<onMQVer3>().myAttack, 0);[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myHP -= myFather.GetComponent<onMQVer3>().myAttack;[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>().myHP -= myFather.GetComponent<onMQVer3>().myAttack / myFather.GetComponent<onMQVer3>().myAttack;[m
[36m@@ -87,13 +85,12 @@[m [mpublic void OnLastFram_Attack()[m
             if (a < myFather.GetComponent<onMQVer3>().myCritHit)[m
             {[m
                 int crithit = (int)Random.Range(myFather.GetComponent<onMQVer3>().myAttack * 2, myFather.GetComponent<onMQVer3>().myAttack * 2.8f);[m
[31m-                //onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
[31m-                //onMonster3.Hitmob(crithit, 1);[m
[32m+[m[32m                onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
[32m+[m[32m                onMonster3.Hitmob(crithit, 1);[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myHP -= (int)crithit;[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>().myHP -= (int)crithit;[m
             }[m
             else {[m
[31m-                onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
                 onMonster3.Hitmob(myFather.GetComponent<onMQVer3>().myAttack, 0);[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myHP -= myFather.GetComponent<onMQVer3>().myAttack;[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>().myHP -= myFather.GetComponent<onMQVer3>().myAttack / myFather.GetComponent<onMQVer3>().myAttack;[m
[36m@@ -105,14 +102,13 @@[m [mpublic void OnLastFram_Attack()[m
             if (a < myFather.GetComponent<onMQVer3>().myCritHit)[m
             {[m
                 int crithit = (int)Random.Range(myFather.GetComponent<onMQVer3>().myAttack * 2, myFather.GetComponent<onMQVer3>().myAttack * 2.8f);[m
[31m-                //onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
[31m-                //onMonster3.Hitmob(crithit, 1);[m
[32m+[m[32m                onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
[32m+[m[32m                onMonster3.Hitmob(crithit, 1);[m
                 GameObject.Find("hitpoint-4").GetComponent<OnLookAtPoint>().myHP -= crithit;[m
                 GameObject.Find("hitpoint-5").GetComponent<OnLookAtPoint>().myHP -= crithit;[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>().myHP -= crithit;[m
             }[m
             else {[m
[31m-                onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
                 onMonster3.Hitmob(myFather.GetComponent<onMQVer3>().myAttack, 0);[m
                 GameObject.Find("hitpoint-4").GetComponent<OnLookAtPoint>().myHP -= myFather.GetComponent<onMQVer3>().myAttack;[m
                 GameObject.Find("hitpoint-5").GetComponent<OnLookAtPoint>().myHP -= myFather.GetComponent<onMQVer3>().myAttack;[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Scripts/onMQ/onMQ_AnimControll_Wizard.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Scripts/onMQ/onMQ_AnimControll_Wizard.cs[m
[1mindex 32a6a09..d0d77f6 100644[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Scripts/onMQ/onMQ_AnimControll_Wizard.cs[m	
[1m+++ b/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Scripts/onMQ/onMQ_AnimControll_Wizard.cs[m	
[36m@@ -51,13 +51,12 @@[m [mpublic void OnLastFram_Attack()[m
                 [m
                 */[m
                 int crithit = (int)Random.Range(myFather.GetComponent<onMQVer3>().myAttack * 2, myFather.GetComponent<onMQVer3>().myAttack * 2.8f);[m
[31m-                //onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
[31m-                //onMonster3.Hitmob(crithit, 1);[m
[32m+[m[32m                onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
[32m+[m[32m                onMonster3.Hitmob(crithit, 1);[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myHP -= (int)crithit;[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>().myHP -= (int)crithit;[m
             }[m
             else {[m
[31m-                onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
                 onMonster3.Hitmob(myFather.GetComponent<onMQVer3>().myAttack, 0);[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myHP -= myFather.GetComponent<onMQVer3>().myAttack;[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>().myHP -= myFather.GetComponent<onMQVer3>().myAttack;[m
[36m@@ -69,13 +68,12 @@[m [mpublic void OnLastFram_Attack()[m
             if (a < myFather.GetComponent<onMQVer3>().myCritHit)[m
             {[m
                 int crithit = (int)Random.Range(myFather.GetComponent<onMQVer3>().myAttack * 2, myFather.GetComponent<onMQVer3>().myAttack * 2.8f);[m
[31m-                //onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
[31m-                //onMonster3.Hitmob(crithit, 1);[m
[32m+[m[32m                onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
[32m+[m[32m                onMonster3.Hitmob(crithit, 1);[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myHP -= (int)crithit;[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>().myHP -= (int)crithit;[m
             }[m
             else {[m
[31m-                onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
                 onMonster3.Hitmob(myFather.GetComponent<onMQVer3>().myAttack, 0);[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myHP -= myFather.GetComponent<onMQVer3>().myAttack;[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>().myHP -= myFather.GetComponent<onMQVer3>().myAttack / myFather.GetComponent<onMQVer3>().myAttack;[m
[36m@@ -87,13 +85,12 @@[m [mpublic void OnLastFram_Attack()[m
             if (a < myFather.GetComponent<onMQVer3>().myCritHit)[m
             {[m
                 int crithit = (int)Random.Range(myFather.GetComponent<onMQVer3>().myAttack * 2, myFather.GetComponent<onMQVer3>().myAttack * 2.8f);[m
[31m-                //onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
[31m-                //onMonster3.Hitmob(crithit, 1);[m
[32m+[m[32m                onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
[32m+[m[32m                onMonster3.Hitmob(crithit, 1);[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myHP -= (int)crithit;[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>().myHP -= (int)crithit;[m
             }[m
             else {[m
[31m-                onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
                 onMonster3.Hitmob(myFather.GetComponent<onMQVer3>().myAttack, 0);[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myHP -= myFather.GetComponent<onMQVer3>().myAttack;[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>().myHP -= myFather.GetComponent<onMQVer3>().myAttack / myFather.GetComponent<onMQVer3>().myAttack;[m
[36m@@ -105,14 +102,13 @@[m [mpublic void OnLastFram_Attack()[m
             if (a < myFather.GetComponent<onMQVer3>().myCritHit)[m
             {[m
                 int crithit = (int)Random.Range(myFather.GetComponent<onMQVer3>().myAttack * 2, myFather.GetComponent<onMQVer3>().myAttack * 2.8f);[m
[31m-                //onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
[31m-                //onMonster3.Hitmob(crithit, 1);[m
[32m+[m[32m                onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
[32m+[m[32m                onMonster3.Hitmob(crithit, 1);[m
                 GameObject.Find("hitpoint-4").GetComponent<OnLookAtPoint>().myHP -= crithit;[m
                 GameObject.Find("hitpoint-5").GetComponent<OnLookAtPoint>().myHP -= crithit;[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>().myHP -= crithit;[m
             }[m
             else {[m
[31m-                onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
                 onMonster3.Hitmob(myFather.GetComponent<onMQVer3>().myAttack, 0);[m
                 GameObject.Find("hitpoint-4").GetComponent<OnLookAtPoint>().myHP -= myFather.GetComponent<onMQVer3>().myAttack;[m
                 GameObject.Find("hitpoint-5").GetComponent<OnLookAtPoint>().myHP -= myFather.GetComponent<onMQVer3>().myAttack;[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Scripts/onMQ/onMQ_AnimControll_Zombie.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Scripts/onMQ/onMQ_AnimControll_Zombie.cs[m
[1mindex b022fcc..ab07a6f 100644[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Scripts/onMQ/onMQ_AnimControll_Zombie.cs[m	
[1m+++ b/P_MQ_2016 0908-0909Digital Taipei/Assets/06_GameScene/Ver3/Scripts/onMQ/onMQ_AnimControll_Zombie.cs[m	
[36m@@ -51,8 +51,8 @@[m [mpublic void OnLastFram_Attack()[m
                 [m
                 */[m
                 int crithit = (int)Random.Range(myFather.GetComponent<onMQVer3>().myAttack * 2, myFather.GetComponent<onMQVer3>().myAttack * 2.8f);[m
[31m-                //onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
[31m-                //onMonster3.Hitmob(crithit, 1);[m
[32m+[m[32m                onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
[32m+[m[32m                onMonster3.Hitmob(crithit, 1);[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myHP -= (int)crithit;[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>().myHP -= (int)crithit;[m
             }[m
[36m@@ -68,8 +68,8 @@[m [mpublic void OnLastFram_Attack()[m
             if (a < myFather.GetComponent<onMQVer3>().myCritHit)[m
             {[m
                 int crithit = (int)Random.Range(myFather.GetComponent<onMQVer3>().myAttack * 2, myFather.GetComponent<onMQVer3>().myAttack * 2.8f);[m
[31m-                //onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
[31m-                //onMonster3.Hitmob(crithit, 1);[m
[32m+[m[32m                onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
[32m+[m[32m                onMonster3.Hitmob(crithit, 1);[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myHP -= (int)crithit;[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>().myHP -= (int)crithit;[m
             }[m
[36m@@ -85,8 +85,8 @@[m [mpublic void OnLastFram_Attack()[m
             if (a < myFather.GetComponent<onMQVer3>().myCritHit)[m
             {[m
                 int crithit = (int)Random.Range(myFather.GetComponent<onMQVer3>().myAttack * 2, myFather.GetComponent<onMQVer3>().myAttack * 2.8f);[m
[31m-                //onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
[31m-                //onMonster3.Hitmob(crithit, 1);[m
[32m+[m[32m                onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
[32m+[m[32m                onMonster3.Hitmob(crithit, 1);[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myHP -= (int)crithit;[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>().myHP -= (int)crithit;[m
             }[m
[36m@@ -102,14 +102,13 @@[m [mpublic void OnLastFram_Attack()[m
             if (a < myFather.GetComponent<onMQVer3>().myCritHit)[m
             {[m
                 int crithit = (int)Random.Range(myFather.GetComponent<onMQVer3>().myAttack * 2, myFather.GetComponent<onMQVer3>().myAttack * 2.8f);[m
[31m-                //onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
[31m-                //onMonster3.Hitmob(crithit, 1);[m
[32m+[m[32m                onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
[32m+[m[32m                onMonster3.Hitmob(crithit, 1);[m
                 GameObject.Find("hitpoint-4").GetComponent<OnLookAtPoint>().myHP -= crithit;[m
                 GameObject.Find("hitpoint-5").GetComponent<OnLookAtPoint>().myHP -= crithit;[m
                 myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>().myHP -= crithit;[m
             }[m
             else {[m
[31m-                onMonster3 = myFather.GetComponent<onMQVer3>().myTargetPoint.GetComponent<OnLookAtPoint>().myFatherObject.GetComponent<onMonsterVer3>();[m
                 onMonster3.Hitmob(myFather.GetComponent<onMQVer3>().myAttack, 0);[m
                 GameObject.Find("hitpoint-4").GetComponent<OnLookAtPoint>().myHP -= myFather.GetComponent<onMQVer3>().myAttack;[m
                 GameObject.Find("hitpoint-5").GetComponent<OnLookAtPoint>().myHP -= myFather.GetComponent<onMQVer3>().myAttack;[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/CameraTest.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/CameraTest.meta[m
[1mdeleted file mode 100644[m
[1mindex 74e6e3b..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/CameraTest.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,9 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: f8b7d1c16c9b0d043b679598ed82d899[m
[31m-folderAsset: yes[m
[31m-timeCreated: 1474876500[m
[31m-licenseType: Free[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[31m-  assetBundleName: [m
[31m-  assetBundleVariant: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/CameraTest/CameraTest.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/CameraTest/CameraTest.unity[m
[1mdeleted file mode 100644[m
[1mindex 55db5e9..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/CameraTest/CameraTest.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/CameraTest/CameraTest.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/CameraTest/CameraTest.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex 076b87d..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/CameraTest/CameraTest.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: f2cd0056f16f0d3469fda6e9bacf013b[m
[31m-timeCreated: 1474876479[m
[31m-licenseType: Free[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[31m-  assetBundleName: [m
[31m-  assetBundleVariant: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/CameraTest/onCamera_dtg.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/CameraTest/onCamera_dtg.cs[m
[1mdeleted file mode 100644[m
[1mindex bfd7c7d..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/CameraTest/onCamera_dtg.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,76 +0,0 @@[m
[31m-﻿using System.Collections;[m
[31m-using System.Collections.Generic;[m
[31m-using UnityEngine;[m
[31m-[m
[31m-public class onCamera_dtg : MonoBehaviour {[m
[31m-    public float myCameraRotationSpeed;[m
[31m-    public int myCameraMod;[m
[31m-    public GameObject myFather;[m
[31m-    // Use this for initialization[m
[31m-    void Start () {[m
[31m-		[m
[31m-	}[m
[31m-	[m
[31m-	// Update is called once per frame[m
[31m-	void Update () {[m
[31m-        if (Input.GetMouseButtonDown(0)) {[m
[31m-            if (myCameraMod > 3) { myCameraMod = 0; }[m
[31m-            else {[m
[31m-                Quaternion rotate = myFather.transform.rotation;[m
[31m-                print("rotate to vector3 = " + Quaternion.ToEulerAngles(rotate));[m
[31m-                [m
[31m-                myCameraMod++;[m
[31m-            }[m
[31m-            //iTween.RotateTo(gameObject, new Vector3(0, 10, 0), 1);[m
[31m-            //transform.Rotate(new Vector3(0, 1, 0));[m
[31m-[m
[31m-        }[m
[31m-        if (Input.GetMouseButton(1)) {[m
[31m-            transform.Rotate(new Vector3(0, -1, 0));[m
[31m-        }[m
[31m-        CameraRotationFN();[m
[31m-    }[m
[31m-[m
[31m-    /*[m
[31m-    大眼   ->rotation(0,0,0)      position(0,0.035,0)   camera Fild of View:30[m
[31m-    左副眼 ->rotation(0,-115,0)   position(0,,0)   camera Fild of View: 15[m
[31m-    左翅膀 ->rotation(0,-48,0)       position(0,,0)   camera Fild of View:[m
[31m-    右副眼 ->rotation(0,98,0)       position(0,,0)   camera Fild of View:[m
[31m-    右翅膀 ->rotation(0,60,0)       position(0,,0)   camera Fild of View:[m
[31m-        [m
[31m-        */[m
[31m-    public void CameraRotationFN() {[m
[31m-        Quaternion rotate = myFather.transform.rotation;[m
[31m-        [m
[31m-        switch (myCameraMod) {[m
[31m-            case 0:[m
[31m-                //rotate = Quaternion.Euler(0, 0, 0);[m
[31m-                //gameObject.transform.rotation = Quaternion.Lerp(gameObject.transform.rotation, rotate, Time.deltaTime * myCameraRotationSpeed);[m
[31m-                Vector3 aa = Quaternion.ToEulerAngles(rotate);[m
[31m-                iTween.RotateTo(gameObject, aa, 1);[m
[31m-                break;[m
[31m-            case 1:[m
[31m-                //rotate = Quaternion.Euler(0, -115, 0);[m
[31m-                //rotate.y = Quaternion.[m
[31m-                gameObject.transform.rotation = Quaternion.Lerp(gameObject.transform.rotation, rotate, Time.deltaTime * myCameraRotationSpeed);[m
[31m-                //iTween.RotateTo(gameObject, new Vector3(0, -115, 0), 1);[m
[31m-                break;[m
[31m-            case 2:[m
[31m-                rotate = Quaternion.Euler(0, -48, 0);[m
[31m-                gameObject.transform.rotation = Quaternion.Lerp(gameObject.transform.rotation, rotate, Time.deltaTime * myCameraRotationSpeed);[m
[31m-                //iTween.RotateTo(gameObject, new Vector3(0, -48, 0), 1);[m
[31m-                break;[m
[31m-            case 3:[m
[31m-                rotate = Quaternion.Euler(0, 98, 0);[m
[31m-                gameObject.transform.rotation = Quaternion.Lerp(gameObject.transform.rotation, rotate, Time.deltaTime * myCameraRotationSpeed);[m
[31m-                //iTween.RotateTo(gameObject, new Vector3(0, 98, 0), 1);[m
[31m-                break;[m
[31m-            case 4:[m
[31m-                rotate = Quaternion.Euler(0, 60, 0);[m
[31m-                gameObject.transform.rotation = Quaternion.Lerp(gameObject.transform.rotation, rotate, Time.deltaTime * myCameraRotationSpeed);[m
[31m-                //iTween.RotateTo(gameObject, new Vector3(0, 60, 0), 1);[m
[31m-                break;[m
[31m-        }[m
[31m-    }[m
[31m-}[m
[31m- [m
\ No newline at end of file[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/CameraTest/onCamera_dtg.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/CameraTest/onCamera_dtg.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex 89a3643..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/CameraTest/onCamera_dtg.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,12 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 870bdf7ed8ad56b41999641aec5b427f[m
[31m-timeCreated: 1474876565[m
[31m-licenseType: Free[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[31m-  assetBundleName: [m
[31m-  assetBundleVariant: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples.meta[m
[1mdeleted file mode 100644[m
[1mindex 154411b..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,9 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: bed92227cac930048bc7579ac2de95db[m
[31m-folderAsset: yes[m
[31m-timeCreated: 1474877626[m
[31m-licenseType: Free[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[31m-  assetBundleName: [m
[31m-  assetBundleVariant: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob.meta[m
[1mdeleted file mode 100644[m
[1mindex 29c73be..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 2580bf9f7ec624ae692238aea5400d4a[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Images.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Images.meta[m
[1mdeleted file mode 100644[m
[1mindex c7f92db..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Images.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: e350f5b77fece4ae3869edd65f8ec7c0[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Images/BlastArea.jpg b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Images/BlastArea.jpg[m
[1mdeleted file mode 100644[m
[1mindex e967f2b..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Images/BlastArea.jpg and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Images/BlastArea.jpg.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Images/BlastArea.jpg.meta[m
[1mdeleted file mode 100644[m
[1mindex bc6bec9..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Images/BlastArea.jpg.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: a461790e82d844e579b01518e3efde0a[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 0[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 1[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: -1[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: -1[m
[31m-    aniso: -1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: -1[m
[31m-  nPOTScale: 1[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: 5[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Images/crosshair.png b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Images/crosshair.png[m
[1mdeleted file mode 100644[m
[1mindex 66ad69f..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Images/crosshair.png and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Images/crosshair.png.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Images/crosshair.png.meta[m
[1mdeleted file mode 100644[m
[1mindex ed77b8d..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Images/crosshair.png.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: cc139a2562c954d24906ff0ac4cf9bb5[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 0[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 1[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: -1[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: 2[m
[31m-    aniso: 1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: 0[m
[31m-  nPOTScale: 1[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: 5[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Images/innerGlow.png b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Images/innerGlow.png[m
[1mdeleted file mode 100644[m
[1mindex 5249604..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Images/innerGlow.png and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Images/innerGlow.png.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Images/innerGlow.png.meta[m
[1mdeleted file mode 100644[m
[1mindex 6c9e625..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Images/innerGlow.png.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 0f5791f6196e343e18ddad5ea7ccebe5[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 0[m
[31m-    linearTexture: 1[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 1[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: -3[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: -1[m
[31m-    aniso: 1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: 1[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: 2[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Materials.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Materials.meta[m
[1mdeleted file mode 100644[m
[1mindex 7f9107a..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Materials.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 6883c5609beab483ba6551ca9e7054a0[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Materials/blastarea.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Materials/blastarea.mat[m
[1mdeleted file mode 100644[m
[1mindex 8d93815..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Materials/blastarea.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Materials/blastarea.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Materials/blastarea.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex d4b630e..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Materials/blastarea.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 55b8dc801242c4a29ac899e0f70b5730[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Materials/bomb.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Materials/bomb.mat[m
[1mdeleted file mode 100644[m
[1mindex 5fed520..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Materials/bomb.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Materials/bomb.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Materials/bomb.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex 8ef774b..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Materials/bomb.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 20a6e331f63a944708f17a7c9cce91b2[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Materials/crosshair.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Materials/crosshair.mat[m
[1mdeleted file mode 100644[m
[1mindex 3ac5a75..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Materials/crosshair.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Materials/crosshair.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Materials/crosshair.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex 5da0e96..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Materials/crosshair.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: a75b43325b83f4aecb46116373c53863[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Models.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Models.meta[m
[1mdeleted file mode 100644[m
[1mindex e1012ab..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Models.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: ff1844e9b9967455ab5e4e2724a2779d[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Models/Materials.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Models/Materials.meta[m
[1mdeleted file mode 100644[m
[1mindex 60b4bb8..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Models/Materials.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: ada3b87c393024e10a9abb151c2aadb6[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Models/Materials/SimplePlane-lambert1.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Models/Materials/SimplePlane-lambert1.mat[m
[1mdeleted file mode 100644[m
[1mindex 4f19cd0..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Models/Materials/SimplePlane-lambert1.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Models/Materials/SimplePlane-lambert1.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Models/Materials/SimplePlane-lambert1.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex 0948c59..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Models/Materials/SimplePlane-lambert1.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 2a7b105f3ee2e4c4a98305de1e60a1cd[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Models/Materials/SimpleSphere-lambert1.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Models/Materials/SimpleSphere-lambert1.mat[m
[1mdeleted file mode 100644[m
[1mindex d3446e2..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Models/Materials/SimpleSphere-lambert1.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Models/Materials/SimpleSphere-lambert1.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Models/Materials/SimpleSphere-lambert1.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex 0955631..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Models/Materials/SimpleSphere-lambert1.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: edbb8aed09608471299aa5b3c9494bf8[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Models/SimplePlane.fbx b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Models/SimplePlane.fbx[m
[1mdeleted file mode 100644[m
[1mindex 9a699f0..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Models/SimplePlane.fbx and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Models/SimplePlane.fbx.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Models/SimplePlane.fbx.meta[m
[1mdeleted file mode 100644[m
[1mindex eafa70d..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Models/SimplePlane.fbx.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,61 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 293263e1929984e0e9baaf8b110f00f3[m
[31m-ModelImporter:[m
[31m-  serializedVersion: 15[m
[31m-  fileIDToRecycleName:[m
[31m-    100000: //RootNode[m
[31m-    400000: //RootNode[m
[31m-    2300000: //RootNode[m
[31m-    3300000: //RootNode[m
[31m-    4300000: pPlane1[m
[31m-    11100000: //RootNode[m
[31m-  materials:[m
[31m-    importMaterials: 1[m
[31m-    materialName: 3[m
[31m-    materialSearch: 1[m
[31m-  animations:[m
[31m-    legacyGenerateAnimations: 4[m
[31m-    bakeSimulation: 0[m
[31m-    animationCompression: 1[m
[31m-    animationRotationError: .5[m
[31m-    animationPositionError: .5[m
[31m-    animationScaleError: .5[m
[31m-    animationWrapMode: 0[m
[31m-    clipAnimations: [][m
[31m-    isReadable: 1[m
[31m-  meshes:[m
[31m-    lODScreenPercentages: [][m
[31m-    globalScale: 1[m
[31m-    meshCompression: 0[m
[31m-    addColliders: 0[m
[31m-    swapUVChannels: 0[m
[31m-    generateSecondaryUV: 0[m
[31m-    useFileUnits: 1[m
[31m-    optimizeMeshForGPU: 1[m
[31m-    secondaryUVAngleDistortion: 8[m
[31m-    secondaryUVAreaDistortion: 15.000001[m
[31m-    secondaryUVHardAngle: 88[m
[31m-    secondaryUVPackMargin: 4[m
[31m-  tangentSpace:[m
[31m-    normalSmoothAngle: 60[m
[31m-    splitTangentsAcrossUV: 1[m
[31m-    normalImportMode: 0[m
[31m-    tangentImportMode: 1[m
[31m-  importAnimation: 1[m
[31m-  copyAvatar: 0[m
[31m-  humanDescription:[m
[31m-    human: [][m
[31m-    skeleton: [][m
[31m-    handles: [][m
[31m-    armTwist: .5[m
[31m-    foreArmTwist: .5[m
[31m-    upperLegTwist: .5[m
[31m-    legTwist: .5[m
[31m-    armStretch: .0500000007[m
[31m-    legStretch: .0500000007[m
[31m-    feetSpacing: 0[m
[31m-    rootMotionBoneName: [m
[31m-  lastHumanDescriptionAvatarSource: {instanceID: 0}[m
[31m-  additionalBone: 0[m
[31m-  animationType: 1[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Models/SimpleSphere.fbx b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Models/SimpleSphere.fbx[m
[1mdeleted file mode 100644[m
[1mindex 9d7ea1e..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Models/SimpleSphere.fbx and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Models/SimpleSphere.fbx.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Models/SimpleSphere.fbx.meta[m
[1mdeleted file mode 100644[m
[1mindex 2fde8c1..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Models/SimpleSphere.fbx.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,61 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: bd7fd8b797872451d87345ca72fc8504[m
[31m-ModelImporter:[m
[31m-  serializedVersion: 15[m
[31m-  fileIDToRecycleName:[m
[31m-    100000: //RootNode[m
[31m-    400000: //RootNode[m
[31m-    2300000: //RootNode[m
[31m-    3300000: //RootNode[m
[31m-    4300000: pSphere1[m
[31m-    11100000: //RootNode[m
[31m-  materials:[m
[31m-    importMaterials: 1[m
[31m-    materialName: 3[m
[31m-    materialSearch: 1[m
[31m-  animations:[m
[31m-    legacyGenerateAnimations: 4[m
[31m-    bakeSimulation: 0[m
[31m-    animationCompression: 1[m
[31m-    animationRotationError: .5[m
[31m-    animationPositionError: .5[m
[31m-    animationScaleError: .5[m
[31m-    animationWrapMode: 0[m
[31m-    clipAnimations: [][m
[31m-    isReadable: 1[m
[31m-  meshes:[m
[31m-    lODScreenPercentages: [][m
[31m-    globalScale: 1[m
[31m-    meshCompression: 0[m
[31m-    addColliders: 0[m
[31m-    swapUVChannels: 0[m
[31m-    generateSecondaryUV: 0[m
[31m-    useFileUnits: 1[m
[31m-    optimizeMeshForGPU: 1[m
[31m-    secondaryUVAngleDistortion: 8[m
[31m-    secondaryUVAreaDistortion: 15.000001[m
[31m-    secondaryUVHardAngle: 88[m
[31m-    secondaryUVPackMargin: 4[m
[31m-  tangentSpace:[m
[31m-    normalSmoothAngle: 60[m
[31m-    splitTangentsAcrossUV: 1[m
[31m-    normalImportMode: 0[m
[31m-    tangentImportMode: 1[m
[31m-  importAnimation: 1[m
[31m-  copyAvatar: 0[m
[31m-  humanDescription:[m
[31m-    human: [][m
[31m-    skeleton: [][m
[31m-    handles: [][m
[31m-    armTwist: .5[m
[31m-    foreArmTwist: .5[m
[31m-    upperLegTwist: .5[m
[31m-    legTwist: .5[m
[31m-    armStretch: .0500000007[m
[31m-    legStretch: .0500000007[m
[31m-    feetSpacing: 0[m
[31m-    rootMotionBoneName: [m
[31m-  lastHumanDescriptionAvatarSource: {instanceID: 0}[m
[31m-  additionalBone: 0[m
[31m-  animationType: 1[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Prefabs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Prefabs.meta[m
[1mdeleted file mode 100644[m
[1mindex 98cd513..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Prefabs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 2a04fad59517a4f70ba58b9bd50fb81a[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Prefabs/BombC#.prefab b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Prefabs/BombC#.prefab[m
[1mdeleted file mode 100644[m
[1mindex 5c3f6cd..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Prefabs/BombC#.prefab and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Prefabs/BombC#.prefab.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Prefabs/BombC#.prefab.meta[m
[1mdeleted file mode 100644[m
[1mindex c0f7618..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Prefabs/BombC#.prefab.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: a5e8dd5fc80434523951bcd0c676f6cc[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Prefabs/BombJS.prefab b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Prefabs/BombJS.prefab[m
[1mdeleted file mode 100644[m
[1mindex 276de71..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Prefabs/BombJS.prefab and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Prefabs/BombJS.prefab.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Prefabs/BombJS.prefab.meta[m
[1mdeleted file mode 100644[m
[1mindex 4738754..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Prefabs/BombJS.prefab.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: cfbad2aeba16b4edba4a6d1ed645b632[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Scenes.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Scenes.meta[m
[1mdeleted file mode 100644[m
[1mindex db9f670..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Scenes.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: b00c7bbbdb0324a9383bac9a5f92ea3c[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Scenes/C#.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Scenes/C#.unity[m
[1mdeleted file mode 100644[m
[1mindex 2c679ca..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Scenes/C#.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Scenes/C#.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Scenes/C#.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex a6317d8..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Scenes/C#.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 49c038fb3077f4efc915e2a4e38ba794[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Scenes/JS.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Scenes/JS.unity[m
[1mdeleted file mode 100644[m
[1mindex c059af2..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Scenes/JS.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Scenes/JS.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Scenes/JS.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex 06ba96d..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Scenes/JS.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: b108613b145da4a9ea683c538b9d4cd5[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Scripts.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Scripts.meta[m
[1mdeleted file mode 100644[m
[1mindex 31fe61e..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Scripts.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 10ea111c24cc14fed83a87faa1a398a5[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Scripts/AccurateLob.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Scripts/AccurateLob.cs[m
[1mdeleted file mode 100644[m
[1mindex 7d02297..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Scripts/AccurateLob.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,23 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class AccurateLob : MonoBehaviour[m
[31m-{[m
[31m-	public Transform target;[m
[31m-	public GameObject bomb;[m
[31m-[m
[31m-	void Update ()[m
[31m-	{[m
[31m-		RaycastHit hit = new RaycastHit();[m
[31m-		Ray cameraRay = Camera.main.ScreenPointToRay(Input.mousePosition);[m
[31m-		if (Physics.Raycast (cameraRay.origin,cameraRay.direction,out hit, 100)) {[m
[31m-			target.position = hit.point;[m
[31m-		}[m
[31m-		[m
[31m-		if (Input.GetMouseButtonDown(0)) {[m
[31m-			GameObject newBomb = (GameObject)Instantiate(bomb);[m
[31m-			Bomb newBombScript = newBomb.GetComponent<Bomb>();[m
[31m-			newBombScript.targetPosition = target.position;[m
[31m-		}[m
[31m-	}[m
[31m-}[m
\ No newline at end of file[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Scripts/AccurateLob.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Scripts/AccurateLob.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex ba05300..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Scripts/AccurateLob.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 5c3f17bf8bec64244b67f1e0d2cbce6f[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Scripts/Bomb.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Scripts/Bomb.cs[m
[1mdeleted file mode 100644[m
[1mindex 5b1df74..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Scripts/Bomb.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,22 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class Bomb : MonoBehaviour[m
[31m-{[m
[31m-	public GameObject core;[m
[31m-	float lobHeight = 4;[m
[31m-	float lobTime = .7f;[m
[31m-	public Vector3 targetPosition;[m
[31m-	[m
[31m-	void Start(){[m
[31m-		iTween.MoveBy(core, iTween.Hash("y", lobHeight, "time", lobTime/2, "easeType", iTween.EaseType.easeOutQuad));[m
[31m-		iTween.MoveBy(core, iTween.Hash("y", -lobHeight, "time", lobTime/2, "delay", lobTime/2, "easeType", iTween.EaseType.easeInCubic));     [m
[31m-		iTween.MoveTo(gameObject, iTween.Hash("position", targetPosition, "time", lobTime, "easeType", iTween.EaseType.linear));[m
[31m-		iTween.FadeTo(gameObject, iTween.Hash("delay", 3, "time", .5, "alpha", 0, "onComplete", "CleanUp"));[m
[31m-	}[m
[31m-	[m
[31m-	void CleanUp(){[m
[31m-		Destroy(gameObject);	[m
[31m-	}[m
[31m-}[m
[31m-[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Scripts/Bomb.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Scripts/Bomb.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex 2f3d1af..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AccurateLob/Scripts/Bomb.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 6474a4ed09b6541409e338dfb9d6c13d[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures.meta[m
[1mdeleted file mode 100644[m
[1mindex 888ccd5..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: b578e902b51d045e18b3568e5aae362e[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images.meta[m
[1mdeleted file mode 100644[m
[1mindex ba3f175..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 6dc820e36365741238aaa6a4d2dca116[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/blackScreen.png b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/blackScreen.png[m
[1mdeleted file mode 100644[m
[1mindex a5e43d3..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/blackScreen.png and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/blackScreen.png.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/blackScreen.png.meta[m
[1mdeleted file mode 100644[m
[1mindex f048b67..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/blackScreen.png.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 4420c473bde404de4bb79e3c7aab815b[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 1[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 2[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: -1[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: -1[m
[31m-    aniso: -1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: -1[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: -1[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/helper.png b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/helper.png[m
[1mdeleted file mode 100644[m
[1mindex 3e2b402..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/helper.png and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/helper.png.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/helper.png.meta[m
[1mdeleted file mode 100644[m
[1mindex b053caf..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/helper.png.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 24754d7708a3b472090d73a5721534d7[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 1[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 2[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: 5[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: -1[m
[31m-    aniso: -1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: -1[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: -1[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/iTweenLogo.png b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/iTweenLogo.png[m
[1mdeleted file mode 100644[m
[1mindex e66e31e..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/iTweenLogo.png and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/iTweenLogo.png.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/iTweenLogo.png.meta[m
[1mdeleted file mode 100644[m
[1mindex 79b4fcf..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/iTweenLogo.png.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 0914e40bbb33d4242a3a3d0f8fafbe5b[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 1[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 2[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: 5[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: -1[m
[31m-    aniso: -1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: -1[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: -1[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/innerGlow.png b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/innerGlow.png[m
[1mdeleted file mode 100644[m
[1mindex 5249604..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/innerGlow.png and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/innerGlow.png.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/innerGlow.png.meta[m
[1mdeleted file mode 100644[m
[1mindex e0139c7..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/innerGlow.png.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: fc2b53bbe33dc4ecba99fe4d960e1dfe[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 1[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 2[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: 5[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: -1[m
[31m-    aniso: -1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: -1[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: -1[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/onePlayerButton.png b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/onePlayerButton.png[m
[1mdeleted file mode 100644[m
[1mindex 07f21ff..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/onePlayerButton.png and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/onePlayerButton.png.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/onePlayerButton.png.meta[m
[1mdeleted file mode 100644[m
[1mindex 59c44ac..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/onePlayerButton.png.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: f4604a0218c074ba592f22807855a43b[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 1[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 2[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: 5[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: -1[m
[31m-    aniso: -1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: -1[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: -1[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/presentsText.png b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/presentsText.png[m
[1mdeleted file mode 100644[m
[1mindex 2117ced..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/presentsText.png and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/presentsText.png.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/presentsText.png.meta[m
[1mdeleted file mode 100644[m
[1mindex f9c5b18..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/presentsText.png.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: a7dec43924e9c44d6b166b0eb924333a[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 1[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 2[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: 5[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: -1[m
[31m-    aniso: -1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: -1[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: -1[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/splatTexture.png b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/splatTexture.png[m
[1mdeleted file mode 100644[m
[1mindex 29c06b7..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/splatTexture.png and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/splatTexture.png.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/splatTexture.png.meta[m
[1mdeleted file mode 100644[m
[1mindex 5f8b6d0..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/splatTexture.png.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: caf006f3ce6e64aac8f2c59ae21996b0[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 1[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 2[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: 5[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: -1[m
[31m-    aniso: -1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: -1[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: -1[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/titleText.png b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/titleText.png[m
[1mdeleted file mode 100644[m
[1mindex fdffea3..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/titleText.png and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/titleText.png.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/titleText.png.meta[m
[1mdeleted file mode 100644[m
[1mindex 3e0ecec..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/titleText.png.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 144e6fb004a2a46ee83f8251b1dbeaf5[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 1[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 2[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: 5[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: -1[m
[31m-    aniso: -1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: -1[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: -1[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/titleTextBlock.png b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/titleTextBlock.png[m
[1mdeleted file mode 100644[m
[1mindex f45de91..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/titleTextBlock.png and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/titleTextBlock.png.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/titleTextBlock.png.meta[m
[1mdeleted file mode 100644[m
[1mindex 8d0397b..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/titleTextBlock.png.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: ef996067dc13b4d74944a35460142bd5[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 1[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 2[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: 5[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: -1[m
[31m-    aniso: -1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: -1[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: -1[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/twoPlayerButton.png b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/twoPlayerButton.png[m
[1mdeleted file mode 100644[m
[1mindex 1b1e6e4..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/twoPlayerButton.png and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/twoPlayerButton.png.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/twoPlayerButton.png.meta[m
[1mdeleted file mode 100644[m
[1mindex 7a1fea7..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/twoPlayerButton.png.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 8e9060700917440818983e27c6f730bd[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 1[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 2[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: 5[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: -1[m
[31m-    aniso: -1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: -1[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: -1[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/whiteDiagonalGradient.png b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/whiteDiagonalGradient.png[m
[1mdeleted file mode 100644[m
[1mindex a7680d9..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/whiteDiagonalGradient.png and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/whiteDiagonalGradient.png.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/whiteDiagonalGradient.png.meta[m
[1mdeleted file mode 100644[m
[1mindex 3ab0894..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Images/whiteDiagonalGradient.png.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: f93d5dc7bf461417b89309cd8dd66bfd[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 1[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 2[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: 5[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: -1[m
[31m-    aniso: -1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: -1[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: -1[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Scenes.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Scenes.meta[m
[1mdeleted file mode 100644[m
[1mindex 1a82ef6..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Scenes.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: d5ceb9bdb6b02494aaaa6510e731d499[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Scenes/C#.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Scenes/C#.unity[m
[1mdeleted file mode 100644[m
[1mindex da1b928..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Scenes/C#.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Scenes/C#.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Scenes/C#.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex 5874c7c..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Scenes/C#.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 65e8a754a2d1441e1b18f77679ed3257[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Scenes/JS.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Scenes/JS.unity[m
[1mdeleted file mode 100644[m
[1mindex bbd775f..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Scenes/JS.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Scenes/JS.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Scenes/JS.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex 4a1cf67..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Scenes/JS.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 5f5147ae8164445ec8fb987c29f803c3[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Scripts.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Scripts.meta[m
[1mdeleted file mode 100644[m
[1mindex 8ebc752..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Scripts.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: ba0aef1ff3beb418f86d7b3b8e9d421d[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Scripts/PresentationScreen.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Scripts/PresentationScreen.cs[m
[1mdeleted file mode 100644[m
[1mindex 36b9d98..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Scripts/PresentationScreen.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class PresentationScreen : MonoBehaviour{[m
[31m-	public GameObject iTweenLogoGT;[m
[31m-	public GameObject presentsTextGT;[m
[31m-	public GameObject whiteDiagonalGradient;[m
[31m-	public GameObject titleScreen;[m
[31m-	[m
[31m-	//Demonstrate how to animate GUITextures through their connected GameObject [m
[31m-	//You could animate each GUITexture's Pixel Inset rect through iTween's ValueTo as well but this way is easier:[m
[31m-	void OnEnable(){[m
[31m-		//Reset (only needed since this example loops):[m
[31m-		iTweenLogoGT.transform.position=new Vector3(.5f,.5f,.5f);[m
[31m-		presentsTextGT.transform.position=new Vector3(.5f,.5f,.5f);[m
[31m-		whiteDiagonalGradient.GetComponent<GUITexture>().color=new Color(.5f,.5f,.5f,.5f);[m
[31m-		[m
[31m-		//In:[m
[31m-		iTween.FadeFrom(whiteDiagonalGradient,iTween.Hash("alpha",0,"time",.6,"delay",1));[m
[31m-		iTween.MoveFrom(whiteDiagonalGradient,iTween.Hash("position",new Vector3(1.3f,1.3f,0),"time",.6,"delay",1));[m
[31m-		iTween.MoveFrom(iTweenLogoGT,iTween.Hash("x",-.4,"time",.6,"delay",1.2));[m
[31m-		iTween.MoveFrom(presentsTextGT,iTween.Hash("x",1.2,"time",.6,"delay",1.4));[m
[31m-		[m
[31m-		//Out:	[m
[31m-		iTween.MoveTo(presentsTextGT,iTween.Hash("x",-.2,"time",.6,"delay",2.5,"easetype","easeincubic"));[m
[31m-		iTween.MoveTo(iTweenLogoGT,iTween.Hash("x",1.5,"time",.6,"delay",2.6,"easetype","easeincubic"));[m
[31m-		iTween.FadeTo(whiteDiagonalGradient,iTween.Hash("alpha",0,"time",.6,"delay",2.8,"easetype","easeincubic","oncomplete","SwitchToTitleScreen","oncompletetarget",gameObject));[m
[31m-	}[m
[31m-	[m
[31m-	void SwitchToTitleScreen(){[m
[31m-		gameObject.SetActive(false);[m
[31m-		titleScreen.SetActive(true);[m
[31m-	}[m
[31m-}[m
[31m-[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Scripts/PresentationScreen.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Scripts/PresentationScreen.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex d23cf8e..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Scripts/PresentationScreen.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 2c81d184fd6064da1a153cfc5a4fc945[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Scripts/TitleScreen.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Scripts/TitleScreen.cs[m
[1mdeleted file mode 100644[m
[1mindex 6c40de0..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Scripts/TitleScreen.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,40 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class TitleScreen : MonoBehaviour{[m
[31m-	//guitextures:[m
[31m-	public GameObject onePlayerButton;[m
[31m-	public GameObject splatTexture;[m
[31m-	public GameObject titleText;[m
[31m-	public GameObject titleTextBlock;[m
[31m-	public GameObject twoPlayerButton;[m
[31m-	public GameObject presentationScreen;[m
[31m-	public Texture2D blackScreen;[m
[31m-	[m
[31m-	//Demonstrate how to animate GUITextures through their connected GameObject [m
[31m-	//You could animate each GUITexture's Pixel Inset rect through iTween's ValueTo as well but this way is easier:[m
[31m-	void OnEnable(){[m
[31m-		//In:[m
[31m-		iTween.ColorFrom(splatTexture,iTween.Hash("color",new Color(1,1,0,0)));[m
[31m-		iTween.ScaleFrom(splatTexture,iTween.Hash("scale",new Vector3(2,2,0),"time",.6));[m
[31m-		iTween.FadeFrom(titleTextBlock,iTween.Hash("alpha",0,"time",.8,"delay",.4));[m
[31m-		iTween.MoveFrom(titleText,iTween.Hash("x",-.8,"time",.8,"delay",.4));[m
[31m-		iTween.MoveFrom(onePlayerButton,iTween.Hash("y",-.5,"delay",1.4));[m
[31m-		iTween.MoveFrom(twoPlayerButton,iTween.Hash("y",-.5,"delay",1.5));[m
[31m-	}[m
[31m-	[m
[31m-	IEnumerator SwitchToPresentationScreen(){[m
[31m-		iTween.CameraFadeAdd(blackScreen,99);[m
[31m-		iTween.CameraFadeTo(1,2);[m
[31m-		yield return new WaitForSeconds(2);[m
[31m-		iTween.CameraFadeDestroy();[m
[31m-		gameObject.SetActive(false);[m
[31m-		presentationScreen.SetActive(true);[m
[31m-	}[m
[31m-	[m
[31m-	void Update(){[m
[31m-		if(Input.GetMouseButtonDown(0)){[m
[31m-			StartCoroutine(SwitchToPresentationScreen());[m
[31m-		}[m
[31m-	}[m
[31m-}[m
\ No newline at end of file[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Scripts/TitleScreen.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Scripts/TitleScreen.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex 33a3762..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingGUITextures/Scripts/TitleScreen.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 4dcf960ac427648c3bf693473efa00ab[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI.meta[m
[1mdeleted file mode 100644[m
[1mindex a7b99b2..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: ab492784bf97f46b4b2c3f364fc1333f[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Fonts.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Fonts.meta[m
[1mdeleted file mode 100644[m
[1mindex 9b04cfe..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Fonts.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 2cb12025ac90849b6b41e5c70726b556[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Fonts/Arial Black.ttf b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Fonts/Arial Black.ttf[m
[1mdeleted file mode 100644[m
[1mindex 8877277..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Fonts/Arial Black.ttf and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Fonts/Arial Black.ttf.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Fonts/Arial Black.ttf.meta[m
[1mdeleted file mode 100644[m
[1mindex ad6d875..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Fonts/Arial Black.ttf.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,15 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: e72c70c5c2a0444f18bb241a77f5928b[m
[31m-TrueTypeFontImporter:[m
[31m-  serializedVersion: 2[m
[31m-  fontSize: 16[m
[31m-  fontColor: {r: 1, g: 1, b: 1, a: 1}[m
[31m-  forceTextureCase: -1[m
[31m-  characterSpacing: 1[m
[31m-  characterPadding: 0[m
[31m-  includeFontData: 1[m
[31m-  use2xBehaviour: 1[m
[31m-  fontNames: [][m
[31m-  customCharacters: [m
[31m-  fontRenderingMode: 0[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Images.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Images.meta[m
[1mdeleted file mode 100644[m
[1mindex 58141e5..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Images.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 07b66e96e775b4ba8a62edde7b5a20dc[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Images/innerGlow.png b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Images/innerGlow.png[m
[1mdeleted file mode 100644[m
[1mindex 5249604..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Images/innerGlow.png and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Images/innerGlow.png.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Images/innerGlow.png.meta[m
[1mdeleted file mode 100644[m
[1mindex cd50eed..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Images/innerGlow.png.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 5e5025ffdf8b341b4a9488ada9bdb949[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 1[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 2[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: -1[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: -1[m
[31m-    aniso: -1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: -1[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: -1[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Images/replayButton.png b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Images/replayButton.png[m
[1mdeleted file mode 100644[m
[1mindex 8e03f54..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Images/replayButton.png and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Images/replayButton.png.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Images/replayButton.png.meta[m
[1mdeleted file mode 100644[m
[1mindex 4685f76..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Images/replayButton.png.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 0b3e0b01b4b434516bd567819c114092[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 1[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 2[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: -1[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: -1[m
[31m-    aniso: -1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: -1[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: -1[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Materials.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Materials.meta[m
[1mdeleted file mode 100644[m
[1mindex 9dd9e79..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Materials.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: b09efc31123ed41e5adb0b6a7435862a[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Materials/Cylinder.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Materials/Cylinder.mat[m
[1mdeleted file mode 100644[m
[1mindex 4aac77c..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Materials/Cylinder.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Materials/Cylinder.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Materials/Cylinder.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex b2e325b..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Materials/Cylinder.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: cbf7c9fa304824746bf72541ec1bcb87[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Materials/Floor.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Materials/Floor.mat[m
[1mdeleted file mode 100644[m
[1mindex e96a349..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Materials/Floor.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Materials/Floor.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Materials/Floor.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex 1c55a65..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Materials/Floor.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: ccd5a85cae651466db9c220e9b586a07[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Scenes.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Scenes.meta[m
[1mdeleted file mode 100644[m
[1mindex fdcbe43..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Scenes.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 76c306e0facd142fc87ce7824cd9ba92[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Scenes/C#.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Scenes/C#.unity[m
[1mdeleted file mode 100644[m
[1mindex c739937..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Scenes/C#.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Scenes/C#.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Scenes/C#.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex 57439cd..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Scenes/C#.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 89ff990d9e86e4523b1fa16f42cfd6df[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Scenes/JS.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Scenes/JS.unity[m
[1mdeleted file mode 100644[m
[1mindex fc775ad..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Scenes/JS.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Scenes/JS.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Scenes/JS.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex be6070d..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Scenes/JS.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: ac91d4057c92b4d5b923ad42db3d2585[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Scripts.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Scripts.meta[m
[1mdeleted file mode 100644[m
[1mindex cad9eae..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Scripts.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: bed68101b3e9048bfacda149113df587[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Scripts/AnimatingUnityGUI.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Scripts/AnimatingUnityGUI.cs[m
[1mdeleted file mode 100644[m
[1mindex f3d0fa0..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Scripts/AnimatingUnityGUI.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,26 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class AnimatingUnityGUI : MonoBehaviour{[m
[31m-	public bool buttonState = false;	[m
[31m-	public Rect button  = new Rect(75,20,100,55); //holds actual button rect coordinates[m
[31m-	public Rect initialPosition = new Rect(75,20,100,55); //holds starting rect coordinates[m
[31m-	public Rect activePosition = new Rect(75,130,100,55); //holds ending rect coordinates[m
[31m-	[m
[31m-	void OnGUI(){[m
[31m-		if(GUI.Button(button,"Click Me!")){[m
[31m-			[m
[31m-			if(buttonState){[m
[31m-				iTween.ValueTo(gameObject,iTween.Hash("from",button,"to",initialPosition,"onupdate","MoveButton","easetype","easeinoutback"));	[m
[31m-			}else{[m
[31m-				iTween.ValueTo(gameObject,iTween.Hash("from",button,"to",activePosition,"onupdate","MoveButton","easetype","easeinoutback"));[m
[31m-			}[m
[31m-			buttonState = !buttonState;[m
[31m-		}[m
[31m-	}[m
[31m-	[m
[31m-	void MoveButton(Rect newCoordinates){[m
[31m-		button=newCoordinates;[m
[31m-	}[m
[31m-}[m
[31m-[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Scripts/AnimatingUnityGUI.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Scripts/AnimatingUnityGUI.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex 56f3a27..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/AnimatingUnityGUI/Scripts/AnimatingUnityGUI.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 838d34d09318941739e2f93fb7e5aab2[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CallbacksExample.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CallbacksExample.meta[m
[1mdeleted file mode 100644[m
[1mindex 9e1c493..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CallbacksExample.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 70b422f1304b74726b52db8cd575f106[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CallbacksExample/Fonts.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CallbacksExample/Fonts.meta[m
[1mdeleted file mode 100644[m
[1mindex 419fc84..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CallbacksExample/Fonts.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: f791e490c7f064711a82812444c57c74[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CallbacksExample/Fonts/Arial Black.ttf b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CallbacksExample/Fonts/Arial Black.ttf[m
[1mdeleted file mode 100644[m
[1mindex 8877277..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CallbacksExample/Fonts/Arial Black.ttf and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CallbacksExample/Fonts/Arial Black.ttf.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CallbacksExample/Fonts/Arial Black.ttf.meta[m
[1mdeleted file mode 100644[m
[1mindex fb5fd81..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CallbacksExample/Fonts/Arial Black.ttf.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,15 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: f5ee432daa069496a9255ec68e9308f6[m
[31m-TrueTypeFontImporter:[m
[31m-  serializedVersion: 2[m
[31m-  fontSize: 12[m
[31m-  fontColor: {r: 1, g: 1, b: 1, a: 1}[m
[31m-  forceTextureCase: -1[m
[31m-  characterSpacing: 1[m
[31m-  characterPadding: 0[m
[31m-  includeFontData: 1[m
[31m-  use2xBehaviour: 1[m
[31m-  fontNames: [][m
[31m-  customCharacters: [m
[31m-  fontRenderingMode: 0[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CallbacksExample/Scenes.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CallbacksExample/Scenes.meta[m
[1mdeleted file mode 100644[m
[1mindex 96319bd..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CallbacksExample/Scenes.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 5545b0174ec7b4be88f49a14f9043e31[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CallbacksExample/Scenes/C#.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CallbacksExample/Scenes/C#.unity[m
[1mdeleted file mode 100644[m
[1mindex 1e70f08..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CallbacksExample/Scenes/C#.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CallbacksExample/Scenes/C#.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CallbacksExample/Scenes/C#.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex a91a5a0..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CallbacksExample/Scenes/C#.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 5e7e7177b47cc45589c4730435323169[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CallbacksExample/Scenes/JS.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CallbacksExample/Scenes/JS.unity[m
[1mdeleted file mode 100644[m
[1mindex ecccee1..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CallbacksExample/Scenes/JS.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CallbacksExample/Scenes/JS.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CallbacksExample/Scenes/JS.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex 61eb31c..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CallbacksExample/Scenes/JS.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: b4a62ed6885464dba86d8c0f77252f29[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CallbacksExample/Scripts.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CallbacksExample/Scripts.meta[m
[1mdeleted file mode 100644[m
[1mindex 6e0a710..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CallbacksExample/Scripts.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 8eaf17c352e9e4f24a5cf1b3cd863d44[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CallbacksExample/Scripts/CallbacksExample.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CallbacksExample/Scripts/CallbacksExample.cs[m
[1mdeleted file mode 100644[m
[1mindex 8541082..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CallbacksExample/Scripts/CallbacksExample.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,67 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class CallbacksExample : MonoBehaviour{[m
[31m-	public GUIStyle style;[m
[31m-	public GUIText statusText;[m
[31m-	private bool buttonActivated;[m
[31m-	[m
[31m-	void Start(){[m
[31m-		tween();[m
[31m-	}[m
[31m-	[m
[31m-	void OnGUI (){[m
[31m-		if(buttonActivated){[m
[31m-			if(GUI.Button (new Rect (67,178,113,32), "",style)){[m
[31m-				reset();[m
[31m-				tween();[m
[31m-			}[m
[31m-		}[m
[31m-	}[m
[31m-	[m
[31m-	void reset(){[m
[31m-		transform.position=new Vector3(0,0,0);[m
[31m-		transform.rotation=Quaternion.identity;[m
[31m-		statusText.text="";[m
[31m-		buttonActivated=false;[m
[31m-	}[m
[31m-	[m
[31m-	void tween(){[m
[31m-		iTween.MoveBy(gameObject,iTween.Hash("y",2,"time",2,"easetype","easeinoutexpo","onstart","segmentStarted","onstartparams","Rise started...","onupdate","segmentUpdated","onupdateparams","move","oncomplete","segmentComplete","oncompleteparams","Rise stopped."));[m
[31m-		iTween.RotateBy(gameObject,iTween.Hash("z",.25,"time",1,"easetype","easeinoutback","delay",2.5,"onstart","segmentStarted","onstartparams","Rotate started...","onupdate","segmentUpdated","onupdateparams","rotate","oncomplete","segmentComplete","oncompleteparams","Rotate stopped."));[m
[31m-		iTween.MoveTo(gameObject,iTween.Hash("y",0,"time",.9,"easetype","easeInExpo","delay",4,"onstart","segmentStarted","onstartparams","Fall started...","onupdate","segmentUpdated","onupdateparams","move","oncomplete","segmentComplete","oncompleteparams","Fall stopped."));[m
[31m-		[m
[31m-		//Notice that since we ae putting shake on the camera we need to tell the callbacks which target contains the method they need to call,[m
[31m-		iTween.ShakePosition(Camera.main.gameObject,iTween.Hash("y",.5,"time",.8,"delay",4.95,"onstart","segmentStarted","onstartparams","Shake started...","onstarttarget",gameObject,"onupdate","segmentUpdated","onupdateparams","shake","onupdatetarget",gameObject,"oncomplete","allComplete","oncompletetarget",gameObject));[m
[31m-	}[m
[31m-	[m
[31m-	void segmentStarted(string textToDisplay){[m
[31m-		statusText.text+=textToDisplay + "\n";[m
[31m-	}[m
[31m-	[m
[31m-	void segmentUpdated(string method){[m
[31m-		switch(method){[m
[31m-		case "move":[m
[31m-			Debug.Log("Height at, " + transform.position.y);[m
[31m-			break;[m
[31m-			[m
[31m-		case "rotate":[m
[31m-			Debug.Log("Rotation at, " + transform.eulerAngles.z);[m
[31m-			break;[m
[31m-			[m
[31m-		case "shake":[m
[31m-			Debug.Log("Shake at, " + Camera.main.transform.position.y);[m
[31m-			break;[m
[31m-		}[m
[31m-	}[m
[31m-	[m
[31m-	void segmentComplete(string textToDisplay){[m
[31m-		statusText.text+=textToDisplay + "\n";[m
[31m-	}[m
[31m-	[m
[31m-	void allComplete(){[m
[31m-		buttonActivated=true;	[m
[31m-		statusText.text += "All done animating!";[m
[31m-	}[m
[31m-}[m
[31m-[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CallbacksExample/Scripts/CallbacksExample.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CallbacksExample/Scripts/CallbacksExample.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex 71c978a..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CallbacksExample/Scripts/CallbacksExample.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: b9c37bd398b8349f9b8464427491f24a[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample.meta[m
[1mdeleted file mode 100644[m
[1mindex 7661e9e..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: f7c3cbee7104f48f8bd51efc4df88b22[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Audio.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Audio.meta[m
[1mdeleted file mode 100644[m
[1mindex 07882f6..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Audio.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 11cfa0087620541a8b3363b40003e79f[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Audio/Ripped Out - Copyright(c) 1998 Pixelplacement (Bob Berkebile).mp3 b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Audio/Ripped Out - Copyright(c) 1998 Pixelplacement (Bob Berkebile).mp3[m
[1mdeleted file mode 100644[m
[1mindex c6439ad..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Audio/Ripped Out - Copyright(c) 1998 Pixelplacement (Bob Berkebile).mp3 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Audio/Ripped Out - Copyright(c) 1998 Pixelplacement (Bob Berkebile).mp3.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Audio/Ripped Out - Copyright(c) 1998 Pixelplacement (Bob Berkebile).mp3.meta[m
[1mdeleted file mode 100644[m
[1mindex 4858537..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Audio/Ripped Out - Copyright(c) 1998 Pixelplacement (Bob Berkebile).mp3.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,12 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 71a34b8f60c444e188be1ac83a98e97c[m
[31m-AudioImporter:[m
[31m-  serializedVersion: 4[m
[31m-  format: 0[m
[31m-  quality: .5[m
[31m-  stream: 0[m
[31m-  3D: 1[m
[31m-  forceToMono: 0[m
[31m-  useHardware: 0[m
[31m-  loopable: 0[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Images.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Images.meta[m
[1mdeleted file mode 100644[m
[1mindex 73033d5..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Images.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: cd4b23e2286794934ba039b924cc27ed[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Images/cameraFadeTexture.jpg b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Images/cameraFadeTexture.jpg[m
[1mdeleted file mode 100644[m
[1mindex 7e857b2..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Images/cameraFadeTexture.jpg and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Images/cameraFadeTexture.jpg.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Images/cameraFadeTexture.jpg.meta[m
[1mdeleted file mode 100644[m
[1mindex 142fbd6..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Images/cameraFadeTexture.jpg.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 50f9f24015ab940929b2f4ac1b01d0aa[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 1[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 2[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: -1[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: -1[m
[31m-    aniso: -1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: -1[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: -1[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Scenes.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Scenes.meta[m
[1mdeleted file mode 100644[m
[1mindex 6686bdd..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Scenes.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: fcbd25a010a1a4a26b624e2a26b60e22[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Scenes/C#.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Scenes/C#.unity[m
[1mdeleted file mode 100644[m
[1mindex 179291e..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Scenes/C#.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Scenes/C#.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Scenes/C#.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex 5bd541f..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Scenes/C#.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 8842fb938aaec41afa5bcb9e15653270[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Scenes/JS.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Scenes/JS.unity[m
[1mdeleted file mode 100644[m
[1mindex a4c1906..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Scenes/JS.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Scenes/JS.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Scenes/JS.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex 552766c..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Scenes/JS.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 4a20927b9048d4a81b6906f1939d03ee[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Scripts.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Scripts.meta[m
[1mdeleted file mode 100644[m
[1mindex 7232797..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Scripts.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 7f41f8f90985246498c85e8134328535[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Scripts/AmbientMovement.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Scripts/AmbientMovement.cs[m
[1mdeleted file mode 100644[m
[1mindex 4f3db36..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Scripts/AmbientMovement.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,11 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class AmbientMovement : MonoBehaviour{[m
[31m-	public float delay = 0f;[m
[31m-	[m
[31m-	void Start () {[m
[31m-	    iTween.MoveBy(gameObject,iTween.Hash("delay",delay,"y",1,"looptype","pingpong","easetype","easeInOutExpo","time",.6));[m
[31m-	}[m
[31m-}[m
[31m-[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Scripts/AmbientMovement.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Scripts/AmbientMovement.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex cf3b4a1..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Scripts/AmbientMovement.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 61bc9127816274339ad2e9910c3af11c[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Scripts/CameraFadeExample.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Scripts/CameraFadeExample.cs[m
[1mdeleted file mode 100644[m
[1mindex 2e9630d..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Scripts/CameraFadeExample.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,30 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class CameraFadeExample : MonoBehaviour{[m
[31m-	//The song in this project is copyright Pixelplacement 1998 Bob Berkebile (also the developer of iTween) do not use it for any commercial work - I included this file to help you mess around and test iTween only.[m
[31m-	[m
[31m-	public Texture2D cameraTexture;[m
[31m-	bool faded;[m
[31m-	[m
[31m-	void Start(){[m
[31m-		iTween.CameraFadeAdd(cameraTexture,200);[m
[31m-	}[m
[31m-	[m
[31m-	void OnGUI(){[m
[31m-		if(!faded){[m
[31m-			if(GUI.Button(new Rect(75,151,100,50),"Fade Up!")){[m
[31m-				iTween.CameraFadeTo(1,2);[m
[31m-				iTween.AudioTo(gameObject,0,0,2);[m
[31m-				faded=true;[m
[31m-			}[m
[31m-		}else{[m
[31m-			if(GUI.Button(new Rect(75,151,100,50),"Fade Down!")){[m
[31m-				iTween.CameraFadeTo(0,2);[m
[31m-				iTween.AudioTo(gameObject,1,1,2);[m
[31m-				faded=false;[m
[31m-			}	[m
[31m-		}[m
[31m-	}[m
[31m-}[m
[31m-[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Scripts/CameraFadeExample.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Scripts/CameraFadeExample.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex 17310d4..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/CameraFadeExample/Scripts/CameraFadeExample.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 526a360caa43141ffb4f15112e0e1545[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough.meta[m
[1mdeleted file mode 100644[m
[1mindex 544c21f..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 2791f47f447a84809821214113f9cc5c[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Fonts.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Fonts.meta[m
[1mdeleted file mode 100644[m
[1mindex f81dd2f..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Fonts.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 3821e4b17a48d4021a2d40aa72168475[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Fonts/Arial Black.ttf b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Fonts/Arial Black.ttf[m
[1mdeleted file mode 100644[m
[1mindex 8877277..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Fonts/Arial Black.ttf and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Fonts/Arial Black.ttf.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Fonts/Arial Black.ttf.meta[m
[1mdeleted file mode 100644[m
[1mindex e0a332f..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Fonts/Arial Black.ttf.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,15 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 9fea489a26fa84b46bdf5bc53a89165c[m
[31m-TrueTypeFontImporter:[m
[31m-  serializedVersion: 2[m
[31m-  fontSize: 8[m
[31m-  fontColor: {r: 1, g: 1, b: 1, a: 1}[m
[31m-  forceTextureCase: -1[m
[31m-  characterSpacing: 1[m
[31m-  characterPadding: 0[m
[31m-  includeFontData: 1[m
[31m-  use2xBehaviour: 1[m
[31m-  fontNames: [][m
[31m-  customCharacters: [m
[31m-  fontRenderingMode: 0[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Images.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Images.meta[m
[1mdeleted file mode 100644[m
[1mindex 49303b4..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Images.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: b27066ab04ad94c5b8a515bdb9d6d45c[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Images/Hi!.jpg b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Images/Hi!.jpg[m
[1mdeleted file mode 100644[m
[1mindex 549eba4..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Images/Hi!.jpg and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Images/Hi!.jpg.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Images/Hi!.jpg.meta[m
[1mdeleted file mode 100644[m
[1mindex 7ae5b0a..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Images/Hi!.jpg.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: f120b1c37146f4cc596e6b1577d69042[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 0[m
[31m-    linearTexture: 1[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 2[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: -3[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: -1[m
[31m-    aniso: 1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: 1[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: 2[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Images/Materials.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Images/Materials.meta[m
[1mdeleted file mode 100644[m
[1mindex 496615a..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Images/Materials.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: f9017b88b23ec4565a5b44015a5d7578[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Images/Materials/hi!.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Images/Materials/hi!.mat[m
[1mdeleted file mode 100644[m
[1mindex dc74b16..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Images/Materials/hi!.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Images/Materials/hi!.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Images/Materials/hi!.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex ca64ff9..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Images/Materials/hi!.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 67f2867f7d3bd403eb231e8eaee73037[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Images/innerGlow.png b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Images/innerGlow.png[m
[1mdeleted file mode 100644[m
[1mindex 5249604..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Images/innerGlow.png and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Images/innerGlow.png.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Images/innerGlow.png.meta[m
[1mdeleted file mode 100644[m
[1mindex 402fe4d..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Images/innerGlow.png.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 8d545c45734ae463d8d27ca533fdce72[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 1[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 2[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: -1[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: -1[m
[31m-    aniso: -1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: -1[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: -1[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Materials.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Materials.meta[m
[1mdeleted file mode 100644[m
[1mindex a3c3f90..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Materials.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 69e75104cc80646f8b0d620f3a73ecbb[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Materials/Blue.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Materials/Blue.mat[m
[1mdeleted file mode 100644[m
[1mindex 034a3da..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Materials/Blue.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Materials/Blue.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Materials/Blue.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex b75ec06..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Materials/Blue.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: fa0e36bff2b0944fba44979e72351799[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Materials/Floor.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Materials/Floor.mat[m
[1mdeleted file mode 100644[m
[1mindex b4a7bb8..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Materials/Floor.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Materials/Floor.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Materials/Floor.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex f3938dd..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Materials/Floor.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 964c4cbb6b5e64f08b3dfdeaad8827a6[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Materials/Green.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Materials/Green.mat[m
[1mdeleted file mode 100644[m
[1mindex 82b5200..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Materials/Green.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Materials/Green.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Materials/Green.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex 3ec9ffe..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Materials/Green.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 6fb0a83337fef4804906c5c924bf4291[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Materials/Red.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Materials/Red.mat[m
[1mdeleted file mode 100644[m
[1mindex 393def3..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Materials/Red.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Materials/Red.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Materials/Red.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex 8f4dddb..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Materials/Red.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 1e814b589e1c74c77a4d2b225e776207[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Prefabs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Prefabs.meta[m
[1mdeleted file mode 100644[m
[1mindex 4bb4125..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Prefabs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: e8a95b1b51fb546ec94907bc78b402b2[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Prefabs/LookPoint.prefab b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Prefabs/LookPoint.prefab[m
[1mdeleted file mode 100644[m
[1mindex a511b9e..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Prefabs/LookPoint.prefab and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Prefabs/LookPoint.prefab.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Prefabs/LookPoint.prefab.meta[m
[1mdeleted file mode 100644[m
[1mindex 6068159..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Prefabs/LookPoint.prefab.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 0b93a242aba144bb481c5e1849b46a1f[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Prefabs/MovePoint.prefab b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Prefabs/MovePoint.prefab[m
[1mdeleted file mode 100644[m
[1mindex a66714e..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Prefabs/MovePoint.prefab and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Prefabs/MovePoint.prefab.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Prefabs/MovePoint.prefab.meta[m
[1mdeleted file mode 100644[m
[1mindex 7959119..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Prefabs/MovePoint.prefab.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 81050eb67e9e54bde97ee6847a10b706[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scenes.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scenes.meta[m
[1mdeleted file mode 100644[m
[1mindex a0838d5..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scenes.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 3f038c18df9d94306971948108daabb8[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scenes/C#.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scenes/C#.unity[m
[1mdeleted file mode 100644[m
[1mindex a0261b6..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scenes/C#.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scenes/C#.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scenes/C#.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex 03c9a31..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scenes/C#.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 6d1dfef10c08740238c8f850fe2ac395[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scenes/JS.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scenes/JS.unity[m
[1mdeleted file mode 100644[m
[1mindex 9ef1f31..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scenes/JS.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scenes/JS.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scenes/JS.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex 5a9e7b0..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scenes/JS.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 97d03577c361f4075b42edd78a6b5016[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scripts.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scripts.meta[m
[1mdeleted file mode 100644[m
[1mindex 7d67e23..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scripts.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 9b6e71add002b4d9cb484afd4a050343[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scripts/FlythroughCameraController.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scripts/FlythroughCameraController.cs[m
[1mdeleted file mode 100644[m
[1mindex 6d9eb1a..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scripts/FlythroughCameraController.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,54 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class FlythroughCameraController : MonoBehaviour {[m
[31m-	public Transform[] movePath;[m
[31m-	public Transform[] lookPath;[m
[31m-	public Transform lookTarget;[m
[31m-	public float percentage;[m
[31m-	[m
[31m-	private float redPosition = .16f;[m
[31m-	private float bluePosition = .53f;[m
[31m-	private float greenPosition = 1;[m
[31m-	[m
[31m-	//gui styling[m
[31m-	public Font font;[m
[31m-	private GUIStyle style = new GUIStyle();[m
[31m-	[m
[31m-	void Start(){[m
[31m-		style.font=font;[m
[31m-	}[m
[31m-		[m
[31m-	void OnGUI(){[m
[31m-		percentage=GUI.VerticalSlider(new Rect(Screen.width-20,20,15,Screen.height-40),percentage,1,0);[m
[31m-		iTween.PutOnPath(gameObject,movePath,percentage);[m
[31m-		iTween.PutOnPath(lookTarget,lookPath,percentage);[m
[31m-		transform.LookAt(iTween.PointOnPath(lookPath,percentage));[m
[31m-		//[m
[31m-		if(GUI.Button(new Rect(5,Screen.height-25,50,20),"Red")){[m
[31m-			SlideTo(redPosition);[m
[31m-		}[m
[31m-		if(GUI.Button(new Rect(60,Screen.height-25,50,20),"Blue")){[m
[31m-			SlideTo(bluePosition);[m
[31m-		}[m
[31m-		if(GUI.Button(new Rect(115,Screen.height-25,50,20),"Green")){[m
[31m-			SlideTo(greenPosition);[m
[31m-		}[m
[31m-	}[m
[31m-	[m
[31m-	void OnDrawGizmos(){[m
[31m-		iTween.DrawPath(movePath,Color.magenta);[m
[31m-		iTween.DrawPath(lookPath,Color.cyan);[m
[31m-		Gizmos.color=Color.black;[m
[31m-		Gizmos.DrawLine(transform.position,lookTarget.position);[m
[31m-	}[m
[31m-	[m
[31m-	void SlideTo(float position){[m
[31m-		iTween.Stop(gameObject);[m
[31m-		iTween.ValueTo(gameObject,iTween.Hash("from",percentage,"to",position,"time",2,"easetype",iTween.EaseType.easeInOutCubic,"onupdate","SlidePercentage"));	[m
[31m-	}[m
[31m-	[m
[31m-	void SlidePercentage(float p){[m
[31m-		percentage=p;[m
[31m-	}[m
[31m-}[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scripts/FlythroughCameraController.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scripts/FlythroughCameraController.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex de67d50..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scripts/FlythroughCameraController.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 6f0005ee0671c401387b786ac3803deb[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scripts/LookPoint.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scripts/LookPoint.cs[m
[1mdeleted file mode 100644[m
[1mindex af99c39..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scripts/LookPoint.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,7 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-public class LookPoint : MonoBehaviour {[m
[31m-	void OnDrawGizmos(){[m
[31m-		Gizmos.color=Color.cyan;[m
[31m-		Gizmos.DrawWireSphere(transform.position,.25f);	[m
[31m-	}[m
[31m-}[m
\ No newline at end of file[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scripts/LookPoint.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scripts/LookPoint.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex e934273..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scripts/LookPoint.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: fd403a4e57cea48c2925b273b3427f7f[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scripts/LookTarget.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scripts/LookTarget.cs[m
[1mdeleted file mode 100644[m
[1mindex a2f7224..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scripts/LookTarget.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,7 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-public class LookTarget : MonoBehaviour {[m
[31m-	void OnDrawGizmos(){[m
[31m-		Gizmos.color=Color.cyan;[m
[31m-		Gizmos.DrawSphere(transform.position,.25f);	[m
[31m-	}[m
[31m-}[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scripts/LookTarget.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scripts/LookTarget.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex d29f151..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scripts/LookTarget.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 7b15ffa0bb0364cd5a3b93361f1282d3[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scripts/MovePoint.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scripts/MovePoint.cs[m
[1mdeleted file mode 100644[m
[1mindex 8dee0de..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scripts/MovePoint.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,7 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-public class MovePoint : MonoBehaviour {[m
[31m-	void OnDrawGizmos(){[m
[31m-		Gizmos.color=Color.magenta;[m
[31m-		Gizmos.DrawWireSphere(transform.position,.25f);	[m
[31m-	}[m
[31m-}[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scripts/MovePoint.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scripts/MovePoint.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex 60bc26c..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Flythrough/Scripts/MovePoint.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: f79199b3d360a4735aa2de3c20ee64cc[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement.meta[m
[1mdeleted file mode 100644[m
[1mindex b9ed638..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 28d8fbf45c61248318186a69f1fb590d[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Images.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Images.meta[m
[1mdeleted file mode 100644[m
[1mindex c8816f1..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Images.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: d1c746b40596f4313ac4589259a1186d[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Images/innerGlow.png b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Images/innerGlow.png[m
[1mdeleted file mode 100644[m
[1mindex 5249604..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Images/innerGlow.png and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Images/innerGlow.png.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Images/innerGlow.png.meta[m
[1mdeleted file mode 100644[m
[1mindex 13ab079..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Images/innerGlow.png.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 051a4393f767943608319c95f14c0646[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 0[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 2[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: 5[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: 1[m
[31m-    aniso: 1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: 1[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: -1[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Materials.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Materials.meta[m
[1mdeleted file mode 100644[m
[1mindex 47ced1f..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Materials.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 370f4a0da1ca741d09f829929bb713b0[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Materials/Capsule.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Materials/Capsule.mat[m
[1mdeleted file mode 100644[m
[1mindex c24f9b8..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Materials/Capsule.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Materials/Capsule.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Materials/Capsule.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex 900d831..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Materials/Capsule.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: e37dcb84d92724f2eb1c9b578f6a782d[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Resources.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Resources.meta[m
[1mdeleted file mode 100644[m
[1mindex 4490f04..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Resources.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 55913cc2d4d5d43648e5561bec876d1c[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Resources/GameBall.prefab b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Resources/GameBall.prefab[m
[1mdeleted file mode 100644[m
[1mindex ca177ca..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Resources/GameBall.prefab and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Resources/GameBall.prefab.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Resources/GameBall.prefab.meta[m
[1mdeleted file mode 100644[m
[1mindex b597873..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Resources/GameBall.prefab.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: ec277270098ec4f2f9e4a175b7afe541[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Resources/GamePieceCSharp.prefab b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Resources/GamePieceCSharp.prefab[m
[1mdeleted file mode 100644[m
[1mindex 3f9b355..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Resources/GamePieceCSharp.prefab and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Resources/GamePieceCSharp.prefab.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Resources/GamePieceCSharp.prefab.meta[m
[1mdeleted file mode 100644[m
[1mindex c2071ae..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Resources/GamePieceCSharp.prefab.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 3e92c114882234f4e81c37aef3e2ccc7[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Resources/GamePieceJS.prefab b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Resources/GamePieceJS.prefab[m
[1mdeleted file mode 100644[m
[1mindex 2ffc39c..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Resources/GamePieceJS.prefab and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Resources/GamePieceJS.prefab.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Resources/GamePieceJS.prefab.meta[m
[1mdeleted file mode 100644[m
[1mindex 3315bf9..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Resources/GamePieceJS.prefab.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: aace1dc8f33784cb1b6f31b829bf3d65[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Scenes.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Scenes.meta[m
[1mdeleted file mode 100644[m
[1mindex aff1e42..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Scenes.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 7d751bb045be74f859c10eb9b4b7cdd9[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Scenes/C#.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Scenes/C#.unity[m
[1mdeleted file mode 100644[m
[1mindex 33fad77..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Scenes/C#.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Scenes/C#.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Scenes/C#.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex d25b215..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Scenes/C#.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 572506b055a9343fab2ff14b1ee2f4ce[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Scenes/JS.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Scenes/JS.unity[m
[1mdeleted file mode 100644[m
[1mindex 65ce0e5..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Scenes/JS.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Scenes/JS.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Scenes/JS.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex 95c5635..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Scenes/JS.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 690fcc4e720e74d988bf678679e5646c[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Scripts.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Scripts.meta[m
[1mdeleted file mode 100644[m
[1mindex 32f90b6..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Scripts.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: d5cd3c970c7b144208ce8f7ab64a8f4f[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Scripts/GameBoardCSharp.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Scripts/GameBoardCSharp.cs[m
[1mdeleted file mode 100644[m
[1mindex 6446681..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Scripts/GameBoardCSharp.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,53 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class GameBoardCSharp : MonoBehaviour[m
[31m-{	[m
[31m-	GameObject currentTarget=null;[m
[31m-	GameObject ball;[m
[31m-	public int rate = 10;[m
[31m-	public bool ballSet = true;[m
[31m-	[m
[31m-	void Start ()[m
[31m-	{[m
[31m-		CreateGameBoard(9,9);[m
[31m-		ball = (GameObject)Instantiate((GameObject)Resources.Load("GameBall"),new Vector3(0,.5f,0),Quaternion.identity);[m
[31m-	}[m
[31m-	[m
[31m-	void SetTarget(GameObject target){[m
[31m-		if(currentTarget != null && target!=currentTarget){[m
[31m-			currentTarget.SendMessage("Deactivate");[m
[31m-		}[m
[31m-		currentTarget=target;[m
[31m-		ballSet=false;[m
[31m-		float travelTime = Vector3.Distance(ball.transform.position, target.transform.position)/rate;[m
[31m-		iTween.MoveBy(ball,iTween.Hash("x",target.transform.position.x-ball.transform.position.x,"easetype","easeinoutsine","time",travelTime));[m
[31m-		iTween.MoveBy(ball,iTween.Hash("z",target.transform.position.z-ball.transform.position.z,"time",travelTime,"delay",travelTime,"easetype","easeinoutsine","oncomplete","Reset","oncompletetarget",gameObject));[m
[31m-	}[m
[31m-	[m
[31m-	void Reset(){[m
[31m-		ballSet=true;[m
[31m-	}[m
[31m-		[m
[31m-	void CreateGameBoard(uint cols, uint rows){[m
[31m-		GameObject block = (GameObject)Resources.Load("GamePieceCSharp");[m
[31m-		[m
[31m-		for (int i = 0; i < cols; i++) {[m
[31m-			for (int j = 0; j < rows; j++) {[m
[31m-				GameObject newBlock = (GameObject)Instantiate(block,new Vector3(i,0,j),Quaternion.identity);[m
[31m-				newBlock.name="Block: " + i + "," + j;[m
[31m-				newBlock.SendMessage("SetGameboard",this);[m
[31m-				Color blockColor;[m
[31m-				if((j+i)%2 == 0){[m
[31m-					blockColor=Color.black;[m
[31m-				}else{[m
[31m-					blockColor=Color.white;[m
[31m-				}[m
[31m-				newBlock.GetComponent<Renderer>().material.color=blockColor;[m
[31m-				newBlock.transform.parent=transform;[m
[31m-			}[m
[31m-		}[m
[31m-		transform.position= new Vector3(-cols/2,0,-rows/2);[m
[31m-	}[m
[31m-}[m
[31m-[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Scripts/GameBoardCSharp.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Scripts/GameBoardCSharp.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex e98464b..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Scripts/GameBoardCSharp.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: b7b7c58464d2742b996d64944462b526[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Scripts/GamePieceCSharp.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Scripts/GamePieceCSharp.cs[m
[1mdeleted file mode 100644[m
[1mindex 3bd48ee..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Scripts/GamePieceCSharp.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,56 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class GamePieceCSharp : MonoBehaviour[m
[31m-{[m
[31m-	private Color currentColor;[m
[31m-	private Vector3 currentPosition;[m
[31m-	GameBoardCSharp gameBoard;[m
[31m-	bool isActive;[m
[31m-	[m
[31m-	void Start(){[m
[31m-		currentColor=GetComponent<Renderer>().material.color;[m
[31m-		currentPosition=transform.position;[m
[31m-	}[m
[31m-	[m
[31m-	void SetGameboard(GameBoardCSharp gameBoard){[m
[31m-		this.gameBoard=gameBoard;[m
[31m-	}[m
[31m-	[m
[31m-	void Deactivate(){[m
[31m-		isActive=false;[m
[31m-		iTween.ColorTo(gameObject,currentColor,.4f);[m
[31m-	}[m
[31m-	[m
[31m-	void Activate(){[m
[31m-		isActive=true;[m
[31m-		GetComponent<Renderer>().material.color=Color.red;[m
[31m-		SendMessageUpwards("SetTarget",gameObject);	[m
[31m-		iTween.MoveTo(gameObject,currentPosition,.4f);[m
[31m-	}[m
[31m-	[m
[31m-	void OnMouseEnter(){[m
[31m-		if(!isActive){[m
[31m-			if(!gameBoard.ballSet){[m
[31m-				GetComponent<Renderer>().material.color=Color.yellow;[m
[31m-			}else{[m
[31m-				GetComponent<Renderer>().material.color=Color.green;[m
[31m-			}[m
[31m-			transform.position=new Vector3(currentPosition.x,.5f,currentPosition.z);[m
[31m-		}[m
[31m-	}[m
[31m-	[m
[31m-	void OnMouseExit(){[m
[31m-		if(!isActive){[m
[31m-			iTween.ColorTo(gameObject,currentColor,.4f);[m
[31m-			iTween.MoveTo(gameObject,currentPosition,.4f);[m
[31m-		}[m
[31m-	}[m
[31m-	[m
[31m-	void OnMouseDown(){[m
[31m-		if(gameBoard.ballSet){[m
[31m-			Activate();[m
[31m-		}[m
[31m-	}[m
[31m-}[m
[31m-[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Scripts/GamePieceCSharp.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Scripts/GamePieceCSharp.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex 8bc1cfe..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/GridMovement/Scripts/GamePieceCSharp.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: dadef893490b74c33b62fca6730e1673[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame.meta[m
[1mdeleted file mode 100644[m
[1mindex f9c6815..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: ae9da413833cb4893a729363c8388326[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Audio.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Audio.meta[m
[1mdeleted file mode 100644[m
[1mindex ca8f3a0..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Audio.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 585f26b14c8b545899091d0f6f76969b[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Audio/ChoiceSound.wav b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Audio/ChoiceSound.wav[m
[1mdeleted file mode 100644[m
[1mindex ddcfe17..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Audio/ChoiceSound.wav and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Audio/ChoiceSound.wav.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Audio/ChoiceSound.wav.meta[m
[1mdeleted file mode 100644[m
[1mindex 6a784d8..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Audio/ChoiceSound.wav.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,12 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: ce13601f6df2746f4b3531cce310b907[m
[31m-AudioImporter:[m
[31m-  serializedVersion: 4[m
[31m-  format: -1[m
[31m-  quality: .5[m
[31m-  stream: 0[m
[31m-  3D: 1[m
[31m-  forceToMono: 0[m
[31m-  useHardware: 0[m
[31m-  loopable: 0[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Audio/CountDown.wav b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Audio/CountDown.wav[m
[1mdeleted file mode 100644[m
[1mindex db47301..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Audio/CountDown.wav and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Audio/CountDown.wav.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Audio/CountDown.wav.meta[m
[1mdeleted file mode 100644[m
[1mindex 0697cac..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Audio/CountDown.wav.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,12 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: a4d8be3235dc64dcb8cc5bb56876e4bc[m
[31m-AudioImporter:[m
[31m-  serializedVersion: 4[m
[31m-  format: -1[m
[31m-  quality: .5[m
[31m-  stream: 0[m
[31m-  3D: 1[m
[31m-  forceToMono: 0[m
[31m-  useHardware: 0[m
[31m-  loopable: 0[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Audio/DemoSound.wav b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Audio/DemoSound.wav[m
[1mdeleted file mode 100644[m
[1mindex 8ab4e17..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Audio/DemoSound.wav and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Audio/DemoSound.wav.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Audio/DemoSound.wav.meta[m
[1mdeleted file mode 100644[m
[1mindex cd34f8c..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Audio/DemoSound.wav.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,12 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 919c4a6374e604703a36801073c87a89[m
[31m-AudioImporter:[m
[31m-  serializedVersion: 4[m
[31m-  format: -1[m
[31m-  quality: .5[m
[31m-  stream: 0[m
[31m-  3D: 1[m
[31m-  forceToMono: 0[m
[31m-  useHardware: 0[m
[31m-  loopable: 0[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Audio/FailSound.wav b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Audio/FailSound.wav[m
[1mdeleted file mode 100644[m
[1mindex c4a2037..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Audio/FailSound.wav and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Audio/FailSound.wav.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Audio/FailSound.wav.meta[m
[1mdeleted file mode 100644[m
[1mindex d9b76e2..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Audio/FailSound.wav.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,12 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 0c994514d3c32492da42b1eec3c7f67a[m
[31m-AudioImporter:[m
[31m-  serializedVersion: 4[m
[31m-  format: -1[m
[31m-  quality: .5[m
[31m-  stream: 0[m
[31m-  3D: 1[m
[31m-  forceToMono: 0[m
[31m-  useHardware: 0[m
[31m-  loopable: 0[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Audio/Success.wav b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Audio/Success.wav[m
[1mdeleted file mode 100644[m
[1mindex cb24a51..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Audio/Success.wav and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Audio/Success.wav.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Audio/Success.wav.meta[m
[1mdeleted file mode 100644[m
[1mindex 953f99a..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Audio/Success.wav.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,12 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 26562c6b71e924b1e91a93713d597089[m
[31m-AudioImporter:[m
[31m-  serializedVersion: 4[m
[31m-  format: -1[m
[31m-  quality: .5[m
[31m-  stream: 0[m
[31m-  3D: 1[m
[31m-  forceToMono: 0[m
[31m-  useHardware: 0[m
[31m-  loopable: 0[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Fonts.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Fonts.meta[m
[1mdeleted file mode 100644[m
[1mindex bbcbd63..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Fonts.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 26077d31354824403901ff3faea141f0[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Fonts/Arial Black.ttf b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Fonts/Arial Black.ttf[m
[1mdeleted file mode 100644[m
[1mindex 8877277..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Fonts/Arial Black.ttf and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Fonts/Arial Black.ttf.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Fonts/Arial Black.ttf.meta[m
[1mdeleted file mode 100644[m
[1mindex f3c509a..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Fonts/Arial Black.ttf.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,15 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: fea8919bd85f44025b4cd9f686e34efe[m
[31m-TrueTypeFontImporter:[m
[31m-  serializedVersion: 2[m
[31m-  fontSize: 16[m
[31m-  fontColor: {r: 1, g: 1, b: 1, a: 1}[m
[31m-  forceTextureCase: -1[m
[31m-  characterSpacing: 1[m
[31m-  characterPadding: 0[m
[31m-  includeFontData: 1[m
[31m-  use2xBehaviour: 1[m
[31m-  fontNames: [][m
[31m-  customCharacters: [m
[31m-  fontRenderingMode: 0[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Images.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Images.meta[m
[1mdeleted file mode 100644[m
[1mindex c11dabb..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Images.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: f8285d075bf204c6eadd1d38c11f1443[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Images/innerGlow.png b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Images/innerGlow.png[m
[1mdeleted file mode 100644[m
[1mindex 5249604..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Images/innerGlow.png and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Images/innerGlow.png.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Images/innerGlow.png.meta[m
[1mdeleted file mode 100644[m
[1mindex 2c93b85..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Images/innerGlow.png.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 2ff2cd6a7853a4551920c95b616c6766[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 1[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 2[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: -1[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: -1[m
[31m-    aniso: -1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: -1[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: -1[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Images/replayButton.png b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Images/replayButton.png[m
[1mdeleted file mode 100644[m
[1mindex 8e03f54..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Images/replayButton.png and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Images/replayButton.png.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Images/replayButton.png.meta[m
[1mdeleted file mode 100644[m
[1mindex b139e2c..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Images/replayButton.png.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 4f65cf1520fdc4464951428f18d789d9[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 1[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 2[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: -1[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: -1[m
[31m-    aniso: -1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: -1[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: -1[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Materials.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Materials.meta[m
[1mdeleted file mode 100644[m
[1mindex 3642d3e..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Materials.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: ae0609eb0a6274c7fa77c13f83e90dcd[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Materials/Black.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Materials/Black.mat[m
[1mdeleted file mode 100644[m
[1mindex 1795a08..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Materials/Black.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Materials/Black.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Materials/Black.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex e036483..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Materials/Black.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 7f72723861602402780378a3220e6400[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Materials/Color.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Materials/Color.mat[m
[1mdeleted file mode 100644[m
[1mindex 2c63705..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Materials/Color.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Materials/Color.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Materials/Color.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex 6b6d843..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Materials/Color.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: ba21449edd95743a18f4b2748b4dd1e0[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Prefab.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Prefab.meta[m
[1mdeleted file mode 100644[m
[1mindex b7a4a9a..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Prefab.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 21b6db852882d43d89ee023639db096e[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Prefab/Box-C#.prefab b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Prefab/Box-C#.prefab[m
[1mdeleted file mode 100644[m
[1mindex 940db13..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Prefab/Box-C#.prefab and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Prefab/Box-C#.prefab.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Prefab/Box-C#.prefab.meta[m
[1mdeleted file mode 100644[m
[1mindex cff0444..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Prefab/Box-C#.prefab.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 82c7cda65b6fd4925817145ccf422616[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Prefab/Box-JS.prefab b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Prefab/Box-JS.prefab[m
[1mdeleted file mode 100644[m
[1mindex 34a8061..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Prefab/Box-JS.prefab and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Prefab/Box-JS.prefab.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Prefab/Box-JS.prefab.meta[m
[1mdeleted file mode 100644[m
[1mindex d484e9d..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Prefab/Box-JS.prefab.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: fa80474d9dfc84e7a82bfa15fbdb54e3[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Scenes.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Scenes.meta[m
[1mdeleted file mode 100644[m
[1mindex 567ec34..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Scenes.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 568b4fabb774044b6aad90875257d2ee[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Scenes/C#.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Scenes/C#.unity[m
[1mdeleted file mode 100644[m
[1mindex 8aae1ec..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Scenes/C#.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Scenes/C#.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Scenes/C#.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex 491cde0..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Scenes/C#.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 3c677226aa62a40e783add920d64dcc2[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Scenes/JS.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Scenes/JS.unity[m
[1mdeleted file mode 100644[m
[1mindex c09bad8..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Scenes/JS.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Scenes/JS.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Scenes/JS.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex 8a29cf1..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Scenes/JS.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 713966658867846aeb0db2cb12ec200a[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Scripts.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Scripts.meta[m
[1mdeleted file mode 100644[m
[1mindex 9902c3b..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Scripts.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 9ddea4e14f6514d1cb0566902580892c[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Scripts/BoardControl.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Scripts/BoardControl.cs[m
[1mdeleted file mode 100644[m
[1mindex 32e9b3d..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Scripts/BoardControl.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,138 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-using System.Collections.Generic;[m
[31m-[m
[31m-public class BoardControl : MonoBehaviour{[m
[31m-	public static bool wait = true;[m
[31m-	public GUIText levelText;[m
[31m-	[m
[31m-	public AudioClip choiceSound;[m
[31m-	public AudioClip countSound;[m
[31m-	public AudioClip failSound;[m
[31m-	public AudioClip successSound;[m
[31m-	public AudioClip demoSound;[m
[31m-	[m
[31m-	private List<int> sequenceArray = new List<int>();[m
[31m-	private List<GameObject> boxArray;[m
[31m-	private int level;[m
[31m-	private int sequenceAttempt;[m
[31m-	private float delayTime = .5f;[m
[31m-	private bool gamePlaying=true;[m
[31m-	[m
[31m-	public GUIStyle style;[m
[31m-	[m
[31m-	void Awake(){[m
[31m-		boxArray = new List<GameObject>();[m
[31m-		int childId=0;[m
[31m-		foreach (Transform child in transform) {[m
[31m-			boxArray.Add(child.gameObject);[m
[31m-			child.SendMessage("setId",childId);[m
[31m-			childId++;[m
[31m-		}[m
[31m-		StartCoroutine(countDown());[m
[31m-	}[m
[31m-	[m
[31m-	void OnGUI () {[m
[31m-		if(!gamePlaying){[m
[31m-			if(GUI.Button (new Rect (67,178,113,32), "",style)){[m
[31m-				gamePlaying=true;[m
[31m-				StartCoroutine(countDown());[m
[31m-			}[m
[31m-		}[m
[31m-	}[m
[31m-	[m
[31m-	IEnumerator countDown(){[m
[31m-		GetComponent<AudioSource>().pitch=.8f;[m
[31m-		GetComponent<AudioSource>().PlayOneShot(countSound);[m
[31m-		levelText.material.color=Color.red;[m
[31m-		levelText.text="GET READY";[m
[31m-		yield return new WaitForSeconds(2);[m
[31m-		[m
[31m-		GetComponent<AudioSource>().pitch=1;[m
[31m-		GetComponent<AudioSource>().PlayOneShot(countSound);[m
[31m-		levelText.material.color=Color.yellow;[m
[31m-		levelText.text="GET SET";[m
[31m-		yield return new WaitForSeconds(2);[m
[31m-		[m
[31m-		levelText.material.color=Color.white;	[m
[31m-		startGame();[m
[31m-	}[m
[31m-	[m
[31m-	void startGame(){[m
[31m-		level=0;[m
[31m-		sequenceArray = new List<int>();[m
[31m-		addChallenge();[m
[31m-	}[m
[31m-	[m
[31m-	void addChallenge(){[m
[31m-		level++;[m
[31m-		sequenceAttempt=0;[m
[31m-		levelText.text="LEVEL:" + (level+100).ToString().Substring(1,2);[m
[31m-		addSequence();[m
[31m-		StartCoroutine(playSequence());		[m
[31m-		wait=true;[m
[31m-	}[m
[31m-	[m
[31m-	void addSequence() {[m
[31m-		for (int i = 0; i < level; i++) {[m
[31m-			sequenceArray.Add(Random.Range(0,boxArray.Count-1));[m
[31m-		}[m
[31m-	}[m
[31m-	[m
[31m-	IEnumerator playSequence(){[m
[31m-		for (int i = 0; i < level; i++) {[m
[31m-			int boxId = sequenceArray[i];[m
[31m-			boxArray[boxId].SendMessage("depress");[m
[31m-			GetComponent<AudioSource>().pitch=Random.Range(.7f,1);[m
[31m-			GetComponent<AudioSource>().PlayOneShot(demoSound);[m
[31m-			yield return new WaitForSeconds(delayTime);[m
[31m-		}[m
[31m-		wait=false;[m
[31m-	}[m
[31m-	[m
[31m-	void sequenceCheck(int attempt){[m
[31m-		if(sequenceArray[sequenceAttempt]==attempt){[m
[31m-			GetComponent<AudioSource>().pitch=Random.Range(.7f,1);[m
[31m-			GetComponent<AudioSource>().PlayOneShot(choiceSound);[m
[31m-			sequenceAttempt++;[m
[31m-		}else{[m
[31m-			StartCoroutine(gameOver());[m
[31m-		}[m
[31m-		[m
[31m-		if(sequenceAttempt==level){[m
[31m-			StartCoroutine(success());[m
[31m-		}[m
[31m-	}[m
[31m-	[m
[31m-	IEnumerator success(){		[m
[31m-		wait=true;[m
[31m-		yield return new WaitForSeconds(.4f);[m
[31m-		GetComponent<AudioSource>().pitch=Random.Range(.7f,1);[m
[31m-		GetComponent<AudioSource>().PlayOneShot(successSound);[m
[31m-		flash();[m
[31m-		yield return new WaitForSeconds(1.2f);[m
[31m-		addChallenge();[m
[31m-	}[m
[31m-	[m
[31m-	void flash(){[m
[31m-		for (int i = 0; i < boxArray.Count; i++) {[m
[31m-			iTween.ColorTo(boxArray[i],iTween.Hash("r",3,"g",3,"b",3,"time",.3));[m
[31m-			iTween.ColorTo(boxArray[i],iTween.Hash("r",.202,"g",.528,"b",.877,"delay",.5,"time",.3));[m
[31m-		}[m
[31m-	}[m
[31m-	[m
[31m-	IEnumerator gameOver(){[m
[31m-		GetComponent<AudioSource>().pitch=.7f;[m
[31m-		GetComponent<AudioSource>().PlayOneShot(failSound);[m
[31m-		gamePlaying=false;[m
[31m-		wait=true;[m
[31m-		levelText.material.color=Color.red;[m
[31m-		levelText.text="GAME OVER";[m
[31m-		iTween.ShakePosition(gameObject,iTween.Hash("y",-.2,"time",.8));[m
[31m-		for (int i = 0; i < boxArray.Count; i++) {[m
[31m-			iTween.ColorTo(boxArray[i],iTween.Hash("r",1,"time",2));[m
[31m-		}[m
[31m-		yield return new WaitForSeconds(2);[m
[31m-		flash();[m
[31m-	}[m
[31m-}[m
\ No newline at end of file[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Scripts/BoardControl.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Scripts/BoardControl.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex 687fc2d..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Scripts/BoardControl.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: c64377a04949c4c6da24968f1d0b5ffa[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Scripts/BoxControl.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Scripts/BoxControl.cs[m
[1mdeleted file mode 100644[m
[1mindex 77cc700..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Scripts/BoxControl.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,41 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class BoxControl : MonoBehaviour{[m
[31m-	public Color depressColor;[m
[31m-	[m
[31m-	Color startColor;[m
[31m-	float depressAmount = .3f;[m
[31m-	float travelTime =.2f;[m
[31m-	float startY;[m
[31m-	float destinationY;[m
[31m-	GameObject go;[m
[31m-	int id;[m
[31m-	[m
[31m-	void Awake(){[m
[31m-		go=gameObject;[m
[31m-		startY = gameObject.transform.position.y;[m
[31m-		destinationY = startY - depressAmount;[m
[31m-		startColor=GetComponent<Renderer>().material.color;[m
[31m-	}[m
[31m-	[m
[31m-	void OnMouseDown () {[m
[31m-		if(!BoardControl.wait){[m
[31m-			depress();[m
[31m-			gameObject.SendMessageUpwards ("sequenceCheck", id);[m
[31m-		}[m
[31m-	}[m
[31m-	[m
[31m-	void depress(){[m
[31m-		iTween.Stop(go);[m
[31m-		GetComponent<Renderer>().material.color = depressColor;[m
[31m-		iTween.ColorTo(go,iTween.Hash("color",startColor,"time",travelTime*2,"delay",travelTime));[m
[31m-		iTween.MoveTo(go,iTween.Hash("y",destinationY,"transition","easeOutCubic","time",travelTime));[m
[31m-		iTween.MoveTo(go,iTween.Hash("y",startY,"transition","easeInCubic","time",travelTime,"delay",travelTime));[m
[31m-	}[m
[31m-	[m
[31m-	void setId(int id){[m
[31m-		this.id=id;[m
[31m-	}[m
[31m-}[m
[31m-[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Scripts/BoxControl.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Scripts/BoxControl.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex ddeec2b..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/MemoryGame/Scripts/BoxControl.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 47143312ee74442d9bafae5a6693df2d[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample.meta[m
[1mdeleted file mode 100644[m
[1mindex f8084ed..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: a515b82d380624340bc66238ebbad71b[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Materials.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Materials.meta[m
[1mdeleted file mode 100644[m
[1mindex 978468f..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Materials.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: cd0a0fc442785437f9f4fdd9732d3a9e[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Materials/Blue.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Materials/Blue.mat[m
[1mdeleted file mode 100644[m
[1mindex 034a3da..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Materials/Blue.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Materials/Blue.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Materials/Blue.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex a0a0bb8..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Materials/Blue.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 4493d64ddfe654a258978ccc473f7993[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Materials/Green.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Materials/Green.mat[m
[1mdeleted file mode 100644[m
[1mindex 82b5200..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Materials/Green.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Materials/Green.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Materials/Green.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex 6ca1d3b..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Materials/Green.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 075a02a16e0e0416096c569786b2ceb8[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Materials/Red.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Materials/Red.mat[m
[1mdeleted file mode 100644[m
[1mindex 393def3..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Materials/Red.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Materials/Red.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Materials/Red.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex d8f77d6..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Materials/Red.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 32872a78620fd43b388725ee16adbbee[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Materials/Tail.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Materials/Tail.mat[m
[1mdeleted file mode 100644[m
[1mindex f2401a4..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Materials/Tail.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Materials/Tail.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Materials/Tail.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex 19529c7..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Materials/Tail.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 347d5fb449b404916bd4880f22d34dc4[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Prefabs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Prefabs.meta[m
[1mdeleted file mode 100644[m
[1mindex 03120da..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Prefabs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 9faf771512a18472b93d95ad1c9132d2[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Prefabs/Point.prefab b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Prefabs/Point.prefab[m
[1mdeleted file mode 100644[m
[1mindex 5af1e98..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Prefabs/Point.prefab and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Prefabs/Point.prefab.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Prefabs/Point.prefab.meta[m
[1mdeleted file mode 100644[m
[1mindex d101610..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Prefabs/Point.prefab.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: a2c31c8702ee6470c8be8c7add16f4b4[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Scenes.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Scenes.meta[m
[1mdeleted file mode 100644[m
[1mindex 821b430..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Scenes.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 62dc9a865ba834476b5f998048f35535[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Scenes/C#.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Scenes/C#.unity[m
[1mdeleted file mode 100644[m
[1mindex acce7cf..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Scenes/C#.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Scenes/C#.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Scenes/C#.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex 9c21ffb..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Scenes/C#.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: cab65d08b31e34d79a396b5116ed5801[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Scenes/JS.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Scenes/JS.unity[m
[1mdeleted file mode 100644[m
[1mindex acce7cf..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Scenes/JS.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Scenes/JS.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Scenes/JS.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex 4acf8d7..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Scenes/JS.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: f13e760f1d9824428b10b32dd56d73d7[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Scripts.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Scripts.meta[m
[1mdeleted file mode 100644[m
[1mindex 61d64bf..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Scripts.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: d196dcfce29f242e9bf4b594f5a42c17[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Scripts/Path.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Scripts/Path.cs[m
[1mdeleted file mode 100644[m
[1mindex bda94aa..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Scripts/Path.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,15 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class Path : MonoBehaviour{[m
[31m-	public Transform[] path;[m
[31m-	[m
[31m-	void OnDrawGizmos(){[m
[31m-		iTween.DrawPath(path);	[m
[31m-	}[m
[31m-	[m
[31m-	void Start(){[m
[31m-		iTween.MoveTo(gameObject,iTween.Hash("path",path,"time",1,"easetype",iTween.EaseType.linear,"looptype",iTween.LoopType.loop,"movetopath",false));[m
[31m-	}[m
[31m-}[m
[31m-[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Scripts/Path.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Scripts/Path.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex 23e60c1..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Scripts/Path.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 1cd1807a74f6943e6a34bc8075fef6f2[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Scripts/Point.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Scripts/Point.cs[m
[1mdeleted file mode 100644[m
[1mindex 18ef365..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Scripts/Point.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,6 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-public class Point : MonoBehaviour {[m
[31m-	void OnDrawGizmos(){[m
[31m-		Gizmos.DrawWireSphere(transform.position,.25f);	[m
[31m-	}[m
[31m-}[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Scripts/Point.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Scripts/Point.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex 5e00c48..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/OrbitExample/Scripts/Point.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: fa09087e8e8d04091ad92f8511c017df[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter.meta[m
[1mdeleted file mode 100644[m
[1mindex ba91c5d..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 05e340b88e203473a8ba0684af1603d9[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials.meta[m
[1mdeleted file mode 100644[m
[1mindex 1b9c712..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 45d978ec2874f4053932ceffc1d19bf5[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/Character.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/Character.mat[m
[1mdeleted file mode 100644[m
[1mindex b4d8b31..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/Character.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/Character.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/Character.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex a35568f..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/Character.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 904461f40da0545c99a916509d90c399[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/Particles.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/Particles.mat[m
[1mdeleted file mode 100644[m
[1mindex 10942fe..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/Particles.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/Particles.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/Particles.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex 49ea4a9..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/Particles.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 11a279ff4c1b545fd99f4110fd864e4d[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/curve-lambert1.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/curve-lambert1.mat[m
[1mdeleted file mode 100644[m
[1mindex a7f6dce..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/curve-lambert1.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/curve-lambert1.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/curve-lambert1.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex 8a9e406..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/curve-lambert1.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 29694ef3959f2413cb5ae1e0fcb6a37d[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/path-lambert1.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/path-lambert1.mat[m
[1mdeleted file mode 100644[m
[1mindex 94b8783..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/path-lambert1.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/path-lambert1.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/path-lambert1.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex c92538f..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/path-lambert1.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 12a4940a0af8041c381aeea367905449[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/ramp-lambert1.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/ramp-lambert1.mat[m
[1mdeleted file mode 100644[m
[1mindex 5f3c506..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/ramp-lambert1.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/ramp-lambert1.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/ramp-lambert1.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex f6d763d..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/ramp-lambert1.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 98db6cf081a944e9aa08b481e7e1d881[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/ramp2-lambert1.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/ramp2-lambert1.mat[m
[1mdeleted file mode 100644[m
[1mindex cded225..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/ramp2-lambert1.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/ramp2-lambert1.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/ramp2-lambert1.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex 7963645..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/ramp2-lambert1.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 4e3046067a59b459abd5a06a801e6cc3[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/ramp3-lambert1.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/ramp3-lambert1.mat[m
[1mdeleted file mode 100644[m
[1mindex 7184675..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/ramp3-lambert1.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/ramp3-lambert1.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/ramp3-lambert1.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex 9b58672..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Materials/ramp3-lambert1.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 3e571d4faf9fb4fcd8bf407aa7fab353[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models.meta[m
[1mdeleted file mode 100644[m
[1mindex 17f02e2..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: d8c3a5d839e1848b58ac03cde1930ae5[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models/Materials.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models/Materials.meta[m
[1mdeleted file mode 100644[m
[1mindex 6ce6e27..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models/Materials.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: d0bcff4b1e3ef4d09a1c598f68534e0f[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models/Materials/curve-lambert1.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models/Materials/curve-lambert1.mat[m
[1mdeleted file mode 100644[m
[1mindex db47741..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models/Materials/curve-lambert1.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models/Materials/curve-lambert1.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models/Materials/curve-lambert1.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex 991257e..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models/Materials/curve-lambert1.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 825577cc2ac1d411b8b431ace4e8fbc6[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models/Materials/path-lambert1.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models/Materials/path-lambert1.mat[m
[1mdeleted file mode 100644[m
[1mindex 600e89e..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models/Materials/path-lambert1.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models/Materials/path-lambert1.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models/Materials/path-lambert1.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex 5a02232..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models/Materials/path-lambert1.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: fce4a0a9722b7412e8bd497e06c59c54[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models/Materials/ramp-lambert1.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models/Materials/ramp-lambert1.mat[m
[1mdeleted file mode 100644[m
[1mindex 9350eed..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models/Materials/ramp-lambert1.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models/Materials/ramp-lambert1.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models/Materials/ramp-lambert1.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex dea81c6..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models/Materials/ramp-lambert1.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: f1d5ade6fe11242f7b2d0758978c34e3[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models/curve.fbx b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models/curve.fbx[m
[1mdeleted file mode 100644[m
[1mindex df12185..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models/curve.fbx and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models/curve.fbx.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models/curve.fbx.meta[m
[1mdeleted file mode 100644[m
[1mindex ba185ac..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models/curve.fbx.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,63 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: f5bcce4b020224a7baec262214a0345c[m
[31m-ModelImporter:[m
[31m-  serializedVersion: 15[m
[31m-  fileIDToRecycleName:[m
[31m-    100000: polySurface2[m
[31m-    100002: //RootNode[m
[31m-    400000: polySurface2[m
[31m-    400002: //RootNode[m
[31m-    2300000: polySurface2[m
[31m-    3300000: polySurface2[m
[31m-    4300000: polySurface2[m
[31m-    11100000: //RootNode[m
[31m-  materials:[m
[31m-    importMaterials: 1[m
[31m-    materialName: 3[m
[31m-    materialSearch: 1[m
[31m-  animations:[m
[31m-    legacyGenerateAnimations: 4[m
[31m-    bakeSimulation: 0[m
[31m-    animationCompression: 1[m
[31m-    animationRotationError: .5[m
[31m-    animationPositionError: .5[m
[31m-    animationScaleError: .5[m
[31m-    animationWrapMode: 0[m
[31m-    clipAnimations: [][m
[31m-    isReadable: 1[m
[31m-  meshes:[m
[31m-    lODScreenPercentages: [][m
[31m-    globalScale: 1[m
[31m-    meshCompression: 0[m
[31m-    addColliders: 0[m
[31m-    swapUVChannels: 0[m
[31m-    generateSecondaryUV: 0[m
[31m-    useFileUnits: 1[m
[31m-    optimizeMeshForGPU: 1[m
[31m-    secondaryUVAngleDistortion: 8[m
[31m-    secondaryUVAreaDistortion: 15.000001[m
[31m-    secondaryUVHardAngle: 88[m
[31m-    secondaryUVPackMargin: 4[m
[31m-  tangentSpace:[m
[31m-    normalSmoothAngle: 60[m
[31m-    splitTangentsAcrossUV: 0[m
[31m-    normalImportMode: 0[m
[31m-    tangentImportMode: 1[m
[31m-  importAnimation: 1[m
[31m-  copyAvatar: 0[m
[31m-  humanDescription:[m
[31m-    human: [][m
[31m-    skeleton: [][m
[31m-    handles: [][m
[31m-    armTwist: .5[m
[31m-    foreArmTwist: .5[m
[31m-    upperLegTwist: .5[m
[31m-    legTwist: .5[m
[31m-    armStretch: .0500000007[m
[31m-    legStretch: .0500000007[m
[31m-    feetSpacing: 0[m
[31m-    rootMotionBoneName: [m
[31m-  lastHumanDescriptionAvatarSource: {instanceID: 0}[m
[31m-  additionalBone: 0[m
[31m-  animationType: 1[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models/path.fbx b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models/path.fbx[m
[1mdeleted file mode 100644[m
[1mindex ccc637d..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models/path.fbx and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models/path.fbx.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models/path.fbx.meta[m
[1mdeleted file mode 100644[m
[1mindex e5fbeca..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models/path.fbx.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,62 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 3ed8ac8e0d0d1439f85ceab6250e2db3[m
[31m-ModelImporter:[m
[31m-  serializedVersion: 15[m
[31m-  fileIDToRecycleName:[m
[31m-    100000: //RootNode[m
[31m-    400000: //RootNode[m
[31m-    2300000: //RootNode[m
[31m-    2800000: __AssetImporterPreview[m
[31m-    3300000: //RootNode[m
[31m-    4300000: pCube3[m
[31m-    11100000: //RootNode[m
[31m-  materials:[m
[31m-    importMaterials: 1[m
[31m-    materialName: 3[m
[31m-    materialSearch: 1[m
[31m-  animations:[m
[31m-    legacyGenerateAnimations: 4[m
[31m-    bakeSimulation: 0[m
[31m-    animationCompression: 1[m
[31m-    animationRotationError: .5[m
[31m-    animationPositionError: .5[m
[31m-    animationScaleError: .5[m
[31m-    animationWrapMode: 0[m
[31m-    clipAnimations: [][m
[31m-    isReadable: 1[m
[31m-  meshes:[m
[31m-    lODScreenPercentages: [][m
[31m-    globalScale: 1[m
[31m-    meshCompression: 0[m
[31m-    addColliders: 0[m
[31m-    swapUVChannels: 0[m
[31m-    generateSecondaryUV: 0[m
[31m-    useFileUnits: 1[m
[31m-    optimizeMeshForGPU: 1[m
[31m-    secondaryUVAngleDistortion: 8[m
[31m-    secondaryUVAreaDistortion: 15.000001[m
[31m-    secondaryUVHardAngle: 88[m
[31m-    secondaryUVPackMargin: 4[m
[31m-  tangentSpace:[m
[31m-    normalSmoothAngle: 60[m
[31m-    splitTangentsAcrossUV: 0[m
[31m-    normalImportMode: 0[m
[31m-    tangentImportMode: 1[m
[31m-  importAnimation: 1[m
[31m-  copyAvatar: 0[m
[31m-  humanDescription:[m
[31m-    human: [][m
[31m-    skeleton: [][m
[31m-    handles: [][m
[31m-    armTwist: .5[m
[31m-    foreArmTwist: .5[m
[31m-    upperLegTwist: .5[m
[31m-    legTwist: .5[m
[31m-    armStretch: .0500000007[m
[31m-    legStretch: .0500000007[m
[31m-    feetSpacing: 0[m
[31m-    rootMotionBoneName: [m
[31m-  lastHumanDescriptionAvatarSource: {instanceID: 0}[m
[31m-  additionalBone: 0[m
[31m-  animationType: 1[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models/ramp.fbx b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models/ramp.fbx[m
[1mdeleted file mode 100644[m
[1mindex b587a29..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models/ramp.fbx and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models/ramp.fbx.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models/ramp.fbx.meta[m
[1mdeleted file mode 100644[m
[1mindex ac40403..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Models/ramp.fbx.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,63 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 5b281488304ea438e8a5903afbcf2b80[m
[31m-ModelImporter:[m
[31m-  serializedVersion: 15[m
[31m-  fileIDToRecycleName:[m
[31m-    100000: //RootNode[m
[31m-    400000: //RootNode[m
[31m-    2300000: //RootNode[m
[31m-    2800000: __AssetImporterPreview[m
[31m-    3300000: //RootNode[m
[31m-    4300000: polySurface1[m
[31m-    4300002: pCube3[m
[31m-    11100000: //RootNode[m
[31m-  materials:[m
[31m-    importMaterials: 1[m
[31m-    materialName: 3[m
[31m-    materialSearch: 1[m
[31m-  animations:[m
[31m-    legacyGenerateAnimations: 4[m
[31m-    bakeSimulation: 0[m
[31m-    animationCompression: 1[m
[31m-    animationRotationError: .5[m
[31m-    animationPositionError: .5[m
[31m-    animationScaleError: .5[m
[31m-    animationWrapMode: 0[m
[31m-    clipAnimations: [][m
[31m-    isReadable: 1[m
[31m-  meshes:[m
[31m-    lODScreenPercentages: [][m
[31m-    globalScale: 1[m
[31m-    meshCompression: 0[m
[31m-    addColliders: 0[m
[31m-    swapUVChannels: 0[m
[31m-    generateSecondaryUV: 0[m
[31m-    useFileUnits: 1[m
[31m-    optimizeMeshForGPU: 1[m
[31m-    secondaryUVAngleDistortion: 8[m
[31m-    secondaryUVAreaDistortion: 15.000001[m
[31m-    secondaryUVHardAngle: 88[m
[31m-    secondaryUVPackMargin: 4[m
[31m-  tangentSpace:[m
[31m-    normalSmoothAngle: 60[m
[31m-    splitTangentsAcrossUV: 0[m
[31m-    normalImportMode: 0[m
[31m-    tangentImportMode: 1[m
[31m-  importAnimation: 1[m
[31m-  copyAvatar: 0[m
[31m-  humanDescription:[m
[31m-    human: [][m
[31m-    skeleton: [][m
[31m-    handles: [][m
[31m-    armTwist: .5[m
[31m-    foreArmTwist: .5[m
[31m-    upperLegTwist: .5[m
[31m-    legTwist: .5[m
[31m-    armStretch: .0500000007[m
[31m-    legStretch: .0500000007[m
[31m-    feetSpacing: 0[m
[31m-    rootMotionBoneName: [m
[31m-  lastHumanDescriptionAvatarSource: {instanceID: 0}[m
[31m-  additionalBone: 0[m
[31m-  animationType: 1[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Prefabs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Prefabs.meta[m
[1mdeleted file mode 100644[m
[1mindex b415d00..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Prefabs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 3d73546ee6c6a4a0ab5828185431c357[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Prefabs/Curve.prefab b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Prefabs/Curve.prefab[m
[1mdeleted file mode 100644[m
[1mindex ab1bf8d..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Prefabs/Curve.prefab and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Prefabs/Curve.prefab.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Prefabs/Curve.prefab.meta[m
[1mdeleted file mode 100644[m
[1mindex 72b0e17..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Prefabs/Curve.prefab.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 7c77ffc9ead244caf9f078f3a553e104[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Prefabs/Path.prefab b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Prefabs/Path.prefab[m
[1mdeleted file mode 100644[m
[1mindex a5e325f..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Prefabs/Path.prefab and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Prefabs/Path.prefab.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Prefabs/Path.prefab.meta[m
[1mdeleted file mode 100644[m
[1mindex bdf3ffc..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Prefabs/Path.prefab.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: c7c83b74e3d954af794586bc22ea5ed4[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Prefabs/PathPoint.prefab b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Prefabs/PathPoint.prefab[m
[1mdeleted file mode 100644[m
[1mindex d3aaff4..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Prefabs/PathPoint.prefab and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Prefabs/PathPoint.prefab.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Prefabs/PathPoint.prefab.meta[m
[1mdeleted file mode 100644[m
[1mindex ff3bbfc..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Prefabs/PathPoint.prefab.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 0527e710dd3fa4a3594dc116a706850b[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Prefabs/Ramp.prefab b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Prefabs/Ramp.prefab[m
[1mdeleted file mode 100644[m
[1mindex 1ca0adb..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Prefabs/Ramp.prefab and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Prefabs/Ramp.prefab.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Prefabs/Ramp.prefab.meta[m
[1mdeleted file mode 100644[m
[1mindex b8e75a4..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Prefabs/Ramp.prefab.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 4e2cc6792a22046dfa4b247b271f13c0[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Scenes.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Scenes.meta[m
[1mdeleted file mode 100644[m
[1mindex 073a7ac..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Scenes.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 1c5c9128407bc4b21b3967d691c4886c[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Scenes/C#.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Scenes/C#.unity[m
[1mdeleted file mode 100644[m
[1mindex 24efd56..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Scenes/C#.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Scenes/C#.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Scenes/C#.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex 2b6a25a..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Scenes/C#.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: d53bd3588b8464d2bb54abc1a9a0c5ed[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Scenes/JS.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Scenes/JS.unity[m
[1mdeleted file mode 100644[m
[1mindex 2881965..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Scenes/JS.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Scenes/JS.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Scenes/JS.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex ab28897..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Scenes/JS.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: ce953dbfe9c84456aa8c11dae1103f5d[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Scripts.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Scripts.meta[m
[1mdeleted file mode 100644[m
[1mindex d46ccff..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Scripts.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 600cdfb868858401396aecd0763c0345[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Scripts/Controller.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Scripts/Controller.cs[m
[1mdeleted file mode 100644[m
[1mindex b8982c5..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Scripts/Controller.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,122 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class Controller : MonoBehaviour {[m
[31m-	public Transform[] controlPath;[m
[31m-	public Transform character;[m
[31m-	public enum Direction {Forward,Reverse};[m
[31m-	[m
[31m-	private float pathPosition=0;[m
[31m-	private RaycastHit hit;[m
[31m-	private float speed = .2f;[m
[31m-	private float rayLength = 5;[m
[31m-	private Direction characterDirection;[m
[31m-	private Vector3 floorPosition;	[m
[31m-	private float lookAheadAmount = .01f;[m
[31m-	private float ySpeed=0;[m
[31m-	private float gravity=.5f;[m
[31m-	private float jumpForce=.12f;[m
[31m-	private uint jumpState=0; //0=grounded 1=jumping[m
[31m-	[m
[31m-	void OnDrawGizmos(){[m
[31m-		iTween.DrawPath(controlPath,Color.blue);	[m
[31m-	}	[m
[31m-	[m
[31m-	[m
[31m-	void Start(){[m
[31m-		//plop the character pieces in the "Ignore Raycast" layer so we don't have false raycast data:	[m
[31m-		foreach (Transform child in character) {[m
[31m-			child.gameObject.layer=2;[m
[31m-		}[m
[31m-	}[m
[31m-	[m
[31m-	[m
[31m-	void Update(){[m
[31m-		DetectKeys();[m
[31m-		FindFloorAndRotation();[m
[31m-		MoveCharacter();[m
[31m-		MoveCamera();[m
[31m-	}[m
[31m-	[m
[31m-	[m
[31m-	void DetectKeys(){[m
[31m-		//forward path movement:[m
[31m-		if(Input.GetKeyDown("right")){[m
[31m-			characterDirection=Direction.Forward;	[m
[31m-		}[m
[31m-		if(Input.GetKey("right")) {[m
[31m-			pathPosition += Time.deltaTime * speed;[m
[31m-		}[m
[31m-		[m
[31m-		//reverse path movement:[m
[31m-		if(Input.GetKeyDown("left")){[m
[31m-			characterDirection=Direction.Reverse;[m
[31m-		}[m
[31m-		if(Input.GetKey("left")) {[m
[31m-			//handle path loop around since we can't interpolate a path percentage that's negative(well duh):[m
[31m-			float temp = pathPosition - (Time.deltaTime * speed);[m
[31m-			if(temp<0){[m
[31m-				pathPosition=1;	[m
[31m-			}else{[m
[31m-				pathPosition -= (Time.deltaTime * speed);[m
[31m-			}[m
[31m-		}	[m
[31m-		[m
[31m-		//jump:[m
[31m-		if (Input.GetKeyDown("space") && jumpState==0) {[m
[31m-			ySpeed-=jumpForce;[m
[31m-			jumpState=1;[m
[31m-		}[m
[31m-	}[m
[31m-	[m
[31m-	[m
[31m-	void FindFloorAndRotation(){[m
[31m-		float pathPercent = pathPosition%1;[m
[31m-		Vector3 coordinateOnPath = iTween.PointOnPath(controlPath,pathPercent);[m
[31m-		Vector3 lookTarget;[m
[31m-		[m
[31m-		//calculate look data if we aren't going to be looking beyond the extents of the path:[m
[31m-		if(pathPercent-lookAheadAmount>=0 && pathPercent+lookAheadAmount <=1){[m
[31m-			[m
[31m-			//leading or trailing point so we can have something to look at:[m
[31m-			if(characterDirection==Direction.Forward){[m
[31m-				lookTarget = iTween.PointOnPath(controlPath,pathPercent+lookAheadAmount);[m
[31m-			}else{[m
[31m-				lookTarget = iTween.PointOnPath(controlPath,pathPercent-lookAheadAmount);[m
[31m-			}[m
[31m-			[m
[31m-			//look:[m
[31m-			character.LookAt(lookTarget);[m
[31m-			[m
[31m-			//nullify all rotations but y since we just want to look where we are going:[m
[31m-			float yRot = character.eulerAngles.y;[m
[31m-			character.eulerAngles=new Vector3(0,yRot,0);[m
[31m-		}[m
[31m-[m
[31m-		if (Physics.Raycast(coordinateOnPath,-Vector3.up,out hit, rayLength)){[m
[31m-			Debug.DrawRay(coordinateOnPath, -Vector3.up * hit.distance);[m
[31m-			floorPosition=hit.point;[m
[31m-		}[m
[31m-	}[m
[31m-	[m
[31m-	[m
[31m-	void MoveCharacter(){[m
[31m-		//add gravity:[m
[31m-		ySpeed += gravity * Time.deltaTime;[m
[31m-		[m
[31m-		//apply gravity:[m
[31m-		character.position=new Vector3(floorPosition.x,character.position.y-ySpeed,floorPosition.z);[m
[31m-		[m
[31m-		//floor checking:[m
[31m-		if(character.position.y<floorPosition.y){[m
[31m-			ySpeed=0;[m
[31m-			jumpState=0;[m
[31m-			character.position=new Vector3(floorPosition.x,floorPosition.y,floorPosition.z);[m
[31m-		}		[m
[31m-	}[m
[31m-	[m
[31m-	[m
[31m-	void MoveCamera(){[m
[31m-		iTween.MoveUpdate(Camera.main.gameObject,new Vector3(character.position.x,2.7f,character.position.z-5f),.9f);	[m
[31m-	}[m
[31m-}[m
\ No newline at end of file[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Scripts/Controller.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Scripts/Controller.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex 4e7a8dd..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Scripts/Controller.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 63f27e33ad6a24623a350f02935be4f4[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Scripts/PathPoint.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Scripts/PathPoint.cs[m
[1mdeleted file mode 100644[m
[1mindex 0e1f239..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Scripts/PathPoint.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,9 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class PathPoint : MonoBehaviour {[m
[31m-	void OnDrawGizmos(){[m
[31m-		Gizmos.color=Color.blue;[m
[31m-		Gizmos.DrawWireSphere(transform.position,.25f);[m
[31m-	}[m
[31m-}[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Scripts/PathPoint.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Scripts/PathPoint.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex 00984e9..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Scripts/PathPoint.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: b6e73cf16274d45c2951316a561387ec[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Textures.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Textures.meta[m
[1mdeleted file mode 100644[m
[1mindex 299886b..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Textures.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 4a6397ff9ac8f48beaee6e80f465abfe[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Textures/Particle.png b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Textures/Particle.png[m
[1mdeleted file mode 100644[m
[1mindex f5ace1f..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Textures/Particle.png and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Textures/Particle.png.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Textures/Particle.png.meta[m
[1mdeleted file mode 100644[m
[1mindex 9062e84..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Textures/Particle.png.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 226eea5e516b94c30bc97ac5edf60148[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 1[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 2[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: -1[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: -1[m
[31m-    aniso: -1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: -1[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: -1[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Textures/innerGlow.png b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Textures/innerGlow.png[m
[1mdeleted file mode 100644[m
[1mindex 5249604..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Textures/innerGlow.png and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Textures/innerGlow.png.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Textures/innerGlow.png.meta[m
[1mdeleted file mode 100644[m
[1mindex 63e77a7..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathControlledCharacter/Textures/innerGlow.png.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: bbefb1d9eed524e8c94807f5d4249c98[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 0[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 2[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: -1[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: -1[m
[31m-    aniso: -1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: -1[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: -1[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample.meta[m
[1mdeleted file mode 100644[m
[1mindex 6a49eeb..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: e73a675d485184a0599a11dbfa18f1af[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample/Prefabs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample/Prefabs.meta[m
[1mdeleted file mode 100644[m
[1mindex 812d429..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample/Prefabs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 936e67ad2f5854f85b974a83e6cb34e2[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample/Prefabs/Point.prefab b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample/Prefabs/Point.prefab[m
[1mdeleted file mode 100644[m
[1mindex f88a0ce..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample/Prefabs/Point.prefab and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample/Prefabs/Point.prefab.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample/Prefabs/Point.prefab.meta[m
[1mdeleted file mode 100644[m
[1mindex d78f449..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample/Prefabs/Point.prefab.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 7149f3a9e0c434257966d7a33b97c2ce[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample/Scenes.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample/Scenes.meta[m
[1mdeleted file mode 100644[m
[1mindex 3d77242..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample/Scenes.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 2fc7c92e427ee4242a8a68645077f484[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample/Scenes/C#.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample/Scenes/C#.unity[m
[1mdeleted file mode 100644[m
[1mindex 50fe364..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample/Scenes/C#.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample/Scenes/C#.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample/Scenes/C#.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex 834333c..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample/Scenes/C#.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 80e8fe55098cf4ee283af99ef59f67a7[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample/Scenes/JS.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample/Scenes/JS.unity[m
[1mdeleted file mode 100644[m
[1mindex a4d17aa..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample/Scenes/JS.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample/Scenes/JS.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample/Scenes/JS.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex 3dc3af3..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample/Scenes/JS.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 764dd1237d2ec4445a9f934e5282c0e4[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample/Scripts.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample/Scripts.meta[m
[1mdeleted file mode 100644[m
[1mindex d16e6e2..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample/Scripts.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 57c6b129c2a554369801e90e2ab87965[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample/Scripts/PathCameraController.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample/Scripts/PathCameraController.cs[m
[1mdeleted file mode 100644[m
[1mindex 29c1761..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample/Scripts/PathCameraController.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,11 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class PathCameraController : MonoBehaviour{[m
[31m-	public Transform target;[m
[31m-	[m
[31m-	void LateUpdate () {[m
[31m-		iTween.LookUpdate(gameObject,target.position,2);[m
[31m-	}[m
[31m-}[m
[31m-[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample/Scripts/PathCameraController.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample/Scripts/PathCameraController.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex 5dcf88a..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample/Scripts/PathCameraController.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: ffff269d9c25a4646ab0826a3fd059f7[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample/Scripts/PathExample.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample/Scripts/PathExample.cs[m
[1mdeleted file mode 100644[m
[1mindex da7e487..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample/Scripts/PathExample.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,40 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class PathExample : MonoBehaviour{[m
[31m-	public Transform[] path;[m
[31m-	public GUIStyle style;[m
[31m-	private bool buttonActivated;[m
[31m-	[m
[31m-	void Start(){[m
[31m-		tween();[m
[31m-	}[m
[31m-	[m
[31m-	void OnGUI () {[m
[31m-		if(buttonActivated){[m
[31m-			if(GUI.Button (new Rect (67,178,113,32), "",style)){[m
[31m-				reset();[m
[31m-				tween();[m
[31m-			}[m
[31m-		}[m
[31m-	}[m
[31m-	[m
[31m-	void OnDrawGizmos(){[m
[31m-		iTween.DrawPath(path);[m
[31m-	}[m
[31m-	[m
[31m-	void tween(){[m
[31m-		iTween.MoveTo(gameObject,iTween.Hash("path",path,"time",7,"orienttopath",true,"looktime",.6,"easetype","easeInOutSine","oncomplete","complete"));	[m
[31m-	}[m
[31m-	[m
[31m-	void reset(){[m
[31m-		buttonActivated=false;[m
[31m-		transform.position=new Vector3(0,0,0);[m
[31m-		transform.eulerAngles=new Vector3(0,0,0);[m
[31m-	}[m
[31m-	[m
[31m-	void complete(){[m
[31m-		buttonActivated=true;[m
[31m-	}[m
[31m-}[m
[31m-[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample/Scripts/PathExample.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample/Scripts/PathExample.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex 117e80b..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PathExample/Scripts/PathExample.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 2993c303491cb42a5bb45263c5a7fb2e[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms.meta[m
[1mdeleted file mode 100644[m
[1mindex c70cbfe..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 53b8e6b58eb2b43238e0d6dbcc370098[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Images.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Images.meta[m
[1mdeleted file mode 100644[m
[1mindex fba0fbe..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Images.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: ca865030869bd4a1696cca3206f2bb99[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Images/deathFlash.png b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Images/deathFlash.png[m
[1mdeleted file mode 100644[m
[1mindex 933d6fa..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Images/deathFlash.png and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Images/deathFlash.png.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Images/deathFlash.png.meta[m
[1mdeleted file mode 100644[m
[1mindex f9d9581..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Images/deathFlash.png.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: b2eb9aab4f39c4cb2b9c75b1e7863e09[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 1[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 2[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: -1[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: -1[m
[31m-    aniso: -1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: -1[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: -1[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Images/innerGlow.png b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Images/innerGlow.png[m
[1mdeleted file mode 100644[m
[1mindex 5249604..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Images/innerGlow.png and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Images/innerGlow.png.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Images/innerGlow.png.meta[m
[1mdeleted file mode 100644[m
[1mindex 95d78b9..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Images/innerGlow.png.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: d845f226bc25c44838c4e32cd2a40445[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 0[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 2[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: -1[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: -1[m
[31m-    aniso: -1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: -1[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: -1[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Images/polkaBackground.png b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Images/polkaBackground.png[m
[1mdeleted file mode 100644[m
[1mindex 8ccc4f9..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Images/polkaBackground.png and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Images/polkaBackground.png.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Images/polkaBackground.png.meta[m
[1mdeleted file mode 100644[m
[1mindex 30c5fc9..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Images/polkaBackground.png.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 26a33133e0aad41139e0ba419a8cef26[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 0[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 2[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: -1[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: 2[m
[31m-    aniso: 1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: 0[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: -1[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Images/solidBackground.png b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Images/solidBackground.png[m
[1mdeleted file mode 100644[m
[1mindex 757e965..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Images/solidBackground.png and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Images/solidBackground.png.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Images/solidBackground.png.meta[m
[1mdeleted file mode 100644[m
[1mindex 9912c2f..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Images/solidBackground.png.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 59b3e7209d77a4118a6563b2c60c62e2[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 0[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 2[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: -1[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: -1[m
[31m-    aniso: -1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: -1[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: -1[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Materials.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Materials.meta[m
[1mdeleted file mode 100644[m
[1mindex caf2e23..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Materials.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 1bbbd6dc4f6474095bcce78656959d84[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Materials/lightBlue.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Materials/lightBlue.mat[m
[1mdeleted file mode 100644[m
[1mindex 573380d..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Materials/lightBlue.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Materials/lightBlue.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Materials/lightBlue.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex c7d9a20..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Materials/lightBlue.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 6e1bb6261cd7d47a9af055b19420680d[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Materials/lightBlueTail.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Materials/lightBlueTail.mat[m
[1mdeleted file mode 100644[m
[1mindex b18d1fd..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Materials/lightBlueTail.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Materials/lightBlueTail.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Materials/lightBlueTail.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex b58c5d2..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Materials/lightBlueTail.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 6b3e4e6970f754822ac98cb224018411[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Materials/polkabackground.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Materials/polkabackground.mat[m
[1mdeleted file mode 100644[m
[1mindex 5adbf6b..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Materials/polkabackground.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Materials/polkabackground.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Materials/polkabackground.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex 37f8a3b..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Materials/polkabackground.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: cf4623a303e864cc3ab19aa1233b1d18[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Materials/solidbackground.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Materials/solidbackground.mat[m
[1mdeleted file mode 100644[m
[1mindex 13d9951..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Materials/solidbackground.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Materials/solidbackground.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Materials/solidbackground.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex 1339069..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Materials/solidbackground.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 90fde47082bb94f35afaaaaada8b15dd[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Physic Material.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Physic Material.meta[m
[1mdeleted file mode 100644[m
[1mindex e208f75..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Physic Material.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 8fcb84aa21b98434dbe6aafa2e06316e[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Physic Material/New Physic Material.physicMaterial b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Physic Material/New Physic Material.physicMaterial[m
[1mdeleted file mode 100644[m
[1mindex 1733c30..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Physic Material/New Physic Material.physicMaterial and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Physic Material/New Physic Material.physicMaterial.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Physic Material/New Physic Material.physicMaterial.meta[m
[1mdeleted file mode 100644[m
[1mindex 24a32fa..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Physic Material/New Physic Material.physicMaterial.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: bec088a4836484016abcd8871c3da905[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scenes.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scenes.meta[m
[1mdeleted file mode 100644[m
[1mindex 72c4e3a..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scenes.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: aef4d54137c1e46d7a7851cfde9e5c52[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scenes/C#.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scenes/C#.unity[m
[1mdeleted file mode 100644[m
[1mindex edc49c4..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scenes/C#.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scenes/C#.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scenes/C#.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex 878e8f0..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scenes/C#.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 5e4a3962ec99e47029ce38f0053d4f97[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scenes/JS.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scenes/JS.unity[m
[1mdeleted file mode 100644[m
[1mindex 1c7d4db..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scenes/JS.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scenes/JS.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scenes/JS.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex d93f8bd..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scenes/JS.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 6a761e435844f44cebc01e9c20785302[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scripts.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scripts.meta[m
[1mdeleted file mode 100644[m
[1mindex 250542d..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scripts.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: f09e7edbd474d48ce8f5cfd56894b48a[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scripts/CameraController.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scripts/CameraController.cs[m
[1mdeleted file mode 100644[m
[1mindex 677ea75..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scripts/CameraController.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,25 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class CameraController : MonoBehaviour[m
[31m-{[m
[31m-	bool hasFocus;[m
[31m-	[m
[31m-	public Transform target;[m
[31m-	[m
[31m-	void FixedUpdate ()[m
[31m-	{	[m
[31m-		Vector3 pos = target.position;[m
[31m-		pos.z=-14;[m
[31m-		pos.y=target.position.y+2f;[m
[31m-		iTween.MoveUpdate(gameObject,pos,.8f);[m
[31m-	}[m
[31m-	[m
[31m-	void OnGUI(){[m
[31m-		if(!hasFocus){[m
[31m-			if(GUI.Button(new Rect(75,70,100,50),"Start!")){[m
[31m-				hasFocus=true;[m
[31m-			}[m
[31m-		}[m
[31m-	}[m
[31m-}[m
\ No newline at end of file[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scripts/CameraController.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scripts/CameraController.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex e583ee2..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scripts/CameraController.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: de63ae56d64fb42b5a79a2b1a088b49b[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scripts/CharController.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scripts/CharController.cs[m
[1mdeleted file mode 100644[m
[1mindex 137d8ad..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scripts/CharController.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,57 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class CharController : MonoBehaviour {[m
[31m-	bool grounded = false;[m
[31m-	public float jumpForce=900;[m
[31m-	public float moveSpeed=20;[m
[31m-	[m
[31m-	void Start(){[m
[31m-		//setup feel:[m
[31m-		Physics.gravity=new Vector3(0,-60,0);[m
[31m-		GetComponent<Rigidbody>().angularDrag=7;[m
[31m-	}[m
[31m-	[m
[31m-	void Update(){[m
[31m-		if(Input.GetKeyDown("right") || Input.GetKeyDown("left")){[m
[31m-			GetComponent<Rigidbody>().angularVelocity=Vector3.zero;	[m
[31m-		}[m
[31m-		[m
[31m-		if(grounded){[m
[31m-			if(Input.GetKey("right")){[m
[31m-				GetComponent<Rigidbody>().AddForce(new Vector3(moveSpeed*Time.deltaTime,0,0));	[m
[31m-			}[m
[31m-			if(Input.GetKey("left")){[m
[31m-				GetComponent<Rigidbody>().AddForce(new Vector3(-moveSpeed*Time.deltaTime,0,0));	[m
[31m-			}[m
[31m-			if(Input.GetKeyDown("space") ){[m
[31m-				GetComponent<Rigidbody>().AddForce(new Vector3(0,jumpForce,0));	[m
[31m-			}[m
[31m-		}[m
[31m-		[m
[31m-		//lock the z position for 2D:[m
[31m-		Vector3 tempPos = transform.position;[m
[31m-		tempPos.z=0;[m
[31m-		transform.position=tempPos;[m
[31m-	}[m
[31m-	[m
[31m-	void OnCollisionStay(Collision collisionInfo){[m
[31m-		if(collisionInfo.gameObject.name == "Ground"){[m
[31m-			grounded=true;[m
[31m-		}[m
[31m-	}[m
[31m-	[m
[31m-	void OnCollisionEnter(Collision collisionInfo){[m
[31m-		if(collisionInfo.gameObject.name == "Ground"){[m
[31m-			grounded=true;[m
[31m-			transform.parent=collisionInfo.transform;[m
[31m-		}[m
[31m-	}[m
[31m-	[m
[31m-	void OnCollisionExit(Collision collisionInfo){[m
[31m-		if(collisionInfo.gameObject.name == "Ground"){[m
[31m-			transform.parent=null;[m
[31m-			grounded=false;[m
[31m-		}[m
[31m-	}[m
[31m-}[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scripts/CharController.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scripts/CharController.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex 2bdba8a..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scripts/CharController.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: ba67a80aa507f4ea6b27e0c008f91735[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scripts/DeathZone.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scripts/DeathZone.cs[m
[1mdeleted file mode 100644[m
[1mindex 1ab2e9b..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scripts/DeathZone.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,20 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class DeathZone : MonoBehaviour{[m
[31m-	public Texture2D deathFlash;[m
[31m-	[m
[31m-	void Start(){[m
[31m-		iTween.CameraFadeAdd(deathFlash,100);	[m
[31m-	}[m
[31m-	[m
[31m-	void OnTriggerEnter(Collider other){[m
[31m-		iTween.CameraFadeTo(iTween.Hash("amount",.6,"time",.05));[m
[31m-		iTween.CameraFadeTo(iTween.Hash("amount",0,"time",1.6,"delay",.05,"easetype","linear"));[m
[31m-		other.GetComponent<Rigidbody>().Sleep();[m
[31m-		other.transform.position=new Vector3(0,8,0);[m
[31m-		other.GetComponent<Rigidbody>().velocity=Vector3.zero;[m
[31m-		other.GetComponent<Rigidbody>().WakeUp();[m
[31m-	}[m
[31m-}[m
[31m-[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scripts/DeathZone.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scripts/DeathZone.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex f18053d..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scripts/DeathZone.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 4f50f253aec49477db07aa921aca23fd[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scripts/InfiniteBackground.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scripts/InfiniteBackground.cs[m
[1mdeleted file mode 100644[m
[1mindex 97d2556..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scripts/InfiniteBackground.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,18 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class InfiniteBackground : MonoBehaviour{[m
[31m-	public float scrollSpeed;[m
[31m-	Transform cam;[m
[31m-	Vector3 cameraInit;[m
[31m-[m
[31m-	void Start (){[m
[31m-		cam=Camera.main.transform;[m
[31m-		cameraInit=new Vector3(cam.position.x,cam.position.y,cam.position.z);[m
[31m-	}[m
[31m-[m
[31m-	void FixedUpdate (){[m
[31m-		Vector3 difference=cameraInit - cam.position;[m
[31m-		GetComponent<Renderer>().material.mainTextureOffset = difference*scrollSpeed;[m
[31m-	}[m
[31m-}[m
\ No newline at end of file[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scripts/InfiniteBackground.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scripts/InfiniteBackground.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex 56ff3cb..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scripts/InfiniteBackground.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 32ff14a03ed614473ac4e87b370a98de[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scripts/LightController.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scripts/LightController.cs[m
[1mdeleted file mode 100644[m
[1mindex cf2c505..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scripts/LightController.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,11 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class LightController : MonoBehaviour{[m
[31m-	public Transform target;[m
[31m-	[m
[31m-	void FixedUpdate (){[m
[31m-		transform.position=new Vector3(target.position.x,target.position.y+2.5f,target.position.z-1.6f);[m
[31m-	}[m
[31m-}[m
[31m-[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scripts/LightController.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scripts/LightController.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex 1d24ba9..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scripts/LightController.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 80ee5839fa9714636a3727129bc22404[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scripts/Platform.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scripts/Platform.cs[m
[1mdeleted file mode 100644[m
[1mindex 96b8614..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scripts/Platform.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,9 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class Platform : MonoBehaviour[m
[31m-{[m
[31m-	void Start (){[m
[31m-		iTween.MoveAdd(gameObject,iTween.Hash("y",transform.position.y+3,"time",2,"looptype",iTween.LoopType.pingPong,"easetype",iTween.EaseType.linear,"delay",Random.Range(0,.4f)));[m
[31m-	}[m
[31m-}[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scripts/Platform.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scripts/Platform.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex 34990ba..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/Platforms/Scripts/Platform.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: bfac5ee53492b4944baef1bf6178c53d[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab.meta[m
[1mdeleted file mode 100644[m
[1mindex 5ca5687..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 798d52249f1f7467bad5775c3525b968[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Audio.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Audio.meta[m
[1mdeleted file mode 100644[m
[1mindex d06dcf4..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Audio.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 775f84f532b154fdb960f4f741428823[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Audio/Door Squeak Medium 01.mp3 b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Audio/Door Squeak Medium 01.mp3[m
[1mdeleted file mode 100644[m
[1mindex b8c387d..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Audio/Door Squeak Medium 01.mp3 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Audio/Door Squeak Medium 01.mp3.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Audio/Door Squeak Medium 01.mp3.meta[m
[1mdeleted file mode 100644[m
[1mindex 59583b0..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Audio/Door Squeak Medium 01.mp3.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,12 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: b207103e3bc8546b08b1b5543804bf78[m
[31m-AudioImporter:[m
[31m-  serializedVersion: 4[m
[31m-  format: 0[m
[31m-  quality: 0[m
[31m-  stream: 0[m
[31m-  3D: 1[m
[31m-  forceToMono: 0[m
[31m-  useHardware: 0[m
[31m-  loopable: 0[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Audio/Explosion Cannon Fire 01.mp3 b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Audio/Explosion Cannon Fire 01.mp3[m
[1mdeleted file mode 100644[m
[1mindex 40eb19c..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Audio/Explosion Cannon Fire 01.mp3 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Audio/Explosion Cannon Fire 01.mp3.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Audio/Explosion Cannon Fire 01.mp3.meta[m
[1mdeleted file mode 100644[m
[1mindex df5e67d..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Audio/Explosion Cannon Fire 01.mp3.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,12 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: c7004c32f8c9749e6b27762bf2f0a937[m
[31m-AudioImporter:[m
[31m-  serializedVersion: 4[m
[31m-  format: 0[m
[31m-  quality: .5[m
[31m-  stream: 0[m
[31m-  3D: 1[m
[31m-  forceToMono: 0[m
[31m-  useHardware: 0[m
[31m-  loopable: 0[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Audio/Metal Slide 01.mp3 b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Audio/Metal Slide 01.mp3[m
[1mdeleted file mode 100644[m
[1mindex da344eb..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Audio/Metal Slide 01.mp3 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Audio/Metal Slide 01.mp3.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Audio/Metal Slide 01.mp3.meta[m
[1mdeleted file mode 100644[m
[1mindex a32cebf..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Audio/Metal Slide 01.mp3.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,12 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 955492c0630734e86a8673456c253c57[m
[31m-AudioImporter:[m
[31m-  serializedVersion: 4[m
[31m-  format: 0[m
[31m-  quality: .119999997[m
[31m-  stream: 0[m
[31m-  3D: 1[m
[31m-  forceToMono: 0[m
[31m-  useHardware: 0[m
[31m-  loopable: 0[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Images.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Images.meta[m
[1mdeleted file mode 100644[m
[1mindex ef499bf..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Images.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: b51b1cadfa11b43e589e3d56c61e0689[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Images/Materials.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Images/Materials.meta[m
[1mdeleted file mode 100644[m
[1mindex 9b498b4..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Images/Materials.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: acf5906f49124432ab3e99cb55d615d9[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Images/Materials/glare.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Images/Materials/glare.mat[m
[1mdeleted file mode 100644[m
[1mindex a41891c..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Images/Materials/glare.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Images/Materials/glare.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Images/Materials/glare.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex b9c0f84..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Images/Materials/glare.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 354934f6818764a3195d498b77f4ae03[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Images/Materials/ticker.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Images/Materials/ticker.mat[m
[1mdeleted file mode 100644[m
[1mindex 6ac0e67..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Images/Materials/ticker.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Images/Materials/ticker.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Images/Materials/ticker.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex 2555efd..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Images/Materials/ticker.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: bcbae4be80976412d910deee55eebfd7[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Images/bolt.png b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Images/bolt.png[m
[1mdeleted file mode 100644[m
[1mindex d5d82ca..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Images/bolt.png and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Images/bolt.png.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Images/bolt.png.meta[m
[1mdeleted file mode 100644[m
[1mindex 1e69309..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Images/bolt.png.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: b3fc3f44793b44f498fb995b29ee17ce[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 0[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 2[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: 5[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: -1[m
[31m-    aniso: -1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: -1[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: -1[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Images/innerGlow.png b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Images/innerGlow.png[m
[1mdeleted file mode 100644[m
[1mindex 5249604..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Images/innerGlow.png and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Images/innerGlow.png.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Images/innerGlow.png.meta[m
[1mdeleted file mode 100644[m
[1mindex 3b3c17f..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Images/innerGlow.png.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: def1f35516b6b4e498bc5f1a35513c35[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 1[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 2[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: -1[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: -1[m
[31m-    aniso: -1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: -1[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: -1[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Images/ticker.png b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Images/ticker.png[m
[1mdeleted file mode 100644[m
[1mindex d51c064..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Images/ticker.png and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Images/ticker.png.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Images/ticker.png.meta[m
[1mdeleted file mode 100644[m
[1mindex 862c4a3..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Images/ticker.png.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 5ec8995c83b6d41d1ab881f8bc5b6425[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 0[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 2[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: 5[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: -1[m
[31m-    aniso: -1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: -1[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: -1[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Materials.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Materials.meta[m
[1mdeleted file mode 100644[m
[1mindex e7553bd..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Materials.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 8a64c13c032b44a4cb13306d3a140974[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Materials/ticker.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Materials/ticker.mat[m
[1mdeleted file mode 100644[m
[1mindex 8b51337..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Materials/ticker.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Materials/ticker.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Materials/ticker.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex 1348721..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Materials/ticker.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 2697637c7f98443538abc6facff40221[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Scenes.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Scenes.meta[m
[1mdeleted file mode 100644[m
[1mindex 757c0b9..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Scenes.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 2a32bbce988e34526ab0c02925f7d293[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Scenes/C#.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Scenes/C#.unity[m
[1mdeleted file mode 100644[m
[1mindex a1a6421..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Scenes/C#.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Scenes/C#.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Scenes/C#.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex 90c33be..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Scenes/C#.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: c909559c803e14dae8f6e3da9912f6f1[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Scenes/JS.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Scenes/JS.unity[m
[1mdeleted file mode 100644[m
[1mindex bf9e819..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Scenes/JS.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Scenes/JS.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Scenes/JS.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex f9de2fb..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Scenes/JS.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 764bd39b0f19c48f787bd0dd6035a7df[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Scripts.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Scripts.meta[m
[1mdeleted file mode 100644[m
[1mindex 27d98c6..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Scripts.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: a0ca3024d8bc4481f8e46b489c94d728[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Scripts/Bolt.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Scripts/Bolt.cs[m
[1mdeleted file mode 100644[m
[1mindex ddd62c2..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Scripts/Bolt.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,51 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class Bolt : MonoBehaviour{[m
[31m-	public GameObject ticker1;[m
[31m-	public GameObject ticker2;[m
[31m-	public GameObject ticker3;[m
[31m-	float left = -128.4426f;[m
[31m-	float right = 78.1041f;[m
[31m-	public AudioClip slide;[m
[31m-	public AudioClip impact;[m
[31m-	[m
[31m-	void Start(){[m
[31m-		Move("right");[m
[31m-	}[m
[31m-	[m
[31m-	void Move(string direction){[m
[31m-		if(direction == "right"){[m
[31m-			iTween.ValueTo(gameObject,iTween.Hash("from",left,"to",right,"easetype",iTween.EaseType.easeInExpo,"time",1.4,"delay",.5,"onupdate","ApplySlide","oncomplete","ApplySlam","oncompleteparams","right"));[m
[31m-			iTween.Stab(gameObject,slide,1.1f);[m
[31m-			iTween.Stab(gameObject,impact,1.85f);[m
[31m-		}else{[m
[31m-			iTween.ValueTo(gameObject,iTween.Hash("from",right,"to",left,"easetype",iTween.EaseType.easeInExpo,"time",1.4,"delay",.5,"onupdate","ApplySlide","oncomplete","ApplySlam","oncompleteparams","left"));[m
[31m-			iTween.Stab(gameObject,slide,1.1f);[m
[31m-			iTween.Stab(gameObject,impact,1.85f);[m
[31m-		}[m
[31m-	}[m
[31m-	[m
[31m-	void ApplySlide(float xpos){[m
[31m-		Rect newPixelInset = GetComponent<GUITexture>().pixelInset;[m
[31m-		newPixelInset.x = xpos;[m
[31m-		GetComponent<GUITexture>().pixelInset=newPixelInset;[m
[31m-	}[m
[31m-	[m
[31m-	void ApplySlam(string direction){[m
[31m-		if(direction == "left"){[m
[31m-			Move("right");[m
[31m-			ticker1.SendMessage("Slam",45);[m
[31m-			ticker2.SendMessage("Slam",35);[m
[31m-			ticker3.SendMessage("Slam",25);[m
[31m-			iTween.ShakePosition(Camera.main.gameObject,new Vector3(.4f,0,0),.4f);[m
[31m-		}else{[m
[31m-			Move("left");[m
[31m-			ticker1.SendMessage("Slam",-25);[m
[31m-			ticker2.SendMessage("Slam",-35);[m
[31m-			ticker3.SendMessage("Slam",-45);[m
[31m-			iTween.ShakePosition(Camera.main.gameObject,new Vector3(-.4f,0,0),.4f);[m
[31m-		}[m
[31m-	}[m
[31m-}[m
[31m-[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Scripts/Bolt.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Scripts/Bolt.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex 4b774cf..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Scripts/Bolt.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 7420869847eed4154a8300dba36c585b[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Scripts/Ticker.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Scripts/Ticker.cs[m
[1mdeleted file mode 100644[m
[1mindex a59fc0f..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Scripts/Ticker.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,12 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class Ticker : MonoBehaviour{[m
[31m-	public AudioClip squeak;[m
[31m-	[m
[31m-	void Slam(int amount){[m
[31m-		iTween.PunchRotation(gameObject,iTween.Hash("y",amount,"time",2));	[m
[31m-		iTween.Stab(gameObject,iTween.Hash("audioclip",squeak,"pitch",Random.Range(.9f,1),"volume",Random.Range(.5f,1)));[m
[31m-	}[m
[31m-}[m
[31m-[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Scripts/Ticker.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Scripts/Ticker.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex 0b97740..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PunchAndStab/Scripts/Ticker.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 2dbd1ff28c31647a2b0eb65bda5c1f08[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample.meta[m
[1mdeleted file mode 100644[m
[1mindex 66c8c0a..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 46eb5292bd6b44d608754f29f8e1aaec[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Images.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Images.meta[m
[1mdeleted file mode 100644[m
[1mindex aec99b4..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Images.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: a22b6ee2c92fe483f843a0065cd9ceec[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Images/ground.png b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Images/ground.png[m
[1mdeleted file mode 100644[m
[1mindex 4b81dad..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Images/ground.png and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Images/ground.png.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Images/ground.png.meta[m
[1mdeleted file mode 100644[m
[1mindex 856f0f4..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Images/ground.png.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 358a3316f6848409081c3c4712b52b4a[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 0[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 2[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: -1[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: -1[m
[31m-    aniso: -1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: -1[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: -1[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Materials.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Materials.meta[m
[1mdeleted file mode 100644[m
[1mindex 0afb40a..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Materials.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 7af90d98f41b2464f9908efe92c18a25[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Materials/Floor.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Materials/Floor.mat[m
[1mdeleted file mode 100644[m
[1mindex 0dfcf3a..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Materials/Floor.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Materials/Floor.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Materials/Floor.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex d58f3af..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Materials/Floor.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 9d9cec75ac3b14314b3ac5db805860a1[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Prefabs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Prefabs.meta[m
[1mdeleted file mode 100644[m
[1mindex 052ce09..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Prefabs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: e28151369307d4d8ab08a9abf577c328[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Prefabs/Point.prefab b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Prefabs/Point.prefab[m
[1mdeleted file mode 100644[m
[1mindex c2d026f..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Prefabs/Point.prefab and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Prefabs/Point.prefab.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Prefabs/Point.prefab.meta[m
[1mdeleted file mode 100644[m
[1mindex 38142fc..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Prefabs/Point.prefab.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: cd3ca65ff68044eba9e1db189934b860[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Scenes.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Scenes.meta[m
[1mdeleted file mode 100644[m
[1mindex a6498de..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Scenes.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 8bf5597c68bd64ee8afc274fb739e89c[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Scenes/C#.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Scenes/C#.unity[m
[1mdeleted file mode 100644[m
[1mindex db4a1a1..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Scenes/C#.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Scenes/C#.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Scenes/C#.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex 7d2be69..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Scenes/C#.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 032bb353edafd4604af32f39cb8b219d[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Scenes/JS.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Scenes/JS.unity[m
[1mdeleted file mode 100644[m
[1mindex a50425b..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Scenes/JS.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Scenes/JS.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Scenes/JS.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex 421c906..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Scenes/JS.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: b8496efea8b0f4b91bcf5b5928074f75[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Scripts.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Scripts.meta[m
[1mdeleted file mode 100644[m
[1mindex 7209a58..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Scripts.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: c774a10eecb854f39a57a9ac83586475[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Scripts/Gizmo.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Scripts/Gizmo.cs[m
[1mdeleted file mode 100644[m
[1mindex ee89708..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Scripts/Gizmo.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,9 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class Gizmo : MonoBehaviour{[m
[31m-	void OnDrawGizmos () {[m
[31m-		Gizmos.DrawWireSphere(transform.position,1);[m
[31m-	}[m
[31m-}[m
[31m-[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Scripts/Gizmo.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Scripts/Gizmo.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex 3ae90e9..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Scripts/Gizmo.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: f01cb365286e4437492915c3d82d36ec[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Scripts/PutOnPathExample.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Scripts/PutOnPathExample.cs[m
[1mdeleted file mode 100644[m
[1mindex bf131d4..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Scripts/PutOnPathExample.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,20 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class PutOnPathExample : MonoBehaviour{[m
[31m-	public Transform[] path;[m
[31m-	public float percentage;[m
[31m-	[m
[31m-	void OnGUI () {[m
[31m-		percentage=GUI.HorizontalSlider(new Rect(23,194,204,40),percentage,0,1);[m
[31m-		iTween.PutOnPath(gameObject,path,percentage);[m
[31m-		[m
[31m-		//You can cause the object to orient to its path by calculating a spot slightly ahead on the path for a look at target:[m
[31m-		transform.LookAt(iTween.PointOnPath(path,percentage+.05f));[m
[31m-	}[m
[31m-	[m
[31m-	void OnDrawGizmos(){[m
[31m-		iTween.DrawPath(path);[m
[31m-	}[m
[31m-}[m
[31m-[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Scripts/PutOnPathExample.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Scripts/PutOnPathExample.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex 851d29a..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/PutOnPathExample/Scripts/PutOnPathExample.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: fa0748495ec2b4922b34adc882ce548a[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration.meta[m
[1mdeleted file mode 100644[m
[1mindex 6d117b6..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: b8d6133c03f3d4ee3bb4a3ecd5c1de47[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Images.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Images.meta[m
[1mdeleted file mode 100644[m
[1mindex c87c379..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Images.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 2963e60eb912145baa3bf2316819d76f[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Images/innerGlow.png b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Images/innerGlow.png[m
[1mdeleted file mode 100644[m
[1mindex 5249604..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Images/innerGlow.png and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Images/innerGlow.png.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Images/innerGlow.png.meta[m
[1mdeleted file mode 100644[m
[1mindex 829b013..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Images/innerGlow.png.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: a529173c5108e4cc880129bb614b148d[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 1[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 2[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: -1[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: -1[m
[31m-    aniso: -1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: -1[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: -1[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Materials.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Materials.meta[m
[1mdeleted file mode 100644[m
[1mindex 1a01c4d..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Materials.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: cfeb225c84adc43d08fbbe0f3236698c[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Materials/Green.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Materials/Green.mat[m
[1mdeleted file mode 100644[m
[1mindex 414db6e..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Materials/Green.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Materials/Green.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Materials/Green.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex 8bb284e..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Materials/Green.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 6bb14051b3c3d42418f246875e395076[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Materials/Tail.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Materials/Tail.mat[m
[1mdeleted file mode 100644[m
[1mindex f2401a4..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Materials/Tail.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Materials/Tail.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Materials/Tail.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex 3408e60..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Materials/Tail.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 745d0519ee2b84a51837873e4def1332[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Scenes.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Scenes.meta[m
[1mdeleted file mode 100644[m
[1mindex 01d14d6..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Scenes.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: f7a0847bf3f8e4425b49c768da263b60[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Scenes/C#.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Scenes/C#.unity[m
[1mdeleted file mode 100644[m
[1mindex 547bd1d..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Scenes/C#.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Scenes/C#.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Scenes/C#.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex 4c55da0..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Scenes/C#.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: fc618c2a4658c49aab37cfe5e8d72ad0[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Scenes/JS.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Scenes/JS.unity[m
[1mdeleted file mode 100644[m
[1mindex c78777d..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Scenes/JS.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Scenes/JS.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Scenes/JS.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex 131ea97..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Scenes/JS.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 4cb91125a48a546608af552a21d363b0[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Scripts.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Scripts.meta[m
[1mdeleted file mode 100644[m
[1mindex aa8425b..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Scripts.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 77e1000098cd140fbae2fbbdb66fea8c[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Scripts/CameraFollow.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Scripts/CameraFollow.cs[m
[1mdeleted file mode 100644[m
[1mindex 28193cf..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Scripts/CameraFollow.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,12 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class CameraFollow : MonoBehaviour{[m
[31m-	public Transform target;[m
[31m-	float followDistance = 12;[m
[31m-	[m
[31m-	void Update (){[m
[31m-		iTween.MoveUpdate(gameObject,new Vector3(target.position.x,0,-followDistance),.8f);[m
[31m-	}[m
[31m-}[m
[31m-[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Scripts/CameraFollow.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Scripts/CameraFollow.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex 796b693..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Scripts/CameraFollow.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 5ea12fc1c6a0c42a3980f3458a177d55[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Scripts/PathGenerator.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Scripts/PathGenerator.cs[m
[1mdeleted file mode 100644[m
[1mindex 518bc54..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Scripts/PathGenerator.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,38 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class PathGenerator : MonoBehaviour{[m
[31m-	int pointCount = 6;[m
[31m-	float pathLength = 20;[m
[31m-	float pointDeviation =3f;[m
[31m-	Vector3[] path = null;[m
[31m-	Vector3 rootPosition;[m
[31m-	[m
[31m-	void Start(){[m
[31m-		GenerateRandomPath();[m
[31m-		iTween.MoveTo(gameObject,iTween.Hash("path",path,"time",3,"easetype",iTween.EaseType.easeInOutCubic,"looptype",iTween.LoopType.pingPong));		[m
[31m-	}[m
[31m-	[m
[31m-	void OnDrawGizmos(){[m
[31m-		if (path != null) {[m
[31m-			if(path.Length>0){[m
[31m-				iTween.DrawPath(path);	[m
[31m-			}	[m
[31m-		}	[m
[31m-	}[m
[31m-	[m
[31m-	void GenerateRandomPath(){[m
[31m-		rootPosition = transform.position;[m
[31m-		path = new Vector3[pointCount+2];[m
[31m-		float pointGap = pathLength/pointCount;[m
[31m-		path[0]=rootPosition;[m
[31m-		path[pointCount+1]=new Vector3(rootPosition.x+(pathLength+pointGap),rootPosition.y,rootPosition.z);[m
[31m-		for (int i = 1; i < pointCount+1; i++) {[m
[31m-			float randomZ = rootPosition.z + Random.Range(-pointDeviation,pointDeviation);[m
[31m-			float randomY = rootPosition.y + Random.Range(-pointDeviation,pointDeviation);[m
[31m-			float newX = rootPosition.x + (pointGap*i);[m
[31m-			path[i]=new Vector3(newX,randomY,randomZ);[m
[31m-		}[m
[31m-	}[m
[31m-}[m
[31m-[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Scripts/PathGenerator.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Scripts/PathGenerator.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex c8bff80..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RandomPathGeneration/Scripts/PathGenerator.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 3d8404c4af1b04082928e7bfe69d4444[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RotatingUnityGUI.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RotatingUnityGUI.meta[m
[1mdeleted file mode 100644[m
[1mindex 48946ff..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RotatingUnityGUI.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 044cc407f1ce74b75bde9dab46079589[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RotatingUnityGUI/Images.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RotatingUnityGUI/Images.meta[m
[1mdeleted file mode 100644[m
[1mindex 21c9069..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RotatingUnityGUI/Images.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 57db284e2131e4a98868a7215010bdbb[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RotatingUnityGUI/Images/innerGlow.png b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RotatingUnityGUI/Images/innerGlow.png[m
[1mdeleted file mode 100644[m
[1mindex 5249604..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RotatingUnityGUI/Images/innerGlow.png and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RotatingUnityGUI/Images/innerGlow.png.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RotatingUnityGUI/Images/innerGlow.png.meta[m
[1mdeleted file mode 100644[m
[1mindex 80e05a5..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RotatingUnityGUI/Images/innerGlow.png.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: df9efc9247d5b4e65acae2f2fd70e75c[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 0[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 2[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: 5[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: -1[m
[31m-    aniso: -1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: -1[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: -1[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RotatingUnityGUI/Scenes.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RotatingUnityGUI/Scenes.meta[m
[1mdeleted file mode 100644[m
[1mindex efb8f96..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RotatingUnityGUI/Scenes.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 44fc8f8054eb54dc0abbc98a2545e7c2[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RotatingUnityGUI/Scenes/C#.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RotatingUnityGUI/Scenes/C#.unity[m
[1mdeleted file mode 100644[m
[1mindex ce86532..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RotatingUnityGUI/Scenes/C#.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RotatingUnityGUI/Scenes/C#.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RotatingUnityGUI/Scenes/C#.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex 3580b04..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RotatingUnityGUI/Scenes/C#.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 0782f0168ae2842b791076cf6e5989fe[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RotatingUnityGUI/Scenes/JS.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RotatingUnityGUI/Scenes/JS.unity[m
[1mdeleted file mode 100644[m
[1mindex 8a8e253..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RotatingUnityGUI/Scenes/JS.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RotatingUnityGUI/Scenes/JS.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RotatingUnityGUI/Scenes/JS.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex cc6deec..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RotatingUnityGUI/Scenes/JS.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 9588c4ce3383e4ea0a87ca89c0e47385[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RotatingUnityGUI/Scripts.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RotatingUnityGUI/Scripts.meta[m
[1mdeleted file mode 100644[m
[1mindex 7696cd4..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RotatingUnityGUI/Scripts.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 5a530744766f14b829af85db002264c4[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RotatingUnityGUI/Scripts/RotatingUnityGUI.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RotatingUnityGUI/Scripts/RotatingUnityGUI.cs[m
[1mdeleted file mode 100644[m
[1mindex ba72c72..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RotatingUnityGUI/Scripts/RotatingUnityGUI.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,24 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class RotatingUnityGUI : MonoBehaviour[m
[31m-{[m
[31m-	float currentAngle, targetAngle = 0;[m
[31m-	Vector2 buttonSize = new Vector2(120,50);[m
[31m-	Rect buttonRect;[m
[31m-	[m
[31m-	void Start(){[m
[31m-		buttonRect = new Rect((Screen.width/2) - (buttonSize.x/2),(Screen.height/2) - (buttonSize.y/2),buttonSize.x,buttonSize.y);	[m
[31m-	}[m
[31m-	[m
[31m-	void OnGUI(){[m
[31m-		Matrix4x4 matrixBackup = GUI.matrix;[m
[31m-		currentAngle = iTween.FloatUpdate(currentAngle, targetAngle, 3);[m
[31m-        GUIUtility.RotateAroundPivot(currentAngle, new Vector2(buttonRect.x + (buttonRect.width/2), buttonRect.y + (buttonRect.height/2)));[m
[31m-        if(GUI.Button(buttonRect, "Click to Flip!")){[m
[31m-			targetAngle +=180;[m
[31m-		}[m
[31m-        GUI.matrix = matrixBackup;[m
[31m-	}[m
[31m-}[m
[31m-[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RotatingUnityGUI/Scripts/RotatingUnityGUI.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RotatingUnityGUI/Scripts/RotatingUnityGUI.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex 7b78523..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/RotatingUnityGUI/Scripts/RotatingUnityGUI.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 4492563a5cc24427ca35ee7e9a9a54be[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ScalingButton.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ScalingButton.meta[m
[1mdeleted file mode 100644[m
[1mindex 05a319a..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ScalingButton.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: da508560c61dc4ca49175b790d8e043c[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ScalingButton/Scenes.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ScalingButton/Scenes.meta[m
[1mdeleted file mode 100644[m
[1mindex 668d94f..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ScalingButton/Scenes.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 2bf837a74099d4a298c7bab18d0d680e[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ScalingButton/Scenes/C#.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ScalingButton/Scenes/C#.unity[m
[1mdeleted file mode 100644[m
[1mindex 983b844..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ScalingButton/Scenes/C#.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ScalingButton/Scenes/C#.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ScalingButton/Scenes/C#.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex 5891f66..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ScalingButton/Scenes/C#.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 3dc0207d80aa141c7972affd15c102e3[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ScalingButton/Scenes/JS.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ScalingButton/Scenes/JS.unity[m
[1mdeleted file mode 100644[m
[1mindex 440dc81..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ScalingButton/Scenes/JS.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ScalingButton/Scenes/JS.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ScalingButton/Scenes/JS.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex cb0c4be..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ScalingButton/Scenes/JS.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: d17199c49cb904895b197f9346727eeb[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ScalingButton/Scripts.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ScalingButton/Scripts.meta[m
[1mdeleted file mode 100644[m
[1mindex f8cb8d2..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ScalingButton/Scripts.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 9a0187145f5a84c91a00ebf3860e20d8[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ScalingButton/Scripts/ScalingButton.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ScalingButton/Scripts/ScalingButton.cs[m
[1mdeleted file mode 100644[m
[1mindex 1d117bc..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ScalingButton/Scripts/ScalingButton.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,59 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class ScalingButton : MonoBehaviour {[m
[31m-	bool buttonStatus;[m
[31m-	Rect currentButton;[m
[31m-	public Vector2 buttonNormalSize = new Vector2(100,50);[m
[31m-	public Vector2 buttonHoverSize = new Vector2(200,70);[m
[31m-	Vector2 buttonPosition = new Vector2(250/2,211/2);[m
[31m-	[m
[31m-	void Start(){[m
[31m-		//set starting button rect:[m
[31m-		currentButton.x=buttonPosition.x-(buttonNormalSize.x/2);[m
[31m-		currentButton.y=buttonPosition.y-(buttonNormalSize.y/2);[m
[31m-		currentButton.width=buttonNormalSize.x;[m
[31m-		currentButton.height=buttonNormalSize.y;[m
[31m-	}[m
[31m-	[m
[31m-	void OnGUI(){[m
[31m-		//the actual button:[m
[31m-		GUI.Button(currentButton,"Click Me!");[m
[31m-		[m
[31m-		//on mouse over:[m
[31m-		if(OnMouseOver(currentButton) && !buttonStatus){[m
[31m-			iTween.Stop(gameObject,"value");[m
[31m-			buttonStatus=true;[m
[31m-			iTween.ValueTo(gameObject,iTween.Hash("from",CurrentButtonSize(),"to",buttonHoverSize,"easetype",iTween.EaseType.easeOutBack,"onupdate","ScaleButton","time",.2));[m
[31m-		}[m
[31m-		[m
[31m-		//on mouse out:[m
[31m-		if (!OnMouseOver(currentButton) && buttonStatus) {[m
[31m-			iTween.Stop(gameObject,"value");[m
[31m-			buttonStatus=false;[m
[31m-			iTween.ValueTo(gameObject,iTween.Hash("from",CurrentButtonSize(),"to",buttonNormalSize,"easetype",iTween.EaseType.easeOutExpo,"onupdate","ScaleButton","time",.4));[m
[31m-		}[m
[31m-	}[m
[31m-	[m
[31m-	//grabs current rect of button:[m
[31m-	Vector2 CurrentButtonSize(){[m
[31m-		return new Vector2(currentButton.width,currentButton.height);	[m
[31m-	}[m
[31m-	[m
[31m-	//checks if the mouse is over the button:[m
[31m-	bool OnMouseOver(Rect buttonRect){[m
[31m-		if(buttonRect.Contains(Event.current.mousePosition)){[m
[31m-			return true;[m
[31m-		}else{[m
[31m-			return false;[m
[31m-		}		[m
[31m-	}[m
[31m-			[m
[31m-	//applies the values from iTween:[m
[31m-	void ScaleButton(Vector2 size){[m
[31m-		currentButton.width=size.x;[m
[31m-		currentButton.height=size.y;[m
[31m-		currentButton.x=buttonPosition.x - (currentButton.width/2);[m
[31m-		currentButton.y=buttonPosition.y - (currentButton.height/2);[m
[31m-	}[m
[31m-}[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ScalingButton/Scripts/ScalingButton.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ScalingButton/Scripts/ScalingButton.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex 47bf75b..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ScalingButton/Scripts/ScalingButton.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 82d5def14507044a1adb9b5122b70730[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu.meta[m
[1mdeleted file mode 100644[m
[1mindex 05307ef..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: f103f70e4727447ef873fef8c4844263[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Images.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Images.meta[m
[1mdeleted file mode 100644[m
[1mindex f9689f1..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Images.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 7f587c59eedd04839a5d01847983bd06[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Images/SliderVisuals.jpg b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Images/SliderVisuals.jpg[m
[1mdeleted file mode 100644[m
[1mindex 0c64c15..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Images/SliderVisuals.jpg and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Images/SliderVisuals.jpg.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Images/SliderVisuals.jpg.meta[m
[1mdeleted file mode 100644[m
[1mindex b1a1667..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Images/SliderVisuals.jpg.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 19a3e01ea85b94280a0522dba14f7fdc[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 0[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 2[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: -3[m
[31m-  maxTextureSize: 4096[m
[31m-  textureSettings:[m
[31m-    filterMode: 1[m
[31m-    aniso: 1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: 1[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: -1[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Images/nextButton.png b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Images/nextButton.png[m
[1mdeleted file mode 100644[m
[1mindex 62a3a6e..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Images/nextButton.png and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Images/nextButton.png.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Images/nextButton.png.meta[m
[1mdeleted file mode 100644[m
[1mindex 9a65156..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Images/nextButton.png.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 03c1ca45914814c918366c65dde6ef26[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 1[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 2[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: -1[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: -1[m
[31m-    aniso: -1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: -1[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: -1[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Images/prevButton.png b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Images/prevButton.png[m
[1mdeleted file mode 100644[m
[1mindex 6c3e74a..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Images/prevButton.png and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Images/prevButton.png.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Images/prevButton.png.meta[m
[1mdeleted file mode 100644[m
[1mindex 450d9bc..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Images/prevButton.png.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: af8f500b95a134cff8453e96cbb86593[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 1[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 2[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: -1[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: -1[m
[31m-    aniso: -1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: -1[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: -1[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Scenes.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Scenes.meta[m
[1mdeleted file mode 100644[m
[1mindex 710ea72..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Scenes.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: bbcf28414b4dd42c48ac1b8eef2256fb[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Scenes/C#.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Scenes/C#.unity[m
[1mdeleted file mode 100644[m
[1mindex f54c7ab..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Scenes/C#.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Scenes/C#.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Scenes/C#.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex 231bdd1..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Scenes/C#.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 2ccd2b1d336064865b31cdb90eed702c[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Scenes/JS.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Scenes/JS.unity[m
[1mdeleted file mode 100644[m
[1mindex 21987d0..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Scenes/JS.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Scenes/JS.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Scenes/JS.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex 89ac0a4..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Scenes/JS.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: ab1984f98582c4d0bb7880a6640559f0[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Scripts.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Scripts.meta[m
[1mdeleted file mode 100644[m
[1mindex 9348f45..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Scripts.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: b0c114fb3dffd44d4b41c3906da20ca0[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Scripts/SlidingMenu.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Scripts/SlidingMenu.cs[m
[1mdeleted file mode 100644[m
[1mindex 479cf7b..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Scripts/SlidingMenu.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,52 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class SlidingMenu : MonoBehaviour{[m
[31m-	public Texture2D img;[m
[31m-	public Texture2D prevButton;[m
[31m-	public Texture2D nextButton;[m
[31m-	[m
[31m-	private GUIStyle blankStyle = new GUIStyle(); //an "empty" style to avoid any of Unity's default padding, margin and background defaults[m
[31m-	private Rect container = new Rect(0,0,250,211);[m
[31m-	private Rect content = new Rect(0,0,1250,211);[m
[31m-	private float target = 0;[m
[31m-	private float currentSelection;[m
[31m-	[m
[31m-	void OnGUI () {[m
[31m-		//scroll panel:[m
[31m-		GUI.BeginGroup(container);[m
[31m-		GUI.Label(content,img,blankStyle);[m
[31m-		GUI.EndGroup();[m
[31m-			[m
[31m-		//next button:[m
[31m-		if(GUI.Button(new Rect(180,140,70,71),nextButton,blankStyle) && target > -content.width+container.width){[m
[31m-			target-=container.width;[m
[31m-			EstablishSlide();[m
[31m-		}[m
[31m-		[m
[31m-		//prev button:[m
[31m-		if(GUI.Button(new Rect(0,140,70,71),prevButton,blankStyle) && target < 0){[m
[31m-			target+=container.width;[m
[31m-			EstablishSlide();[m
[31m-		}[m
[31m-		[m
[31m-		//select button:[m
[31m-		if(GUI.Button(new Rect(0,0,250,211),"",blankStyle)){[m
[31m-			Selected();[m
[31m-		}[m
[31m-	}[m
[31m-		[m
[31m-	void EstablishSlide(){[m
[31m-		currentSelection=Mathf.Abs(target)/container.width + 1;[m
[31m-		iTween.Stop(gameObject,"value");[m
[31m-		iTween.ValueTo(gameObject,iTween.Hash("time",.8,"from",content.x,"to",target,"easetype",iTween.EaseType.easeInOutExpo,"onupdate","ApplySlide"));[m
[31m-	}[m
[31m-	[m
[31m-	void ApplySlide(float position){[m
[31m-		content.x=position;[m
[31m-	}[m
[31m-	[m
[31m-	void Selected(){[m
[31m-		print("Item: " + currentSelection + " was selected!");[m
[31m-	}[m
[31m-}[m
\ No newline at end of file[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Scripts/SlidingMenu.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Scripts/SlidingMenu.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex 232ca36..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/SlidingMenu/Scripts/SlidingMenu.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: bd3678d5056784487a584306636a9404[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample.meta[m
[1mdeleted file mode 100644[m
[1mindex a4fb513..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 85e0791dfbfc44fcaa52d725824ec66b[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Images.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Images.meta[m
[1mdeleted file mode 100644[m
[1mindex 1cefaa0..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Images.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 5575762eed23c495d8245a0f7ff310b6[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Images/Materials.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Images/Materials.meta[m
[1mdeleted file mode 100644[m
[1mindex b60bc79..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Images/Materials.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 5e7391e5b86f3422ca0d0cab39e41530[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Images/Materials/crosshair.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Images/Materials/crosshair.mat[m
[1mdeleted file mode 100644[m
[1mindex 4e40282..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Images/Materials/crosshair.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Images/Materials/crosshair.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Images/Materials/crosshair.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex 38ca9ea..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Images/Materials/crosshair.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 2b4866f5138a14889b515c9ed8b084c4[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Images/crosshair.png b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Images/crosshair.png[m
[1mdeleted file mode 100644[m
[1mindex 3131917..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Images/crosshair.png and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Images/crosshair.png.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Images/crosshair.png.meta[m
[1mdeleted file mode 100644[m
[1mindex aee400f..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Images/crosshair.png.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 1b34c80f39f224753a4488bef06c606d[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 0[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 2[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: -1[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: -1[m
[31m-    aniso: -1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: -1[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: -1[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Materials.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Materials.meta[m
[1mdeleted file mode 100644[m
[1mindex e44c4fd..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Materials.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: e9d30e4da61694fb7a28143f82dd677a[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Materials/Crosshair.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Materials/Crosshair.mat[m
[1mdeleted file mode 100644[m
[1mindex fd3e8a7..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Materials/Crosshair.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Materials/Crosshair.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Materials/Crosshair.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex 8cd87cb..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Materials/Crosshair.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 7890fda813b4541b3a16eccda981dcf4[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Materials/CrosshairTrail.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Materials/CrosshairTrail.mat[m
[1mdeleted file mode 100644[m
[1mindex e38e844..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Materials/CrosshairTrail.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Materials/CrosshairTrail.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Materials/CrosshairTrail.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex 60157ac..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Materials/CrosshairTrail.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 0aad3cbda6bf84c4bb2ee1d240a11d4a[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Materials/Turret.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Materials/Turret.mat[m
[1mdeleted file mode 100644[m
[1mindex 249d954..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Materials/Turret.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Materials/Turret.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Materials/Turret.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex e622b10..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Materials/Turret.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: bcd7ea9dfbc144235b18d9e61214a404[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Prefabs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Prefabs.meta[m
[1mdeleted file mode 100644[m
[1mindex 8c27b44..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Prefabs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: d386fc60b96cd453f9a216cb9d0ede4c[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Prefabs/bound.prefab b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Prefabs/bound.prefab[m
[1mdeleted file mode 100644[m
[1mindex ee9f26f..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Prefabs/bound.prefab and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Prefabs/bound.prefab.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Prefabs/bound.prefab.meta[m
[1mdeleted file mode 100644[m
[1mindex f73ce93..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Prefabs/bound.prefab.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: ffa0c75d306d5460ba915ac3244bc887[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Prefabs/bullet.prefab b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Prefabs/bullet.prefab[m
[1mdeleted file mode 100644[m
[1mindex d4ff2f5..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Prefabs/bullet.prefab and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Prefabs/bullet.prefab.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Prefabs/bullet.prefab.meta[m
[1mdeleted file mode 100644[m
[1mindex df52485..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Prefabs/bullet.prefab.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 41dad783593274a4dbda22bc2f2e8342[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Scenes.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Scenes.meta[m
[1mdeleted file mode 100644[m
[1mindex 42438ac..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Scenes.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 13848700538e84fd4a29e2bc26fa681e[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Scenes/C#.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Scenes/C#.unity[m
[1mdeleted file mode 100644[m
[1mindex 971e81d..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Scenes/C#.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Scenes/C#.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Scenes/C#.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex de092d5..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Scenes/C#.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 8f77c76091e7b4e819f08abcd5b31fa6[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Scenes/JS.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Scenes/JS.unity[m
[1mdeleted file mode 100644[m
[1mindex 8af208e..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Scenes/JS.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Scenes/JS.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Scenes/JS.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex 14529e6..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Scenes/JS.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: a6eac0f88f1374376bf70678e6f8c886[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Scripts.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Scripts.meta[m
[1mdeleted file mode 100644[m
[1mindex 0ee09e1..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Scripts.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 5136730b380424194846a93f4382c165[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Scripts/Bound.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Scripts/Bound.cs[m
[1mdeleted file mode 100644[m
[1mindex 3c51b3c..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Scripts/Bound.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class Bound : MonoBehaviour {[m
[31m-	void OnTriggerEnter (Collider other) {[m
[31m-		Destroy(other.transform.parent.gameObject);[m
[31m-	}[m
[31m-}[m
\ No newline at end of file[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Scripts/Bound.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Scripts/Bound.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex bbf5c75..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Scripts/Bound.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: cd04cddf0fe5a417790edee854833ada[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Scripts/Crosshair.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Scripts/Crosshair.cs[m
[1mdeleted file mode 100644[m
[1mindex e340d19..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Scripts/Crosshair.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,10 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class Crosshair : MonoBehaviour{[m
[31m-	void Update(){	[m
[31m-		Vector3 mousePos = new Vector3(Input.mousePosition.x,Input.mousePosition.y,Camera.main.transform.position.y);[m
[31m-		Vector3 worldPos = Camera.main.ScreenToWorldPoint(mousePos);[m
[31m-		iTween.MoveUpdate(gameObject,iTween.Hash("position",worldPos,"time",.6));[m
[31m-	}[m
[31m-}[m
\ No newline at end of file[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Scripts/Crosshair.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Scripts/Crosshair.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex 23f59d6..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Scripts/Crosshair.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 3f5ebdd8ed1614c1fb1b3e6bceb8ea20[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Scripts/Turret.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Scripts/Turret.cs[m
[1mdeleted file mode 100644[m
[1mindex 5258c5c..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Scripts/Turret.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,20 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class Turret : MonoBehaviour{[m
[31m-	public Rigidbody bullet;[m
[31m-	[m
[31m-	void Update(){[m
[31m-		//rotation:[m
[31m-		Vector3 mousePos = new Vector3(Input.mousePosition.x,Input.mousePosition.y,Camera.main.transform.position.y);[m
[31m-		Vector3 worldPos = Camera.main.ScreenToWorldPoint(mousePos);[m
[31m-		iTween.LookUpdate(gameObject,iTween.Hash("looktarget",worldPos,"time",2,"axis","y"));[m
[31m-		[m
[31m-		//fire:[m
[31m-		if(Input.GetMouseButtonDown(0)){[m
[31m-			Rigidbody clone = (Rigidbody)Instantiate(bullet,new Vector3(transform.position.x,1.5f,transform.position.z),transform.rotation);[m
[31m-			clone.velocity = transform.TransformDirection (Vector3.forward * 10);[m
[31m-		}[m
[31m-	}[m
[31m-}[m
[31m-[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Scripts/Turret.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Scripts/Turret.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex 49c87da..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/TurretExample/Scripts/Turret.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 4747ac457c3db416fbac0ede549fd9fe[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain.meta[m
[1mdeleted file mode 100644[m
[1mindex da36b1a..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 2d5df9556d94040a28971c018d22bfba[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Images.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Images.meta[m
[1mdeleted file mode 100644[m
[1mindex 8bfa77e..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Images.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 9524062c0bdc14260a404f79b1abad2e[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Images/Arrow.png b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Images/Arrow.png[m
[1mdeleted file mode 100644[m
[1mindex d8d46e7..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Images/Arrow.png and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Images/Arrow.png.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Images/Arrow.png.meta[m
[1mdeleted file mode 100644[m
[1mindex f3ab3c5..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Images/Arrow.png.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 9ba4e2839dd08485ca0cada253d1994c[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 0[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 2[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: -1[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: 1[m
[31m-    aniso: 1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: 1[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: -1[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Materials.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Materials.meta[m
[1mdeleted file mode 100644[m
[1mindex 5d7b406..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Materials.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 19b8e1694e37c4afcaeabcb737ddd202[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Materials/arrow.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Materials/arrow.mat[m
[1mdeleted file mode 100644[m
[1mindex 1c09cbf..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Materials/arrow.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Materials/arrow.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Materials/arrow.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex 66a3b0a..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Materials/arrow.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 05aa2cad2b0b74d938c04d559f590cb6[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Models.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Models.meta[m
[1mdeleted file mode 100644[m
[1mindex 012a187..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Models.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 4cb0e6bf5ecfa4225b152af9fee980ef[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Models/Ground.fbx b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Models/Ground.fbx[m
[1mdeleted file mode 100644[m
[1mindex 5af4120..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Models/Ground.fbx and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Models/Ground.fbx.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Models/Ground.fbx.meta[m
[1mdeleted file mode 100644[m
[1mindex 73d29bf..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Models/Ground.fbx.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,61 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: d5248097500754216ae25f6027aad1ab[m
[31m-ModelImporter:[m
[31m-  serializedVersion: 15[m
[31m-  fileIDToRecycleName:[m
[31m-    100000: //RootNode[m
[31m-    400000: //RootNode[m
[31m-    2300000: //RootNode[m
[31m-    3300000: //RootNode[m
[31m-    4300000: Plane[m
[31m-    9500000: //RootNode[m
[31m-  materials:[m
[31m-    importMaterials: 1[m
[31m-    materialName: 0[m
[31m-    materialSearch: 1[m
[31m-  animations:[m
[31m-    legacyGenerateAnimations: 4[m
[31m-    bakeSimulation: 0[m
[31m-    animationCompression: 1[m
[31m-    animationRotationError: .5[m
[31m-    animationPositionError: .5[m
[31m-    animationScaleError: .5[m
[31m-    animationWrapMode: 0[m
[31m-    clipAnimations: [][m
[31m-    isReadable: 1[m
[31m-  meshes:[m
[31m-    lODScreenPercentages: [][m
[31m-    globalScale: .00999999978[m
[31m-    meshCompression: 0[m
[31m-    addColliders: 0[m
[31m-    swapUVChannels: 0[m
[31m-    generateSecondaryUV: 0[m
[31m-    useFileUnits: 1[m
[31m-    optimizeMeshForGPU: 1[m
[31m-    secondaryUVAngleDistortion: 8[m
[31m-    secondaryUVAreaDistortion: 15.000001[m
[31m-    secondaryUVHardAngle: 88[m
[31m-    secondaryUVPackMargin: 4[m
[31m-  tangentSpace:[m
[31m-    normalSmoothAngle: 60[m
[31m-    splitTangentsAcrossUV: 1[m
[31m-    normalImportMode: 0[m
[31m-    tangentImportMode: 1[m
[31m-  importAnimation: 1[m
[31m-  copyAvatar: 0[m
[31m-  humanDescription:[m
[31m-    human: [][m
[31m-    skeleton: [][m
[31m-    handles: [][m
[31m-    armTwist: .5[m
[31m-    foreArmTwist: .5[m
[31m-    upperLegTwist: .5[m
[31m-    legTwist: .5[m
[31m-    armStretch: .0500000007[m
[31m-    legStretch: .0500000007[m
[31m-    feetSpacing: 0[m
[31m-    rootMotionBoneName: [m
[31m-  lastHumanDescriptionAvatarSource: {instanceID: 0}[m
[31m-  additionalBone: 0[m
[31m-  animationType: 2[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Models/Materials.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Models/Materials.meta[m
[1mdeleted file mode 100644[m
[1mindex 5a181b7..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Models/Materials.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: c0579e369e72a4404a2516cb05f3e37c[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Models/Materials/Ground-No Name.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Models/Materials/Ground-No Name.mat[m
[1mdeleted file mode 100644[m
[1mindex 6e3f90c..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Models/Materials/Ground-No Name.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Models/Materials/Ground-No Name.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Models/Materials/Ground-No Name.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex 31d3542..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Models/Materials/Ground-No Name.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: eec39e60bfb55401eb065a7646ae4fec[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Models/Materials/No Name.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Models/Materials/No Name.mat[m
[1mdeleted file mode 100644[m
[1mindex a7d2780..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Models/Materials/No Name.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Models/Materials/No Name.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Models/Materials/No Name.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex d408b94..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Models/Materials/No Name.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 3a502793527a44523b852d7379757ee5[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Models/Materials/ground-planemat.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Models/Materials/ground-planemat.mat[m
[1mdeleted file mode 100644[m
[1mindex 52cc627..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Models/Materials/ground-planemat.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Models/Materials/ground-planemat.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Models/Materials/ground-planemat.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex a425db3..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Models/Materials/ground-planemat.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 308d532dd2bbf422980c591954c0602a[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Scenes.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Scenes.meta[m
[1mdeleted file mode 100644[m
[1mindex 4fdc215..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Scenes.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: df41ecfc9e2c144deb7b69f6eb6e2737[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Scenes/C#.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Scenes/C#.unity[m
[1mdeleted file mode 100644[m
[1mindex 3fbb7e0..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Scenes/C#.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Scenes/C#.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Scenes/C#.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex dc88b88..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Scenes/C#.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 7740901caddbd4d588d1a6e37d4f65fd[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Scenes/JS.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Scenes/JS.unity[m
[1mdeleted file mode 100644[m
[1mindex 4c55926..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Scenes/JS.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Scenes/JS.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Scenes/JS.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex f9752a1..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Scenes/JS.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 4b86a8de0f5df4c69a7ac71f8743d52f[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Scripts.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Scripts.meta[m
[1mdeleted file mode 100644[m
[1mindex 9b6d79b..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Scripts.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 7b00a8589a931434ca33b39a09e5ed7e[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Scripts/Puppeteer.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Scripts/Puppeteer.cs[m
[1mdeleted file mode 100644[m
[1mindex e17bfe1..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Scripts/Puppeteer.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,37 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class Puppeteer : MonoBehaviour[m
[31m-{[m
[31m-	public Transform character;[m
[31m-	public Transform arrow; [m
[31m-	[m
[31m-	void Start(){[m
[31m-		Cursor.visible=false;[m
[31m-	}[m
[31m-	[m
[31m-	void Update (){[m
[31m-		PlaceArrow();[m
[31m-		PlaceCharacter();[m
[31m-		if(Input.GetMouseButton(0)){[m
[31m-			iTween.MoveTo(gameObject,new Vector3(arrow.position.x,arrow.position.y+5,arrow.position.z),2);[m
[31m-		}[m
[31m-	}[m
[31m-	[m
[31m-	void PlaceArrow(){[m
[31m-		RaycastHit hit = new RaycastHit();[m
[31m-		Ray cameraRay = Camera.main.ScreenPointToRay(Input.mousePosition);[m
[31m-		Debug.DrawRay (cameraRay.origin, cameraRay.direction * 100);[m
[31m-		if (Physics.Raycast (cameraRay.origin,cameraRay.direction,out hit, 100)) {[m
[31m-			iTween.MoveUpdate(arrow.gameObject,hit.point,.9f);[m
[31m-		}	[m
[31m-	}[m
[31m-	[m
[31m-	void PlaceCharacter(){[m
[31m-		RaycastHit hit = new RaycastHit();[m
[31m-		if (Physics.Raycast (transform.position,Vector3.down,out hit, 10)) {[m
[31m-			character.position=hit.point;[m
[31m-		}		[m
[31m-	}[m
[31m-}[m
[31m-[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Scripts/Puppeteer.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Scripts/Puppeteer.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex ad8f8a7..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/UnevenTerrain/Scripts/Puppeteer.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: fb98e1c618f8449499c5bf1880a95a65[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ValueToExample.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ValueToExample.meta[m
[1mdeleted file mode 100644[m
[1mindex 9d73c68..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ValueToExample.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 41c6af97c8aff4f34b73d064ccb481f1[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ValueToExample/Scenes.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ValueToExample/Scenes.meta[m
[1mdeleted file mode 100644[m
[1mindex cf1f755..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ValueToExample/Scenes.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 579a7e3f8ed7c4bfa803e755ece8b1d6[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ValueToExample/Scenes/C#.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ValueToExample/Scenes/C#.unity[m
[1mdeleted file mode 100644[m
[1mindex 7c5336f..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ValueToExample/Scenes/C#.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ValueToExample/Scenes/C#.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ValueToExample/Scenes/C#.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex 5040569..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ValueToExample/Scenes/C#.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 7d7e3041b85314c7e9442b20f35aa957[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ValueToExample/Scenes/JS.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ValueToExample/Scenes/JS.unity[m
[1mdeleted file mode 100644[m
[1mindex 9bae9c0..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ValueToExample/Scenes/JS.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ValueToExample/Scenes/JS.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ValueToExample/Scenes/JS.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex 4729d8a..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ValueToExample/Scenes/JS.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: b2f137cc563bc4e6d932a4f1e6d5ec59[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ValueToExample/Scripts.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ValueToExample/Scripts.meta[m
[1mdeleted file mode 100644[m
[1mindex 97673d6..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ValueToExample/Scripts.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: bffef5fb59d3549baab73d9688dd4bb6[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ValueToExample/Scripts/ValueToExample.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ValueToExample/Scripts/ValueToExample.cs[m
[1mdeleted file mode 100644[m
[1mindex 27d729f..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ValueToExample/Scripts/ValueToExample.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,39 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class ValueToExample : MonoBehaviour {[m
[31m-	public int score = 0;[m
[31m-	public int bonus = 15;[m
[31m-	public Color initialColor;[m
[31m-	public Vector3 initialScale;[m
[31m-	public GUIText scoreDisplay;[m
[31m-	[m
[31m-	void Awake(){[m
[31m-		initialColor = GetComponent<Renderer>().material.color;[m
[31m-		initialScale = new Vector3(transform.localScale.x,transform.localScale.y,transform.localScale.z);[m
[31m-	}[m
[31m-	[m
[31m-	void OnMouseDown(){[m
[31m-		//iTween will ignore additional calls on a gameObject that have all of the same properties so we need to interrupt current iTweens:[m
[31m-		//Remember: iTween follows the "Doesn't Destroy Duplicates" approach.[m
[31m-		iTween.Stop(gameObject);[m
[31m-		[m
[31m-		//increment the score:[m
[31m-		iTween.ValueTo(gameObject,iTween.Hash("from",score,"to",score+bonus,"time",.6,"onUpdate","UpdateScoreDisplay"));[m
[31m-		score+=bonus;[m
[31m-	}	[m
[31m-	[m
[31m-	void OnMouseUp(){[m
[31m-		//reset:[m
[31m-		GetComponent<Renderer>().material.color = initialColor;[m
[31m-		transform.localScale = initialScale;[m
[31m-		[m
[31m-		//visual feedback:[m
[31m-		iTween.ColorFrom(gameObject,new Color(1f,1f,.1f),.3f);[m
[31m-		iTween.ScaleFrom(gameObject,new Vector3(1.5f,initialScale.y,1.5f),.5f);[m
[31m-	}	[m
[31m-	[m
[31m-	void UpdateScoreDisplay(int newScore){[m
[31m-		scoreDisplay.text = "High Score: " + newScore.ToString();[m
[31m-	}[m
[31m-}[m
\ No newline at end of file[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ValueToExample/Scripts/ValueToExample.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ValueToExample/Scripts/ValueToExample.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex 81fc899..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/ValueToExample/Scripts/ValueToExample.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: d5b8563c18c2649508db5596698038c6[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage.meta[m
[1mdeleted file mode 100644[m
[1mindex e3d31e7..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: f460a852e9a5446bdaf4698f78915212[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Images.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Images.meta[m
[1mdeleted file mode 100644[m
[1mindex bf0b63e..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Images.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: f4a2481fc4d914241a2877cb4eb3d1e4[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Images/ground.png b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Images/ground.png[m
[1mdeleted file mode 100644[m
[1mindex 4ca4a31..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Images/ground.png and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Images/ground.png.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Images/ground.png.meta[m
[1mdeleted file mode 100644[m
[1mindex d8ae17c..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Images/ground.png.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 97764291878ec433e9dc097c0dd3bc00[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 0[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 2[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: -1[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: -1[m
[31m-    aniso: -1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: -1[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: -1[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Images/innerGlow.png b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Images/innerGlow.png[m
[1mdeleted file mode 100644[m
[1mindex 5249604..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Images/innerGlow.png and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Images/innerGlow.png.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Images/innerGlow.png.meta[m
[1mdeleted file mode 100644[m
[1mindex 70f9471..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Images/innerGlow.png.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: ccdb82a60139e4565b17566ae1227c07[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 1[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 2[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: -1[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: -1[m
[31m-    aniso: -1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: -1[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: -1[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Materials.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Materials.meta[m
[1mdeleted file mode 100644[m
[1mindex bb34500..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Materials.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 17410dd9d714849c6b885a317316cbd0[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Materials/Capsule.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Materials/Capsule.mat[m
[1mdeleted file mode 100644[m
[1mindex c24f9b8..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Materials/Capsule.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Materials/Capsule.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Materials/Capsule.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex 3202179..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Materials/Capsule.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 5c8bad223a1c846dd8af522e07504fb3[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Materials/Ground.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Materials/Ground.mat[m
[1mdeleted file mode 100644[m
[1mindex 60dce5f..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Materials/Ground.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Materials/Ground.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Materials/Ground.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex 4b4df42..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Materials/Ground.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: b040eac4e6c1d4d19bfc79969a7c134f[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Prefabs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Prefabs.meta[m
[1mdeleted file mode 100644[m
[1mindex 9649b50..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Prefabs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 518491e43ad414975be48c0006c22fd0[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Prefabs/Waypoint.prefab b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Prefabs/Waypoint.prefab[m
[1mdeleted file mode 100644[m
[1mindex ff83dd4..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Prefabs/Waypoint.prefab and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Prefabs/Waypoint.prefab.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Prefabs/Waypoint.prefab.meta[m
[1mdeleted file mode 100644[m
[1mindex 123e89d..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Prefabs/Waypoint.prefab.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: f856c2fa813e549e3ae5ba9d63fa8ee5[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Scenes.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Scenes.meta[m
[1mdeleted file mode 100644[m
[1mindex 485335a..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Scenes.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: d47008f0787894ff3b200c27b9c487a9[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Scenes/C#.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Scenes/C#.unity[m
[1mdeleted file mode 100644[m
[1mindex 1943e9f..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Scenes/C#.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Scenes/C#.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Scenes/C#.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex 1ed2fcd..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Scenes/C#.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: a47c816c0303c4f0db13a76659f65687[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Scenes/JS.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Scenes/JS.unity[m
[1mdeleted file mode 100644[m
[1mindex 3d5972d..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Scenes/JS.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Scenes/JS.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Scenes/JS.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex f34f0ec..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Scenes/JS.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 57019fb9cd8af49f79d8d638c5bec8e3[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Scripts.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Scripts.meta[m
[1mdeleted file mode 100644[m
[1mindex 8f1a8a7..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Scripts.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: b40d099388d4e49fb8e3c7b4e882b2de[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Scripts/Waypoint.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Scripts/Waypoint.cs[m
[1mdeleted file mode 100644[m
[1mindex 0d18577..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Scripts/Waypoint.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-[m
[31m-public class Waypoint : MonoBehaviour {[m
[31m-	void OnDrawGizmos(){[m
[31m-		Gizmos.color=Color.yellow;[m
[31m-		Gizmos.DrawWireSphere(transform.position,1);[m
[31m-	}[m
[31m-}[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Scripts/Waypoint.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Scripts/Waypoint.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex 1c2d06e..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Scripts/Waypoint.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 1cfb2b15354504966b5e4e67d7acc3c2[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Scripts/WaypointExample.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Scripts/WaypointExample.cs[m
[1mdeleted file mode 100644[m
[1mindex 3bfcf69..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Scripts/WaypointExample.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,38 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class WaypointExample : MonoBehaviour {[m
[31m-	public Transform[] waypoints;[m
[31m-	public int rate = 20;[m
[31m-	private int currentWaypoint = 0;[m
[31m-	[m
[31m-	void Start(){[m
[31m-		MoveToWaypoint();	[m
[31m-	}[m
[31m-	[m
[31m-	void OnDrawGizmos(){[m
[31m-		iTween.DrawLine(waypoints,Color.yellow);[m
[31m-	}[m
[31m-	[m
[31m-	void MoveToWaypoint(){			[m
[31m-		//Time = Distance / Rate:[m
[31m-		float travelTime = Vector3.Distance(transform.position, waypoints[currentWaypoint].position)/rate;[m
[31m-		[m
[31m-		//iTween:[m
[31m-		iTween.MoveTo(gameObject,iTween.Hash("position",waypoints[currentWaypoint],"time",travelTime,"easetype","linear","oncomplete","MoveToWaypoint","Looktarget",waypoints[currentWaypoint].position,"looktime",.4));[m
[31m-		[m
[31m-		//Move to next waypoint:[m
[31m-		currentWaypoint++;[m
[31m-		if(currentWaypoint>waypoints.Length-2){[m
[31m-			currentWaypoint=0;[m
[31m-		}[m
[31m-	}[m
[31m-	[m
[31m-}[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[31m-[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Scripts/WaypointExample.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Scripts/WaypointExample.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex 1995a01..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WaypointUsage/Scripts/WaypointExample.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 68e6ac1dc6fe24bc78d74808124d1012[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics.meta[m
[1mdeleted file mode 100644[m
[1mindex 364e267..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: fdf37088e4a3743e79b018e26c667fab[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Fonts.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Fonts.meta[m
[1mdeleted file mode 100644[m
[1mindex 2fd52fe..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Fonts.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 059aef99372064be1a90a1724a4e9af6[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Fonts/Arial Black.ttf b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Fonts/Arial Black.ttf[m
[1mdeleted file mode 100644[m
[1mindex 8877277..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Fonts/Arial Black.ttf and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Fonts/Arial Black.ttf.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Fonts/Arial Black.ttf.meta[m
[1mdeleted file mode 100644[m
[1mindex 971c612..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Fonts/Arial Black.ttf.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,15 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 95a0ffda9aa2d464ca323966593f10f3[m
[31m-TrueTypeFontImporter:[m
[31m-  serializedVersion: 2[m
[31m-  fontSize: 12[m
[31m-  fontColor: {r: 1, g: 1, b: 1, a: 1}[m
[31m-  forceTextureCase: -1[m
[31m-  characterSpacing: 1[m
[31m-  characterPadding: 0[m
[31m-  includeFontData: 1[m
[31m-  use2xBehaviour: 1[m
[31m-  fontNames: [][m
[31m-  customCharacters: [m
[31m-  fontRenderingMode: 0[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Images.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Images.meta[m
[1mdeleted file mode 100644[m
[1mindex b2a7a38..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Images.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: d8f90fab57c2747429dcfb880544f1cb[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Images/innerGlow.png b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Images/innerGlow.png[m
[1mdeleted file mode 100644[m
[1mindex 5249604..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Images/innerGlow.png and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Images/innerGlow.png.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Images/innerGlow.png.meta[m
[1mdeleted file mode 100644[m
[1mindex 1a91809..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Images/innerGlow.png.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,35 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: c4da1a7ba2cb6442fbead77fe8419bde[m
[31m-TextureImporter:[m
[31m-  serializedVersion: 2[m
[31m-  mipmaps:[m
[31m-    mipMapMode: 0[m
[31m-    enableMipMap: 1[m
[31m-    linearTexture: 0[m
[31m-    correctGamma: 0[m
[31m-    fadeOut: 0[m
[31m-    borderMipMap: 0[m
[31m-    mipMapFadeDistanceStart: 2[m
[31m-    mipMapFadeDistanceEnd: 3[m
[31m-  bumpmap:[m
[31m-    convertToNormalMap: 0[m
[31m-    externalNormalMap: 0[m
[31m-    heightScale: .25[m
[31m-    normalMapFilter: 0[m
[31m-  isReadable: 0[m
[31m-  grayScaleToAlpha: 0[m
[31m-  generateCubemap: 0[m
[31m-  seamlessCubemap: 0[m
[31m-  textureFormat: -1[m
[31m-  maxTextureSize: 1024[m
[31m-  textureSettings:[m
[31m-    filterMode: -1[m
[31m-    aniso: -1[m
[31m-    mipBias: -1[m
[31m-    wrapMode: -1[m
[31m-  nPOTScale: 0[m
[31m-  lightmap: 0[m
[31m-  compressionQuality: 50[m
[31m-  textureType: -1[m
[31m-  buildTargetSettings: [][m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Materials.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Materials.meta[m
[1mdeleted file mode 100644[m
[1mindex f61d61e..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Materials.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: e9309add96ec94973939067b99d8dbdc[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Materials/Blue.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Materials/Blue.mat[m
[1mdeleted file mode 100644[m
[1mindex b7dd62d..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Materials/Blue.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Materials/Blue.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Materials/Blue.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex 4bcd381..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Materials/Blue.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 8cb0bc6a3658344afb90f3efe5510f2b[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Materials/Floor.mat b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Materials/Floor.mat[m
[1mdeleted file mode 100644[m
[1mindex e96a349..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Materials/Floor.mat and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Materials/Floor.mat.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Materials/Floor.mat.meta[m
[1mdeleted file mode 100644[m
[1mindex e9fb983..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Materials/Floor.mat.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 8d01d601576d343618d6c448b12a30b7[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Prefabs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Prefabs.meta[m
[1mdeleted file mode 100644[m
[1mindex b0ec189..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Prefabs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 0386da136e7d44541a807bb527f94aaf[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Prefabs/Brick.prefab b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Prefabs/Brick.prefab[m
[1mdeleted file mode 100644[m
[1mindex 130090d..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Prefabs/Brick.prefab and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Prefabs/Brick.prefab.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Prefabs/Brick.prefab.meta[m
[1mdeleted file mode 100644[m
[1mindex dbe0f6e..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Prefabs/Brick.prefab.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 0f4ce504e62c746959c37b9b0cf49b1b[m
[31m-NativeFormatImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Scenes.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Scenes.meta[m
[1mdeleted file mode 100644[m
[1mindex 22fde75..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Scenes.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 2bb0d609ab5ef404e92c24ff6a6f0a28[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Scenes/C#.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Scenes/C#.unity[m
[1mdeleted file mode 100644[m
[1mindex 3f6c179..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Scenes/C#.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Scenes/C#.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Scenes/C#.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex 960b800..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Scenes/C#.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 8e4fa2e86a6f44ec9b96660cf7ed69fc[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Scenes/JS.unity b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Scenes/JS.unity[m
[1mdeleted file mode 100644[m
[1mindex d6d04c4..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Scenes/JS.unity and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Scenes/JS.unity.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Scenes/JS.unity.meta[m
[1mdeleted file mode 100644[m
[1mindex 773419e..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Scenes/JS.unity.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: b6b8eae2ceae444a3b8db7475c58860b[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Scripts.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Scripts.meta[m
[1mdeleted file mode 100644[m
[1mindex 3bc5727..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Scripts.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,4 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: a43625888dead4088a496b0a02d218d3[m
[31m-DefaultImporter:[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Scripts/Bat.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Scripts/Bat.cs[m
[1mdeleted file mode 100644[m
[1mindex a9d390d..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Scripts/Bat.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,13 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class Bat : MonoBehaviour[m
[31m-{[m
[31m-	void Start (){[m
[31m-		GetComponent<Rigidbody>().useGravity=false;[m
[31m-		GetComponent<Rigidbody>().isKinematic=true;[m
[31m-		iTween.RotateTo(gameObject,iTween.Hash("y",-30,"time",.7,"delay",1,"easetype",iTween.EaseType.easeInOutSine));[m
[31m-		iTween.RotateTo(gameObject,iTween.Hash("y",60,"z",-30,"time",.4,"delay",2,"easetype",iTween.EaseType.spring));[m
[31m-	}[m
[31m-}[m
[31m-[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Scripts/Bat.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Scripts/Bat.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex f721a23..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Scripts/Bat.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: f6b139672a8194f43b0ce8634131f88d[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Scripts/Brick.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Scripts/Brick.cs[m
[1mdeleted file mode 100644[m
[1mindex a22d38c..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Scripts/Brick.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,17 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class Brick : MonoBehaviour[m
[31m-{[m
[31m-	private Color stableColor = Color.white;[m
[31m-	private Color impactColor = Color.red;[m
[31m-	[m
[31m-	void Update (){[m
[31m-		if(GetComponent<Rigidbody>().velocity.magnitude>2){[m
[31m-			iTween.ColorTo(gameObject,impactColor,.3f);[m
[31m-		}else{[m
[31m-			iTween.ColorTo(gameObject,stableColor,.3f);[m
[31m-		}[m
[31m-	}[m
[31m-}[m
[31m-[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Scripts/Brick.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Scripts/Brick.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex 5455f97..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Scripts/Brick.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 566ca5fcca10d424cb4a6d740a0a2f18[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Scripts/SimpleCameraFade.cs b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Scripts/SimpleCameraFade.cs[m
[1mdeleted file mode 100644[m
[1mindex 9bcf1e5..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Scripts/SimpleCameraFade.cs[m	
[1m+++ /dev/null[m
[36m@@ -1,23 +0,0 @@[m
[31m-using UnityEngine;[m
[31m-using System.Collections;[m
[31m-[m
[31m-public class SimpleCameraFade : MonoBehaviour{	[m
[31m-	void Start (){	[m
[31m-		//create a Camera Fade filled with a default color of black at a default depth of 999999:[m
[31m-		iTween.CameraFadeAdd();[m
[31m-		//fade the camera fade "from" an "amount" of 1 over 1 second (we can use the simple version of iTween here):[m
[31m-		iTween.CameraFadeFrom(1,1); [m
[31m-	}[m
[31m-	[m
[31m-	void Update(){[m
[31m-		if(Input.GetMouseButtonDown(0)){[m
[31m-			//by default iTween will call callbacks on the object that is being animated (in this case the "iTween Camera Fade" that was created in Start())[m
[31m-			//we need to provide a "oncompletetarget" to tell iTween that the method we want it to call is in this GameObject and NOT in "iTween Camera Fade"[m
[31m-			iTween.CameraFadeTo(iTween.Hash("amount",1,"time",1,"oncomplete","SwitchScene","oncompletetarget",gameObject)); [m
[31m-		}[m
[31m-	}[m
[31m-	[m
[31m-	void SwitchScene(){[m
[31m-		Application.LoadLevel("C#");	[m
[31m-	}[m
[31m-}[m
\ No newline at end of file[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Scripts/SimpleCameraFade.cs.meta b/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Scripts/SimpleCameraFade.cs.meta[m
[1mdeleted file mode 100644[m
[1mindex 0c66ecb..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Assets/iTweenExamples/WorkingWithPhysics/Scripts/SimpleCameraFade.cs.meta[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-fileFormatVersion: 2[m
[31m-guid: 8d4d652b350394ade9ec4eaf3bc6a938[m
[31m-MonoImporter:[m
[31m-  serializedVersion: 2[m
[31m-  defaultReferences: [][m
[31m-  executionOrder: 0[m
[31m-  icon: {instanceID: 0}[m
[31m-  userData: [m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/AnnotationManager b/P_MQ_2016 0908-0909Digital Taipei/Library/AnnotationManager[m
[1mindex c883384..a8f85dd 100644[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/AnnotationManager and b/P_MQ_2016 0908-0909Digital Taipei/Library/AnnotationManager differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/CurrentLayout.dwlt b/P_MQ_2016 0908-0909Digital Taipei/Library/CurrentLayout.dwlt[m
[1mindex 4569d0b..c2738d5 100644[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/CurrentLayout.dwlt and b/P_MQ_2016 0908-0909Digital Taipei/Library/CurrentLayout.dwlt differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/LastSceneManagerSetup.txt b/P_MQ_2016 0908-0909Digital Taipei/Library/LastSceneManagerSetup.txt[m
[1mindex cce5ead..5513339 100644[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Library/LastSceneManagerSetup.txt[m	
[1m+++ b/P_MQ_2016 0908-0909Digital Taipei/Library/LastSceneManagerSetup.txt[m	
[36m@@ -1,4 +1,4 @@[m
 sceneSetups:[m
[31m-- path: Assets/CameraTest/CameraTest.unity[m
[32m+[m[32m- path: Assets/06_GameScene/Ver3/Scenes/GameScene.unity[m
   isLoaded: 1[m
   isActive: 1[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/ScriptAssemblies/Assembly-CSharp.dll.mdb b/P_MQ_2016 0908-0909Digital Taipei/Library/ScriptAssemblies/Assembly-CSharp.dll.mdb[m
[1mindex d6ed211..5cf3110 100644[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/ScriptAssemblies/Assembly-CSharp.dll.mdb and b/P_MQ_2016 0908-0909Digital Taipei/Library/ScriptAssemblies/Assembly-CSharp.dll.mdb differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/0/029820a9901a669446cef06776df8617.bin b/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/0/029820a9901a669446cef06776df8617.bin[m
[1mdeleted file mode 100644[m
[1mindex f2d606c..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/0/029820a9901a669446cef06776df8617.bin and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/0/08200683de6f8300b8d009296cee6c88.bin b/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/0/08200683de6f8300b8d009296cee6c88.bin[m
[1mdeleted file mode 100644[m
[1mindex a554a39..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/0/08200683de6f8300b8d009296cee6c88.bin and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/0/0ca0ff47da560b2bfe71b0972897ab21.bin b/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/0/0ca0ff47da560b2bfe71b0972897ab21.bin[m
[1mdeleted file mode 100644[m
[1mindex 4dd4be7..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/0/0ca0ff47da560b2bfe71b0972897ab21.bin and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/0/0e0ebd9510b30ca16c93a74bba4f3fe0.bin b/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/0/0e0ebd9510b30ca16c93a74bba4f3fe0.bin[m
[1mdeleted file mode 100644[m
[1mindex 178650a..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/0/0e0ebd9510b30ca16c93a74bba4f3fe0.bin and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/1/1ebfa796ac0e17f0044075eb3137a981.bin b/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/1/1ebfa796ac0e17f0044075eb3137a981.bin[m
[1mdeleted file mode 100644[m
[1mindex 457c79e..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/1/1ebfa796ac0e17f0044075eb3137a981.bin and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/2/242035dc0d30dad7a56a54294ed54b5d.bin b/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/2/242035dc0d30dad7a56a54294ed54b5d.bin[m
[1mdeleted file mode 100644[m
[1mindex 958dc31..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/2/242035dc0d30dad7a56a54294ed54b5d.bin and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/4/4efdc76920559afdf86f2c46a0f587a5.bin b/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/4/4efdc76920559afdf86f2c46a0f587a5.bin[m
[1mdeleted file mode 100644[m
[1mindex b213ff2..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/4/4efdc76920559afdf86f2c46a0f587a5.bin and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/5/5736258678fd5d22a2f96105e2feca69.bin b/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/5/5736258678fd5d22a2f96105e2feca69.bin[m
[1mdeleted file mode 100644[m
[1mindex 1e20f01..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/5/5736258678fd5d22a2f96105e2feca69.bin and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/5/5d476eaede2a69ba15c8ebac4d2b2893.bin b/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/5/5d476eaede2a69ba15c8ebac4d2b2893.bin[m
[1mdeleted file mode 100644[m
[1mindex c33cfe2..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/5/5d476eaede2a69ba15c8ebac4d2b2893.bin and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/6/6ccc4e26c0a53a8773b661c16ce278c9.bin b/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/6/6ccc4e26c0a53a8773b661c16ce278c9.bin[m
[1mdeleted file mode 100644[m
[1mindex e6692c2..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/6/6ccc4e26c0a53a8773b661c16ce278c9.bin and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/8/8566862ecd7f0b5077011f221cd7d1af.bin b/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/8/8566862ecd7f0b5077011f221cd7d1af.bin[m
[1mdeleted file mode 100644[m
[1mindex efb765e..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/8/8566862ecd7f0b5077011f221cd7d1af.bin and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/8/89e2c8083809d053b7d3ec23c1c99556.bin b/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/8/89e2c8083809d053b7d3ec23c1c99556.bin[m
[1mdeleted file mode 100644[m
[1mindex 3ce85fa..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/8/89e2c8083809d053b7d3ec23c1c99556.bin and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/8/8b902f87ea35203c471a7c9a887f537e.bin b/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/8/8b902f87ea35203c471a7c9a887f537e.bin[m
[1mdeleted file mode 100644[m
[1mindex b996748..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/8/8b902f87ea35203c471a7c9a887f537e.bin and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/9/9f94327a222235c829d90216f102c2e9.bin b/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/9/9f94327a222235c829d90216f102c2e9.bin[m
[1mdeleted file mode 100644[m
[1mindex 3ce85fa..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/9/9f94327a222235c829d90216f102c2e9.bin and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/a/a713a7c2adb75cc073579ec4c69aa7ef.bin b/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/a/a713a7c2adb75cc073579ec4c69aa7ef.bin[m
[1mdeleted file mode 100644[m
[1mindex 4dd4be7..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/a/a713a7c2adb75cc073579ec4c69aa7ef.bin and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/b/b79401701e5f90b14e860245f1f4ab8c.bin b/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/b/b79401701e5f90b14e860245f1f4ab8c.bin[m
[1mdeleted file mode 100644[m
[1mindex fcca5cc..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/b/b79401701e5f90b14e860245f1f4ab8c.bin and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/b/bcdc35189b0cea4a2420388f4dda9c8c.bin b/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/b/bcdc35189b0cea4a2420388f4dda9c8c.bin[m
[1mdeleted file mode 100644[m
[1mindex e6692c2..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/b/bcdc35189b0cea4a2420388f4dda9c8c.bin and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/c/c3d988c062619578a64792cef922e39c.bin b/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/c/c3d988c062619578a64792cef922e39c.bin[m
[1mdeleted file mode 100644[m
[1mindex e0d710f..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/c/c3d988c062619578a64792cef922e39c.bin and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/c/caf159e315b3613c0209be8a083d9756.bin b/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/c/caf159e315b3613c0209be8a083d9756.bin[m
[1mdeleted file mode 100644[m
[1mindex 14df558..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/c/caf159e315b3613c0209be8a083d9756.bin and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/c/cd35cbb584cb8b1bc325fbd9a6a1abb3.bin b/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/c/cd35cbb584cb8b1bc325fbd9a6a1abb3.bin[m
[1mdeleted file mode 100644[m
[1mindex 63988c1..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/c/cd35cbb584cb8b1bc325fbd9a6a1abb3.bin and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/d/da2db98d7a98827067657a29c3aadad6.bin b/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/d/da2db98d7a98827067657a29c3aadad6.bin[m
[1mdeleted file mode 100644[m
[1mindex c33cfe2..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/d/da2db98d7a98827067657a29c3aadad6.bin and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/d/ddce89a3e83a1407a73ba0adcef4b7ac.bin b/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/d/ddce89a3e83a1407a73ba0adcef4b7ac.bin[m
[1mdeleted file mode 100644[m
[1mindex 6f64af4..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/d/ddce89a3e83a1407a73ba0adcef4b7ac.bin and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/e/e4b209d45f164f93d2e1f47a9e6d6812.bin b/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/e/e4b209d45f164f93d2e1f47a9e6d6812.bin[m
[1mdeleted file mode 100644[m
[1mindex dc737dc..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/e/e4b209d45f164f93d2e1f47a9e6d6812.bin and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/e/e8de7d085de15dab2d2c42d773aff0e4.bin b/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/e/e8de7d085de15dab2d2c42d773aff0e4.bin[m
[1mdeleted file mode 100644[m
[1mindex de1c658..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/e/e8de7d085de15dab2d2c42d773aff0e4.bin and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/f/f06df2e16f5759d5be8025f7f01f791a.bin b/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/f/f06df2e16f5759d5be8025f7f01f791a.bin[m
[1mdeleted file mode 100644[m
[1mindex b576065..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/f/f06df2e16f5759d5be8025f7f01f791a.bin and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/f/f3258ef4e09855fe0e9929a3252dfb43.bin b/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/f/f3258ef4e09855fe0e9929a3252dfb43.bin[m
[1mdeleted file mode 100644[m
[1mindex e6692c2..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/f/f3258ef4e09855fe0e9929a3252dfb43.bin and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/f/f3d757ad399d7d0445943e2cd9a851e4.bin b/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/f/f3d757ad399d7d0445943e2cd9a851e4.bin[m
[1mdeleted file mode 100644[m
[1mindex fcca5cc..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/f/f3d757ad399d7d0445943e2cd9a851e4.bin and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/f/f8f5f2bc6ddfbb2af19c0a2d5bbab07e.bin b/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/f/f8f5f2bc6ddfbb2af19c0a2d5bbab07e.bin[m
[1mdeleted file mode 100644[m
[1mindex 7a5a30c..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/ShaderCache/f/f8f5f2bc6ddfbb2af19c0a2d5bbab07e.bin and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/UnityAssemblies/SyntaxTree.VisualStudio.Unity.Bridge.xml b/P_MQ_2016 0908-0909Digital Taipei/Library/UnityAssemblies/SyntaxTree.VisualStudio.Unity.Bridge.xml[m
[1mdeleted file mode 100644[m
[1mindex d9be344..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Library/UnityAssemblies/SyntaxTree.VisualStudio.Unity.Bridge.xml[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-﻿<?xml version="1.0"?>[m
[31m-<doc>[m
[31m-	<assembly>[m
[31m-		<name>SyntaxTree.VisualStudio.Unity.Bridge</name>[m
[31m-	</assembly>[m
[31m-	<members>[m
[31m-	</members>[m
[31m-</doc>[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/UnityAssemblies/UnityEditor.Android.Extensions.xml b/P_MQ_2016 0908-0909Digital Taipei/Library/UnityAssemblies/UnityEditor.Android.Extensions.xml[m
[1mdeleted file mode 100644[m
[1mindex 566f8d3..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Library/UnityAssemblies/UnityEditor.Android.Extensions.xml[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-﻿<?xml version="1.0"?>[m
[31m-<doc>[m
[31m-	<assembly>[m
[31m-		<name>UnityEditor.Android.Extensions</name>[m
[31m-	</assembly>[m
[31m-	<members>[m
[31m-	</members>[m
[31m-</doc>[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/UnityAssemblies/UnityEditor.Graphs.xml b/P_MQ_2016 0908-0909Digital Taipei/Library/UnityAssemblies/UnityEditor.Graphs.xml[m
[1mdeleted file mode 100644[m
[1mindex 56deb83..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Library/UnityAssemblies/UnityEditor.Graphs.xml[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-﻿<?xml version="1.0"?>[m
[31m-<doc>[m
[31m-	<assembly>[m
[31m-		<name>UnityEditor.Graphs</name>[m
[31m-	</assembly>[m
[31m-	<members>[m
[31m-	</members>[m
[31m-</doc>[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/UnityAssemblies/UnityEditor.WindowsStandalone.Extensions.xml b/P_MQ_2016 0908-0909Digital Taipei/Library/UnityAssemblies/UnityEditor.WindowsStandalone.Extensions.xml[m
[1mdeleted file mode 100644[m
[1mindex 2c8f5c5..0000000[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/Library/UnityAssemblies/UnityEditor.WindowsStandalone.Extensions.xml[m	
[1m+++ /dev/null[m
[36m@@ -1,8 +0,0 @@[m
[31m-﻿<?xml version="1.0"?>[m
[31m-<doc>[m
[31m-	<assembly>[m
[31m-		<name>UnityEditor.WindowsStandalone.Extensions</name>[m
[31m-	</assembly>[m
[31m-	<members>[m
[31m-	</members>[m
[31m-</doc>[m
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/assetDatabase3 b/P_MQ_2016 0908-0909Digital Taipei/Library/assetDatabase3[m
[1mindex 530ea57..0a5f12c 100644[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/assetDatabase3 and b/P_MQ_2016 0908-0909Digital Taipei/Library/assetDatabase3 differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/expandedItems b/P_MQ_2016 0908-0909Digital Taipei/Library/expandedItems[m
[1mindex e8dec42..b1e25b2 100644[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/expandedItems and b/P_MQ_2016 0908-0909Digital Taipei/Library/expandedItems differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/03/032bb353edafd4604af32f39cb8b219d b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/03/032bb353edafd4604af32f39cb8b219d[m
[1mdeleted file mode 100644[m
[1mindex c59bcce..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/03/032bb353edafd4604af32f39cb8b219d and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/03/032bb353edafd4604af32f39cb8b219d.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/03/032bb353edafd4604af32f39cb8b219d.info[m
[1mdeleted file mode 100644[m
[1mindex c9dde62..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/03/032bb353edafd4604af32f39cb8b219d.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/03/0386da136e7d44541a807bb527f94aaf b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/03/0386da136e7d44541a807bb527f94aaf[m
[1mdeleted file mode 100644[m
[1mindex 62a81ae..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/03/0386da136e7d44541a807bb527f94aaf and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/03/0386da136e7d44541a807bb527f94aaf.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/03/0386da136e7d44541a807bb527f94aaf.info[m
[1mdeleted file mode 100644[m
[1mindex f842cb3..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/03/0386da136e7d44541a807bb527f94aaf.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/03/03c1ca45914814c918366c65dde6ef26 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/03/03c1ca45914814c918366c65dde6ef26[m
[1mdeleted file mode 100644[m
[1mindex 978491f..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/03/03c1ca45914814c918366c65dde6ef26 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/03/03c1ca45914814c918366c65dde6ef26.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/03/03c1ca45914814c918366c65dde6ef26.info[m
[1mdeleted file mode 100644[m
[1mindex 9762a09..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/03/03c1ca45914814c918366c65dde6ef26.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/04/044cc407f1ce74b75bde9dab46079589 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/04/044cc407f1ce74b75bde9dab46079589[m
[1mdeleted file mode 100644[m
[1mindex 22e1b72..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/04/044cc407f1ce74b75bde9dab46079589 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/04/044cc407f1ce74b75bde9dab46079589.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/04/044cc407f1ce74b75bde9dab46079589.info[m
[1mdeleted file mode 100644[m
[1mindex 694a4a5..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/04/044cc407f1ce74b75bde9dab46079589.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/05/051a4393f767943608319c95f14c0646 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/05/051a4393f767943608319c95f14c0646[m
[1mdeleted file mode 100644[m
[1mindex 4a828ff..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/05/051a4393f767943608319c95f14c0646 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/05/051a4393f767943608319c95f14c0646.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/05/051a4393f767943608319c95f14c0646.info[m
[1mdeleted file mode 100644[m
[1mindex af58245..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/05/051a4393f767943608319c95f14c0646.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/05/0527e710dd3fa4a3594dc116a706850b b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/05/0527e710dd3fa4a3594dc116a706850b[m
[1mdeleted file mode 100644[m
[1mindex 46c571f..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/05/0527e710dd3fa4a3594dc116a706850b and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/05/0527e710dd3fa4a3594dc116a706850b.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/05/0527e710dd3fa4a3594dc116a706850b.info[m
[1mdeleted file mode 100644[m
[1mindex 19e2c9d..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/05/0527e710dd3fa4a3594dc116a706850b.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/05/059aef99372064be1a90a1724a4e9af6 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/05/059aef99372064be1a90a1724a4e9af6[m
[1mdeleted file mode 100644[m
[1mindex ecae252..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/05/059aef99372064be1a90a1724a4e9af6 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/05/059aef99372064be1a90a1724a4e9af6.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/05/059aef99372064be1a90a1724a4e9af6.info[m
[1mdeleted file mode 100644[m
[1mindex 180a5ec..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/05/059aef99372064be1a90a1724a4e9af6.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/05/05aa2cad2b0b74d938c04d559f590cb6 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/05/05aa2cad2b0b74d938c04d559f590cb6[m
[1mdeleted file mode 100644[m
[1mindex 09f1823..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/05/05aa2cad2b0b74d938c04d559f590cb6 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/05/05aa2cad2b0b74d938c04d559f590cb6.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/05/05aa2cad2b0b74d938c04d559f590cb6.info[m
[1mdeleted file mode 100644[m
[1mindex 2566f5f..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/05/05aa2cad2b0b74d938c04d559f590cb6.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/05/05e340b88e203473a8ba0684af1603d9 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/05/05e340b88e203473a8ba0684af1603d9[m
[1mdeleted file mode 100644[m
[1mindex 2774a36..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/05/05e340b88e203473a8ba0684af1603d9 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/05/05e340b88e203473a8ba0684af1603d9.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/05/05e340b88e203473a8ba0684af1603d9.info[m
[1mdeleted file mode 100644[m
[1mindex 9548d47..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/05/05e340b88e203473a8ba0684af1603d9.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/07/075a02a16e0e0416096c569786b2ceb8 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/07/075a02a16e0e0416096c569786b2ceb8[m
[1mdeleted file mode 100644[m
[1mindex c1aaead..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/07/075a02a16e0e0416096c569786b2ceb8 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/07/075a02a16e0e0416096c569786b2ceb8.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/07/075a02a16e0e0416096c569786b2ceb8.info[m
[1mdeleted file mode 100644[m
[1mindex 4b5883e..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/07/075a02a16e0e0416096c569786b2ceb8.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/07/0782f0168ae2842b791076cf6e5989fe b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/07/0782f0168ae2842b791076cf6e5989fe[m
[1mdeleted file mode 100644[m
[1mindex 1d2ae26..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/07/0782f0168ae2842b791076cf6e5989fe and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/07/0782f0168ae2842b791076cf6e5989fe.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/07/0782f0168ae2842b791076cf6e5989fe.info[m
[1mdeleted file mode 100644[m
[1mindex 99e5d3d..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/07/0782f0168ae2842b791076cf6e5989fe.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/07/07b66e96e775b4ba8a62edde7b5a20dc b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/07/07b66e96e775b4ba8a62edde7b5a20dc[m
[1mdeleted file mode 100644[m
[1mindex c915721..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/07/07b66e96e775b4ba8a62edde7b5a20dc and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/07/07b66e96e775b4ba8a62edde7b5a20dc.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/07/07b66e96e775b4ba8a62edde7b5a20dc.info[m
[1mdeleted file mode 100644[m
[1mindex 0f73ce1..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/07/07b66e96e775b4ba8a62edde7b5a20dc.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/09/0914e40bbb33d4242a3a3d0f8fafbe5b b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/09/0914e40bbb33d4242a3a3d0f8fafbe5b[m
[1mdeleted file mode 100644[m
[1mindex f741872..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/09/0914e40bbb33d4242a3a3d0f8fafbe5b and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/09/0914e40bbb33d4242a3a3d0f8fafbe5b.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/09/0914e40bbb33d4242a3a3d0f8fafbe5b.info[m
[1mdeleted file mode 100644[m
[1mindex 1b749c6..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/09/0914e40bbb33d4242a3a3d0f8fafbe5b.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/0a/0aad3cbda6bf84c4bb2ee1d240a11d4a b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/0a/0aad3cbda6bf84c4bb2ee1d240a11d4a[m
[1mdeleted file mode 100644[m
[1mindex 9af2434..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/0a/0aad3cbda6bf84c4bb2ee1d240a11d4a and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/0a/0aad3cbda6bf84c4bb2ee1d240a11d4a.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/0a/0aad3cbda6bf84c4bb2ee1d240a11d4a.info[m
[1mdeleted file mode 100644[m
[1mindex a2c2afc..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/0a/0aad3cbda6bf84c4bb2ee1d240a11d4a.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/0b/0b3e0b01b4b434516bd567819c114092 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/0b/0b3e0b01b4b434516bd567819c114092[m
[1mdeleted file mode 100644[m
[1mindex e09fab7..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/0b/0b3e0b01b4b434516bd567819c114092 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/0b/0b3e0b01b4b434516bd567819c114092.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/0b/0b3e0b01b4b434516bd567819c114092.info[m
[1mdeleted file mode 100644[m
[1mindex 249a382..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/0b/0b3e0b01b4b434516bd567819c114092.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/0b/0b93a242aba144bb481c5e1849b46a1f b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/0b/0b93a242aba144bb481c5e1849b46a1f[m
[1mdeleted file mode 100644[m
[1mindex ae4ba2a..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/0b/0b93a242aba144bb481c5e1849b46a1f and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/0b/0b93a242aba144bb481c5e1849b46a1f.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/0b/0b93a242aba144bb481c5e1849b46a1f.info[m
[1mdeleted file mode 100644[m
[1mindex ad80b3d..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/0b/0b93a242aba144bb481c5e1849b46a1f.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/0c/0c994514d3c32492da42b1eec3c7f67a b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/0c/0c994514d3c32492da42b1eec3c7f67a[m
[1mdeleted file mode 100644[m
[1mindex 801262f..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/0c/0c994514d3c32492da42b1eec3c7f67a and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/0c/0c994514d3c32492da42b1eec3c7f67a.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/0c/0c994514d3c32492da42b1eec3c7f67a.info[m
[1mdeleted file mode 100644[m
[1mindex 6ec90c3..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/0c/0c994514d3c32492da42b1eec3c7f67a.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/0c/0c994514d3c32492da42b1eec3c7f67a.resource b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/0c/0c994514d3c32492da42b1eec3c7f67a.resource[m
[1mdeleted file mode 100644[m
[1mindex 384b5b1..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/0c/0c994514d3c32492da42b1eec3c7f67a.resource and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/0f/0f4ce504e62c746959c37b9b0cf49b1b b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/0f/0f4ce504e62c746959c37b9b0cf49b1b[m
[1mdeleted file mode 100644[m
[1mindex be40903..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/0f/0f4ce504e62c746959c37b9b0cf49b1b and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/0f/0f4ce504e62c746959c37b9b0cf49b1b.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/0f/0f4ce504e62c746959c37b9b0cf49b1b.info[m
[1mdeleted file mode 100644[m
[1mindex b1224b5..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/0f/0f4ce504e62c746959c37b9b0cf49b1b.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/0f/0f5791f6196e343e18ddad5ea7ccebe5 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/0f/0f5791f6196e343e18ddad5ea7ccebe5[m
[1mdeleted file mode 100644[m
[1mindex 5dcb19b..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/0f/0f5791f6196e343e18ddad5ea7ccebe5 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/0f/0f5791f6196e343e18ddad5ea7ccebe5.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/0f/0f5791f6196e343e18ddad5ea7ccebe5.info[m
[1mdeleted file mode 100644[m
[1mindex f4be35a..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/0f/0f5791f6196e343e18ddad5ea7ccebe5.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/10/10ea111c24cc14fed83a87faa1a398a5 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/10/10ea111c24cc14fed83a87faa1a398a5[m
[1mdeleted file mode 100644[m
[1mindex b0f3f3f..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/10/10ea111c24cc14fed83a87faa1a398a5 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/10/10ea111c24cc14fed83a87faa1a398a5.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/10/10ea111c24cc14fed83a87faa1a398a5.info[m
[1mdeleted file mode 100644[m
[1mindex 3e5b17c..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/10/10ea111c24cc14fed83a87faa1a398a5.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/11/11a279ff4c1b545fd99f4110fd864e4d b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/11/11a279ff4c1b545fd99f4110fd864e4d[m
[1mdeleted file mode 100644[m
[1mindex c7e6f0f..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/11/11a279ff4c1b545fd99f4110fd864e4d and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/11/11a279ff4c1b545fd99f4110fd864e4d.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/11/11a279ff4c1b545fd99f4110fd864e4d.info[m
[1mdeleted file mode 100644[m
[1mindex 6991914..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/11/11a279ff4c1b545fd99f4110fd864e4d.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/11/11cfa0087620541a8b3363b40003e79f b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/11/11cfa0087620541a8b3363b40003e79f[m
[1mdeleted file mode 100644[m
[1mindex d544f80..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/11/11cfa0087620541a8b3363b40003e79f and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/11/11cfa0087620541a8b3363b40003e79f.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/11/11cfa0087620541a8b3363b40003e79f.info[m
[1mdeleted file mode 100644[m
[1mindex 90965b2..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/11/11cfa0087620541a8b3363b40003e79f.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/12/12a4940a0af8041c381aeea367905449 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/12/12a4940a0af8041c381aeea367905449[m
[1mdeleted file mode 100644[m
[1mindex 036ef3e..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/12/12a4940a0af8041c381aeea367905449 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/12/12a4940a0af8041c381aeea367905449.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/12/12a4940a0af8041c381aeea367905449.info[m
[1mdeleted file mode 100644[m
[1mindex 60e187b..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/12/12a4940a0af8041c381aeea367905449.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/13/13848700538e84fd4a29e2bc26fa681e b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/13/13848700538e84fd4a29e2bc26fa681e[m
[1mdeleted file mode 100644[m
[1mindex 37291d3..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/13/13848700538e84fd4a29e2bc26fa681e and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/13/13848700538e84fd4a29e2bc26fa681e.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/13/13848700538e84fd4a29e2bc26fa681e.info[m
[1mdeleted file mode 100644[m
[1mindex 7f7f62a..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/13/13848700538e84fd4a29e2bc26fa681e.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/14/144e6fb004a2a46ee83f8251b1dbeaf5 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/14/144e6fb004a2a46ee83f8251b1dbeaf5[m
[1mdeleted file mode 100644[m
[1mindex c032705..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/14/144e6fb004a2a46ee83f8251b1dbeaf5 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/14/144e6fb004a2a46ee83f8251b1dbeaf5.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/14/144e6fb004a2a46ee83f8251b1dbeaf5.info[m
[1mdeleted file mode 100644[m
[1mindex a0f366b..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/14/144e6fb004a2a46ee83f8251b1dbeaf5.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/17/17410dd9d714849c6b885a317316cbd0 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/17/17410dd9d714849c6b885a317316cbd0[m
[1mdeleted file mode 100644[m
[1mindex 6253bc3..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/17/17410dd9d714849c6b885a317316cbd0 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/17/17410dd9d714849c6b885a317316cbd0.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/17/17410dd9d714849c6b885a317316cbd0.info[m
[1mdeleted file mode 100644[m
[1mindex 3a05d53..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/17/17410dd9d714849c6b885a317316cbd0.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/19/19a3e01ea85b94280a0522dba14f7fdc b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/19/19a3e01ea85b94280a0522dba14f7fdc[m
[1mdeleted file mode 100644[m
[1mindex 47ec916..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/19/19a3e01ea85b94280a0522dba14f7fdc and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/19/19a3e01ea85b94280a0522dba14f7fdc.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/19/19a3e01ea85b94280a0522dba14f7fdc.info[m
[1mdeleted file mode 100644[m
[1mindex ec53b5b..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/19/19a3e01ea85b94280a0522dba14f7fdc.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/19/19b8e1694e37c4afcaeabcb737ddd202 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/19/19b8e1694e37c4afcaeabcb737ddd202[m
[1mdeleted file mode 100644[m
[1mindex b2351a7..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/19/19b8e1694e37c4afcaeabcb737ddd202 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/19/19b8e1694e37c4afcaeabcb737ddd202.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/19/19b8e1694e37c4afcaeabcb737ddd202.info[m
[1mdeleted file mode 100644[m
[1mindex 7356fef..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/19/19b8e1694e37c4afcaeabcb737ddd202.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/1b/1b34c80f39f224753a4488bef06c606d b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/1b/1b34c80f39f224753a4488bef06c606d[m
[1mdeleted file mode 100644[m
[1mindex 56d3ab8..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/1b/1b34c80f39f224753a4488bef06c606d and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/1b/1b34c80f39f224753a4488bef06c606d.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/1b/1b34c80f39f224753a4488bef06c606d.info[m
[1mdeleted file mode 100644[m
[1mindex c9ecead..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/1b/1b34c80f39f224753a4488bef06c606d.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/1b/1bbbd6dc4f6474095bcce78656959d84 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/1b/1bbbd6dc4f6474095bcce78656959d84[m
[1mdeleted file mode 100644[m
[1mindex 17fe443..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/1b/1bbbd6dc4f6474095bcce78656959d84 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/1b/1bbbd6dc4f6474095bcce78656959d84.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/1b/1bbbd6dc4f6474095bcce78656959d84.info[m
[1mdeleted file mode 100644[m
[1mindex 5b2d54b..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/1b/1bbbd6dc4f6474095bcce78656959d84.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/1c/1c5c9128407bc4b21b3967d691c4886c b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/1c/1c5c9128407bc4b21b3967d691c4886c[m
[1mdeleted file mode 100644[m
[1mindex 4c86ba1..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/1c/1c5c9128407bc4b21b3967d691c4886c and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/1c/1c5c9128407bc4b21b3967d691c4886c.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/1c/1c5c9128407bc4b21b3967d691c4886c.info[m
[1mdeleted file mode 100644[m
[1mindex f676861..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/1c/1c5c9128407bc4b21b3967d691c4886c.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/1c/1cd1807a74f6943e6a34bc8075fef6f2 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/1c/1cd1807a74f6943e6a34bc8075fef6f2[m
[1mdeleted file mode 100644[m
[1mindex b34b42a..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/1c/1cd1807a74f6943e6a34bc8075fef6f2 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/1c/1cd1807a74f6943e6a34bc8075fef6f2.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/1c/1cd1807a74f6943e6a34bc8075fef6f2.info[m
[1mdeleted file mode 100644[m
[1mindex 02d6acf..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/1c/1cd1807a74f6943e6a34bc8075fef6f2.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/1c/1cfb2b15354504966b5e4e67d7acc3c2 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/1c/1cfb2b15354504966b5e4e67d7acc3c2[m
[1mdeleted file mode 100644[m
[1mindex f2265d6..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/1c/1cfb2b15354504966b5e4e67d7acc3c2 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/1c/1cfb2b15354504966b5e4e67d7acc3c2.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/1c/1cfb2b15354504966b5e4e67d7acc3c2.info[m
[1mdeleted file mode 100644[m
[1mindex 53ca97e..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/1c/1cfb2b15354504966b5e4e67d7acc3c2.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/1e/1e814b589e1c74c77a4d2b225e776207 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/1e/1e814b589e1c74c77a4d2b225e776207[m
[1mdeleted file mode 100644[m
[1mindex c28bcb7..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/1e/1e814b589e1c74c77a4d2b225e776207 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/1e/1e814b589e1c74c77a4d2b225e776207.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/1e/1e814b589e1c74c77a4d2b225e776207.info[m
[1mdeleted file mode 100644[m
[1mindex b164201..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/1e/1e814b589e1c74c77a4d2b225e776207.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/20/20a6e331f63a944708f17a7c9cce91b2 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/20/20a6e331f63a944708f17a7c9cce91b2[m
[1mdeleted file mode 100644[m
[1mindex e74e876..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/20/20a6e331f63a944708f17a7c9cce91b2 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/20/20a6e331f63a944708f17a7c9cce91b2.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/20/20a6e331f63a944708f17a7c9cce91b2.info[m
[1mdeleted file mode 100644[m
[1mindex 825d91b..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/20/20a6e331f63a944708f17a7c9cce91b2.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/21/21b6db852882d43d89ee023639db096e b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/21/21b6db852882d43d89ee023639db096e[m
[1mdeleted file mode 100644[m
[1mindex 7a2afd3..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/21/21b6db852882d43d89ee023639db096e and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/21/21b6db852882d43d89ee023639db096e.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/21/21b6db852882d43d89ee023639db096e.info[m
[1mdeleted file mode 100644[m
[1mindex 805ce26..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/21/21b6db852882d43d89ee023639db096e.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/22/226eea5e516b94c30bc97ac5edf60148 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/22/226eea5e516b94c30bc97ac5edf60148[m
[1mdeleted file mode 100644[m
[1mindex 0b72e67..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/22/226eea5e516b94c30bc97ac5edf60148 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/22/226eea5e516b94c30bc97ac5edf60148.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/22/226eea5e516b94c30bc97ac5edf60148.info[m
[1mdeleted file mode 100644[m
[1mindex 74cb556..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/22/226eea5e516b94c30bc97ac5edf60148.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/24/24754d7708a3b472090d73a5721534d7 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/24/24754d7708a3b472090d73a5721534d7[m
[1mdeleted file mode 100644[m
[1mindex dbed8d8..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/24/24754d7708a3b472090d73a5721534d7 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/24/24754d7708a3b472090d73a5721534d7.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/24/24754d7708a3b472090d73a5721534d7.info[m
[1mdeleted file mode 100644[m
[1mindex 6b7143e..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/24/24754d7708a3b472090d73a5721534d7.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/25/2580bf9f7ec624ae692238aea5400d4a b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/25/2580bf9f7ec624ae692238aea5400d4a[m
[1mdeleted file mode 100644[m
[1mindex e234747..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/25/2580bf9f7ec624ae692238aea5400d4a and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/25/2580bf9f7ec624ae692238aea5400d4a.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/25/2580bf9f7ec624ae692238aea5400d4a.info[m
[1mdeleted file mode 100644[m
[1mindex 53544c8..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/25/2580bf9f7ec624ae692238aea5400d4a.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/26/26077d31354824403901ff3faea141f0 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/26/26077d31354824403901ff3faea141f0[m
[1mdeleted file mode 100644[m
[1mindex bf99fd0..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/26/26077d31354824403901ff3faea141f0 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/26/26077d31354824403901ff3faea141f0.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/26/26077d31354824403901ff3faea141f0.info[m
[1mdeleted file mode 100644[m
[1mindex aebb001..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/26/26077d31354824403901ff3faea141f0.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/26/26562c6b71e924b1e91a93713d597089 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/26/26562c6b71e924b1e91a93713d597089[m
[1mdeleted file mode 100644[m
[1mindex 62eebc6..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/26/26562c6b71e924b1e91a93713d597089 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/26/26562c6b71e924b1e91a93713d597089.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/26/26562c6b71e924b1e91a93713d597089.info[m
[1mdeleted file mode 100644[m
[1mindex 91d46ca..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/26/26562c6b71e924b1e91a93713d597089.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/26/26562c6b71e924b1e91a93713d597089.resource b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/26/26562c6b71e924b1e91a93713d597089.resource[m
[1mdeleted file mode 100644[m
[1mindex f078432..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/26/26562c6b71e924b1e91a93713d597089.resource and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/26/2697637c7f98443538abc6facff40221 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/26/2697637c7f98443538abc6facff40221[m
[1mdeleted file mode 100644[m
[1mindex 8da8fcf..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/26/2697637c7f98443538abc6facff40221 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/26/2697637c7f98443538abc6facff40221.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/26/2697637c7f98443538abc6facff40221.info[m
[1mdeleted file mode 100644[m
[1mindex d04d1d2..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/26/2697637c7f98443538abc6facff40221.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/26/26a33133e0aad41139e0ba419a8cef26 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/26/26a33133e0aad41139e0ba419a8cef26[m
[1mdeleted file mode 100644[m
[1mindex a09b730..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/26/26a33133e0aad41139e0ba419a8cef26 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/26/26a33133e0aad41139e0ba419a8cef26.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/26/26a33133e0aad41139e0ba419a8cef26.info[m
[1mdeleted file mode 100644[m
[1mindex 889812f..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/26/26a33133e0aad41139e0ba419a8cef26.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/27/2791f47f447a84809821214113f9cc5c b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/27/2791f47f447a84809821214113f9cc5c[m
[1mdeleted file mode 100644[m
[1mindex eb3305c..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/27/2791f47f447a84809821214113f9cc5c and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/27/2791f47f447a84809821214113f9cc5c.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/27/2791f47f447a84809821214113f9cc5c.info[m
[1mdeleted file mode 100644[m
[1mindex 0fee7ea..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/27/2791f47f447a84809821214113f9cc5c.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/28/28d8fbf45c61248318186a69f1fb590d b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/28/28d8fbf45c61248318186a69f1fb590d[m
[1mdeleted file mode 100644[m
[1mindex b403847..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/28/28d8fbf45c61248318186a69f1fb590d and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/28/28d8fbf45c61248318186a69f1fb590d.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/28/28d8fbf45c61248318186a69f1fb590d.info[m
[1mdeleted file mode 100644[m
[1mindex 734c02d..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/28/28d8fbf45c61248318186a69f1fb590d.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/29/293263e1929984e0e9baaf8b110f00f3 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/29/293263e1929984e0e9baaf8b110f00f3[m
[1mdeleted file mode 100644[m
[1mindex 6965792..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/29/293263e1929984e0e9baaf8b110f00f3 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/29/293263e1929984e0e9baaf8b110f00f3.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/29/293263e1929984e0e9baaf8b110f00f3.info[m
[1mdeleted file mode 100644[m
[1mindex 00c15ba..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/29/293263e1929984e0e9baaf8b110f00f3.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/29/2963e60eb912145baa3bf2316819d76f b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/29/2963e60eb912145baa3bf2316819d76f[m
[1mdeleted file mode 100644[m
[1mindex 846c1b0..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/29/2963e60eb912145baa3bf2316819d76f and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/29/2963e60eb912145baa3bf2316819d76f.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/29/2963e60eb912145baa3bf2316819d76f.info[m
[1mdeleted file mode 100644[m
[1mindex e0c6e88..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/29/2963e60eb912145baa3bf2316819d76f.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/29/29694ef3959f2413cb5ae1e0fcb6a37d b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/29/29694ef3959f2413cb5ae1e0fcb6a37d[m
[1mdeleted file mode 100644[m
[1mindex d6b68f3..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/29/29694ef3959f2413cb5ae1e0fcb6a37d and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/29/29694ef3959f2413cb5ae1e0fcb6a37d.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/29/29694ef3959f2413cb5ae1e0fcb6a37d.info[m
[1mdeleted file mode 100644[m
[1mindex d1373ca..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/29/29694ef3959f2413cb5ae1e0fcb6a37d.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/29/2993c303491cb42a5bb45263c5a7fb2e b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/29/2993c303491cb42a5bb45263c5a7fb2e[m
[1mdeleted file mode 100644[m
[1mindex 013e272..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/29/2993c303491cb42a5bb45263c5a7fb2e and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/29/2993c303491cb42a5bb45263c5a7fb2e.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/29/2993c303491cb42a5bb45263c5a7fb2e.info[m
[1mdeleted file mode 100644[m
[1mindex 43ea0aa..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/29/2993c303491cb42a5bb45263c5a7fb2e.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2a/2a04fad59517a4f70ba58b9bd50fb81a b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2a/2a04fad59517a4f70ba58b9bd50fb81a[m
[1mdeleted file mode 100644[m
[1mindex 744c660..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2a/2a04fad59517a4f70ba58b9bd50fb81a and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2a/2a04fad59517a4f70ba58b9bd50fb81a.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2a/2a04fad59517a4f70ba58b9bd50fb81a.info[m
[1mdeleted file mode 100644[m
[1mindex ea34a0a..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2a/2a04fad59517a4f70ba58b9bd50fb81a.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2a/2a32bbce988e34526ab0c02925f7d293 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2a/2a32bbce988e34526ab0c02925f7d293[m
[1mdeleted file mode 100644[m
[1mindex fc399bf..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2a/2a32bbce988e34526ab0c02925f7d293 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2a/2a32bbce988e34526ab0c02925f7d293.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2a/2a32bbce988e34526ab0c02925f7d293.info[m
[1mdeleted file mode 100644[m
[1mindex 579782d..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2a/2a32bbce988e34526ab0c02925f7d293.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2a/2a7b105f3ee2e4c4a98305de1e60a1cd b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2a/2a7b105f3ee2e4c4a98305de1e60a1cd[m
[1mdeleted file mode 100644[m
[1mindex 66d3ee8..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2a/2a7b105f3ee2e4c4a98305de1e60a1cd and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2a/2a7b105f3ee2e4c4a98305de1e60a1cd.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2a/2a7b105f3ee2e4c4a98305de1e60a1cd.info[m
[1mdeleted file mode 100644[m
[1mindex 8241edf..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2a/2a7b105f3ee2e4c4a98305de1e60a1cd.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2b/2b4866f5138a14889b515c9ed8b084c4 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2b/2b4866f5138a14889b515c9ed8b084c4[m
[1mdeleted file mode 100644[m
[1mindex c1103f5..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2b/2b4866f5138a14889b515c9ed8b084c4 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2b/2b4866f5138a14889b515c9ed8b084c4.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2b/2b4866f5138a14889b515c9ed8b084c4.info[m
[1mdeleted file mode 100644[m
[1mindex 64eed51..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2b/2b4866f5138a14889b515c9ed8b084c4.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2b/2bb0d609ab5ef404e92c24ff6a6f0a28 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2b/2bb0d609ab5ef404e92c24ff6a6f0a28[m
[1mdeleted file mode 100644[m
[1mindex d6f54f1..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2b/2bb0d609ab5ef404e92c24ff6a6f0a28 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2b/2bb0d609ab5ef404e92c24ff6a6f0a28.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2b/2bb0d609ab5ef404e92c24ff6a6f0a28.info[m
[1mdeleted file mode 100644[m
[1mindex 3a8d0c7..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2b/2bb0d609ab5ef404e92c24ff6a6f0a28.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2b/2bf837a74099d4a298c7bab18d0d680e b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2b/2bf837a74099d4a298c7bab18d0d680e[m
[1mdeleted file mode 100644[m
[1mindex 56d1259..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2b/2bf837a74099d4a298c7bab18d0d680e and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2b/2bf837a74099d4a298c7bab18d0d680e.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2b/2bf837a74099d4a298c7bab18d0d680e.info[m
[1mdeleted file mode 100644[m
[1mindex 5a5cfeb..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2b/2bf837a74099d4a298c7bab18d0d680e.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2c/2c81d184fd6064da1a153cfc5a4fc945 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2c/2c81d184fd6064da1a153cfc5a4fc945[m
[1mdeleted file mode 100644[m
[1mindex adca2e3..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2c/2c81d184fd6064da1a153cfc5a4fc945 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2c/2c81d184fd6064da1a153cfc5a4fc945.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2c/2c81d184fd6064da1a153cfc5a4fc945.info[m
[1mdeleted file mode 100644[m
[1mindex b14512b..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2c/2c81d184fd6064da1a153cfc5a4fc945.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2c/2cb12025ac90849b6b41e5c70726b556 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2c/2cb12025ac90849b6b41e5c70726b556[m
[1mdeleted file mode 100644[m
[1mindex b9cf366..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2c/2cb12025ac90849b6b41e5c70726b556 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2c/2cb12025ac90849b6b41e5c70726b556.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2c/2cb12025ac90849b6b41e5c70726b556.info[m
[1mdeleted file mode 100644[m
[1mindex ea3f542..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2c/2cb12025ac90849b6b41e5c70726b556.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2c/2ccd2b1d336064865b31cdb90eed702c b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2c/2ccd2b1d336064865b31cdb90eed702c[m
[1mdeleted file mode 100644[m
[1mindex 15cf464..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2c/2ccd2b1d336064865b31cdb90eed702c and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2c/2ccd2b1d336064865b31cdb90eed702c.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2c/2ccd2b1d336064865b31cdb90eed702c.info[m
[1mdeleted file mode 100644[m
[1mindex b1e8331..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2c/2ccd2b1d336064865b31cdb90eed702c.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2d/2d5df9556d94040a28971c018d22bfba b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2d/2d5df9556d94040a28971c018d22bfba[m
[1mdeleted file mode 100644[m
[1mindex d95c6a8..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2d/2d5df9556d94040a28971c018d22bfba and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2d/2d5df9556d94040a28971c018d22bfba.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2d/2d5df9556d94040a28971c018d22bfba.info[m
[1mdeleted file mode 100644[m
[1mindex 0dfca48..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2d/2d5df9556d94040a28971c018d22bfba.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2d/2dbd1ff28c31647a2b0eb65bda5c1f08 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2d/2dbd1ff28c31647a2b0eb65bda5c1f08[m
[1mdeleted file mode 100644[m
[1mindex 358fe39..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2d/2dbd1ff28c31647a2b0eb65bda5c1f08 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2d/2dbd1ff28c31647a2b0eb65bda5c1f08.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2d/2dbd1ff28c31647a2b0eb65bda5c1f08.info[m
[1mdeleted file mode 100644[m
[1mindex f1ef83c..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2d/2dbd1ff28c31647a2b0eb65bda5c1f08.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2f/2fc7c92e427ee4242a8a68645077f484 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2f/2fc7c92e427ee4242a8a68645077f484[m
[1mdeleted file mode 100644[m
[1mindex 0b41750..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2f/2fc7c92e427ee4242a8a68645077f484 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2f/2fc7c92e427ee4242a8a68645077f484.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2f/2fc7c92e427ee4242a8a68645077f484.info[m
[1mdeleted file mode 100644[m
[1mindex 920631f..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2f/2fc7c92e427ee4242a8a68645077f484.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2f/2ff2cd6a7853a4551920c95b616c6766 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2f/2ff2cd6a7853a4551920c95b616c6766[m
[1mdeleted file mode 100644[m
[1mindex 973c324..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2f/2ff2cd6a7853a4551920c95b616c6766 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2f/2ff2cd6a7853a4551920c95b616c6766.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2f/2ff2cd6a7853a4551920c95b616c6766.info[m
[1mdeleted file mode 100644[m
[1mindex 7e8e3e5..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/2f/2ff2cd6a7853a4551920c95b616c6766.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/30/308d532dd2bbf422980c591954c0602a b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/30/308d532dd2bbf422980c591954c0602a[m
[1mdeleted file mode 100644[m
[1mindex 6bd6267..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/30/308d532dd2bbf422980c591954c0602a and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/30/308d532dd2bbf422980c591954c0602a.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/30/308d532dd2bbf422980c591954c0602a.info[m
[1mdeleted file mode 100644[m
[1mindex ebcaf74..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/30/308d532dd2bbf422980c591954c0602a.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/32/32872a78620fd43b388725ee16adbbee b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/32/32872a78620fd43b388725ee16adbbee[m
[1mdeleted file mode 100644[m
[1mindex 1e49730..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/32/32872a78620fd43b388725ee16adbbee and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/32/32872a78620fd43b388725ee16adbbee.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/32/32872a78620fd43b388725ee16adbbee.info[m
[1mdeleted file mode 100644[m
[1mindex 276330c..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/32/32872a78620fd43b388725ee16adbbee.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/32/32f97d9f519dd7f44bbf61a1b96b3132 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/32/32f97d9f519dd7f44bbf61a1b96b3132[m
[1mindex 7b1bd3a..95a251f 100644[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/32/32f97d9f519dd7f44bbf61a1b96b3132 and b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/32/32f97d9f519dd7f44bbf61a1b96b3132 differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/32/32ff14a03ed614473ac4e87b370a98de b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/32/32ff14a03ed614473ac4e87b370a98de[m
[1mdeleted file mode 100644[m
[1mindex d689341..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/32/32ff14a03ed614473ac4e87b370a98de and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/32/32ff14a03ed614473ac4e87b370a98de.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/32/32ff14a03ed614473ac4e87b370a98de.info[m
[1mdeleted file mode 100644[m
[1mindex 14378bd..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/32/32ff14a03ed614473ac4e87b370a98de.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/34/347d5fb449b404916bd4880f22d34dc4 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/34/347d5fb449b404916bd4880f22d34dc4[m
[1mdeleted file mode 100644[m
[1mindex 39cef80..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/34/347d5fb449b404916bd4880f22d34dc4 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/34/347d5fb449b404916bd4880f22d34dc4.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/34/347d5fb449b404916bd4880f22d34dc4.info[m
[1mdeleted file mode 100644[m
[1mindex 93bd3fa..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/34/347d5fb449b404916bd4880f22d34dc4.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/35/354934f6818764a3195d498b77f4ae03 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/35/354934f6818764a3195d498b77f4ae03[m
[1mdeleted file mode 100644[m
[1mindex 7adb58c..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/35/354934f6818764a3195d498b77f4ae03 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/35/354934f6818764a3195d498b77f4ae03.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/35/354934f6818764a3195d498b77f4ae03.info[m
[1mdeleted file mode 100644[m
[1mindex 7e12080..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/35/354934f6818764a3195d498b77f4ae03.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/35/358a3316f6848409081c3c4712b52b4a b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/35/358a3316f6848409081c3c4712b52b4a[m
[1mdeleted file mode 100644[m
[1mindex 3ef5a4a..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/35/358a3316f6848409081c3c4712b52b4a and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/35/358a3316f6848409081c3c4712b52b4a.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/35/358a3316f6848409081c3c4712b52b4a.info[m
[1mdeleted file mode 100644[m
[1mindex bc84628..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/35/358a3316f6848409081c3c4712b52b4a.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/37/370f4a0da1ca741d09f829929bb713b0 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/37/370f4a0da1ca741d09f829929bb713b0[m
[1mdeleted file mode 100644[m
[1mindex 3b48e3b..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/37/370f4a0da1ca741d09f829929bb713b0 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/37/370f4a0da1ca741d09f829929bb713b0.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/37/370f4a0da1ca741d09f829929bb713b0.info[m
[1mdeleted file mode 100644[m
[1mindex 5b6daee..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/37/370f4a0da1ca741d09f829929bb713b0.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/38/3821e4b17a48d4021a2d40aa72168475 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/38/3821e4b17a48d4021a2d40aa72168475[m
[1mdeleted file mode 100644[m
[1mindex 923951a..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/38/3821e4b17a48d4021a2d40aa72168475 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/38/3821e4b17a48d4021a2d40aa72168475.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/38/3821e4b17a48d4021a2d40aa72168475.info[m
[1mdeleted file mode 100644[m
[1mindex abd8d75..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/38/3821e4b17a48d4021a2d40aa72168475.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3a/3a502793527a44523b852d7379757ee5 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3a/3a502793527a44523b852d7379757ee5[m
[1mdeleted file mode 100644[m
[1mindex d5c8144..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3a/3a502793527a44523b852d7379757ee5 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3a/3a502793527a44523b852d7379757ee5.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3a/3a502793527a44523b852d7379757ee5.info[m
[1mdeleted file mode 100644[m
[1mindex d26d2e2..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3a/3a502793527a44523b852d7379757ee5.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3c/3c677226aa62a40e783add920d64dcc2 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3c/3c677226aa62a40e783add920d64dcc2[m
[1mdeleted file mode 100644[m
[1mindex b654830..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3c/3c677226aa62a40e783add920d64dcc2 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3c/3c677226aa62a40e783add920d64dcc2.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3c/3c677226aa62a40e783add920d64dcc2.info[m
[1mdeleted file mode 100644[m
[1mindex 6f67ac1..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3c/3c677226aa62a40e783add920d64dcc2.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3d/3d73546ee6c6a4a0ab5828185431c357 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3d/3d73546ee6c6a4a0ab5828185431c357[m
[1mdeleted file mode 100644[m
[1mindex 3d72181..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3d/3d73546ee6c6a4a0ab5828185431c357 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3d/3d73546ee6c6a4a0ab5828185431c357.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3d/3d73546ee6c6a4a0ab5828185431c357.info[m
[1mdeleted file mode 100644[m
[1mindex eb2e7d6..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3d/3d73546ee6c6a4a0ab5828185431c357.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3d/3d8404c4af1b04082928e7bfe69d4444 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3d/3d8404c4af1b04082928e7bfe69d4444[m
[1mdeleted file mode 100644[m
[1mindex 99a41d4..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3d/3d8404c4af1b04082928e7bfe69d4444 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3d/3d8404c4af1b04082928e7bfe69d4444.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3d/3d8404c4af1b04082928e7bfe69d4444.info[m
[1mdeleted file mode 100644[m
[1mindex a39e473..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3d/3d8404c4af1b04082928e7bfe69d4444.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3d/3dc0207d80aa141c7972affd15c102e3 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3d/3dc0207d80aa141c7972affd15c102e3[m
[1mdeleted file mode 100644[m
[1mindex a03319d..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3d/3dc0207d80aa141c7972affd15c102e3 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3d/3dc0207d80aa141c7972affd15c102e3.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3d/3dc0207d80aa141c7972affd15c102e3.info[m
[1mdeleted file mode 100644[m
[1mindex a89da69..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3d/3dc0207d80aa141c7972affd15c102e3.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3e/3e571d4faf9fb4fcd8bf407aa7fab353 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3e/3e571d4faf9fb4fcd8bf407aa7fab353[m
[1mdeleted file mode 100644[m
[1mindex a432ce9..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3e/3e571d4faf9fb4fcd8bf407aa7fab353 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3e/3e571d4faf9fb4fcd8bf407aa7fab353.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3e/3e571d4faf9fb4fcd8bf407aa7fab353.info[m
[1mdeleted file mode 100644[m
[1mindex 715d826..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3e/3e571d4faf9fb4fcd8bf407aa7fab353.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3e/3e92c114882234f4e81c37aef3e2ccc7 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3e/3e92c114882234f4e81c37aef3e2ccc7[m
[1mdeleted file mode 100644[m
[1mindex c3e225d..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3e/3e92c114882234f4e81c37aef3e2ccc7 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3e/3e92c114882234f4e81c37aef3e2ccc7.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3e/3e92c114882234f4e81c37aef3e2ccc7.info[m
[1mdeleted file mode 100644[m
[1mindex cad87ec..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3e/3e92c114882234f4e81c37aef3e2ccc7.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3e/3ed8ac8e0d0d1439f85ceab6250e2db3 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3e/3ed8ac8e0d0d1439f85ceab6250e2db3[m
[1mdeleted file mode 100644[m
[1mindex 3227a2c..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3e/3ed8ac8e0d0d1439f85ceab6250e2db3 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3e/3ed8ac8e0d0d1439f85ceab6250e2db3.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3e/3ed8ac8e0d0d1439f85ceab6250e2db3.info[m
[1mdeleted file mode 100644[m
[1mindex 101a270..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3e/3ed8ac8e0d0d1439f85ceab6250e2db3.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3f/3f038c18df9d94306971948108daabb8 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3f/3f038c18df9d94306971948108daabb8[m
[1mdeleted file mode 100644[m
[1mindex 4870d00..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3f/3f038c18df9d94306971948108daabb8 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3f/3f038c18df9d94306971948108daabb8.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3f/3f038c18df9d94306971948108daabb8.info[m
[1mdeleted file mode 100644[m
[1mindex 77d7714..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3f/3f038c18df9d94306971948108daabb8.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3f/3f5ebdd8ed1614c1fb1b3e6bceb8ea20 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3f/3f5ebdd8ed1614c1fb1b3e6bceb8ea20[m
[1mdeleted file mode 100644[m
[1mindex f41f32f..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3f/3f5ebdd8ed1614c1fb1b3e6bceb8ea20 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3f/3f5ebdd8ed1614c1fb1b3e6bceb8ea20.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3f/3f5ebdd8ed1614c1fb1b3e6bceb8ea20.info[m
[1mdeleted file mode 100644[m
[1mindex 459d7c2..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/3f/3f5ebdd8ed1614c1fb1b3e6bceb8ea20.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/41/41c6af97c8aff4f34b73d064ccb481f1 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/41/41c6af97c8aff4f34b73d064ccb481f1[m
[1mdeleted file mode 100644[m
[1mindex 9da792c..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/41/41c6af97c8aff4f34b73d064ccb481f1 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/41/41c6af97c8aff4f34b73d064ccb481f1.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/41/41c6af97c8aff4f34b73d064ccb481f1.info[m
[1mdeleted file mode 100644[m
[1mindex c7015a4..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/41/41c6af97c8aff4f34b73d064ccb481f1.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/41/41dad783593274a4dbda22bc2f2e8342 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/41/41dad783593274a4dbda22bc2f2e8342[m
[1mdeleted file mode 100644[m
[1mindex 313ee34..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/41/41dad783593274a4dbda22bc2f2e8342 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/41/41dad783593274a4dbda22bc2f2e8342.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/41/41dad783593274a4dbda22bc2f2e8342.info[m
[1mdeleted file mode 100644[m
[1mindex b566557..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/41/41dad783593274a4dbda22bc2f2e8342.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/44/4420c473bde404de4bb79e3c7aab815b b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/44/4420c473bde404de4bb79e3c7aab815b[m
[1mdeleted file mode 100644[m
[1mindex 71d37bf..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/44/4420c473bde404de4bb79e3c7aab815b and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/44/4420c473bde404de4bb79e3c7aab815b.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/44/4420c473bde404de4bb79e3c7aab815b.info[m
[1mdeleted file mode 100644[m
[1mindex 001a4a3..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/44/4420c473bde404de4bb79e3c7aab815b.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/44/4492563a5cc24427ca35ee7e9a9a54be b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/44/4492563a5cc24427ca35ee7e9a9a54be[m
[1mdeleted file mode 100644[m
[1mindex 5f23339..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/44/4492563a5cc24427ca35ee7e9a9a54be and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/44/4492563a5cc24427ca35ee7e9a9a54be.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/44/4492563a5cc24427ca35ee7e9a9a54be.info[m
[1mdeleted file mode 100644[m
[1mindex 140ac9e..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/44/4492563a5cc24427ca35ee7e9a9a54be.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/44/4493d64ddfe654a258978ccc473f7993 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/44/4493d64ddfe654a258978ccc473f7993[m
[1mdeleted file mode 100644[m
[1mindex 6aad21a..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/44/4493d64ddfe654a258978ccc473f7993 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/44/4493d64ddfe654a258978ccc473f7993.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/44/4493d64ddfe654a258978ccc473f7993.info[m
[1mdeleted file mode 100644[m
[1mindex 0aa48be..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/44/4493d64ddfe654a258978ccc473f7993.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/44/44fc8f8054eb54dc0abbc98a2545e7c2 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/44/44fc8f8054eb54dc0abbc98a2545e7c2[m
[1mdeleted file mode 100644[m
[1mindex 5ede4a4..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/44/44fc8f8054eb54dc0abbc98a2545e7c2 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/44/44fc8f8054eb54dc0abbc98a2545e7c2.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/44/44fc8f8054eb54dc0abbc98a2545e7c2.info[m
[1mdeleted file mode 100644[m
[1mindex 837c0df..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/44/44fc8f8054eb54dc0abbc98a2545e7c2.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/45/45d978ec2874f4053932ceffc1d19bf5 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/45/45d978ec2874f4053932ceffc1d19bf5[m
[1mdeleted file mode 100644[m
[1mindex dd5d5b9..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/45/45d978ec2874f4053932ceffc1d19bf5 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/45/45d978ec2874f4053932ceffc1d19bf5.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/45/45d978ec2874f4053932ceffc1d19bf5.info[m
[1mdeleted file mode 100644[m
[1mindex d412e26..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/45/45d978ec2874f4053932ceffc1d19bf5.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/46/46eb5292bd6b44d608754f29f8e1aaec b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/46/46eb5292bd6b44d608754f29f8e1aaec[m
[1mdeleted file mode 100644[m
[1mindex 97c481d..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/46/46eb5292bd6b44d608754f29f8e1aaec and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/46/46eb5292bd6b44d608754f29f8e1aaec.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/46/46eb5292bd6b44d608754f29f8e1aaec.info[m
[1mdeleted file mode 100644[m
[1mindex d6e1bae..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/46/46eb5292bd6b44d608754f29f8e1aaec.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/47/47143312ee74442d9bafae5a6693df2d b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/47/47143312ee74442d9bafae5a6693df2d[m
[1mdeleted file mode 100644[m
[1mindex 3eb8340..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/47/47143312ee74442d9bafae5a6693df2d and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/47/47143312ee74442d9bafae5a6693df2d.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/47/47143312ee74442d9bafae5a6693df2d.info[m
[1mdeleted file mode 100644[m
[1mindex fca8920..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/47/47143312ee74442d9bafae5a6693df2d.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/47/4747ac457c3db416fbac0ede549fd9fe b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/47/4747ac457c3db416fbac0ede549fd9fe[m
[1mdeleted file mode 100644[m
[1mindex a83a805..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/47/4747ac457c3db416fbac0ede549fd9fe and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/47/4747ac457c3db416fbac0ede549fd9fe.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/47/4747ac457c3db416fbac0ede549fd9fe.info[m
[1mdeleted file mode 100644[m
[1mindex 6c831de..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/47/4747ac457c3db416fbac0ede549fd9fe.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/49/49c038fb3077f4efc915e2a4e38ba794 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/49/49c038fb3077f4efc915e2a4e38ba794[m
[1mdeleted file mode 100644[m
[1mindex 3fbbc1c..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/49/49c038fb3077f4efc915e2a4e38ba794 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/49/49c038fb3077f4efc915e2a4e38ba794.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/49/49c038fb3077f4efc915e2a4e38ba794.info[m
[1mdeleted file mode 100644[m
[1mindex a13312b..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/49/49c038fb3077f4efc915e2a4e38ba794.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4a/4a20927b9048d4a81b6906f1939d03ee b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4a/4a20927b9048d4a81b6906f1939d03ee[m
[1mdeleted file mode 100644[m
[1mindex efe4042..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4a/4a20927b9048d4a81b6906f1939d03ee and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4a/4a20927b9048d4a81b6906f1939d03ee.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4a/4a20927b9048d4a81b6906f1939d03ee.info[m
[1mdeleted file mode 100644[m
[1mindex 0adfd99..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4a/4a20927b9048d4a81b6906f1939d03ee.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4a/4a6397ff9ac8f48beaee6e80f465abfe b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4a/4a6397ff9ac8f48beaee6e80f465abfe[m
[1mdeleted file mode 100644[m
[1mindex ce0c6dd..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4a/4a6397ff9ac8f48beaee6e80f465abfe and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4a/4a6397ff9ac8f48beaee6e80f465abfe.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4a/4a6397ff9ac8f48beaee6e80f465abfe.info[m
[1mdeleted file mode 100644[m
[1mindex 525a41b..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4a/4a6397ff9ac8f48beaee6e80f465abfe.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4b/4b86a8de0f5df4c69a7ac71f8743d52f b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4b/4b86a8de0f5df4c69a7ac71f8743d52f[m
[1mdeleted file mode 100644[m
[1mindex ce4baea..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4b/4b86a8de0f5df4c69a7ac71f8743d52f and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4b/4b86a8de0f5df4c69a7ac71f8743d52f.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4b/4b86a8de0f5df4c69a7ac71f8743d52f.info[m
[1mdeleted file mode 100644[m
[1mindex 6793262..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4b/4b86a8de0f5df4c69a7ac71f8743d52f.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4c/4cb0e6bf5ecfa4225b152af9fee980ef b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4c/4cb0e6bf5ecfa4225b152af9fee980ef[m
[1mdeleted file mode 100644[m
[1mindex feea4b3..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4c/4cb0e6bf5ecfa4225b152af9fee980ef and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4c/4cb0e6bf5ecfa4225b152af9fee980ef.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4c/4cb0e6bf5ecfa4225b152af9fee980ef.info[m
[1mdeleted file mode 100644[m
[1mindex 7e8333a..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4c/4cb0e6bf5ecfa4225b152af9fee980ef.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4c/4cb91125a48a546608af552a21d363b0 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4c/4cb91125a48a546608af552a21d363b0[m
[1mdeleted file mode 100644[m
[1mindex dbec40a..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4c/4cb91125a48a546608af552a21d363b0 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4c/4cb91125a48a546608af552a21d363b0.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4c/4cb91125a48a546608af552a21d363b0.info[m
[1mdeleted file mode 100644[m
[1mindex 310db55..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4c/4cb91125a48a546608af552a21d363b0.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4d/4d415f037e08d89478f409c1ccc39fac b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4d/4d415f037e08d89478f409c1ccc39fac[m
[1mindex 838b93b..cdab897 100644[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4d/4d415f037e08d89478f409c1ccc39fac and b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4d/4d415f037e08d89478f409c1ccc39fac differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4d/4dcf960ac427648c3bf693473efa00ab b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4d/4dcf960ac427648c3bf693473efa00ab[m
[1mdeleted file mode 100644[m
[1mindex 60b5670..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4d/4dcf960ac427648c3bf693473efa00ab and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4d/4dcf960ac427648c3bf693473efa00ab.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4d/4dcf960ac427648c3bf693473efa00ab.info[m
[1mdeleted file mode 100644[m
[1mindex abe92af..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4d/4dcf960ac427648c3bf693473efa00ab.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4e/4e2cc6792a22046dfa4b247b271f13c0 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4e/4e2cc6792a22046dfa4b247b271f13c0[m
[1mdeleted file mode 100644[m
[1mindex b5ef840..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4e/4e2cc6792a22046dfa4b247b271f13c0 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4e/4e2cc6792a22046dfa4b247b271f13c0.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4e/4e2cc6792a22046dfa4b247b271f13c0.info[m
[1mdeleted file mode 100644[m
[1mindex d53e7cf..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4e/4e2cc6792a22046dfa4b247b271f13c0.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4e/4e3046067a59b459abd5a06a801e6cc3 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4e/4e3046067a59b459abd5a06a801e6cc3[m
[1mdeleted file mode 100644[m
[1mindex 7850b53..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4e/4e3046067a59b459abd5a06a801e6cc3 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4e/4e3046067a59b459abd5a06a801e6cc3.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4e/4e3046067a59b459abd5a06a801e6cc3.info[m
[1mdeleted file mode 100644[m
[1mindex 5c594c3..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4e/4e3046067a59b459abd5a06a801e6cc3.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4f/4f50f253aec49477db07aa921aca23fd b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4f/4f50f253aec49477db07aa921aca23fd[m
[1mdeleted file mode 100644[m
[1mindex 0442da8..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4f/4f50f253aec49477db07aa921aca23fd and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4f/4f50f253aec49477db07aa921aca23fd.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4f/4f50f253aec49477db07aa921aca23fd.info[m
[1mdeleted file mode 100644[m
[1mindex 3085afe..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4f/4f50f253aec49477db07aa921aca23fd.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4f/4f65cf1520fdc4464951428f18d789d9 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4f/4f65cf1520fdc4464951428f18d789d9[m
[1mdeleted file mode 100644[m
[1mindex 16238bf..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4f/4f65cf1520fdc4464951428f18d789d9 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4f/4f65cf1520fdc4464951428f18d789d9.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4f/4f65cf1520fdc4464951428f18d789d9.info[m
[1mdeleted file mode 100644[m
[1mindex dfb8989..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/4f/4f65cf1520fdc4464951428f18d789d9.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/50/50f9f24015ab940929b2f4ac1b01d0aa b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/50/50f9f24015ab940929b2f4ac1b01d0aa[m
[1mdeleted file mode 100644[m
[1mindex 4f94fa8..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/50/50f9f24015ab940929b2f4ac1b01d0aa and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/50/50f9f24015ab940929b2f4ac1b01d0aa.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/50/50f9f24015ab940929b2f4ac1b01d0aa.info[m
[1mdeleted file mode 100644[m
[1mindex 1ff5da2..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/50/50f9f24015ab940929b2f4ac1b01d0aa.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/51/5136730b380424194846a93f4382c165 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/51/5136730b380424194846a93f4382c165[m
[1mdeleted file mode 100644[m
[1mindex 7ff5b0d..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/51/5136730b380424194846a93f4382c165 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/51/5136730b380424194846a93f4382c165.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/51/5136730b380424194846a93f4382c165.info[m
[1mdeleted file mode 100644[m
[1mindex c5e1546..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/51/5136730b380424194846a93f4382c165.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/51/518491e43ad414975be48c0006c22fd0 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/51/518491e43ad414975be48c0006c22fd0[m
[1mdeleted file mode 100644[m
[1mindex c6a0eb1..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/51/518491e43ad414975be48c0006c22fd0 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/51/518491e43ad414975be48c0006c22fd0.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/51/518491e43ad414975be48c0006c22fd0.info[m
[1mdeleted file mode 100644[m
[1mindex 9becd56..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/51/518491e43ad414975be48c0006c22fd0.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/52/526a360caa43141ffb4f15112e0e1545 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/52/526a360caa43141ffb4f15112e0e1545[m
[1mdeleted file mode 100644[m
[1mindex 7fc12c4..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/52/526a360caa43141ffb4f15112e0e1545 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/52/526a360caa43141ffb4f15112e0e1545.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/52/526a360caa43141ffb4f15112e0e1545.info[m
[1mdeleted file mode 100644[m
[1mindex c5a762b..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/52/526a360caa43141ffb4f15112e0e1545.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/53/53b8e6b58eb2b43238e0d6dbcc370098 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/53/53b8e6b58eb2b43238e0d6dbcc370098[m
[1mdeleted file mode 100644[m
[1mindex 87a38aa..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/53/53b8e6b58eb2b43238e0d6dbcc370098 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/53/53b8e6b58eb2b43238e0d6dbcc370098.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/53/53b8e6b58eb2b43238e0d6dbcc370098.info[m
[1mdeleted file mode 100644[m
[1mindex 33dcbfa..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/53/53b8e6b58eb2b43238e0d6dbcc370098.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/55/5545b0174ec7b4be88f49a14f9043e31 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/55/5545b0174ec7b4be88f49a14f9043e31[m
[1mdeleted file mode 100644[m
[1mindex 7724c9b..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/55/5545b0174ec7b4be88f49a14f9043e31 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/55/5545b0174ec7b4be88f49a14f9043e31.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/55/5545b0174ec7b4be88f49a14f9043e31.info[m
[1mdeleted file mode 100644[m
[1mindex f46c152..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/55/5545b0174ec7b4be88f49a14f9043e31.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/55/5575762eed23c495d8245a0f7ff310b6 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/55/5575762eed23c495d8245a0f7ff310b6[m
[1mdeleted file mode 100644[m
[1mindex a12034c..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/55/5575762eed23c495d8245a0f7ff310b6 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/55/5575762eed23c495d8245a0f7ff310b6.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/55/5575762eed23c495d8245a0f7ff310b6.info[m
[1mdeleted file mode 100644[m
[1mindex 892faa4..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/55/5575762eed23c495d8245a0f7ff310b6.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/55/55913cc2d4d5d43648e5561bec876d1c b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/55/55913cc2d4d5d43648e5561bec876d1c[m
[1mdeleted file mode 100644[m
[1mindex 03dd1ac..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/55/55913cc2d4d5d43648e5561bec876d1c and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/55/55913cc2d4d5d43648e5561bec876d1c.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/55/55913cc2d4d5d43648e5561bec876d1c.info[m
[1mdeleted file mode 100644[m
[1mindex 96973ca..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/55/55913cc2d4d5d43648e5561bec876d1c.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/55/55b8dc801242c4a29ac899e0f70b5730 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/55/55b8dc801242c4a29ac899e0f70b5730[m
[1mdeleted file mode 100644[m
[1mindex b8eaeae..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/55/55b8dc801242c4a29ac899e0f70b5730 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/55/55b8dc801242c4a29ac899e0f70b5730.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/55/55b8dc801242c4a29ac899e0f70b5730.info[m
[1mdeleted file mode 100644[m
[1mindex a60f289..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/55/55b8dc801242c4a29ac899e0f70b5730.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/56/566ca5fcca10d424cb4a6d740a0a2f18 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/56/566ca5fcca10d424cb4a6d740a0a2f18[m
[1mdeleted file mode 100644[m
[1mindex 1776f1c..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/56/566ca5fcca10d424cb4a6d740a0a2f18 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/56/566ca5fcca10d424cb4a6d740a0a2f18.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/56/566ca5fcca10d424cb4a6d740a0a2f18.info[m
[1mdeleted file mode 100644[m
[1mindex c291c1f..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/56/566ca5fcca10d424cb4a6d740a0a2f18.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/56/568b4fabb774044b6aad90875257d2ee b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/56/568b4fabb774044b6aad90875257d2ee[m
[1mdeleted file mode 100644[m
[1mindex 87b74d2..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/56/568b4fabb774044b6aad90875257d2ee and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/56/568b4fabb774044b6aad90875257d2ee.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/56/568b4fabb774044b6aad90875257d2ee.info[m
[1mdeleted file mode 100644[m
[1mindex fdba9cb..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/56/568b4fabb774044b6aad90875257d2ee.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/57/57019fb9cd8af49f79d8d638c5bec8e3 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/57/57019fb9cd8af49f79d8d638c5bec8e3[m
[1mdeleted file mode 100644[m
[1mindex eb3a5bc..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/57/57019fb9cd8af49f79d8d638c5bec8e3 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/57/57019fb9cd8af49f79d8d638c5bec8e3.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/57/57019fb9cd8af49f79d8d638c5bec8e3.info[m
[1mdeleted file mode 100644[m
[1mindex bbdaac5..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/57/57019fb9cd8af49f79d8d638c5bec8e3.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/57/572506b055a9343fab2ff14b1ee2f4ce b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/57/572506b055a9343fab2ff14b1ee2f4ce[m
[1mdeleted file mode 100644[m
[1mindex a1ea96b..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/57/572506b055a9343fab2ff14b1ee2f4ce and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/57/572506b055a9343fab2ff14b1ee2f4ce.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/57/572506b055a9343fab2ff14b1ee2f4ce.info[m
[1mdeleted file mode 100644[m
[1mindex 05326e5..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/57/572506b055a9343fab2ff14b1ee2f4ce.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/57/579a7e3f8ed7c4bfa803e755ece8b1d6 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/57/579a7e3f8ed7c4bfa803e755ece8b1d6[m
[1mdeleted file mode 100644[m
[1mindex bd328ff..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/57/579a7e3f8ed7c4bfa803e755ece8b1d6 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/57/579a7e3f8ed7c4bfa803e755ece8b1d6.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/57/579a7e3f8ed7c4bfa803e755ece8b1d6.info[m
[1mdeleted file mode 100644[m
[1mindex 216098f..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/57/579a7e3f8ed7c4bfa803e755ece8b1d6.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/57/57c6b129c2a554369801e90e2ab87965 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/57/57c6b129c2a554369801e90e2ab87965[m
[1mdeleted file mode 100644[m
[1mindex 4ac1f20..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/57/57c6b129c2a554369801e90e2ab87965 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/57/57c6b129c2a554369801e90e2ab87965.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/57/57c6b129c2a554369801e90e2ab87965.info[m
[1mdeleted file mode 100644[m
[1mindex 4a99f59..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/57/57c6b129c2a554369801e90e2ab87965.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/57/57db284e2131e4a98868a7215010bdbb b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/57/57db284e2131e4a98868a7215010bdbb[m
[1mdeleted file mode 100644[m
[1mindex 126113d..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/57/57db284e2131e4a98868a7215010bdbb and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/57/57db284e2131e4a98868a7215010bdbb.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/57/57db284e2131e4a98868a7215010bdbb.info[m
[1mdeleted file mode 100644[m
[1mindex 1679d49..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/57/57db284e2131e4a98868a7215010bdbb.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/58/585f26b14c8b545899091d0f6f76969b b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/58/585f26b14c8b545899091d0f6f76969b[m
[1mdeleted file mode 100644[m
[1mindex 3bc69d8..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/58/585f26b14c8b545899091d0f6f76969b and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/58/585f26b14c8b545899091d0f6f76969b.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/58/585f26b14c8b545899091d0f6f76969b.info[m
[1mdeleted file mode 100644[m
[1mindex d2e88ce..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/58/585f26b14c8b545899091d0f6f76969b.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/59/59b3e7209d77a4118a6563b2c60c62e2 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/59/59b3e7209d77a4118a6563b2c60c62e2[m
[1mdeleted file mode 100644[m
[1mindex 6ba2513..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/59/59b3e7209d77a4118a6563b2c60c62e2 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/59/59b3e7209d77a4118a6563b2c60c62e2.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/59/59b3e7209d77a4118a6563b2c60c62e2.info[m
[1mdeleted file mode 100644[m
[1mindex d54a8f2..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/59/59b3e7209d77a4118a6563b2c60c62e2.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5a/5a530744766f14b829af85db002264c4 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5a/5a530744766f14b829af85db002264c4[m
[1mdeleted file mode 100644[m
[1mindex bbdee3d..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5a/5a530744766f14b829af85db002264c4 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5a/5a530744766f14b829af85db002264c4.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5a/5a530744766f14b829af85db002264c4.info[m
[1mdeleted file mode 100644[m
[1mindex d7a619f..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5a/5a530744766f14b829af85db002264c4.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5b/5b281488304ea438e8a5903afbcf2b80 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5b/5b281488304ea438e8a5903afbcf2b80[m
[1mdeleted file mode 100644[m
[1mindex f34b2a3..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5b/5b281488304ea438e8a5903afbcf2b80 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5b/5b281488304ea438e8a5903afbcf2b80.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5b/5b281488304ea438e8a5903afbcf2b80.info[m
[1mdeleted file mode 100644[m
[1mindex 80254ca..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5b/5b281488304ea438e8a5903afbcf2b80.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5c/5c3f17bf8bec64244b67f1e0d2cbce6f b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5c/5c3f17bf8bec64244b67f1e0d2cbce6f[m
[1mdeleted file mode 100644[m
[1mindex ec4155c..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5c/5c3f17bf8bec64244b67f1e0d2cbce6f and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5c/5c3f17bf8bec64244b67f1e0d2cbce6f.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5c/5c3f17bf8bec64244b67f1e0d2cbce6f.info[m
[1mdeleted file mode 100644[m
[1mindex c90fa65..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5c/5c3f17bf8bec64244b67f1e0d2cbce6f.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5c/5c8bad223a1c846dd8af522e07504fb3 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5c/5c8bad223a1c846dd8af522e07504fb3[m
[1mdeleted file mode 100644[m
[1mindex 31916b1..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5c/5c8bad223a1c846dd8af522e07504fb3 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5c/5c8bad223a1c846dd8af522e07504fb3.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5c/5c8bad223a1c846dd8af522e07504fb3.info[m
[1mdeleted file mode 100644[m
[1mindex 59e501c..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5c/5c8bad223a1c846dd8af522e07504fb3.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5e/5e4a3962ec99e47029ce38f0053d4f97 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5e/5e4a3962ec99e47029ce38f0053d4f97[m
[1mdeleted file mode 100644[m
[1mindex 7dc3929..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5e/5e4a3962ec99e47029ce38f0053d4f97 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5e/5e4a3962ec99e47029ce38f0053d4f97.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5e/5e4a3962ec99e47029ce38f0053d4f97.info[m
[1mdeleted file mode 100644[m
[1mindex 04c4d6c..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5e/5e4a3962ec99e47029ce38f0053d4f97.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5e/5e5025ffdf8b341b4a9488ada9bdb949 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5e/5e5025ffdf8b341b4a9488ada9bdb949[m
[1mdeleted file mode 100644[m
[1mindex 4b30242..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5e/5e5025ffdf8b341b4a9488ada9bdb949 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5e/5e5025ffdf8b341b4a9488ada9bdb949.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5e/5e5025ffdf8b341b4a9488ada9bdb949.info[m
[1mdeleted file mode 100644[m
[1mindex 9f1ffca..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5e/5e5025ffdf8b341b4a9488ada9bdb949.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5e/5e7391e5b86f3422ca0d0cab39e41530 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5e/5e7391e5b86f3422ca0d0cab39e41530[m
[1mdeleted file mode 100644[m
[1mindex e227da8..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5e/5e7391e5b86f3422ca0d0cab39e41530 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5e/5e7391e5b86f3422ca0d0cab39e41530.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5e/5e7391e5b86f3422ca0d0cab39e41530.info[m
[1mdeleted file mode 100644[m
[1mindex a54c270..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5e/5e7391e5b86f3422ca0d0cab39e41530.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5e/5e7e7177b47cc45589c4730435323169 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5e/5e7e7177b47cc45589c4730435323169[m
[1mdeleted file mode 100644[m
[1mindex 88b06bc..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5e/5e7e7177b47cc45589c4730435323169 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5e/5e7e7177b47cc45589c4730435323169.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5e/5e7e7177b47cc45589c4730435323169.info[m
[1mdeleted file mode 100644[m
[1mindex 05245c9..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5e/5e7e7177b47cc45589c4730435323169.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5e/5ea12fc1c6a0c42a3980f3458a177d55 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5e/5ea12fc1c6a0c42a3980f3458a177d55[m
[1mdeleted file mode 100644[m
[1mindex 0b79678..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5e/5ea12fc1c6a0c42a3980f3458a177d55 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5e/5ea12fc1c6a0c42a3980f3458a177d55.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5e/5ea12fc1c6a0c42a3980f3458a177d55.info[m
[1mdeleted file mode 100644[m
[1mindex 83111eb..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5e/5ea12fc1c6a0c42a3980f3458a177d55.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5e/5ec8995c83b6d41d1ab881f8bc5b6425 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5e/5ec8995c83b6d41d1ab881f8bc5b6425[m
[1mdeleted file mode 100644[m
[1mindex c66fb24..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5e/5ec8995c83b6d41d1ab881f8bc5b6425 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5e/5ec8995c83b6d41d1ab881f8bc5b6425.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5e/5ec8995c83b6d41d1ab881f8bc5b6425.info[m
[1mdeleted file mode 100644[m
[1mindex d1ea57b..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5e/5ec8995c83b6d41d1ab881f8bc5b6425.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5f/5f5147ae8164445ec8fb987c29f803c3 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5f/5f5147ae8164445ec8fb987c29f803c3[m
[1mdeleted file mode 100644[m
[1mindex c513118..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5f/5f5147ae8164445ec8fb987c29f803c3 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5f/5f5147ae8164445ec8fb987c29f803c3.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5f/5f5147ae8164445ec8fb987c29f803c3.info[m
[1mdeleted file mode 100644[m
[1mindex ffe1ba0..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/5f/5f5147ae8164445ec8fb987c29f803c3.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/60/600cdfb868858401396aecd0763c0345 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/60/600cdfb868858401396aecd0763c0345[m
[1mdeleted file mode 100644[m
[1mindex f84f6a3..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/60/600cdfb868858401396aecd0763c0345 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/60/600cdfb868858401396aecd0763c0345.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/60/600cdfb868858401396aecd0763c0345.info[m
[1mdeleted file mode 100644[m
[1mindex 6635d1b..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/60/600cdfb868858401396aecd0763c0345.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/61/61bc9127816274339ad2e9910c3af11c b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/61/61bc9127816274339ad2e9910c3af11c[m
[1mdeleted file mode 100644[m
[1mindex 54607ce..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/61/61bc9127816274339ad2e9910c3af11c and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/61/61bc9127816274339ad2e9910c3af11c.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/61/61bc9127816274339ad2e9910c3af11c.info[m
[1mdeleted file mode 100644[m
[1mindex 98d1829..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/61/61bc9127816274339ad2e9910c3af11c.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/62/62dc9a865ba834476b5f998048f35535 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/62/62dc9a865ba834476b5f998048f35535[m
[1mdeleted file mode 100644[m
[1mindex 61ffd00..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/62/62dc9a865ba834476b5f998048f35535 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/62/62dc9a865ba834476b5f998048f35535.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/62/62dc9a865ba834476b5f998048f35535.info[m
[1mdeleted file mode 100644[m
[1mindex d87e2a3..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/62/62dc9a865ba834476b5f998048f35535.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/63/63f27e33ad6a24623a350f02935be4f4 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/63/63f27e33ad6a24623a350f02935be4f4[m
[1mdeleted file mode 100644[m
[1mindex 3f766f6..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/63/63f27e33ad6a24623a350f02935be4f4 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/63/63f27e33ad6a24623a350f02935be4f4.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/63/63f27e33ad6a24623a350f02935be4f4.info[m
[1mdeleted file mode 100644[m
[1mindex 6666703..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/63/63f27e33ad6a24623a350f02935be4f4.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/64/6474a4ed09b6541409e338dfb9d6c13d b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/64/6474a4ed09b6541409e338dfb9d6c13d[m
[1mdeleted file mode 100644[m
[1mindex 4d32dee..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/64/6474a4ed09b6541409e338dfb9d6c13d and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/64/6474a4ed09b6541409e338dfb9d6c13d.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/64/6474a4ed09b6541409e338dfb9d6c13d.info[m
[1mdeleted file mode 100644[m
[1mindex 9fc978d..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/64/6474a4ed09b6541409e338dfb9d6c13d.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/65/65e8a754a2d1441e1b18f77679ed3257 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/65/65e8a754a2d1441e1b18f77679ed3257[m
[1mdeleted file mode 100644[m
[1mindex 1702437..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/65/65e8a754a2d1441e1b18f77679ed3257 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/65/65e8a754a2d1441e1b18f77679ed3257.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/65/65e8a754a2d1441e1b18f77679ed3257.info[m
[1mdeleted file mode 100644[m
[1mindex 37f1798..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/65/65e8a754a2d1441e1b18f77679ed3257.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/67/67f2867f7d3bd403eb231e8eaee73037 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/67/67f2867f7d3bd403eb231e8eaee73037[m
[1mdeleted file mode 100644[m
[1mindex 47d69ee..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/67/67f2867f7d3bd403eb231e8eaee73037 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/67/67f2867f7d3bd403eb231e8eaee73037.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/67/67f2867f7d3bd403eb231e8eaee73037.info[m
[1mdeleted file mode 100644[m
[1mindex f2fc1d0..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/67/67f2867f7d3bd403eb231e8eaee73037.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/68/6883c5609beab483ba6551ca9e7054a0 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/68/6883c5609beab483ba6551ca9e7054a0[m
[1mdeleted file mode 100644[m
[1mindex a1e8a52..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/68/6883c5609beab483ba6551ca9e7054a0 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/68/6883c5609beab483ba6551ca9e7054a0.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/68/6883c5609beab483ba6551ca9e7054a0.info[m
[1mdeleted file mode 100644[m
[1mindex a7a49ce..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/68/6883c5609beab483ba6551ca9e7054a0.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/68/68e6ac1dc6fe24bc78d74808124d1012 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/68/68e6ac1dc6fe24bc78d74808124d1012[m
[1mdeleted file mode 100644[m
[1mindex 9ad35b6..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/68/68e6ac1dc6fe24bc78d74808124d1012 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/68/68e6ac1dc6fe24bc78d74808124d1012.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/68/68e6ac1dc6fe24bc78d74808124d1012.info[m
[1mdeleted file mode 100644[m
[1mindex 5096d21..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/68/68e6ac1dc6fe24bc78d74808124d1012.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/69/690fcc4e720e74d988bf678679e5646c b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/69/690fcc4e720e74d988bf678679e5646c[m
[1mdeleted file mode 100644[m
[1mindex a81f9fb..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/69/690fcc4e720e74d988bf678679e5646c and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/69/690fcc4e720e74d988bf678679e5646c.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/69/690fcc4e720e74d988bf678679e5646c.info[m
[1mdeleted file mode 100644[m
[1mindex 3cf0fd3..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/69/690fcc4e720e74d988bf678679e5646c.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/69/69e75104cc80646f8b0d620f3a73ecbb b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/69/69e75104cc80646f8b0d620f3a73ecbb[m
[1mdeleted file mode 100644[m
[1mindex c9a84da..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/69/69e75104cc80646f8b0d620f3a73ecbb and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/69/69e75104cc80646f8b0d620f3a73ecbb.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/69/69e75104cc80646f8b0d620f3a73ecbb.info[m
[1mdeleted file mode 100644[m
[1mindex 23f1584..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/69/69e75104cc80646f8b0d620f3a73ecbb.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6a/6a761e435844f44cebc01e9c20785302 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6a/6a761e435844f44cebc01e9c20785302[m
[1mdeleted file mode 100644[m
[1mindex 2898e61..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6a/6a761e435844f44cebc01e9c20785302 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6a/6a761e435844f44cebc01e9c20785302.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6a/6a761e435844f44cebc01e9c20785302.info[m
[1mdeleted file mode 100644[m
[1mindex 0599372..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6a/6a761e435844f44cebc01e9c20785302.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6b/6b3e4e6970f754822ac98cb224018411 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6b/6b3e4e6970f754822ac98cb224018411[m
[1mdeleted file mode 100644[m
[1mindex b0fc0e3..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6b/6b3e4e6970f754822ac98cb224018411 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6b/6b3e4e6970f754822ac98cb224018411.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6b/6b3e4e6970f754822ac98cb224018411.info[m
[1mdeleted file mode 100644[m
[1mindex 705a4e9..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6b/6b3e4e6970f754822ac98cb224018411.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6b/6bb14051b3c3d42418f246875e395076 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6b/6bb14051b3c3d42418f246875e395076[m
[1mdeleted file mode 100644[m
[1mindex a3cbaa5..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6b/6bb14051b3c3d42418f246875e395076 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6b/6bb14051b3c3d42418f246875e395076.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6b/6bb14051b3c3d42418f246875e395076.info[m
[1mdeleted file mode 100644[m
[1mindex b3dc1e7..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6b/6bb14051b3c3d42418f246875e395076.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6d/6d1dfef10c08740238c8f850fe2ac395 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6d/6d1dfef10c08740238c8f850fe2ac395[m
[1mdeleted file mode 100644[m
[1mindex 69eec73..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6d/6d1dfef10c08740238c8f850fe2ac395 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6d/6d1dfef10c08740238c8f850fe2ac395.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6d/6d1dfef10c08740238c8f850fe2ac395.info[m
[1mdeleted file mode 100644[m
[1mindex 8ec3386..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6d/6d1dfef10c08740238c8f850fe2ac395.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6d/6d4d908872e2070449b3cd4b5ba828ac b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6d/6d4d908872e2070449b3cd4b5ba828ac[m
[1mindex 6ac5485..314fb9b 100644[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6d/6d4d908872e2070449b3cd4b5ba828ac and b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6d/6d4d908872e2070449b3cd4b5ba828ac differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6d/6dc820e36365741238aaa6a4d2dca116 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6d/6dc820e36365741238aaa6a4d2dca116[m
[1mdeleted file mode 100644[m
[1mindex b645d4b..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6d/6dc820e36365741238aaa6a4d2dca116 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6d/6dc820e36365741238aaa6a4d2dca116.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6d/6dc820e36365741238aaa6a4d2dca116.info[m
[1mdeleted file mode 100644[m
[1mindex 5a7ff24..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6d/6dc820e36365741238aaa6a4d2dca116.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6e/6e1bb6261cd7d47a9af055b19420680d b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6e/6e1bb6261cd7d47a9af055b19420680d[m
[1mdeleted file mode 100644[m
[1mindex cd3a830..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6e/6e1bb6261cd7d47a9af055b19420680d and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6e/6e1bb6261cd7d47a9af055b19420680d.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6e/6e1bb6261cd7d47a9af055b19420680d.info[m
[1mdeleted file mode 100644[m
[1mindex 691b1cf..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6e/6e1bb6261cd7d47a9af055b19420680d.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6f/6f0005ee0671c401387b786ac3803deb b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6f/6f0005ee0671c401387b786ac3803deb[m
[1mdeleted file mode 100644[m
[1mindex 6557134..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6f/6f0005ee0671c401387b786ac3803deb and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6f/6f0005ee0671c401387b786ac3803deb.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6f/6f0005ee0671c401387b786ac3803deb.info[m
[1mdeleted file mode 100644[m
[1mindex 5ac93db..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6f/6f0005ee0671c401387b786ac3803deb.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6f/6fb0a83337fef4804906c5c924bf4291 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6f/6fb0a83337fef4804906c5c924bf4291[m
[1mdeleted file mode 100644[m
[1mindex 223b7cf..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6f/6fb0a83337fef4804906c5c924bf4291 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6f/6fb0a83337fef4804906c5c924bf4291.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6f/6fb0a83337fef4804906c5c924bf4291.info[m
[1mdeleted file mode 100644[m
[1mindex 9915fde..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/6f/6fb0a83337fef4804906c5c924bf4291.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/70/706f53c5c0e752d4c889feed8f2ab587 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/70/706f53c5c0e752d4c889feed8f2ab587[m
[1mindex f760858..d293f0f 100644[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/70/706f53c5c0e752d4c889feed8f2ab587 and b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/70/706f53c5c0e752d4c889feed8f2ab587 differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/70/706f53c5c0e752d4c889feed8f2ab587.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/70/706f53c5c0e752d4c889feed8f2ab587.info[m
[1mindex 2618476..c73fe8f 100644[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/70/706f53c5c0e752d4c889feed8f2ab587.info and b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/70/706f53c5c0e752d4c889feed8f2ab587.info differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/70/70b422f1304b74726b52db8cd575f106 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/70/70b422f1304b74726b52db8cd575f106[m
[1mdeleted file mode 100644[m
[1mindex 40088f0..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/70/70b422f1304b74726b52db8cd575f106 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/70/70b422f1304b74726b52db8cd575f106.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/70/70b422f1304b74726b52db8cd575f106.info[m
[1mdeleted file mode 100644[m
[1mindex e533727..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/70/70b422f1304b74726b52db8cd575f106.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/71/713966658867846aeb0db2cb12ec200a b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/71/713966658867846aeb0db2cb12ec200a[m
[1mdeleted file mode 100644[m
[1mindex 5f716bf..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/71/713966658867846aeb0db2cb12ec200a and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/71/713966658867846aeb0db2cb12ec200a.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/71/713966658867846aeb0db2cb12ec200a.info[m
[1mdeleted file mode 100644[m
[1mindex b3e58b8..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/71/713966658867846aeb0db2cb12ec200a.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/71/7149f3a9e0c434257966d7a33b97c2ce b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/71/7149f3a9e0c434257966d7a33b97c2ce[m
[1mdeleted file mode 100644[m
[1mindex dd6c6f5..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/71/7149f3a9e0c434257966d7a33b97c2ce and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/71/7149f3a9e0c434257966d7a33b97c2ce.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/71/7149f3a9e0c434257966d7a33b97c2ce.info[m
[1mdeleted file mode 100644[m
[1mindex c0429a4..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/71/7149f3a9e0c434257966d7a33b97c2ce.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/71/71a34b8f60c444e188be1ac83a98e97c b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/71/71a34b8f60c444e188be1ac83a98e97c[m
[1mdeleted file mode 100644[m
[1mindex 1085bd2..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/71/71a34b8f60c444e188be1ac83a98e97c and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/71/71a34b8f60c444e188be1ac83a98e97c.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/71/71a34b8f60c444e188be1ac83a98e97c.info[m
[1mdeleted file mode 100644[m
[1mindex 8456a0e..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/71/71a34b8f60c444e188be1ac83a98e97c.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/71/71a34b8f60c444e188be1ac83a98e97c.resource b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/71/71a34b8f60c444e188be1ac83a98e97c.resource[m
[1mdeleted file mode 100644[m
[1mindex 0d0221d..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/71/71a34b8f60c444e188be1ac83a98e97c.resource and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/74/7420869847eed4154a8300dba36c585b b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/74/7420869847eed4154a8300dba36c585b[m
[1mdeleted file mode 100644[m
[1mindex aef90a6..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/74/7420869847eed4154a8300dba36c585b and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/74/7420869847eed4154a8300dba36c585b.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/74/7420869847eed4154a8300dba36c585b.info[m
[1mdeleted file mode 100644[m
[1mindex f3afd44..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/74/7420869847eed4154a8300dba36c585b.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/74/742e67bbeb385d64b88d5ebc0aea0fd7 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/74/742e67bbeb385d64b88d5ebc0aea0fd7[m
[1mindex 9bb4af3..a5cf269 100644[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/74/742e67bbeb385d64b88d5ebc0aea0fd7 and b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/74/742e67bbeb385d64b88d5ebc0aea0fd7 differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/74/745d0519ee2b84a51837873e4def1332 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/74/745d0519ee2b84a51837873e4def1332[m
[1mdeleted file mode 100644[m
[1mindex e5174a2..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/74/745d0519ee2b84a51837873e4def1332 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/74/745d0519ee2b84a51837873e4def1332.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/74/745d0519ee2b84a51837873e4def1332.info[m
[1mdeleted file mode 100644[m
[1mindex e237ebb..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/74/745d0519ee2b84a51837873e4def1332.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/76/764bd39b0f19c48f787bd0dd6035a7df b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/76/764bd39b0f19c48f787bd0dd6035a7df[m
[1mdeleted file mode 100644[m
[1mindex e7f4489..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/76/764bd39b0f19c48f787bd0dd6035a7df and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/76/764bd39b0f19c48f787bd0dd6035a7df.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/76/764bd39b0f19c48f787bd0dd6035a7df.info[m
[1mdeleted file mode 100644[m
[1mindex 735ef33..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/76/764bd39b0f19c48f787bd0dd6035a7df.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/76/764dd1237d2ec4445a9f934e5282c0e4 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/76/764dd1237d2ec4445a9f934e5282c0e4[m
[1mdeleted file mode 100644[m
[1mindex 10197a5..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/76/764dd1237d2ec4445a9f934e5282c0e4 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/76/764dd1237d2ec4445a9f934e5282c0e4.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/76/764dd1237d2ec4445a9f934e5282c0e4.info[m
[1mdeleted file mode 100644[m
[1mindex 0ef97b9..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/76/764dd1237d2ec4445a9f934e5282c0e4.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/76/76c306e0facd142fc87ce7824cd9ba92 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/76/76c306e0facd142fc87ce7824cd9ba92[m
[1mdeleted file mode 100644[m
[1mindex 216b124..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/76/76c306e0facd142fc87ce7824cd9ba92 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/76/76c306e0facd142fc87ce7824cd9ba92.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/76/76c306e0facd142fc87ce7824cd9ba92.info[m
[1mdeleted file mode 100644[m
[1mindex 435d600..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/76/76c306e0facd142fc87ce7824cd9ba92.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/77/7740901caddbd4d588d1a6e37d4f65fd b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/77/7740901caddbd4d588d1a6e37d4f65fd[m
[1mdeleted file mode 100644[m
[1mindex 615d005..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/77/7740901caddbd4d588d1a6e37d4f65fd and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/77/7740901caddbd4d588d1a6e37d4f65fd.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/77/7740901caddbd4d588d1a6e37d4f65fd.info[m
[1mdeleted file mode 100644[m
[1mindex a6a8835..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/77/7740901caddbd4d588d1a6e37d4f65fd.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/77/775f84f532b154fdb960f4f741428823 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/77/775f84f532b154fdb960f4f741428823[m
[1mdeleted file mode 100644[m
[1mindex 96a7024..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/77/775f84f532b154fdb960f4f741428823 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/77/775f84f532b154fdb960f4f741428823.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/77/775f84f532b154fdb960f4f741428823.info[m
[1mdeleted file mode 100644[m
[1mindex 6cc53e0..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/77/775f84f532b154fdb960f4f741428823.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/77/77e1000098cd140fbae2fbbdb66fea8c b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/77/77e1000098cd140fbae2fbbdb66fea8c[m
[1mdeleted file mode 100644[m
[1mindex 1a6a260..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/77/77e1000098cd140fbae2fbbdb66fea8c and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/77/77e1000098cd140fbae2fbbdb66fea8c.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/77/77e1000098cd140fbae2fbbdb66fea8c.info[m
[1mdeleted file mode 100644[m
[1mindex 3da7473..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/77/77e1000098cd140fbae2fbbdb66fea8c.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/78/7890fda813b4541b3a16eccda981dcf4 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/78/7890fda813b4541b3a16eccda981dcf4[m
[1mdeleted file mode 100644[m
[1mindex c5a82c0..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/78/7890fda813b4541b3a16eccda981dcf4 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/78/7890fda813b4541b3a16eccda981dcf4.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/78/7890fda813b4541b3a16eccda981dcf4.info[m
[1mdeleted file mode 100644[m
[1mindex a52e278..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/78/7890fda813b4541b3a16eccda981dcf4.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/79/798d52249f1f7467bad5775c3525b968 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/79/798d52249f1f7467bad5775c3525b968[m
[1mdeleted file mode 100644[m
[1mindex 21ed389..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/79/798d52249f1f7467bad5775c3525b968 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/79/798d52249f1f7467bad5775c3525b968.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/79/798d52249f1f7467bad5775c3525b968.info[m
[1mdeleted file mode 100644[m
[1mindex 17b7815..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/79/798d52249f1f7467bad5775c3525b968.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7a/7af90d98f41b2464f9908efe92c18a25 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7a/7af90d98f41b2464f9908efe92c18a25[m
[1mdeleted file mode 100644[m
[1mindex 1f7896e..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7a/7af90d98f41b2464f9908efe92c18a25 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7a/7af90d98f41b2464f9908efe92c18a25.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7a/7af90d98f41b2464f9908efe92c18a25.info[m
[1mdeleted file mode 100644[m
[1mindex f9e97c3..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7a/7af90d98f41b2464f9908efe92c18a25.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7b/7b00a8589a931434ca33b39a09e5ed7e b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7b/7b00a8589a931434ca33b39a09e5ed7e[m
[1mdeleted file mode 100644[m
[1mindex f2adbd8..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7b/7b00a8589a931434ca33b39a09e5ed7e and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7b/7b00a8589a931434ca33b39a09e5ed7e.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7b/7b00a8589a931434ca33b39a09e5ed7e.info[m
[1mdeleted file mode 100644[m
[1mindex d36dd57..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7b/7b00a8589a931434ca33b39a09e5ed7e.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7b/7b15ffa0bb0364cd5a3b93361f1282d3 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7b/7b15ffa0bb0364cd5a3b93361f1282d3[m
[1mdeleted file mode 100644[m
[1mindex b527613..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7b/7b15ffa0bb0364cd5a3b93361f1282d3 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7b/7b15ffa0bb0364cd5a3b93361f1282d3.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7b/7b15ffa0bb0364cd5a3b93361f1282d3.info[m
[1mdeleted file mode 100644[m
[1mindex 85377a5..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7b/7b15ffa0bb0364cd5a3b93361f1282d3.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7c/7c77ffc9ead244caf9f078f3a553e104 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7c/7c77ffc9ead244caf9f078f3a553e104[m
[1mdeleted file mode 100644[m
[1mindex b5cffcc..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7c/7c77ffc9ead244caf9f078f3a553e104 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7c/7c77ffc9ead244caf9f078f3a553e104.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7c/7c77ffc9ead244caf9f078f3a553e104.info[m
[1mdeleted file mode 100644[m
[1mindex 00b2cd4..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7c/7c77ffc9ead244caf9f078f3a553e104.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7d/7d751bb045be74f859c10eb9b4b7cdd9 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7d/7d751bb045be74f859c10eb9b4b7cdd9[m
[1mdeleted file mode 100644[m
[1mindex 3865c69..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7d/7d751bb045be74f859c10eb9b4b7cdd9 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7d/7d751bb045be74f859c10eb9b4b7cdd9.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7d/7d751bb045be74f859c10eb9b4b7cdd9.info[m
[1mdeleted file mode 100644[m
[1mindex d578953..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7d/7d751bb045be74f859c10eb9b4b7cdd9.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7d/7d7e3041b85314c7e9442b20f35aa957 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7d/7d7e3041b85314c7e9442b20f35aa957[m
[1mdeleted file mode 100644[m
[1mindex 3d80db1..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7d/7d7e3041b85314c7e9442b20f35aa957 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7d/7d7e3041b85314c7e9442b20f35aa957.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7d/7d7e3041b85314c7e9442b20f35aa957.info[m
[1mdeleted file mode 100644[m
[1mindex 0520f43..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7d/7d7e3041b85314c7e9442b20f35aa957.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7f/7f41f8f90985246498c85e8134328535 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7f/7f41f8f90985246498c85e8134328535[m
[1mdeleted file mode 100644[m
[1mindex 228010a..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7f/7f41f8f90985246498c85e8134328535 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7f/7f41f8f90985246498c85e8134328535.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7f/7f41f8f90985246498c85e8134328535.info[m
[1mdeleted file mode 100644[m
[1mindex ceca528..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7f/7f41f8f90985246498c85e8134328535.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7f/7f587c59eedd04839a5d01847983bd06 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7f/7f587c59eedd04839a5d01847983bd06[m
[1mdeleted file mode 100644[m
[1mindex 876756b..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7f/7f587c59eedd04839a5d01847983bd06 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7f/7f587c59eedd04839a5d01847983bd06.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7f/7f587c59eedd04839a5d01847983bd06.info[m
[1mdeleted file mode 100644[m
[1mindex a763654..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7f/7f587c59eedd04839a5d01847983bd06.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7f/7f72723861602402780378a3220e6400 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7f/7f72723861602402780378a3220e6400[m
[1mdeleted file mode 100644[m
[1mindex fb95a90..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7f/7f72723861602402780378a3220e6400 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7f/7f72723861602402780378a3220e6400.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7f/7f72723861602402780378a3220e6400.info[m
[1mdeleted file mode 100644[m
[1mindex 8fe3dd7..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/7f/7f72723861602402780378a3220e6400.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/80/80e8fe55098cf4ee283af99ef59f67a7 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/80/80e8fe55098cf4ee283af99ef59f67a7[m
[1mdeleted file mode 100644[m
[1mindex 20dc2d4..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/80/80e8fe55098cf4ee283af99ef59f67a7 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/80/80e8fe55098cf4ee283af99ef59f67a7.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/80/80e8fe55098cf4ee283af99ef59f67a7.info[m
[1mdeleted file mode 100644[m
[1mindex 9b478bc..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/80/80e8fe55098cf4ee283af99ef59f67a7.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/80/80ee5839fa9714636a3727129bc22404 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/80/80ee5839fa9714636a3727129bc22404[m
[1mdeleted file mode 100644[m
[1mindex 0f17cf5..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/80/80ee5839fa9714636a3727129bc22404 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/80/80ee5839fa9714636a3727129bc22404.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/80/80ee5839fa9714636a3727129bc22404.info[m
[1mdeleted file mode 100644[m
[1mindex 00116d9..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/80/80ee5839fa9714636a3727129bc22404.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/81/81050eb67e9e54bde97ee6847a10b706 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/81/81050eb67e9e54bde97ee6847a10b706[m
[1mdeleted file mode 100644[m
[1mindex 6dd4f57..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/81/81050eb67e9e54bde97ee6847a10b706 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/81/81050eb67e9e54bde97ee6847a10b706.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/81/81050eb67e9e54bde97ee6847a10b706.info[m
[1mdeleted file mode 100644[m
[1mindex cc5fdac..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/81/81050eb67e9e54bde97ee6847a10b706.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/82/825577cc2ac1d411b8b431ace4e8fbc6 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/82/825577cc2ac1d411b8b431ace4e8fbc6[m
[1mdeleted file mode 100644[m
[1mindex 505d8de..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/82/825577cc2ac1d411b8b431ace4e8fbc6 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/82/825577cc2ac1d411b8b431ace4e8fbc6.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/82/825577cc2ac1d411b8b431ace4e8fbc6.info[m
[1mdeleted file mode 100644[m
[1mindex 3066504..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/82/825577cc2ac1d411b8b431ace4e8fbc6.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/82/82c7cda65b6fd4925817145ccf422616 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/82/82c7cda65b6fd4925817145ccf422616[m
[1mdeleted file mode 100644[m
[1mindex 7cab30a..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/82/82c7cda65b6fd4925817145ccf422616 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/82/82c7cda65b6fd4925817145ccf422616.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/82/82c7cda65b6fd4925817145ccf422616.info[m
[1mdeleted file mode 100644[m
[1mindex 71e1239..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/82/82c7cda65b6fd4925817145ccf422616.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/82/82d5def14507044a1adb9b5122b70730 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/82/82d5def14507044a1adb9b5122b70730[m
[1mdeleted file mode 100644[m
[1mindex 4b87f9a..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/82/82d5def14507044a1adb9b5122b70730 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/82/82d5def14507044a1adb9b5122b70730.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/82/82d5def14507044a1adb9b5122b70730.info[m
[1mdeleted file mode 100644[m
[1mindex 4a4ad25..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/82/82d5def14507044a1adb9b5122b70730.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/82/82e80905d01d3254681db00e8527cbfa b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/82/82e80905d01d3254681db00e8527cbfa[m
[1mindex 09c902b..6a021a3 100644[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/82/82e80905d01d3254681db00e8527cbfa and b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/82/82e80905d01d3254681db00e8527cbfa differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/82/82e80905d01d3254681db00e8527cbfa.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/82/82e80905d01d3254681db00e8527cbfa.info[m
[1mindex d4f41ae..b690471 100644[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/82/82e80905d01d3254681db00e8527cbfa.info and b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/82/82e80905d01d3254681db00e8527cbfa.info differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/83/838d34d09318941739e2f93fb7e5aab2 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/83/838d34d09318941739e2f93fb7e5aab2[m
[1mdeleted file mode 100644[m
[1mindex 20d7321..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/83/838d34d09318941739e2f93fb7e5aab2 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/83/838d34d09318941739e2f93fb7e5aab2.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/83/838d34d09318941739e2f93fb7e5aab2.info[m
[1mdeleted file mode 100644[m
[1mindex c99fa09..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/83/838d34d09318941739e2f93fb7e5aab2.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/85/85e0791dfbfc44fcaa52d725824ec66b b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/85/85e0791dfbfc44fcaa52d725824ec66b[m
[1mdeleted file mode 100644[m
[1mindex 6b945f9..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/85/85e0791dfbfc44fcaa52d725824ec66b and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/85/85e0791dfbfc44fcaa52d725824ec66b.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/85/85e0791dfbfc44fcaa52d725824ec66b.info[m
[1mdeleted file mode 100644[m
[1mindex 5cededf..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/85/85e0791dfbfc44fcaa52d725824ec66b.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/87/870bdf7ed8ad56b41999641aec5b427f b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/87/870bdf7ed8ad56b41999641aec5b427f[m
[1mdeleted file mode 100644[m
[1mindex 7a86417..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/87/870bdf7ed8ad56b41999641aec5b427f and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/87/870bdf7ed8ad56b41999641aec5b427f.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/87/870bdf7ed8ad56b41999641aec5b427f.info[m
[1mdeleted file mode 100644[m
[1mindex fc4660e..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/87/870bdf7ed8ad56b41999641aec5b427f.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/88/8842fb938aaec41afa5bcb9e15653270 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/88/8842fb938aaec41afa5bcb9e15653270[m
[1mdeleted file mode 100644[m
[1mindex 49d893d..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/88/8842fb938aaec41afa5bcb9e15653270 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/88/8842fb938aaec41afa5bcb9e15653270.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/88/8842fb938aaec41afa5bcb9e15653270.info[m
[1mdeleted file mode 100644[m
[1mindex 1228dfd..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/88/8842fb938aaec41afa5bcb9e15653270.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/89/89ff990d9e86e4523b1fa16f42cfd6df b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/89/89ff990d9e86e4523b1fa16f42cfd6df[m
[1mdeleted file mode 100644[m
[1mindex cbbd419..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/89/89ff990d9e86e4523b1fa16f42cfd6df and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/89/89ff990d9e86e4523b1fa16f42cfd6df.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/89/89ff990d9e86e4523b1fa16f42cfd6df.info[m
[1mdeleted file mode 100644[m
[1mindex cb8b6dd..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/89/89ff990d9e86e4523b1fa16f42cfd6df.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8a/8a64c13c032b44a4cb13306d3a140974 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8a/8a64c13c032b44a4cb13306d3a140974[m
[1mdeleted file mode 100644[m
[1mindex 31ade04..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8a/8a64c13c032b44a4cb13306d3a140974 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8a/8a64c13c032b44a4cb13306d3a140974.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8a/8a64c13c032b44a4cb13306d3a140974.info[m
[1mdeleted file mode 100644[m
[1mindex 695022a..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8a/8a64c13c032b44a4cb13306d3a140974.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8b/8bf5597c68bd64ee8afc274fb739e89c b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8b/8bf5597c68bd64ee8afc274fb739e89c[m
[1mdeleted file mode 100644[m
[1mindex b81c5c3..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8b/8bf5597c68bd64ee8afc274fb739e89c and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8b/8bf5597c68bd64ee8afc274fb739e89c.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8b/8bf5597c68bd64ee8afc274fb739e89c.info[m
[1mdeleted file mode 100644[m
[1mindex c2af6ab..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8b/8bf5597c68bd64ee8afc274fb739e89c.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8c/8cb0bc6a3658344afb90f3efe5510f2b b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8c/8cb0bc6a3658344afb90f3efe5510f2b[m
[1mdeleted file mode 100644[m
[1mindex 9123ea8..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8c/8cb0bc6a3658344afb90f3efe5510f2b and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8c/8cb0bc6a3658344afb90f3efe5510f2b.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8c/8cb0bc6a3658344afb90f3efe5510f2b.info[m
[1mdeleted file mode 100644[m
[1mindex 6cb3dbf..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8c/8cb0bc6a3658344afb90f3efe5510f2b.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8d/8d01d601576d343618d6c448b12a30b7 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8d/8d01d601576d343618d6c448b12a30b7[m
[1mdeleted file mode 100644[m
[1mindex fecd85a..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8d/8d01d601576d343618d6c448b12a30b7 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8d/8d01d601576d343618d6c448b12a30b7.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8d/8d01d601576d343618d6c448b12a30b7.info[m
[1mdeleted file mode 100644[m
[1mindex e42790f..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8d/8d01d601576d343618d6c448b12a30b7.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8d/8d4d652b350394ade9ec4eaf3bc6a938 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8d/8d4d652b350394ade9ec4eaf3bc6a938[m
[1mdeleted file mode 100644[m
[1mindex f04c0fd..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8d/8d4d652b350394ade9ec4eaf3bc6a938 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8d/8d4d652b350394ade9ec4eaf3bc6a938.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8d/8d4d652b350394ade9ec4eaf3bc6a938.info[m
[1mdeleted file mode 100644[m
[1mindex 68c27b4..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8d/8d4d652b350394ade9ec4eaf3bc6a938.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8d/8d545c45734ae463d8d27ca533fdce72 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8d/8d545c45734ae463d8d27ca533fdce72[m
[1mdeleted file mode 100644[m
[1mindex bd7eb67..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8d/8d545c45734ae463d8d27ca533fdce72 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8d/8d545c45734ae463d8d27ca533fdce72.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8d/8d545c45734ae463d8d27ca533fdce72.info[m
[1mdeleted file mode 100644[m
[1mindex a90a74f..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8d/8d545c45734ae463d8d27ca533fdce72.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8e/8e4fa2e86a6f44ec9b96660cf7ed69fc b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8e/8e4fa2e86a6f44ec9b96660cf7ed69fc[m
[1mdeleted file mode 100644[m
[1mindex e3ad0f2..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8e/8e4fa2e86a6f44ec9b96660cf7ed69fc and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8e/8e4fa2e86a6f44ec9b96660cf7ed69fc.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8e/8e4fa2e86a6f44ec9b96660cf7ed69fc.info[m
[1mdeleted file mode 100644[m
[1mindex 4b23e5a..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8e/8e4fa2e86a6f44ec9b96660cf7ed69fc.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8e/8e9060700917440818983e27c6f730bd b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8e/8e9060700917440818983e27c6f730bd[m
[1mdeleted file mode 100644[m
[1mindex 7054010..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8e/8e9060700917440818983e27c6f730bd and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8e/8e9060700917440818983e27c6f730bd.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8e/8e9060700917440818983e27c6f730bd.info[m
[1mdeleted file mode 100644[m
[1mindex 7121d97..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8e/8e9060700917440818983e27c6f730bd.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8e/8eaf17c352e9e4f24a5cf1b3cd863d44 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8e/8eaf17c352e9e4f24a5cf1b3cd863d44[m
[1mdeleted file mode 100644[m
[1mindex d860ae4..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8e/8eaf17c352e9e4f24a5cf1b3cd863d44 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8e/8eaf17c352e9e4f24a5cf1b3cd863d44.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8e/8eaf17c352e9e4f24a5cf1b3cd863d44.info[m
[1mdeleted file mode 100644[m
[1mindex abd7ebf..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8e/8eaf17c352e9e4f24a5cf1b3cd863d44.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8f/8f77c76091e7b4e819f08abcd5b31fa6 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8f/8f77c76091e7b4e819f08abcd5b31fa6[m
[1mdeleted file mode 100644[m
[1mindex 2819139..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8f/8f77c76091e7b4e819f08abcd5b31fa6 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8f/8f77c76091e7b4e819f08abcd5b31fa6.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8f/8f77c76091e7b4e819f08abcd5b31fa6.info[m
[1mdeleted file mode 100644[m
[1mindex e40baa0..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8f/8f77c76091e7b4e819f08abcd5b31fa6.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8f/8fcb84aa21b98434dbe6aafa2e06316e b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8f/8fcb84aa21b98434dbe6aafa2e06316e[m
[1mdeleted file mode 100644[m
[1mindex c44a423..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8f/8fcb84aa21b98434dbe6aafa2e06316e and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8f/8fcb84aa21b98434dbe6aafa2e06316e.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8f/8fcb84aa21b98434dbe6aafa2e06316e.info[m
[1mdeleted file mode 100644[m
[1mindex 00e1710..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/8f/8fcb84aa21b98434dbe6aafa2e06316e.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/90/904461f40da0545c99a916509d90c399 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/90/904461f40da0545c99a916509d90c399[m
[1mdeleted file mode 100644[m
[1mindex cc513e7..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/90/904461f40da0545c99a916509d90c399 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/90/904461f40da0545c99a916509d90c399.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/90/904461f40da0545c99a916509d90c399.info[m
[1mdeleted file mode 100644[m
[1mindex 4f3aee8..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/90/904461f40da0545c99a916509d90c399.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/90/90fde47082bb94f35afaaaaada8b15dd b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/90/90fde47082bb94f35afaaaaada8b15dd[m
[1mdeleted file mode 100644[m
[1mindex c2b690b..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/90/90fde47082bb94f35afaaaaada8b15dd and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/90/90fde47082bb94f35afaaaaada8b15dd.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/90/90fde47082bb94f35afaaaaada8b15dd.info[m
[1mdeleted file mode 100644[m
[1mindex ef90d0f..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/90/90fde47082bb94f35afaaaaada8b15dd.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/91/919c4a6374e604703a36801073c87a89 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/91/919c4a6374e604703a36801073c87a89[m
[1mdeleted file mode 100644[m
[1mindex 0889c29..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/91/919c4a6374e604703a36801073c87a89 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/91/919c4a6374e604703a36801073c87a89.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/91/919c4a6374e604703a36801073c87a89.info[m
[1mdeleted file mode 100644[m
[1mindex 2b0b20b..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/91/919c4a6374e604703a36801073c87a89.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/91/919c4a6374e604703a36801073c87a89.resource b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/91/919c4a6374e604703a36801073c87a89.resource[m
[1mdeleted file mode 100644[m
[1mindex 8e8c855..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/91/919c4a6374e604703a36801073c87a89.resource and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/93/936e67ad2f5854f85b974a83e6cb34e2 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/93/936e67ad2f5854f85b974a83e6cb34e2[m
[1mdeleted file mode 100644[m
[1mindex 63def5c..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/93/936e67ad2f5854f85b974a83e6cb34e2 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/93/936e67ad2f5854f85b974a83e6cb34e2.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/93/936e67ad2f5854f85b974a83e6cb34e2.info[m
[1mdeleted file mode 100644[m
[1mindex 5552672..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/93/936e67ad2f5854f85b974a83e6cb34e2.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/95/9524062c0bdc14260a404f79b1abad2e b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/95/9524062c0bdc14260a404f79b1abad2e[m
[1mdeleted file mode 100644[m
[1mindex f605093..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/95/9524062c0bdc14260a404f79b1abad2e and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/95/9524062c0bdc14260a404f79b1abad2e.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/95/9524062c0bdc14260a404f79b1abad2e.info[m
[1mdeleted file mode 100644[m
[1mindex d41f3eb..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/95/9524062c0bdc14260a404f79b1abad2e.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/95/955492c0630734e86a8673456c253c57 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/95/955492c0630734e86a8673456c253c57[m
[1mdeleted file mode 100644[m
[1mindex fd1bd50..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/95/955492c0630734e86a8673456c253c57 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/95/955492c0630734e86a8673456c253c57.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/95/955492c0630734e86a8673456c253c57.info[m
[1mdeleted file mode 100644[m
[1mindex 43ecc8a..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/95/955492c0630734e86a8673456c253c57.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/95/955492c0630734e86a8673456c253c57.resource b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/95/955492c0630734e86a8673456c253c57.resource[m
[1mdeleted file mode 100644[m
[1mindex 1c45702..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/95/955492c0630734e86a8673456c253c57.resource and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/95/9588c4ce3383e4ea0a87ca89c0e47385 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/95/9588c4ce3383e4ea0a87ca89c0e47385[m
[1mdeleted file mode 100644[m
[1mindex bd5300c..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/95/9588c4ce3383e4ea0a87ca89c0e47385 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/95/9588c4ce3383e4ea0a87ca89c0e47385.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/95/9588c4ce3383e4ea0a87ca89c0e47385.info[m
[1mdeleted file mode 100644[m
[1mindex cc378e8..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/95/9588c4ce3383e4ea0a87ca89c0e47385.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/95/95a0ffda9aa2d464ca323966593f10f3 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/95/95a0ffda9aa2d464ca323966593f10f3[m
[1mdeleted file mode 100644[m
[1mindex 3a12e44..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/95/95a0ffda9aa2d464ca323966593f10f3 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/95/95a0ffda9aa2d464ca323966593f10f3.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/95/95a0ffda9aa2d464ca323966593f10f3.info[m
[1mdeleted file mode 100644[m
[1mindex 2173aae..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/95/95a0ffda9aa2d464ca323966593f10f3.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/96/964c4cbb6b5e64f08b3dfdeaad8827a6 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/96/964c4cbb6b5e64f08b3dfdeaad8827a6[m
[1mdeleted file mode 100644[m
[1mindex da08ba5..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/96/964c4cbb6b5e64f08b3dfdeaad8827a6 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/96/964c4cbb6b5e64f08b3dfdeaad8827a6.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/96/964c4cbb6b5e64f08b3dfdeaad8827a6.info[m
[1mdeleted file mode 100644[m
[1mindex 601409c..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/96/964c4cbb6b5e64f08b3dfdeaad8827a6.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/97/97764291878ec433e9dc097c0dd3bc00 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/97/97764291878ec433e9dc097c0dd3bc00[m
[1mdeleted file mode 100644[m
[1mindex 8114304..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/97/97764291878ec433e9dc097c0dd3bc00 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/97/97764291878ec433e9dc097c0dd3bc00.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/97/97764291878ec433e9dc097c0dd3bc00.info[m
[1mdeleted file mode 100644[m
[1mindex 6e2f459..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/97/97764291878ec433e9dc097c0dd3bc00.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/97/97d03577c361f4075b42edd78a6b5016 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/97/97d03577c361f4075b42edd78a6b5016[m
[1mdeleted file mode 100644[m
[1mindex d1ecb19..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/97/97d03577c361f4075b42edd78a6b5016 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/97/97d03577c361f4075b42edd78a6b5016.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/97/97d03577c361f4075b42edd78a6b5016.info[m
[1mdeleted file mode 100644[m
[1mindex d897d53..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/97/97d03577c361f4075b42edd78a6b5016.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/98/98db6cf081a944e9aa08b481e7e1d881 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/98/98db6cf081a944e9aa08b481e7e1d881[m
[1mdeleted file mode 100644[m
[1mindex 6e23250..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/98/98db6cf081a944e9aa08b481e7e1d881 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/98/98db6cf081a944e9aa08b481e7e1d881.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/98/98db6cf081a944e9aa08b481e7e1d881.info[m
[1mdeleted file mode 100644[m
[1mindex 15e18eb..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/98/98db6cf081a944e9aa08b481e7e1d881.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9a/9a0187145f5a84c91a00ebf3860e20d8 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9a/9a0187145f5a84c91a00ebf3860e20d8[m
[1mdeleted file mode 100644[m
[1mindex 4327b53..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9a/9a0187145f5a84c91a00ebf3860e20d8 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9a/9a0187145f5a84c91a00ebf3860e20d8.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9a/9a0187145f5a84c91a00ebf3860e20d8.info[m
[1mdeleted file mode 100644[m
[1mindex e036745..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9a/9a0187145f5a84c91a00ebf3860e20d8.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9b/9b6e71add002b4d9cb484afd4a050343 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9b/9b6e71add002b4d9cb484afd4a050343[m
[1mdeleted file mode 100644[m
[1mindex 12ff73a..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9b/9b6e71add002b4d9cb484afd4a050343 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9b/9b6e71add002b4d9cb484afd4a050343.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9b/9b6e71add002b4d9cb484afd4a050343.info[m
[1mdeleted file mode 100644[m
[1mindex 46c8991..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9b/9b6e71add002b4d9cb484afd4a050343.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9b/9ba4e2839dd08485ca0cada253d1994c b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9b/9ba4e2839dd08485ca0cada253d1994c[m
[1mdeleted file mode 100644[m
[1mindex 4e2ecc1..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9b/9ba4e2839dd08485ca0cada253d1994c and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9b/9ba4e2839dd08485ca0cada253d1994c.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9b/9ba4e2839dd08485ca0cada253d1994c.info[m
[1mdeleted file mode 100644[m
[1mindex 0387663..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9b/9ba4e2839dd08485ca0cada253d1994c.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9d/9d9cec75ac3b14314b3ac5db805860a1 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9d/9d9cec75ac3b14314b3ac5db805860a1[m
[1mdeleted file mode 100644[m
[1mindex cea24d6..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9d/9d9cec75ac3b14314b3ac5db805860a1 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9d/9d9cec75ac3b14314b3ac5db805860a1.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9d/9d9cec75ac3b14314b3ac5db805860a1.info[m
[1mdeleted file mode 100644[m
[1mindex 69b689f..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9d/9d9cec75ac3b14314b3ac5db805860a1.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9d/9ddea4e14f6514d1cb0566902580892c b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9d/9ddea4e14f6514d1cb0566902580892c[m
[1mdeleted file mode 100644[m
[1mindex 893e348..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9d/9ddea4e14f6514d1cb0566902580892c and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9d/9ddea4e14f6514d1cb0566902580892c.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9d/9ddea4e14f6514d1cb0566902580892c.info[m
[1mdeleted file mode 100644[m
[1mindex b9a8217..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9d/9ddea4e14f6514d1cb0566902580892c.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9f/9faf771512a18472b93d95ad1c9132d2 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9f/9faf771512a18472b93d95ad1c9132d2[m
[1mdeleted file mode 100644[m
[1mindex 3dac9cc..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9f/9faf771512a18472b93d95ad1c9132d2 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9f/9faf771512a18472b93d95ad1c9132d2.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9f/9faf771512a18472b93d95ad1c9132d2.info[m
[1mdeleted file mode 100644[m
[1mindex 6664b46..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9f/9faf771512a18472b93d95ad1c9132d2.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9f/9fea489a26fa84b46bdf5bc53a89165c b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9f/9fea489a26fa84b46bdf5bc53a89165c[m
[1mdeleted file mode 100644[m
[1mindex 3233bf6..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9f/9fea489a26fa84b46bdf5bc53a89165c and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9f/9fea489a26fa84b46bdf5bc53a89165c.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9f/9fea489a26fa84b46bdf5bc53a89165c.info[m
[1mdeleted file mode 100644[m
[1mindex e106824..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/9f/9fea489a26fa84b46bdf5bc53a89165c.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a0/a0ca3024d8bc4481f8e46b489c94d728 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a0/a0ca3024d8bc4481f8e46b489c94d728[m
[1mdeleted file mode 100644[m
[1mindex 846e2a3..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a0/a0ca3024d8bc4481f8e46b489c94d728 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a0/a0ca3024d8bc4481f8e46b489c94d728.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a0/a0ca3024d8bc4481f8e46b489c94d728.info[m
[1mdeleted file mode 100644[m
[1mindex 885b965..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a0/a0ca3024d8bc4481f8e46b489c94d728.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a2/a22b6ee2c92fe483f843a0065cd9ceec b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a2/a22b6ee2c92fe483f843a0065cd9ceec[m
[1mdeleted file mode 100644[m
[1mindex 641e7bd..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a2/a22b6ee2c92fe483f843a0065cd9ceec and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a2/a22b6ee2c92fe483f843a0065cd9ceec.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a2/a22b6ee2c92fe483f843a0065cd9ceec.info[m
[1mdeleted file mode 100644[m
[1mindex c848120..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a2/a22b6ee2c92fe483f843a0065cd9ceec.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a2/a2c31c8702ee6470c8be8c7add16f4b4 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a2/a2c31c8702ee6470c8be8c7add16f4b4[m
[1mdeleted file mode 100644[m
[1mindex d515ccc..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a2/a2c31c8702ee6470c8be8c7add16f4b4 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a2/a2c31c8702ee6470c8be8c7add16f4b4.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a2/a2c31c8702ee6470c8be8c7add16f4b4.info[m
[1mdeleted file mode 100644[m
[1mindex 14d154b..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a2/a2c31c8702ee6470c8be8c7add16f4b4.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a4/a43625888dead4088a496b0a02d218d3 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a4/a43625888dead4088a496b0a02d218d3[m
[1mdeleted file mode 100644[m
[1mindex 2f6487f..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a4/a43625888dead4088a496b0a02d218d3 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a4/a43625888dead4088a496b0a02d218d3.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a4/a43625888dead4088a496b0a02d218d3.info[m
[1mdeleted file mode 100644[m
[1mindex 6e3e44a..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a4/a43625888dead4088a496b0a02d218d3.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a4/a461790e82d844e579b01518e3efde0a b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a4/a461790e82d844e579b01518e3efde0a[m
[1mdeleted file mode 100644[m
[1mindex cc47b75..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a4/a461790e82d844e579b01518e3efde0a and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a4/a461790e82d844e579b01518e3efde0a.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a4/a461790e82d844e579b01518e3efde0a.info[m
[1mdeleted file mode 100644[m
[1mindex 8b6f394..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a4/a461790e82d844e579b01518e3efde0a.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a4/a47c816c0303c4f0db13a76659f65687 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a4/a47c816c0303c4f0db13a76659f65687[m
[1mdeleted file mode 100644[m
[1mindex 12126fc..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a4/a47c816c0303c4f0db13a76659f65687 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a4/a47c816c0303c4f0db13a76659f65687.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a4/a47c816c0303c4f0db13a76659f65687.info[m
[1mdeleted file mode 100644[m
[1mindex 3eef00f..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a4/a47c816c0303c4f0db13a76659f65687.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a4/a4d8be3235dc64dcb8cc5bb56876e4bc b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a4/a4d8be3235dc64dcb8cc5bb56876e4bc[m
[1mdeleted file mode 100644[m
[1mindex 806cd66..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a4/a4d8be3235dc64dcb8cc5bb56876e4bc and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a4/a4d8be3235dc64dcb8cc5bb56876e4bc.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a4/a4d8be3235dc64dcb8cc5bb56876e4bc.info[m
[1mdeleted file mode 100644[m
[1mindex 0b9d6aa..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a4/a4d8be3235dc64dcb8cc5bb56876e4bc.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a4/a4d8be3235dc64dcb8cc5bb56876e4bc.resource b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a4/a4d8be3235dc64dcb8cc5bb56876e4bc.resource[m
[1mdeleted file mode 100644[m
[1mindex 78136aa..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a4/a4d8be3235dc64dcb8cc5bb56876e4bc.resource and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a5/a515b82d380624340bc66238ebbad71b b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a5/a515b82d380624340bc66238ebbad71b[m
[1mdeleted file mode 100644[m
[1mindex bdc6a17..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a5/a515b82d380624340bc66238ebbad71b and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a5/a515b82d380624340bc66238ebbad71b.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a5/a515b82d380624340bc66238ebbad71b.info[m
[1mdeleted file mode 100644[m
[1mindex 0e0306d..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a5/a515b82d380624340bc66238ebbad71b.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a5/a529173c5108e4cc880129bb614b148d b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a5/a529173c5108e4cc880129bb614b148d[m
[1mdeleted file mode 100644[m
[1mindex 35b9edf..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a5/a529173c5108e4cc880129bb614b148d and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a5/a529173c5108e4cc880129bb614b148d.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a5/a529173c5108e4cc880129bb614b148d.info[m
[1mdeleted file mode 100644[m
[1mindex 845563f..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a5/a529173c5108e4cc880129bb614b148d.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a5/a5e8dd5fc80434523951bcd0c676f6cc b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a5/a5e8dd5fc80434523951bcd0c676f6cc[m
[1mdeleted file mode 100644[m
[1mindex 0921b1a..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a5/a5e8dd5fc80434523951bcd0c676f6cc and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a5/a5e8dd5fc80434523951bcd0c676f6cc.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a5/a5e8dd5fc80434523951bcd0c676f6cc.info[m
[1mdeleted file mode 100644[m
[1mindex c381d30..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a5/a5e8dd5fc80434523951bcd0c676f6cc.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a6/a6eac0f88f1374376bf70678e6f8c886 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a6/a6eac0f88f1374376bf70678e6f8c886[m
[1mdeleted file mode 100644[m
[1mindex b7ec66a..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a6/a6eac0f88f1374376bf70678e6f8c886 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a6/a6eac0f88f1374376bf70678e6f8c886.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a6/a6eac0f88f1374376bf70678e6f8c886.info[m
[1mdeleted file mode 100644[m
[1mindex 5fbd35d..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a6/a6eac0f88f1374376bf70678e6f8c886.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a7/a75b43325b83f4aecb46116373c53863 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a7/a75b43325b83f4aecb46116373c53863[m
[1mdeleted file mode 100644[m
[1mindex 9fe5f44..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a7/a75b43325b83f4aecb46116373c53863 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a7/a75b43325b83f4aecb46116373c53863.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a7/a75b43325b83f4aecb46116373c53863.info[m
[1mdeleted file mode 100644[m
[1mindex 9a7c6bf..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a7/a75b43325b83f4aecb46116373c53863.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a7/a7dec43924e9c44d6b166b0eb924333a b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a7/a7dec43924e9c44d6b166b0eb924333a[m
[1mdeleted file mode 100644[m
[1mindex 1d22e12..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a7/a7dec43924e9c44d6b166b0eb924333a and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a7/a7dec43924e9c44d6b166b0eb924333a.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a7/a7dec43924e9c44d6b166b0eb924333a.info[m
[1mdeleted file mode 100644[m
[1mindex 3c307d9..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/a7/a7dec43924e9c44d6b166b0eb924333a.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/aa/aace1dc8f33784cb1b6f31b829bf3d65 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/aa/aace1dc8f33784cb1b6f31b829bf3d65[m
[1mdeleted file mode 100644[m
[1mindex a21e719..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/aa/aace1dc8f33784cb1b6f31b829bf3d65 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/aa/aace1dc8f33784cb1b6f31b829bf3d65.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/aa/aace1dc8f33784cb1b6f31b829bf3d65.info[m
[1mdeleted file mode 100644[m
[1mindex 1c823b2..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/aa/aace1dc8f33784cb1b6f31b829bf3d65.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ab/ab1984f98582c4d0bb7880a6640559f0 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ab/ab1984f98582c4d0bb7880a6640559f0[m
[1mdeleted file mode 100644[m
[1mindex 562b1bf..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ab/ab1984f98582c4d0bb7880a6640559f0 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ab/ab1984f98582c4d0bb7880a6640559f0.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ab/ab1984f98582c4d0bb7880a6640559f0.info[m
[1mdeleted file mode 100644[m
[1mindex bbd9146..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ab/ab1984f98582c4d0bb7880a6640559f0.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ab/ab492784bf97f46b4b2c3f364fc1333f b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ab/ab492784bf97f46b4b2c3f364fc1333f[m
[1mdeleted file mode 100644[m
[1mindex 729b0b7..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ab/ab492784bf97f46b4b2c3f364fc1333f and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ab/ab492784bf97f46b4b2c3f364fc1333f.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ab/ab492784bf97f46b4b2c3f364fc1333f.info[m
[1mdeleted file mode 100644[m
[1mindex 74ab171..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ab/ab492784bf97f46b4b2c3f364fc1333f.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ac/ac91d4057c92b4d5b923ad42db3d2585 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ac/ac91d4057c92b4d5b923ad42db3d2585[m
[1mdeleted file mode 100644[m
[1mindex 873924b..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ac/ac91d4057c92b4d5b923ad42db3d2585 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ac/ac91d4057c92b4d5b923ad42db3d2585.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ac/ac91d4057c92b4d5b923ad42db3d2585.info[m
[1mdeleted file mode 100644[m
[1mindex 18e5777..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ac/ac91d4057c92b4d5b923ad42db3d2585.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ac/acf5906f49124432ab3e99cb55d615d9 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ac/acf5906f49124432ab3e99cb55d615d9[m
[1mdeleted file mode 100644[m
[1mindex e1c4605..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ac/acf5906f49124432ab3e99cb55d615d9 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ac/acf5906f49124432ab3e99cb55d615d9.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ac/acf5906f49124432ab3e99cb55d615d9.info[m
[1mdeleted file mode 100644[m
[1mindex 66ae24f..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ac/acf5906f49124432ab3e99cb55d615d9.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ad/ada3b87c393024e10a9abb151c2aadb6 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ad/ada3b87c393024e10a9abb151c2aadb6[m
[1mdeleted file mode 100644[m
[1mindex ed7d60c..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ad/ada3b87c393024e10a9abb151c2aadb6 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ad/ada3b87c393024e10a9abb151c2aadb6.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ad/ada3b87c393024e10a9abb151c2aadb6.info[m
[1mdeleted file mode 100644[m
[1mindex 32a7a72..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ad/ada3b87c393024e10a9abb151c2aadb6.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ae/ae0609eb0a6274c7fa77c13f83e90dcd b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ae/ae0609eb0a6274c7fa77c13f83e90dcd[m
[1mdeleted file mode 100644[m
[1mindex 8c44de1..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ae/ae0609eb0a6274c7fa77c13f83e90dcd and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ae/ae0609eb0a6274c7fa77c13f83e90dcd.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ae/ae0609eb0a6274c7fa77c13f83e90dcd.info[m
[1mdeleted file mode 100644[m
[1mindex 8117e95..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ae/ae0609eb0a6274c7fa77c13f83e90dcd.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ae/ae9da413833cb4893a729363c8388326 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ae/ae9da413833cb4893a729363c8388326[m
[1mdeleted file mode 100644[m
[1mindex 8354f3a..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ae/ae9da413833cb4893a729363c8388326 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ae/ae9da413833cb4893a729363c8388326.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ae/ae9da413833cb4893a729363c8388326.info[m
[1mdeleted file mode 100644[m
[1mindex d7950ff..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ae/ae9da413833cb4893a729363c8388326.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ae/aef4d54137c1e46d7a7851cfde9e5c52 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ae/aef4d54137c1e46d7a7851cfde9e5c52[m
[1mdeleted file mode 100644[m
[1mindex e47af06..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ae/aef4d54137c1e46d7a7851cfde9e5c52 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ae/aef4d54137c1e46d7a7851cfde9e5c52.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ae/aef4d54137c1e46d7a7851cfde9e5c52.info[m
[1mdeleted file mode 100644[m
[1mindex e09b3a9..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ae/aef4d54137c1e46d7a7851cfde9e5c52.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/af/af8f500b95a134cff8453e96cbb86593 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/af/af8f500b95a134cff8453e96cbb86593[m
[1mdeleted file mode 100644[m
[1mindex b982ef0..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/af/af8f500b95a134cff8453e96cbb86593 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/af/af8f500b95a134cff8453e96cbb86593.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/af/af8f500b95a134cff8453e96cbb86593.info[m
[1mdeleted file mode 100644[m
[1mindex adad0c0..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/af/af8f500b95a134cff8453e96cbb86593.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b0/b00c7bbbdb0324a9383bac9a5f92ea3c b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b0/b00c7bbbdb0324a9383bac9a5f92ea3c[m
[1mdeleted file mode 100644[m
[1mindex 3e90718..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b0/b00c7bbbdb0324a9383bac9a5f92ea3c and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b0/b00c7bbbdb0324a9383bac9a5f92ea3c.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b0/b00c7bbbdb0324a9383bac9a5f92ea3c.info[m
[1mdeleted file mode 100644[m
[1mindex 0f8875d..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b0/b00c7bbbdb0324a9383bac9a5f92ea3c.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b0/b040eac4e6c1d4d19bfc79969a7c134f b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b0/b040eac4e6c1d4d19bfc79969a7c134f[m
[1mdeleted file mode 100644[m
[1mindex 208a631..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b0/b040eac4e6c1d4d19bfc79969a7c134f and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b0/b040eac4e6c1d4d19bfc79969a7c134f.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b0/b040eac4e6c1d4d19bfc79969a7c134f.info[m
[1mdeleted file mode 100644[m
[1mindex f7ba804..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b0/b040eac4e6c1d4d19bfc79969a7c134f.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b0/b09efc31123ed41e5adb0b6a7435862a b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b0/b09efc31123ed41e5adb0b6a7435862a[m
[1mdeleted file mode 100644[m
[1mindex 5c830e2..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b0/b09efc31123ed41e5adb0b6a7435862a and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b0/b09efc31123ed41e5adb0b6a7435862a.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b0/b09efc31123ed41e5adb0b6a7435862a.info[m
[1mdeleted file mode 100644[m
[1mindex b6f4ef9..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b0/b09efc31123ed41e5adb0b6a7435862a.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b0/b0c114fb3dffd44d4b41c3906da20ca0 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b0/b0c114fb3dffd44d4b41c3906da20ca0[m
[1mdeleted file mode 100644[m
[1mindex 3cf68ec..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b0/b0c114fb3dffd44d4b41c3906da20ca0 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b0/b0c114fb3dffd44d4b41c3906da20ca0.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b0/b0c114fb3dffd44d4b41c3906da20ca0.info[m
[1mdeleted file mode 100644[m
[1mindex 6b5275a..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b0/b0c114fb3dffd44d4b41c3906da20ca0.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b1/b108613b145da4a9ea683c538b9d4cd5 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b1/b108613b145da4a9ea683c538b9d4cd5[m
[1mdeleted file mode 100644[m
[1mindex 2d1b833..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b1/b108613b145da4a9ea683c538b9d4cd5 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b1/b108613b145da4a9ea683c538b9d4cd5.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b1/b108613b145da4a9ea683c538b9d4cd5.info[m
[1mdeleted file mode 100644[m
[1mindex fd67c98..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b1/b108613b145da4a9ea683c538b9d4cd5.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b2/b207103e3bc8546b08b1b5543804bf78 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b2/b207103e3bc8546b08b1b5543804bf78[m
[1mdeleted file mode 100644[m
[1mindex 37d62ce..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b2/b207103e3bc8546b08b1b5543804bf78 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b2/b207103e3bc8546b08b1b5543804bf78.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b2/b207103e3bc8546b08b1b5543804bf78.info[m
[1mdeleted file mode 100644[m
[1mindex d2c8a9d..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b2/b207103e3bc8546b08b1b5543804bf78.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b2/b207103e3bc8546b08b1b5543804bf78.resource b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b2/b207103e3bc8546b08b1b5543804bf78.resource[m
[1mdeleted file mode 100644[m
[1mindex 0c3d287..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b2/b207103e3bc8546b08b1b5543804bf78.resource and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b2/b27066ab04ad94c5b8a515bdb9d6d45c b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b2/b27066ab04ad94c5b8a515bdb9d6d45c[m
[1mdeleted file mode 100644[m
[1mindex ca312f8..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b2/b27066ab04ad94c5b8a515bdb9d6d45c and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b2/b27066ab04ad94c5b8a515bdb9d6d45c.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b2/b27066ab04ad94c5b8a515bdb9d6d45c.info[m
[1mdeleted file mode 100644[m
[1mindex bc4f0fb..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b2/b27066ab04ad94c5b8a515bdb9d6d45c.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b2/b2eb9aab4f39c4cb2b9c75b1e7863e09 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b2/b2eb9aab4f39c4cb2b9c75b1e7863e09[m
[1mdeleted file mode 100644[m
[1mindex cd17f4a..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b2/b2eb9aab4f39c4cb2b9c75b1e7863e09 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b2/b2eb9aab4f39c4cb2b9c75b1e7863e09.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b2/b2eb9aab4f39c4cb2b9c75b1e7863e09.info[m
[1mdeleted file mode 100644[m
[1mindex e29ee2b..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b2/b2eb9aab4f39c4cb2b9c75b1e7863e09.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b2/b2f137cc563bc4e6d932a4f1e6d5ec59 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b2/b2f137cc563bc4e6d932a4f1e6d5ec59[m
[1mdeleted file mode 100644[m
[1mindex 513727a..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b2/b2f137cc563bc4e6d932a4f1e6d5ec59 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b2/b2f137cc563bc4e6d932a4f1e6d5ec59.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b2/b2f137cc563bc4e6d932a4f1e6d5ec59.info[m
[1mdeleted file mode 100644[m
[1mindex 7746888..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b2/b2f137cc563bc4e6d932a4f1e6d5ec59.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b3/b3fc3f44793b44f498fb995b29ee17ce b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b3/b3fc3f44793b44f498fb995b29ee17ce[m
[1mdeleted file mode 100644[m
[1mindex df9ea6b..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b3/b3fc3f44793b44f498fb995b29ee17ce and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b3/b3fc3f44793b44f498fb995b29ee17ce.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b3/b3fc3f44793b44f498fb995b29ee17ce.info[m
[1mdeleted file mode 100644[m
[1mindex b3be6be..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b3/b3fc3f44793b44f498fb995b29ee17ce.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b4/b40d099388d4e49fb8e3c7b4e882b2de b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b4/b40d099388d4e49fb8e3c7b4e882b2de[m
[1mdeleted file mode 100644[m
[1mindex d18efd2..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b4/b40d099388d4e49fb8e3c7b4e882b2de and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b4/b40d099388d4e49fb8e3c7b4e882b2de.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b4/b40d099388d4e49fb8e3c7b4e882b2de.info[m
[1mdeleted file mode 100644[m
[1mindex 5bf42df..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b4/b40d099388d4e49fb8e3c7b4e882b2de.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b4/b4a62ed6885464dba86d8c0f77252f29 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b4/b4a62ed6885464dba86d8c0f77252f29[m
[1mdeleted file mode 100644[m
[1mindex dc8ea6d..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b4/b4a62ed6885464dba86d8c0f77252f29 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b4/b4a62ed6885464dba86d8c0f77252f29.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b4/b4a62ed6885464dba86d8c0f77252f29.info[m
[1mdeleted file mode 100644[m
[1mindex aba70df..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b4/b4a62ed6885464dba86d8c0f77252f29.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b5/b51b1cadfa11b43e589e3d56c61e0689 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b5/b51b1cadfa11b43e589e3d56c61e0689[m
[1mdeleted file mode 100644[m
[1mindex 26b30b6..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b5/b51b1cadfa11b43e589e3d56c61e0689 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b5/b51b1cadfa11b43e589e3d56c61e0689.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b5/b51b1cadfa11b43e589e3d56c61e0689.info[m
[1mdeleted file mode 100644[m
[1mindex a639e31..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b5/b51b1cadfa11b43e589e3d56c61e0689.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b5/b578e902b51d045e18b3568e5aae362e b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b5/b578e902b51d045e18b3568e5aae362e[m
[1mdeleted file mode 100644[m
[1mindex 5c12b04..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b5/b578e902b51d045e18b3568e5aae362e and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b5/b578e902b51d045e18b3568e5aae362e.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b5/b578e902b51d045e18b3568e5aae362e.info[m
[1mdeleted file mode 100644[m
[1mindex 8fa0681..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b5/b578e902b51d045e18b3568e5aae362e.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b6/b6b8eae2ceae444a3b8db7475c58860b b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b6/b6b8eae2ceae444a3b8db7475c58860b[m
[1mdeleted file mode 100644[m
[1mindex f22e4e5..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b6/b6b8eae2ceae444a3b8db7475c58860b and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b6/b6b8eae2ceae444a3b8db7475c58860b.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b6/b6b8eae2ceae444a3b8db7475c58860b.info[m
[1mdeleted file mode 100644[m
[1mindex 331504f..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b6/b6b8eae2ceae444a3b8db7475c58860b.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b6/b6e73cf16274d45c2951316a561387ec b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b6/b6e73cf16274d45c2951316a561387ec[m
[1mdeleted file mode 100644[m
[1mindex 77365b6..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b6/b6e73cf16274d45c2951316a561387ec and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b6/b6e73cf16274d45c2951316a561387ec.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b6/b6e73cf16274d45c2951316a561387ec.info[m
[1mdeleted file mode 100644[m
[1mindex 78b5efe..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b6/b6e73cf16274d45c2951316a561387ec.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b7/b7b7c58464d2742b996d64944462b526 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b7/b7b7c58464d2742b996d64944462b526[m
[1mdeleted file mode 100644[m
[1mindex df04e75..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b7/b7b7c58464d2742b996d64944462b526 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b7/b7b7c58464d2742b996d64944462b526.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b7/b7b7c58464d2742b996d64944462b526.info[m
[1mdeleted file mode 100644[m
[1mindex 891ef06..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b7/b7b7c58464d2742b996d64944462b526.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b8/b8496efea8b0f4b91bcf5b5928074f75 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b8/b8496efea8b0f4b91bcf5b5928074f75[m
[1mdeleted file mode 100644[m
[1mindex 5a72c56..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b8/b8496efea8b0f4b91bcf5b5928074f75 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b8/b8496efea8b0f4b91bcf5b5928074f75.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b8/b8496efea8b0f4b91bcf5b5928074f75.info[m
[1mdeleted file mode 100644[m
[1mindex 2de78c9..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b8/b8496efea8b0f4b91bcf5b5928074f75.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b8/b8d6133c03f3d4ee3bb4a3ecd5c1de47 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b8/b8d6133c03f3d4ee3bb4a3ecd5c1de47[m
[1mdeleted file mode 100644[m
[1mindex 4ee00d1..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b8/b8d6133c03f3d4ee3bb4a3ecd5c1de47 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b8/b8d6133c03f3d4ee3bb4a3ecd5c1de47.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b8/b8d6133c03f3d4ee3bb4a3ecd5c1de47.info[m
[1mdeleted file mode 100644[m
[1mindex 500a4e7..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b8/b8d6133c03f3d4ee3bb4a3ecd5c1de47.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b9/b9c37bd398b8349f9b8464427491f24a b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b9/b9c37bd398b8349f9b8464427491f24a[m
[1mdeleted file mode 100644[m
[1mindex 3c39401..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b9/b9c37bd398b8349f9b8464427491f24a and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b9/b9c37bd398b8349f9b8464427491f24a.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b9/b9c37bd398b8349f9b8464427491f24a.info[m
[1mdeleted file mode 100644[m
[1mindex 6e29a2a..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/b9/b9c37bd398b8349f9b8464427491f24a.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ba/ba0aef1ff3beb418f86d7b3b8e9d421d b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ba/ba0aef1ff3beb418f86d7b3b8e9d421d[m
[1mdeleted file mode 100644[m
[1mindex 487665d..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ba/ba0aef1ff3beb418f86d7b3b8e9d421d and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ba/ba0aef1ff3beb418f86d7b3b8e9d421d.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ba/ba0aef1ff3beb418f86d7b3b8e9d421d.info[m
[1mdeleted file mode 100644[m
[1mindex 3faa219..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ba/ba0aef1ff3beb418f86d7b3b8e9d421d.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ba/ba21449edd95743a18f4b2748b4dd1e0 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ba/ba21449edd95743a18f4b2748b4dd1e0[m
[1mdeleted file mode 100644[m
[1mindex 417bd11..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ba/ba21449edd95743a18f4b2748b4dd1e0 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ba/ba21449edd95743a18f4b2748b4dd1e0.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ba/ba21449edd95743a18f4b2748b4dd1e0.info[m
[1mdeleted file mode 100644[m
[1mindex eca91b9..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ba/ba21449edd95743a18f4b2748b4dd1e0.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ba/ba67a80aa507f4ea6b27e0c008f91735 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ba/ba67a80aa507f4ea6b27e0c008f91735[m
[1mdeleted file mode 100644[m
[1mindex b41b36b..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ba/ba67a80aa507f4ea6b27e0c008f91735 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ba/ba67a80aa507f4ea6b27e0c008f91735.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ba/ba67a80aa507f4ea6b27e0c008f91735.info[m
[1mdeleted file mode 100644[m
[1mindex 6158c62..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ba/ba67a80aa507f4ea6b27e0c008f91735.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bb/bbcf28414b4dd42c48ac1b8eef2256fb b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bb/bbcf28414b4dd42c48ac1b8eef2256fb[m
[1mdeleted file mode 100644[m
[1mindex c8a2b8a..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bb/bbcf28414b4dd42c48ac1b8eef2256fb and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bb/bbcf28414b4dd42c48ac1b8eef2256fb.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bb/bbcf28414b4dd42c48ac1b8eef2256fb.info[m
[1mdeleted file mode 100644[m
[1mindex 2802d23..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bb/bbcf28414b4dd42c48ac1b8eef2256fb.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bb/bbefb1d9eed524e8c94807f5d4249c98 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bb/bbefb1d9eed524e8c94807f5d4249c98[m
[1mdeleted file mode 100644[m
[1mindex 3905845..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bb/bbefb1d9eed524e8c94807f5d4249c98 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bb/bbefb1d9eed524e8c94807f5d4249c98.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bb/bbefb1d9eed524e8c94807f5d4249c98.info[m
[1mdeleted file mode 100644[m
[1mindex a6b71f3..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bb/bbefb1d9eed524e8c94807f5d4249c98.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bc/bcbae4be80976412d910deee55eebfd7 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bc/bcbae4be80976412d910deee55eebfd7[m
[1mdeleted file mode 100644[m
[1mindex 1f267c9..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bc/bcbae4be80976412d910deee55eebfd7 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bc/bcbae4be80976412d910deee55eebfd7.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bc/bcbae4be80976412d910deee55eebfd7.info[m
[1mdeleted file mode 100644[m
[1mindex 8c26f05..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bc/bcbae4be80976412d910deee55eebfd7.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bc/bcd7ea9dfbc144235b18d9e61214a404 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bc/bcd7ea9dfbc144235b18d9e61214a404[m
[1mdeleted file mode 100644[m
[1mindex 34a787e..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bc/bcd7ea9dfbc144235b18d9e61214a404 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bc/bcd7ea9dfbc144235b18d9e61214a404.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bc/bcd7ea9dfbc144235b18d9e61214a404.info[m
[1mdeleted file mode 100644[m
[1mindex 5d90810..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bc/bcd7ea9dfbc144235b18d9e61214a404.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bd/bd3678d5056784487a584306636a9404 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bd/bd3678d5056784487a584306636a9404[m
[1mdeleted file mode 100644[m
[1mindex 641149a..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bd/bd3678d5056784487a584306636a9404 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bd/bd3678d5056784487a584306636a9404.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bd/bd3678d5056784487a584306636a9404.info[m
[1mdeleted file mode 100644[m
[1mindex db128ee..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bd/bd3678d5056784487a584306636a9404.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bd/bd7fd8b797872451d87345ca72fc8504 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bd/bd7fd8b797872451d87345ca72fc8504[m
[1mdeleted file mode 100644[m
[1mindex 2717d14..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bd/bd7fd8b797872451d87345ca72fc8504 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bd/bd7fd8b797872451d87345ca72fc8504.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bd/bd7fd8b797872451d87345ca72fc8504.info[m
[1mdeleted file mode 100644[m
[1mindex 128278e..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bd/bd7fd8b797872451d87345ca72fc8504.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/be/bec088a4836484016abcd8871c3da905 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/be/bec088a4836484016abcd8871c3da905[m
[1mdeleted file mode 100644[m
[1mindex 9a0f146..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/be/bec088a4836484016abcd8871c3da905 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/be/bec088a4836484016abcd8871c3da905.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/be/bec088a4836484016abcd8871c3da905.info[m
[1mdeleted file mode 100644[m
[1mindex a042ff6..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/be/bec088a4836484016abcd8871c3da905.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/be/bed68101b3e9048bfacda149113df587 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/be/bed68101b3e9048bfacda149113df587[m
[1mdeleted file mode 100644[m
[1mindex 5ee2ad8..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/be/bed68101b3e9048bfacda149113df587 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/be/bed68101b3e9048bfacda149113df587.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/be/bed68101b3e9048bfacda149113df587.info[m
[1mdeleted file mode 100644[m
[1mindex e6c88f6..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/be/bed68101b3e9048bfacda149113df587.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/be/bed92227cac930048bc7579ac2de95db b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/be/bed92227cac930048bc7579ac2de95db[m
[1mdeleted file mode 100644[m
[1mindex 7c71565..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/be/bed92227cac930048bc7579ac2de95db and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/be/bed92227cac930048bc7579ac2de95db.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/be/bed92227cac930048bc7579ac2de95db.info[m
[1mdeleted file mode 100644[m
[1mindex ff19057..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/be/bed92227cac930048bc7579ac2de95db.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bf/bfac5ee53492b4944baef1bf6178c53d b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bf/bfac5ee53492b4944baef1bf6178c53d[m
[1mdeleted file mode 100644[m
[1mindex 59fc950..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bf/bfac5ee53492b4944baef1bf6178c53d and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bf/bfac5ee53492b4944baef1bf6178c53d.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bf/bfac5ee53492b4944baef1bf6178c53d.info[m
[1mdeleted file mode 100644[m
[1mindex 18c9ec1..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bf/bfac5ee53492b4944baef1bf6178c53d.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bf/bffef5fb59d3549baab73d9688dd4bb6 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bf/bffef5fb59d3549baab73d9688dd4bb6[m
[1mdeleted file mode 100644[m
[1mindex 730493d..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bf/bffef5fb59d3549baab73d9688dd4bb6 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bf/bffef5fb59d3549baab73d9688dd4bb6.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bf/bffef5fb59d3549baab73d9688dd4bb6.info[m
[1mdeleted file mode 100644[m
[1mindex e840874..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/bf/bffef5fb59d3549baab73d9688dd4bb6.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c0/c0579e369e72a4404a2516cb05f3e37c b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c0/c0579e369e72a4404a2516cb05f3e37c[m
[1mdeleted file mode 100644[m
[1mindex 2818352..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c0/c0579e369e72a4404a2516cb05f3e37c and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c0/c0579e369e72a4404a2516cb05f3e37c.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c0/c0579e369e72a4404a2516cb05f3e37c.info[m
[1mdeleted file mode 100644[m
[1mindex 7bf8a96..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c0/c0579e369e72a4404a2516cb05f3e37c.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c4/c4da1a7ba2cb6442fbead77fe8419bde b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c4/c4da1a7ba2cb6442fbead77fe8419bde[m
[1mdeleted file mode 100644[m
[1mindex e28c081..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c4/c4da1a7ba2cb6442fbead77fe8419bde and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c4/c4da1a7ba2cb6442fbead77fe8419bde.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c4/c4da1a7ba2cb6442fbead77fe8419bde.info[m
[1mdeleted file mode 100644[m
[1mindex 6884273..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c4/c4da1a7ba2cb6442fbead77fe8419bde.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c6/c64377a04949c4c6da24968f1d0b5ffa b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c6/c64377a04949c4c6da24968f1d0b5ffa[m
[1mdeleted file mode 100644[m
[1mindex 0abc15c..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c6/c64377a04949c4c6da24968f1d0b5ffa and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c6/c64377a04949c4c6da24968f1d0b5ffa.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c6/c64377a04949c4c6da24968f1d0b5ffa.info[m
[1mdeleted file mode 100644[m
[1mindex f6655e3..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c6/c64377a04949c4c6da24968f1d0b5ffa.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c6/c65ebf1ce1106594f8d1908cd238bd1c b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c6/c65ebf1ce1106594f8d1908cd238bd1c[m
[1mindex 16c4b4e..69157b8 100644[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c6/c65ebf1ce1106594f8d1908cd238bd1c and b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c6/c65ebf1ce1106594f8d1908cd238bd1c differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c7/c7004c32f8c9749e6b27762bf2f0a937 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c7/c7004c32f8c9749e6b27762bf2f0a937[m
[1mdeleted file mode 100644[m
[1mindex 67b16d7..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c7/c7004c32f8c9749e6b27762bf2f0a937 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c7/c7004c32f8c9749e6b27762bf2f0a937.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c7/c7004c32f8c9749e6b27762bf2f0a937.info[m
[1mdeleted file mode 100644[m
[1mindex 0790654..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c7/c7004c32f8c9749e6b27762bf2f0a937.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c7/c7004c32f8c9749e6b27762bf2f0a937.resource b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c7/c7004c32f8c9749e6b27762bf2f0a937.resource[m
[1mdeleted file mode 100644[m
[1mindex 6917984..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c7/c7004c32f8c9749e6b27762bf2f0a937.resource and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c7/c774a10eecb854f39a57a9ac83586475 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c7/c774a10eecb854f39a57a9ac83586475[m
[1mdeleted file mode 100644[m
[1mindex 731933f..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c7/c774a10eecb854f39a57a9ac83586475 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c7/c774a10eecb854f39a57a9ac83586475.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c7/c774a10eecb854f39a57a9ac83586475.info[m
[1mdeleted file mode 100644[m
[1mindex b15f0d7..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c7/c774a10eecb854f39a57a9ac83586475.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c7/c7c83b74e3d954af794586bc22ea5ed4 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c7/c7c83b74e3d954af794586bc22ea5ed4[m
[1mdeleted file mode 100644[m
[1mindex 4a43468..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c7/c7c83b74e3d954af794586bc22ea5ed4 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c7/c7c83b74e3d954af794586bc22ea5ed4.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c7/c7c83b74e3d954af794586bc22ea5ed4.info[m
[1mdeleted file mode 100644[m
[1mindex 8db1e69..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c7/c7c83b74e3d954af794586bc22ea5ed4.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c9/c909559c803e14dae8f6e3da9912f6f1 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c9/c909559c803e14dae8f6e3da9912f6f1[m
[1mdeleted file mode 100644[m
[1mindex ae490ec..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c9/c909559c803e14dae8f6e3da9912f6f1 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c9/c909559c803e14dae8f6e3da9912f6f1.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c9/c909559c803e14dae8f6e3da9912f6f1.info[m
[1mdeleted file mode 100644[m
[1mindex 7089d1b..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/c9/c909559c803e14dae8f6e3da9912f6f1.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ca/ca865030869bd4a1696cca3206f2bb99 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ca/ca865030869bd4a1696cca3206f2bb99[m
[1mdeleted file mode 100644[m
[1mindex 0e9224d..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ca/ca865030869bd4a1696cca3206f2bb99 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ca/ca865030869bd4a1696cca3206f2bb99.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ca/ca865030869bd4a1696cca3206f2bb99.info[m
[1mdeleted file mode 100644[m
[1mindex f8d477f..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ca/ca865030869bd4a1696cca3206f2bb99.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ca/cab65d08b31e34d79a396b5116ed5801 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ca/cab65d08b31e34d79a396b5116ed5801[m
[1mdeleted file mode 100644[m
[1mindex 9b10ac6..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ca/cab65d08b31e34d79a396b5116ed5801 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ca/cab65d08b31e34d79a396b5116ed5801.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ca/cab65d08b31e34d79a396b5116ed5801.info[m
[1mdeleted file mode 100644[m
[1mindex fd348a0..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ca/cab65d08b31e34d79a396b5116ed5801.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ca/caf006f3ce6e64aac8f2c59ae21996b0 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ca/caf006f3ce6e64aac8f2c59ae21996b0[m
[1mdeleted file mode 100644[m
[1mindex 39edc68..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ca/caf006f3ce6e64aac8f2c59ae21996b0 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ca/caf006f3ce6e64aac8f2c59ae21996b0.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ca/caf006f3ce6e64aac8f2c59ae21996b0.info[m
[1mdeleted file mode 100644[m
[1mindex 10818ae..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ca/caf006f3ce6e64aac8f2c59ae21996b0.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cb/cbf7c9fa304824746bf72541ec1bcb87 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cb/cbf7c9fa304824746bf72541ec1bcb87[m
[1mdeleted file mode 100644[m
[1mindex 68f33f5..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cb/cbf7c9fa304824746bf72541ec1bcb87 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cb/cbf7c9fa304824746bf72541ec1bcb87.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cb/cbf7c9fa304824746bf72541ec1bcb87.info[m
[1mdeleted file mode 100644[m
[1mindex 1d059c7..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cb/cbf7c9fa304824746bf72541ec1bcb87.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cc/cc139a2562c954d24906ff0ac4cf9bb5 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cc/cc139a2562c954d24906ff0ac4cf9bb5[m
[1mdeleted file mode 100644[m
[1mindex 6b994de..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cc/cc139a2562c954d24906ff0ac4cf9bb5 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cc/cc139a2562c954d24906ff0ac4cf9bb5.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cc/cc139a2562c954d24906ff0ac4cf9bb5.info[m
[1mdeleted file mode 100644[m
[1mindex 9e434aa..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cc/cc139a2562c954d24906ff0ac4cf9bb5.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cc/ccd5a85cae651466db9c220e9b586a07 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cc/ccd5a85cae651466db9c220e9b586a07[m
[1mdeleted file mode 100644[m
[1mindex 177e507..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cc/ccd5a85cae651466db9c220e9b586a07 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cc/ccd5a85cae651466db9c220e9b586a07.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cc/ccd5a85cae651466db9c220e9b586a07.info[m
[1mdeleted file mode 100644[m
[1mindex feaecff..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cc/ccd5a85cae651466db9c220e9b586a07.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cc/ccdb82a60139e4565b17566ae1227c07 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cc/ccdb82a60139e4565b17566ae1227c07[m
[1mdeleted file mode 100644[m
[1mindex 1250501..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cc/ccdb82a60139e4565b17566ae1227c07 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cc/ccdb82a60139e4565b17566ae1227c07.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cc/ccdb82a60139e4565b17566ae1227c07.info[m
[1mdeleted file mode 100644[m
[1mindex 433b254..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cc/ccdb82a60139e4565b17566ae1227c07.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cd/cd04cddf0fe5a417790edee854833ada b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cd/cd04cddf0fe5a417790edee854833ada[m
[1mdeleted file mode 100644[m
[1mindex ba48027..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cd/cd04cddf0fe5a417790edee854833ada and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cd/cd04cddf0fe5a417790edee854833ada.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cd/cd04cddf0fe5a417790edee854833ada.info[m
[1mdeleted file mode 100644[m
[1mindex fa16b83..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cd/cd04cddf0fe5a417790edee854833ada.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cd/cd0a0fc442785437f9f4fdd9732d3a9e b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cd/cd0a0fc442785437f9f4fdd9732d3a9e[m
[1mdeleted file mode 100644[m
[1mindex 0753bcf..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cd/cd0a0fc442785437f9f4fdd9732d3a9e and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cd/cd0a0fc442785437f9f4fdd9732d3a9e.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cd/cd0a0fc442785437f9f4fdd9732d3a9e.info[m
[1mdeleted file mode 100644[m
[1mindex 8ec1d06..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cd/cd0a0fc442785437f9f4fdd9732d3a9e.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cd/cd3ca65ff68044eba9e1db189934b860 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cd/cd3ca65ff68044eba9e1db189934b860[m
[1mdeleted file mode 100644[m
[1mindex d6f1f2e..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cd/cd3ca65ff68044eba9e1db189934b860 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cd/cd3ca65ff68044eba9e1db189934b860.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cd/cd3ca65ff68044eba9e1db189934b860.info[m
[1mdeleted file mode 100644[m
[1mindex 29fc222..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cd/cd3ca65ff68044eba9e1db189934b860.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cd/cd4b23e2286794934ba039b924cc27ed b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cd/cd4b23e2286794934ba039b924cc27ed[m
[1mdeleted file mode 100644[m
[1mindex f2ed210..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cd/cd4b23e2286794934ba039b924cc27ed and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cd/cd4b23e2286794934ba039b924cc27ed.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cd/cd4b23e2286794934ba039b924cc27ed.info[m
[1mdeleted file mode 100644[m
[1mindex a2b71b0..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cd/cd4b23e2286794934ba039b924cc27ed.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ce/ce13601f6df2746f4b3531cce310b907 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ce/ce13601f6df2746f4b3531cce310b907[m
[1mdeleted file mode 100644[m
[1mindex 1605e8b..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ce/ce13601f6df2746f4b3531cce310b907 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ce/ce13601f6df2746f4b3531cce310b907.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ce/ce13601f6df2746f4b3531cce310b907.info[m
[1mdeleted file mode 100644[m
[1mindex 3249a11..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ce/ce13601f6df2746f4b3531cce310b907.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ce/ce13601f6df2746f4b3531cce310b907.resource b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ce/ce13601f6df2746f4b3531cce310b907.resource[m
[1mdeleted file mode 100644[m
[1mindex 768b375..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ce/ce13601f6df2746f4b3531cce310b907.resource and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ce/ce953dbfe9c84456aa8c11dae1103f5d b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ce/ce953dbfe9c84456aa8c11dae1103f5d[m
[1mdeleted file mode 100644[m
[1mindex 9d93f8a..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ce/ce953dbfe9c84456aa8c11dae1103f5d and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ce/ce953dbfe9c84456aa8c11dae1103f5d.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ce/ce953dbfe9c84456aa8c11dae1103f5d.info[m
[1mdeleted file mode 100644[m
[1mindex 153c477..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ce/ce953dbfe9c84456aa8c11dae1103f5d.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cf/cf4623a303e864cc3ab19aa1233b1d18 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cf/cf4623a303e864cc3ab19aa1233b1d18[m
[1mdeleted file mode 100644[m
[1mindex 23ddba0..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cf/cf4623a303e864cc3ab19aa1233b1d18 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cf/cf4623a303e864cc3ab19aa1233b1d18.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cf/cf4623a303e864cc3ab19aa1233b1d18.info[m
[1mdeleted file mode 100644[m
[1mindex 3bab261..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cf/cf4623a303e864cc3ab19aa1233b1d18.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cf/cfbad2aeba16b4edba4a6d1ed645b632 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cf/cfbad2aeba16b4edba4a6d1ed645b632[m
[1mdeleted file mode 100644[m
[1mindex 80e66eb..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cf/cfbad2aeba16b4edba4a6d1ed645b632 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cf/cfbad2aeba16b4edba4a6d1ed645b632.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cf/cfbad2aeba16b4edba4a6d1ed645b632.info[m
[1mdeleted file mode 100644[m
[1mindex 141af36..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cf/cfbad2aeba16b4edba4a6d1ed645b632.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cf/cfeb225c84adc43d08fbbe0f3236698c b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cf/cfeb225c84adc43d08fbbe0f3236698c[m
[1mdeleted file mode 100644[m
[1mindex 2da7b52..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cf/cfeb225c84adc43d08fbbe0f3236698c and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cf/cfeb225c84adc43d08fbbe0f3236698c.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cf/cfeb225c84adc43d08fbbe0f3236698c.info[m
[1mdeleted file mode 100644[m
[1mindex ebc4ed0..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/cf/cfeb225c84adc43d08fbbe0f3236698c.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d0/d0bcff4b1e3ef4d09a1c598f68534e0f b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d0/d0bcff4b1e3ef4d09a1c598f68534e0f[m
[1mdeleted file mode 100644[m
[1mindex 3d04989..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d0/d0bcff4b1e3ef4d09a1c598f68534e0f and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d0/d0bcff4b1e3ef4d09a1c598f68534e0f.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d0/d0bcff4b1e3ef4d09a1c598f68534e0f.info[m
[1mdeleted file mode 100644[m
[1mindex 363260b..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d0/d0bcff4b1e3ef4d09a1c598f68534e0f.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d1/d17199c49cb904895b197f9346727eeb b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d1/d17199c49cb904895b197f9346727eeb[m
[1mdeleted file mode 100644[m
[1mindex 5caebc2..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d1/d17199c49cb904895b197f9346727eeb and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d1/d17199c49cb904895b197f9346727eeb.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d1/d17199c49cb904895b197f9346727eeb.info[m
[1mdeleted file mode 100644[m
[1mindex a3c309a..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d1/d17199c49cb904895b197f9346727eeb.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d1/d196dcfce29f242e9bf4b594f5a42c17 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d1/d196dcfce29f242e9bf4b594f5a42c17[m
[1mdeleted file mode 100644[m
[1mindex c27269b..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d1/d196dcfce29f242e9bf4b594f5a42c17 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d1/d196dcfce29f242e9bf4b594f5a42c17.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d1/d196dcfce29f242e9bf4b594f5a42c17.info[m
[1mdeleted file mode 100644[m
[1mindex 791539a..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d1/d196dcfce29f242e9bf4b594f5a42c17.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d1/d1c746b40596f4313ac4589259a1186d b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d1/d1c746b40596f4313ac4589259a1186d[m
[1mdeleted file mode 100644[m
[1mindex be3757c..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d1/d1c746b40596f4313ac4589259a1186d and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d1/d1c746b40596f4313ac4589259a1186d.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d1/d1c746b40596f4313ac4589259a1186d.info[m
[1mdeleted file mode 100644[m
[1mindex 23cf7f7..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d1/d1c746b40596f4313ac4589259a1186d.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d3/d386fc60b96cd453f9a216cb9d0ede4c b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d3/d386fc60b96cd453f9a216cb9d0ede4c[m
[1mdeleted file mode 100644[m
[1mindex ebd7c76..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d3/d386fc60b96cd453f9a216cb9d0ede4c and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d3/d386fc60b96cd453f9a216cb9d0ede4c.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d3/d386fc60b96cd453f9a216cb9d0ede4c.info[m
[1mdeleted file mode 100644[m
[1mindex 14d6916..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d3/d386fc60b96cd453f9a216cb9d0ede4c.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d4/d47008f0787894ff3b200c27b9c487a9 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d4/d47008f0787894ff3b200c27b9c487a9[m
[1mdeleted file mode 100644[m
[1mindex 9899e3c..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d4/d47008f0787894ff3b200c27b9c487a9 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d4/d47008f0787894ff3b200c27b9c487a9.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d4/d47008f0787894ff3b200c27b9c487a9.info[m
[1mdeleted file mode 100644[m
[1mindex 384f463..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d4/d47008f0787894ff3b200c27b9c487a9.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d5/d5248097500754216ae25f6027aad1ab b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d5/d5248097500754216ae25f6027aad1ab[m
[1mdeleted file mode 100644[m
[1mindex 254ef59..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d5/d5248097500754216ae25f6027aad1ab and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d5/d5248097500754216ae25f6027aad1ab.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d5/d5248097500754216ae25f6027aad1ab.info[m
[1mdeleted file mode 100644[m
[1mindex 8b9aa87..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d5/d5248097500754216ae25f6027aad1ab.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d5/d53bd3588b8464d2bb54abc1a9a0c5ed b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d5/d53bd3588b8464d2bb54abc1a9a0c5ed[m
[1mdeleted file mode 100644[m
[1mindex 6124e21..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d5/d53bd3588b8464d2bb54abc1a9a0c5ed and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d5/d53bd3588b8464d2bb54abc1a9a0c5ed.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d5/d53bd3588b8464d2bb54abc1a9a0c5ed.info[m
[1mdeleted file mode 100644[m
[1mindex d781640..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d5/d53bd3588b8464d2bb54abc1a9a0c5ed.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d5/d5b8563c18c2649508db5596698038c6 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d5/d5b8563c18c2649508db5596698038c6[m
[1mdeleted file mode 100644[m
[1mindex ad4f7bd..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d5/d5b8563c18c2649508db5596698038c6 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d5/d5b8563c18c2649508db5596698038c6.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d5/d5b8563c18c2649508db5596698038c6.info[m
[1mdeleted file mode 100644[m
[1mindex 4c79df5..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d5/d5b8563c18c2649508db5596698038c6.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d5/d5cd3c970c7b144208ce8f7ab64a8f4f b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d5/d5cd3c970c7b144208ce8f7ab64a8f4f[m
[1mdeleted file mode 100644[m
[1mindex 1292add..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d5/d5cd3c970c7b144208ce8f7ab64a8f4f and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d5/d5cd3c970c7b144208ce8f7ab64a8f4f.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d5/d5cd3c970c7b144208ce8f7ab64a8f4f.info[m
[1mdeleted file mode 100644[m
[1mindex 56464f6..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d5/d5cd3c970c7b144208ce8f7ab64a8f4f.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d5/d5ceb9bdb6b02494aaaa6510e731d499 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d5/d5ceb9bdb6b02494aaaa6510e731d499[m
[1mdeleted file mode 100644[m
[1mindex e015c8a..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d5/d5ceb9bdb6b02494aaaa6510e731d499 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d5/d5ceb9bdb6b02494aaaa6510e731d499.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d5/d5ceb9bdb6b02494aaaa6510e731d499.info[m
[1mdeleted file mode 100644[m
[1mindex 554151e..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d5/d5ceb9bdb6b02494aaaa6510e731d499.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d6/d60e6dd28abe58344a6e3a8e86152fb5 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d6/d60e6dd28abe58344a6e3a8e86152fb5[m
[1mindex b9b50e1..212b24a 100644[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d6/d60e6dd28abe58344a6e3a8e86152fb5 and b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d6/d60e6dd28abe58344a6e3a8e86152fb5 differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d6/d60e6dd28abe58344a6e3a8e86152fb5.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d6/d60e6dd28abe58344a6e3a8e86152fb5.info[m
[1mindex 05dfe39..c9236dc 100644[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d6/d60e6dd28abe58344a6e3a8e86152fb5.info and b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d6/d60e6dd28abe58344a6e3a8e86152fb5.info differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d8/d845f226bc25c44838c4e32cd2a40445 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d8/d845f226bc25c44838c4e32cd2a40445[m
[1mdeleted file mode 100644[m
[1mindex a56eb01..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d8/d845f226bc25c44838c4e32cd2a40445 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d8/d845f226bc25c44838c4e32cd2a40445.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d8/d845f226bc25c44838c4e32cd2a40445.info[m
[1mdeleted file mode 100644[m
[1mindex 49b17a1..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d8/d845f226bc25c44838c4e32cd2a40445.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d8/d8c3a5d839e1848b58ac03cde1930ae5 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d8/d8c3a5d839e1848b58ac03cde1930ae5[m
[1mdeleted file mode 100644[m
[1mindex 0c089b4..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d8/d8c3a5d839e1848b58ac03cde1930ae5 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d8/d8c3a5d839e1848b58ac03cde1930ae5.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d8/d8c3a5d839e1848b58ac03cde1930ae5.info[m
[1mdeleted file mode 100644[m
[1mindex 4b26356..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d8/d8c3a5d839e1848b58ac03cde1930ae5.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d8/d8f90fab57c2747429dcfb880544f1cb b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d8/d8f90fab57c2747429dcfb880544f1cb[m
[1mdeleted file mode 100644[m
[1mindex fac6399..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d8/d8f90fab57c2747429dcfb880544f1cb and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d8/d8f90fab57c2747429dcfb880544f1cb.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d8/d8f90fab57c2747429dcfb880544f1cb.info[m
[1mdeleted file mode 100644[m
[1mindex 40c6bcb..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/d8/d8f90fab57c2747429dcfb880544f1cb.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/da/da508560c61dc4ca49175b790d8e043c b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/da/da508560c61dc4ca49175b790d8e043c[m
[1mdeleted file mode 100644[m
[1mindex c1ecc3e..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/da/da508560c61dc4ca49175b790d8e043c and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/da/da508560c61dc4ca49175b790d8e043c.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/da/da508560c61dc4ca49175b790d8e043c.info[m
[1mdeleted file mode 100644[m
[1mindex 78d6c83..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/da/da508560c61dc4ca49175b790d8e043c.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/da/dadef893490b74c33b62fca6730e1673 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/da/dadef893490b74c33b62fca6730e1673[m
[1mdeleted file mode 100644[m
[1mindex 93fe86a..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/da/dadef893490b74c33b62fca6730e1673 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/da/dadef893490b74c33b62fca6730e1673.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/da/dadef893490b74c33b62fca6730e1673.info[m
[1mdeleted file mode 100644[m
[1mindex e492152..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/da/dadef893490b74c33b62fca6730e1673.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/de/de63ae56d64fb42b5a79a2b1a088b49b b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/de/de63ae56d64fb42b5a79a2b1a088b49b[m
[1mdeleted file mode 100644[m
[1mindex 99daf57..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/de/de63ae56d64fb42b5a79a2b1a088b49b and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/de/de63ae56d64fb42b5a79a2b1a088b49b.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/de/de63ae56d64fb42b5a79a2b1a088b49b.info[m
[1mdeleted file mode 100644[m
[1mindex c33c31f..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/de/de63ae56d64fb42b5a79a2b1a088b49b.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/de/def1f35516b6b4e498bc5f1a35513c35 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/de/def1f35516b6b4e498bc5f1a35513c35[m
[1mdeleted file mode 100644[m
[1mindex cbf9205..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/de/def1f35516b6b4e498bc5f1a35513c35 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/de/def1f35516b6b4e498bc5f1a35513c35.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/de/def1f35516b6b4e498bc5f1a35513c35.info[m
[1mdeleted file mode 100644[m
[1mindex 8bf631d..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/de/def1f35516b6b4e498bc5f1a35513c35.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/df/df41ecfc9e2c144deb7b69f6eb6e2737 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/df/df41ecfc9e2c144deb7b69f6eb6e2737[m
[1mdeleted file mode 100644[m
[1mindex ed2b5da..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/df/df41ecfc9e2c144deb7b69f6eb6e2737 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/df/df41ecfc9e2c144deb7b69f6eb6e2737.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/df/df41ecfc9e2c144deb7b69f6eb6e2737.info[m
[1mdeleted file mode 100644[m
[1mindex 94726e9..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/df/df41ecfc9e2c144deb7b69f6eb6e2737.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/df/df9efc9247d5b4e65acae2f2fd70e75c b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/df/df9efc9247d5b4e65acae2f2fd70e75c[m
[1mdeleted file mode 100644[m
[1mindex 7f244b8..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/df/df9efc9247d5b4e65acae2f2fd70e75c and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/df/df9efc9247d5b4e65acae2f2fd70e75c.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/df/df9efc9247d5b4e65acae2f2fd70e75c.info[m
[1mdeleted file mode 100644[m
[1mindex c55aa2e..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/df/df9efc9247d5b4e65acae2f2fd70e75c.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e2/e28151369307d4d8ab08a9abf577c328 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e2/e28151369307d4d8ab08a9abf577c328[m
[1mdeleted file mode 100644[m
[1mindex 8211d17..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e2/e28151369307d4d8ab08a9abf577c328 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e2/e28151369307d4d8ab08a9abf577c328.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e2/e28151369307d4d8ab08a9abf577c328.info[m
[1mdeleted file mode 100644[m
[1mindex 953ae86..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e2/e28151369307d4d8ab08a9abf577c328.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e3/e350f5b77fece4ae3869edd65f8ec7c0 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e3/e350f5b77fece4ae3869edd65f8ec7c0[m
[1mdeleted file mode 100644[m
[1mindex 119bb7f..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e3/e350f5b77fece4ae3869edd65f8ec7c0 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e3/e350f5b77fece4ae3869edd65f8ec7c0.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e3/e350f5b77fece4ae3869edd65f8ec7c0.info[m
[1mdeleted file mode 100644[m
[1mindex fefa6b1..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e3/e350f5b77fece4ae3869edd65f8ec7c0.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e3/e37dcb84d92724f2eb1c9b578f6a782d b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e3/e37dcb84d92724f2eb1c9b578f6a782d[m
[1mdeleted file mode 100644[m
[1mindex 0f7a951..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e3/e37dcb84d92724f2eb1c9b578f6a782d and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e3/e37dcb84d92724f2eb1c9b578f6a782d.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e3/e37dcb84d92724f2eb1c9b578f6a782d.info[m
[1mdeleted file mode 100644[m
[1mindex 040008e..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e3/e37dcb84d92724f2eb1c9b578f6a782d.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e3/e3a20a4d089a40a4394e1c00f23db049 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e3/e3a20a4d089a40a4394e1c00f23db049[m
[1mindex dc8df8b..8dfcd98 100644[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e3/e3a20a4d089a40a4394e1c00f23db049 and b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e3/e3a20a4d089a40a4394e1c00f23db049 differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e3/e3a20a4d089a40a4394e1c00f23db049.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e3/e3a20a4d089a40a4394e1c00f23db049.info[m
[1mindex 4a09ee3..75c2db2 100644[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e3/e3a20a4d089a40a4394e1c00f23db049.info and b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e3/e3a20a4d089a40a4394e1c00f23db049.info differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e7/e72c70c5c2a0444f18bb241a77f5928b b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e7/e72c70c5c2a0444f18bb241a77f5928b[m
[1mdeleted file mode 100644[m
[1mindex 7675b42..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e7/e72c70c5c2a0444f18bb241a77f5928b and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e7/e72c70c5c2a0444f18bb241a77f5928b.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e7/e72c70c5c2a0444f18bb241a77f5928b.info[m
[1mdeleted file mode 100644[m
[1mindex e1f4157..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e7/e72c70c5c2a0444f18bb241a77f5928b.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e7/e73a675d485184a0599a11dbfa18f1af b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e7/e73a675d485184a0599a11dbfa18f1af[m
[1mdeleted file mode 100644[m
[1mindex 67c33e6..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e7/e73a675d485184a0599a11dbfa18f1af and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e7/e73a675d485184a0599a11dbfa18f1af.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e7/e73a675d485184a0599a11dbfa18f1af.info[m
[1mdeleted file mode 100644[m
[1mindex 2210d47..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e7/e73a675d485184a0599a11dbfa18f1af.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e8/e8a95b1b51fb546ec94907bc78b402b2 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e8/e8a95b1b51fb546ec94907bc78b402b2[m
[1mdeleted file mode 100644[m
[1mindex 5605216..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e8/e8a95b1b51fb546ec94907bc78b402b2 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e8/e8a95b1b51fb546ec94907bc78b402b2.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e8/e8a95b1b51fb546ec94907bc78b402b2.info[m
[1mdeleted file mode 100644[m
[1mindex 2b6ff07..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e8/e8a95b1b51fb546ec94907bc78b402b2.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e9/e9309add96ec94973939067b99d8dbdc b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e9/e9309add96ec94973939067b99d8dbdc[m
[1mdeleted file mode 100644[m
[1mindex 1c7248b..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e9/e9309add96ec94973939067b99d8dbdc and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e9/e9309add96ec94973939067b99d8dbdc.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e9/e9309add96ec94973939067b99d8dbdc.info[m
[1mdeleted file mode 100644[m
[1mindex 3f0af73..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e9/e9309add96ec94973939067b99d8dbdc.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e9/e9d30e4da61694fb7a28143f82dd677a b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e9/e9d30e4da61694fb7a28143f82dd677a[m
[1mdeleted file mode 100644[m
[1mindex 79c9500..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e9/e9d30e4da61694fb7a28143f82dd677a and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e9/e9d30e4da61694fb7a28143f82dd677a.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e9/e9d30e4da61694fb7a28143f82dd677a.info[m
[1mdeleted file mode 100644[m
[1mindex 790a511..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/e9/e9d30e4da61694fb7a28143f82dd677a.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ea/ea522b918cbba7d45bc0d827029a1e4c b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ea/ea522b918cbba7d45bc0d827029a1e4c[m
[1mindex 10e7d33..d458e12 100644[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ea/ea522b918cbba7d45bc0d827029a1e4c and b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ea/ea522b918cbba7d45bc0d827029a1e4c differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ea/ea522b918cbba7d45bc0d827029a1e4c.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ea/ea522b918cbba7d45bc0d827029a1e4c.info[m
[1mindex 3600e2f..c274207 100644[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ea/ea522b918cbba7d45bc0d827029a1e4c.info and b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ea/ea522b918cbba7d45bc0d827029a1e4c.info differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ec/ec277270098ec4f2f9e4a175b7afe541 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ec/ec277270098ec4f2f9e4a175b7afe541[m
[1mdeleted file mode 100644[m
[1mindex 896cb74..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ec/ec277270098ec4f2f9e4a175b7afe541 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ec/ec277270098ec4f2f9e4a175b7afe541.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ec/ec277270098ec4f2f9e4a175b7afe541.info[m
[1mdeleted file mode 100644[m
[1mindex 052f554..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ec/ec277270098ec4f2f9e4a175b7afe541.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ed/edbb8aed09608471299aa5b3c9494bf8 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ed/edbb8aed09608471299aa5b3c9494bf8[m
[1mdeleted file mode 100644[m
[1mindex 0036699..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ed/edbb8aed09608471299aa5b3c9494bf8 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ed/edbb8aed09608471299aa5b3c9494bf8.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ed/edbb8aed09608471299aa5b3c9494bf8.info[m
[1mdeleted file mode 100644[m
[1mindex 5a7fd69..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ed/edbb8aed09608471299aa5b3c9494bf8.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ee/eec39e60bfb55401eb065a7646ae4fec b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ee/eec39e60bfb55401eb065a7646ae4fec[m
[1mdeleted file mode 100644[m
[1mindex fa481ca..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ee/eec39e60bfb55401eb065a7646ae4fec and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ee/eec39e60bfb55401eb065a7646ae4fec.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ee/eec39e60bfb55401eb065a7646ae4fec.info[m
[1mdeleted file mode 100644[m
[1mindex 6a32b87..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ee/eec39e60bfb55401eb065a7646ae4fec.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ef/ef996067dc13b4d74944a35460142bd5 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ef/ef996067dc13b4d74944a35460142bd5[m
[1mdeleted file mode 100644[m
[1mindex 2778660..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ef/ef996067dc13b4d74944a35460142bd5 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ef/ef996067dc13b4d74944a35460142bd5.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ef/ef996067dc13b4d74944a35460142bd5.info[m
[1mdeleted file mode 100644[m
[1mindex 07993c6..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ef/ef996067dc13b4d74944a35460142bd5.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f0/f01cb365286e4437492915c3d82d36ec b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f0/f01cb365286e4437492915c3d82d36ec[m
[1mdeleted file mode 100644[m
[1mindex a2e0ccb..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f0/f01cb365286e4437492915c3d82d36ec and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f0/f01cb365286e4437492915c3d82d36ec.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f0/f01cb365286e4437492915c3d82d36ec.info[m
[1mdeleted file mode 100644[m
[1mindex 6f0b94e..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f0/f01cb365286e4437492915c3d82d36ec.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f0/f09e7edbd474d48ce8f5cfd56894b48a b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f0/f09e7edbd474d48ce8f5cfd56894b48a[m
[1mdeleted file mode 100644[m
[1mindex 737dbdc..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f0/f09e7edbd474d48ce8f5cfd56894b48a and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f0/f09e7edbd474d48ce8f5cfd56894b48a.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f0/f09e7edbd474d48ce8f5cfd56894b48a.info[m
[1mdeleted file mode 100644[m
[1mindex 4d691e4..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f0/f09e7edbd474d48ce8f5cfd56894b48a.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f1/f103f70e4727447ef873fef8c4844263 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f1/f103f70e4727447ef873fef8c4844263[m
[1mdeleted file mode 100644[m
[1mindex 3586264..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f1/f103f70e4727447ef873fef8c4844263 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f1/f103f70e4727447ef873fef8c4844263.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f1/f103f70e4727447ef873fef8c4844263.info[m
[1mdeleted file mode 100644[m
[1mindex 97911df..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f1/f103f70e4727447ef873fef8c4844263.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f1/f120b1c37146f4cc596e6b1577d69042 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f1/f120b1c37146f4cc596e6b1577d69042[m
[1mdeleted file mode 100644[m
[1mindex a2d1721..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f1/f120b1c37146f4cc596e6b1577d69042 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f1/f120b1c37146f4cc596e6b1577d69042.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f1/f120b1c37146f4cc596e6b1577d69042.info[m
[1mdeleted file mode 100644[m
[1mindex b1e7e55..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f1/f120b1c37146f4cc596e6b1577d69042.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f1/f13e760f1d9824428b10b32dd56d73d7 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f1/f13e760f1d9824428b10b32dd56d73d7[m
[1mdeleted file mode 100644[m
[1mindex 0a3db75..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f1/f13e760f1d9824428b10b32dd56d73d7 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f1/f13e760f1d9824428b10b32dd56d73d7.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f1/f13e760f1d9824428b10b32dd56d73d7.info[m
[1mdeleted file mode 100644[m
[1mindex 806e60f..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f1/f13e760f1d9824428b10b32dd56d73d7.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f1/f1d5ade6fe11242f7b2d0758978c34e3 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f1/f1d5ade6fe11242f7b2d0758978c34e3[m
[1mdeleted file mode 100644[m
[1mindex 725ebcd..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f1/f1d5ade6fe11242f7b2d0758978c34e3 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f1/f1d5ade6fe11242f7b2d0758978c34e3.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f1/f1d5ade6fe11242f7b2d0758978c34e3.info[m
[1mdeleted file mode 100644[m
[1mindex fab2325..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f1/f1d5ade6fe11242f7b2d0758978c34e3.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f2/f2cd0056f16f0d3469fda6e9bacf013b b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f2/f2cd0056f16f0d3469fda6e9bacf013b[m
[1mdeleted file mode 100644[m
[1mindex e796b43..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f2/f2cd0056f16f0d3469fda6e9bacf013b and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f2/f2cd0056f16f0d3469fda6e9bacf013b.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f2/f2cd0056f16f0d3469fda6e9bacf013b.info[m
[1mdeleted file mode 100644[m
[1mindex 1e206ec..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f2/f2cd0056f16f0d3469fda6e9bacf013b.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f4/f4604a0218c074ba592f22807855a43b b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f4/f4604a0218c074ba592f22807855a43b[m
[1mdeleted file mode 100644[m
[1mindex 02e5b88..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f4/f4604a0218c074ba592f22807855a43b and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f4/f4604a0218c074ba592f22807855a43b.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f4/f4604a0218c074ba592f22807855a43b.info[m
[1mdeleted file mode 100644[m
[1mindex 964b665..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f4/f4604a0218c074ba592f22807855a43b.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f4/f460a852e9a5446bdaf4698f78915212 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f4/f460a852e9a5446bdaf4698f78915212[m
[1mdeleted file mode 100644[m
[1mindex a6120e3..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f4/f460a852e9a5446bdaf4698f78915212 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f4/f460a852e9a5446bdaf4698f78915212.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f4/f460a852e9a5446bdaf4698f78915212.info[m
[1mdeleted file mode 100644[m
[1mindex 27223d3..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f4/f460a852e9a5446bdaf4698f78915212.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f4/f4a2481fc4d914241a2877cb4eb3d1e4 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f4/f4a2481fc4d914241a2877cb4eb3d1e4[m
[1mdeleted file mode 100644[m
[1mindex 87983bb..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f4/f4a2481fc4d914241a2877cb4eb3d1e4 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f4/f4a2481fc4d914241a2877cb4eb3d1e4.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f4/f4a2481fc4d914241a2877cb4eb3d1e4.info[m
[1mdeleted file mode 100644[m
[1mindex f47b373..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f4/f4a2481fc4d914241a2877cb4eb3d1e4.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f5/f5bcce4b020224a7baec262214a0345c b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f5/f5bcce4b020224a7baec262214a0345c[m
[1mdeleted file mode 100644[m
[1mindex 292d3ae..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f5/f5bcce4b020224a7baec262214a0345c and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f5/f5bcce4b020224a7baec262214a0345c.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f5/f5bcce4b020224a7baec262214a0345c.info[m
[1mdeleted file mode 100644[m
[1mindex 9a1e56a..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f5/f5bcce4b020224a7baec262214a0345c.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f5/f5ee432daa069496a9255ec68e9308f6 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f5/f5ee432daa069496a9255ec68e9308f6[m
[1mdeleted file mode 100644[m
[1mindex f3fdbae..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f5/f5ee432daa069496a9255ec68e9308f6 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f5/f5ee432daa069496a9255ec68e9308f6.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f5/f5ee432daa069496a9255ec68e9308f6.info[m
[1mdeleted file mode 100644[m
[1mindex 158cc8e..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f5/f5ee432daa069496a9255ec68e9308f6.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f6/f6b139672a8194f43b0ce8634131f88d b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f6/f6b139672a8194f43b0ce8634131f88d[m
[1mdeleted file mode 100644[m
[1mindex d9e6975..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f6/f6b139672a8194f43b0ce8634131f88d and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f6/f6b139672a8194f43b0ce8634131f88d.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f6/f6b139672a8194f43b0ce8634131f88d.info[m
[1mdeleted file mode 100644[m
[1mindex 552a78d..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f6/f6b139672a8194f43b0ce8634131f88d.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f7/f79199b3d360a4735aa2de3c20ee64cc b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f7/f79199b3d360a4735aa2de3c20ee64cc[m
[1mdeleted file mode 100644[m
[1mindex c578421..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f7/f79199b3d360a4735aa2de3c20ee64cc and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f7/f79199b3d360a4735aa2de3c20ee64cc.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f7/f79199b3d360a4735aa2de3c20ee64cc.info[m
[1mdeleted file mode 100644[m
[1mindex 1c86884..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f7/f79199b3d360a4735aa2de3c20ee64cc.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f7/f791e490c7f064711a82812444c57c74 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f7/f791e490c7f064711a82812444c57c74[m
[1mdeleted file mode 100644[m
[1mindex ad05146..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f7/f791e490c7f064711a82812444c57c74 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f7/f791e490c7f064711a82812444c57c74.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f7/f791e490c7f064711a82812444c57c74.info[m
[1mdeleted file mode 100644[m
[1mindex 69cc9a2..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f7/f791e490c7f064711a82812444c57c74.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f7/f7a0847bf3f8e4425b49c768da263b60 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f7/f7a0847bf3f8e4425b49c768da263b60[m
[1mdeleted file mode 100644[m
[1mindex aae4e18..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f7/f7a0847bf3f8e4425b49c768da263b60 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f7/f7a0847bf3f8e4425b49c768da263b60.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f7/f7a0847bf3f8e4425b49c768da263b60.info[m
[1mdeleted file mode 100644[m
[1mindex dc49f1e..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f7/f7a0847bf3f8e4425b49c768da263b60.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f7/f7c3cbee7104f48f8bd51efc4df88b22 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f7/f7c3cbee7104f48f8bd51efc4df88b22[m
[1mdeleted file mode 100644[m
[1mindex 1c00eae..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f7/f7c3cbee7104f48f8bd51efc4df88b22 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f7/f7c3cbee7104f48f8bd51efc4df88b22.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f7/f7c3cbee7104f48f8bd51efc4df88b22.info[m
[1mdeleted file mode 100644[m
[1mindex 2cede28..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f7/f7c3cbee7104f48f8bd51efc4df88b22.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f8/f8285d075bf204c6eadd1d38c11f1443 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f8/f8285d075bf204c6eadd1d38c11f1443[m
[1mdeleted file mode 100644[m
[1mindex 59c3239..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f8/f8285d075bf204c6eadd1d38c11f1443 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f8/f8285d075bf204c6eadd1d38c11f1443.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f8/f8285d075bf204c6eadd1d38c11f1443.info[m
[1mdeleted file mode 100644[m
[1mindex 60edf76..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f8/f8285d075bf204c6eadd1d38c11f1443.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f8/f856c2fa813e549e3ae5ba9d63fa8ee5 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f8/f856c2fa813e549e3ae5ba9d63fa8ee5[m
[1mdeleted file mode 100644[m
[1mindex f70ec87..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f8/f856c2fa813e549e3ae5ba9d63fa8ee5 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f8/f856c2fa813e549e3ae5ba9d63fa8ee5.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f8/f856c2fa813e549e3ae5ba9d63fa8ee5.info[m
[1mdeleted file mode 100644[m
[1mindex b4d402e..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f8/f856c2fa813e549e3ae5ba9d63fa8ee5.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f8/f8b7d1c16c9b0d043b679598ed82d899 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f8/f8b7d1c16c9b0d043b679598ed82d899[m
[1mdeleted file mode 100644[m
[1mindex 3a68367..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f8/f8b7d1c16c9b0d043b679598ed82d899 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f8/f8b7d1c16c9b0d043b679598ed82d899.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f8/f8b7d1c16c9b0d043b679598ed82d899.info[m
[1mdeleted file mode 100644[m
[1mindex 18d4a2c..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f8/f8b7d1c16c9b0d043b679598ed82d899.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f9/f9017b88b23ec4565a5b44015a5d7578 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f9/f9017b88b23ec4565a5b44015a5d7578[m
[1mdeleted file mode 100644[m
[1mindex db18a5e..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f9/f9017b88b23ec4565a5b44015a5d7578 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f9/f9017b88b23ec4565a5b44015a5d7578.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f9/f9017b88b23ec4565a5b44015a5d7578.info[m
[1mdeleted file mode 100644[m
[1mindex 9934d6d..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f9/f9017b88b23ec4565a5b44015a5d7578.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f9/f93d5dc7bf461417b89309cd8dd66bfd b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f9/f93d5dc7bf461417b89309cd8dd66bfd[m
[1mdeleted file mode 100644[m
[1mindex 6d861cb..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f9/f93d5dc7bf461417b89309cd8dd66bfd and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f9/f93d5dc7bf461417b89309cd8dd66bfd.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f9/f93d5dc7bf461417b89309cd8dd66bfd.info[m
[1mdeleted file mode 100644[m
[1mindex 8600eb6..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/f9/f93d5dc7bf461417b89309cd8dd66bfd.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fa/fa0748495ec2b4922b34adc882ce548a b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fa/fa0748495ec2b4922b34adc882ce548a[m
[1mdeleted file mode 100644[m
[1mindex ce1c928..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fa/fa0748495ec2b4922b34adc882ce548a and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fa/fa0748495ec2b4922b34adc882ce548a.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fa/fa0748495ec2b4922b34adc882ce548a.info[m
[1mdeleted file mode 100644[m
[1mindex 5d008d1..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fa/fa0748495ec2b4922b34adc882ce548a.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fa/fa09087e8e8d04091ad92f8511c017df b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fa/fa09087e8e8d04091ad92f8511c017df[m
[1mdeleted file mode 100644[m
[1mindex 250b002..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fa/fa09087e8e8d04091ad92f8511c017df and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fa/fa09087e8e8d04091ad92f8511c017df.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fa/fa09087e8e8d04091ad92f8511c017df.info[m
[1mdeleted file mode 100644[m
[1mindex 2daf1d4..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fa/fa09087e8e8d04091ad92f8511c017df.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fa/fa0e36bff2b0944fba44979e72351799 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fa/fa0e36bff2b0944fba44979e72351799[m
[1mdeleted file mode 100644[m
[1mindex 1894a17..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fa/fa0e36bff2b0944fba44979e72351799 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fa/fa0e36bff2b0944fba44979e72351799.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fa/fa0e36bff2b0944fba44979e72351799.info[m
[1mdeleted file mode 100644[m
[1mindex cf798b2..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fa/fa0e36bff2b0944fba44979e72351799.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fa/fa80474d9dfc84e7a82bfa15fbdb54e3 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fa/fa80474d9dfc84e7a82bfa15fbdb54e3[m
[1mdeleted file mode 100644[m
[1mindex 94096c3..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fa/fa80474d9dfc84e7a82bfa15fbdb54e3 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fa/fa80474d9dfc84e7a82bfa15fbdb54e3.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fa/fa80474d9dfc84e7a82bfa15fbdb54e3.info[m
[1mdeleted file mode 100644[m
[1mindex 45f96a9..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fa/fa80474d9dfc84e7a82bfa15fbdb54e3.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fb/fb98e1c618f8449499c5bf1880a95a65 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fb/fb98e1c618f8449499c5bf1880a95a65[m
[1mdeleted file mode 100644[m
[1mindex b093d82..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fb/fb98e1c618f8449499c5bf1880a95a65 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fb/fb98e1c618f8449499c5bf1880a95a65.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fb/fb98e1c618f8449499c5bf1880a95a65.info[m
[1mdeleted file mode 100644[m
[1mindex 69dfc63..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fb/fb98e1c618f8449499c5bf1880a95a65.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fc/fc2b53bbe33dc4ecba99fe4d960e1dfe b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fc/fc2b53bbe33dc4ecba99fe4d960e1dfe[m
[1mdeleted file mode 100644[m
[1mindex b367fa3..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fc/fc2b53bbe33dc4ecba99fe4d960e1dfe and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fc/fc2b53bbe33dc4ecba99fe4d960e1dfe.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fc/fc2b53bbe33dc4ecba99fe4d960e1dfe.info[m
[1mdeleted file mode 100644[m
[1mindex aa3ed54..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fc/fc2b53bbe33dc4ecba99fe4d960e1dfe.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fc/fc618c2a4658c49aab37cfe5e8d72ad0 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fc/fc618c2a4658c49aab37cfe5e8d72ad0[m
[1mdeleted file mode 100644[m
[1mindex 62074ac..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fc/fc618c2a4658c49aab37cfe5e8d72ad0 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fc/fc618c2a4658c49aab37cfe5e8d72ad0.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fc/fc618c2a4658c49aab37cfe5e8d72ad0.info[m
[1mdeleted file mode 100644[m
[1mindex 9b085e6..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fc/fc618c2a4658c49aab37cfe5e8d72ad0.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fc/fcbd25a010a1a4a26b624e2a26b60e22 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fc/fcbd25a010a1a4a26b624e2a26b60e22[m
[1mdeleted file mode 100644[m
[1mindex 8cf14fa..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fc/fcbd25a010a1a4a26b624e2a26b60e22 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fc/fcbd25a010a1a4a26b624e2a26b60e22.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fc/fcbd25a010a1a4a26b624e2a26b60e22.info[m
[1mdeleted file mode 100644[m
[1mindex 9a8ac96..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fc/fcbd25a010a1a4a26b624e2a26b60e22.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fc/fce4a0a9722b7412e8bd497e06c59c54 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fc/fce4a0a9722b7412e8bd497e06c59c54[m
[1mdeleted file mode 100644[m
[1mindex c6ce355..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fc/fce4a0a9722b7412e8bd497e06c59c54 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fc/fce4a0a9722b7412e8bd497e06c59c54.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fc/fce4a0a9722b7412e8bd497e06c59c54.info[m
[1mdeleted file mode 100644[m
[1mindex 8515f26..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fc/fce4a0a9722b7412e8bd497e06c59c54.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fd/fd403a4e57cea48c2925b273b3427f7f b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fd/fd403a4e57cea48c2925b273b3427f7f[m
[1mdeleted file mode 100644[m
[1mindex 17f50d3..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fd/fd403a4e57cea48c2925b273b3427f7f and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fd/fd403a4e57cea48c2925b273b3427f7f.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fd/fd403a4e57cea48c2925b273b3427f7f.info[m
[1mdeleted file mode 100644[m
[1mindex 1b07163..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fd/fd403a4e57cea48c2925b273b3427f7f.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fd/fdf37088e4a3743e79b018e26c667fab b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fd/fdf37088e4a3743e79b018e26c667fab[m
[1mdeleted file mode 100644[m
[1mindex d3b448f..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fd/fdf37088e4a3743e79b018e26c667fab and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fd/fdf37088e4a3743e79b018e26c667fab.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fd/fdf37088e4a3743e79b018e26c667fab.info[m
[1mdeleted file mode 100644[m
[1mindex b83fb13..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fd/fdf37088e4a3743e79b018e26c667fab.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fe/fea8919bd85f44025b4cd9f686e34efe b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fe/fea8919bd85f44025b4cd9f686e34efe[m
[1mdeleted file mode 100644[m
[1mindex cce1430..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fe/fea8919bd85f44025b4cd9f686e34efe and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fe/fea8919bd85f44025b4cd9f686e34efe.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fe/fea8919bd85f44025b4cd9f686e34efe.info[m
[1mdeleted file mode 100644[m
[1mindex 5216dec..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/fe/fea8919bd85f44025b4cd9f686e34efe.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ff/ff1844e9b9967455ab5e4e2724a2779d b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ff/ff1844e9b9967455ab5e4e2724a2779d[m
[1mdeleted file mode 100644[m
[1mindex 9aa5764..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ff/ff1844e9b9967455ab5e4e2724a2779d and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ff/ff1844e9b9967455ab5e4e2724a2779d.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ff/ff1844e9b9967455ab5e4e2724a2779d.info[m
[1mdeleted file mode 100644[m
[1mindex 84dba32..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ff/ff1844e9b9967455ab5e4e2724a2779d.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ff/ffa0c75d306d5460ba915ac3244bc887 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ff/ffa0c75d306d5460ba915ac3244bc887[m
[1mdeleted file mode 100644[m
[1mindex 145137d..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ff/ffa0c75d306d5460ba915ac3244bc887 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ff/ffa0c75d306d5460ba915ac3244bc887.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ff/ffa0c75d306d5460ba915ac3244bc887.info[m
[1mdeleted file mode 100644[m
[1mindex cbfa378..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ff/ffa0c75d306d5460ba915ac3244bc887.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ff/ffff269d9c25a4646ab0826a3fd059f7 b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ff/ffff269d9c25a4646ab0826a3fd059f7[m
[1mdeleted file mode 100644[m
[1mindex d317754..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ff/ffff269d9c25a4646ab0826a3fd059f7 and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ff/ffff269d9c25a4646ab0826a3fd059f7.info b/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ff/ffff269d9c25a4646ab0826a3fd059f7.info[m
[1mdeleted file mode 100644[m
[1mindex f3844ed..0000000[m
Binary files a/P_MQ_2016 0908-0909Digital Taipei/Library/metadata/ff/ffff269d9c25a4646ab0826a3fd059f7.info and /dev/null differ
[1mdiff --git a/P_MQ_2016 0908-0909Digital Taipei/P_MQ_2016 0908-0909Digital Taipei.CSharp.csproj b/P_MQ_2016 0908-0909Digital Taipei/P_MQ_2016 0908-0909Digital Taipei.CSharp.csproj[m
[1mindex 9390339..d251457 100644[m
[1m--- a/P_MQ_2016 0908-0909Digital Taipei/P_MQ_2016 0908-0909Digital Taipei.CSharp.csproj[m	
[1m+++ b/P_MQ_2016 0908-0909Digital Taipei/P_MQ_2016 0908-0909Digital Taipei.CSharp.csproj[m	
[36m@@ -231,7 +231,6 @@[m
     <Compile Include="Assets\99_someThings\formovie\hehehaha.cs" />[m
     <Compile Include="Assets\99_someThings\lerp.cs" />[m
     <Compile Include="Assets\99_someThings\onPSForBombMQ.cs" />[m
[31m-    <Compile Include="Assets\CameraTest\onCamera_dtg.cs" />[m
     <Compile Include="Assets\JMO Assets\Cartoon FX\Demo\Assets\CFX2_Demo.cs" />[m
     <Compile Include="Assets\JMO Assets\Cartoon FX\Demo\Assets\CFX_Demo_RandomDir.cs" />[m
     <Compile Include="Assets\JMO Assets\Cartoon FX\Demo\Assets\CFX_Demo_RotateCamera.cs" />[m
[36m@@ -242,53 +241,6 @@[m
     <Compile Include="Assets\JMO Assets\Cartoon FX\Scripts\CFX_LightIntensityFade.cs" />[m
     <Compile Include="Assets\JMO Assets\Cartoon FX\Scripts\CFX_ShurikenThreadFix.cs" />[m
     <Compile Include="Assets\JMO Assets\Cartoon FX\Spawn System\CFX_SpawnSystem.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\AccurateLob\Scripts\AccurateLob.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\AccurateLob\Scripts\Bomb.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\AnimatingGUITextures\Scripts\PresentationScreen.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\AnimatingGUITextures\Scripts\TitleScreen.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\AnimatingUnityGUI\Scripts\AnimatingUnityGUI.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\CallbacksExample\Scripts\CallbacksExample.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\CameraFadeExample\Scripts\AmbientMovement.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\CameraFadeExample\Scripts\CameraFadeExample.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\Flythrough\Scripts\FlythroughCameraController.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\Flythrough\Scripts\LookPoint.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\Flythrough\Scripts\LookTarget.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\Flythrough\Scripts\MovePoint.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\GridMovement\Scripts\GameBoardCSharp.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\GridMovement\Scripts\GamePieceCSharp.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\MemoryGame\Scripts\BoardControl.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\MemoryGame\Scripts\BoxControl.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\OrbitExample\Scripts\Path.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\OrbitExample\Scripts\Point.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\PathControlledCharacter\Scripts\Controller.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\PathControlledCharacter\Scripts\PathPoint.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\PathExample\Scripts\PathCameraController.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\PathExample\Scripts\PathExample.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\Platforms\Scripts\CameraController.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\Platforms\Scripts\CharController.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\Platforms\Scripts\DeathZone.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\Platforms\Scripts\InfiniteBackground.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\Platforms\Scripts\LightController.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\Platforms\Scripts\Platform.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\PunchAndStab\Scripts\Bolt.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\PunchAndStab\Scripts\Ticker.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\PutOnPathExample\Scripts\Gizmo.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\PutOnPathExample\Scripts\PutOnPathExample.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\RandomPathGeneration\Scripts\CameraFollow.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\RandomPathGeneration\Scripts\PathGenerator.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\RotatingUnityGUI\Scripts\RotatingUnityGUI.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\ScalingButton\Scripts\ScalingButton.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\SlidingMenu\Scripts\SlidingMenu.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\TurretExample\Scripts\Bound.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\TurretExample\Scripts\Crosshair.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\TurretExample\Scripts\Turret.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\UnevenTerrain\Scripts\Puppeteer.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\ValueToExample\Scripts\ValueToExample.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\WaypointUsage\Scripts\Waypoint.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\WaypointUsage\Scripts\WaypointExample.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\WorkingWithPhysics\Scripts\Bat.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\WorkingWithPhysics\Scripts\Brick.cs" />[m
[31m-    <Compile Include="Assets\iTweenExamples\WorkingWithPhysics\Scripts\SimpleCameraFade.cs" />[m
     <Compile Include="Assets\onBTN_Battle.cs" />[m
     <Compile Include="Assets\onMonsterName.cs" />[m
   </ItemGroup>[m
