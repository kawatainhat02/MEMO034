class Tea extends WarmBeverage
   native, perobjectconfig, transient;
/**
 * This class does lots of neat things.  It works
 * with a few other classes to do other neat things.
 */

/** This stores the value of tea in china. */
var float Price;


/**
 * state Brewing
 * This state was created to represent Brewing in the cup.
 * entered: AddBoilingWater is called in the default state.
 * exited:  through Pour or too much time elapses (goes to
 * GettingBitter)
 */
state Brewing
{

   /**
    * Steep calculates a delta-taste value for the tea given the
    * volume and temperature of water used to steep.
    *
    * @param    VolumeOfWater - amount of water used to brew
    *           a positive number of milliliters (not checked!)
    *
    * @param    TemperatureOfWater - water's temperature in
    *           degrees Kelvin. 273 < temperatureOfWater < 380
    *
    * @param    NewPotency - the tea's potency after steeping starts;
    *           should be between 0.97 and 1.04
    *
    * @return    returns the change in intensity of the tea in tea taste
    *           units (TTU) per minute
    *
    */

   function float Steep (float VolumeOfWater, float TemperatureOfWater,
                         out float NewPotency)
   {
   }
}

namespace UnrealLogging
{
   /// <summary>
   /// Indicates the level of the message being logged
   /// </summary>
   public enum LogLevel { LOG_Error, LOG_Warning, LOG_Debug };

   /// <summary>
   /// Generic logging interface. This interface is to be implemented to
   /// provide logging support for whichever the target environment is.
   /// </summary>
   public interface ILogger
   {
      /// <summary>
      /// Writes the message to the implemented logging support
      /// </summary>
      /// <param name="MsgLevel">The severity of the message being written</param>
      /// <param name="StrMsg">The message to write out</param>
      void Log(LogLevel MsgLevel,string StrMsg);

      /// <summary>
      /// Sets the filtering that will be applied to logging. No message
      /// with a level higher than what is set in here will get logged.
      /// </summary>
      /// <param name="MaxLevel">Maximum log level to write out</param>
      void SetFilter(LogLevel MaxLevel);
   }
}
