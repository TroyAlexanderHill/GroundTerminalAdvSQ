/*
* FILE          : Logger.cs
* PROJECT       : SENG3020 - Term Project
* PROGRAMMER    : Troy Hill, Jessica Sim
* FIRST VERSION : 2022-10-30
* DESCRIPTION:
*    This program logs the telemetry to an ASCII text file
*/
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text; 
using System.Threading.Tasks;

namespace Ground_Terminal
{
    internal class Logger
    {
        /*
        * FUNCTION : SearchTextBox_Search
        * DESCRIPTION : This function logs the passed message to log file
        * PARAMETERS : string message: the message to store in ASCII text file
        * RETURNS : void
        */
        public static void Log(string message)
        {
            //declare date variable
            DateTime now = DateTime.Now;
            //set file path
            string filePath = AppDomain.CurrentDomain.BaseDirectory + @".\GroundTerminalLogger.txt";
            string fullmessage = "";
            //create message to log
            fullmessage = message + "," + "\n";
            //check if file exists
            if (!File.Exists(filePath))
            {
                StreamWriter createFile = File.CreateText(filePath);
                createFile.Close();
            }

            //write message to text file for logs
            StreamWriter sw = File.AppendText(filePath);
            sw.Write(fullmessage);
            //close file stream
            sw.Close();
        }
    }
}
