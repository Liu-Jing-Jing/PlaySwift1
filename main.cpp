//
//  main.cpp
//  ch10_5
//
//  Created by Mark Lewis on 18-1-11.
//  Copyright (c) 2018年 Tsinghua University. All rights reserved.
//

#include <iostream>
using std::cin;
using std::cout;
using std::endl;
class CEmployee
{
public:
    void Output()
    {
        cout << m_ID << endl;
        cout << m_Name << endl;
        cout << m_Depart << endl;
    }
    
private:
    int m_ID;
    char m_Name[128];
    char m_Depart[128];
};


class COperator: public CEmployee
{
    void Output()
    {
        //cout << m_ID << endl;
        //cout << m_Name << endl;
        //cout << m_Depart << endl; //无法访问  父类的私有成员
    }
public:
    char m_Password[128];
    bool Login();
};

class CRectangle {
    
    
public:
    CRectangle()
    {
        m_iHeight = 0;
        m_iWidth = 0;
    }
    
    CRectangle(int iLeftTop_x, int iLeftTop_y, int iRightBottom_x, int iRightBottom_y)
    {
        m_iHeight = iRightBottom_y - iLeftTop_y;
        m_iWidth = iRightBottom_x - iLeftTop_x;
    }
    
    int getHeight()
    {
        return m_iHeight;
    }
    
    int getWidth()
    {
        return m_iWidth;
    }
    
    
protected:
    int m_iHeight;
    int m_iWidth;
};




int main(int argc, const char * argv[])
{

    // insert code here...
    std::cout << "Hello, World!\n";
    
    
    return 0;
}