/*
* FILE          : AircraftTelemetryData.cs
* PROJECT       : SENG3020 - Term Project
* PROGRAMMER    : Troy Hill, Jessica Sim
* FIRST VERSION : 2022-10-30
* DESCRIPTION:
*    This file contains class of AircraftTelemetryData and it has all the properties of Telemetry data
*/
using System;

namespace Ground_Terminal
{
    public class AircraftTelemetryData
    {
        public string TailNumber { get; set; }
        public DateTime TelDate { get; set; }
        public DateTime Timestamp { get; set; }
        public double AccelX { get; set; }
        public double AccelY { get; set; }
        public double AccelZ { get; set; }
        public double Weight { get; set; }
        public double Altitude { get; set; }
        public double Pitch { get; set; }
        public double Bank { get; set; }
    }
}
