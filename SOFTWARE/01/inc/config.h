#ifndef _SLATE_VIXEN_CONFIG_H_
#define _SLATE_VIXEN_CONFIG_H_

#define VERBOSE_INIT
#define VERBOSE_TEST

// WHEELS !! TODO !!
#define WHEEL_CIRCUMFERENCE 1

// ON BOARD LEDS !! TODO !!
#define LED_GPIO_LEFT  PORT::B, 5
#define LED_GPIO_RIGHT PORT::B, 5

// MOTORS !! TODO !!
#define MOTOR_GPIO_PWM_LEFT  PORT::D, 7
#define MOTOR_GPIO_DIR_LEFT  PORT::D, 6
#define MOTOR_GPIO_PWM_RIGHT PORT::D, 5
#define MOTOR_GPIO_DIR_RIGHT PORT::D, 4

// INCEREMENTAL ENCODERS !! TODO !!
#define INCREMENTAL_ENCODER_PULSES_PER_ROTATION 360
#define INCREMENTAL_ENCODER_GPIO_LEFT  PORT::B, 0
#define INCREMENTAL_ENCODER_GPIO_RIGHT PORT::B, 1
#define INCREMENTAL_ENCODER_INTERRUPT_LEFT  INTERRUPT0
#define INCREMENTAL_ENCODER_INTERRUPT_RIGHT INTERRUPT1

// LINE SENSOR
#define LINE_SENSOR_COUNT 6
#define LINE_SENSOR_WEIGHT_STEP 128
#define LINE_SENSOR_LINE_THRESHOLD 512
#define LINE_SENSOR_GPIO_0 PORT::C, 0
#define LINE_SENSOR_GPIO_1 PORT::C, 1
#define LINE_SENSOR_GPIO_2 PORT::C, 2
#define LINE_SENSOR_GPIO_3 PORT::C, 3
#define LINE_SENSOR_GPIO_4 PORT::C, 6
#define LINE_SENSOR_GPIO_5 PORT::C, 7
#define LINE_SENSOR_ADC_CHANNEL_0 0
#define LINE_SENSOR_ADC_CHANNEL_1 1
#define LINE_SENSOR_ADC_CHANNEL_2 2
#define LINE_SENSOR_ADC_CHANNEL_3 3
#define LINE_SENSOR_ADC_CHANNEL_4 6
#define LINE_SENSOR_ADC_CHANNEL_5 7

// OBSTACLE DETECTOR !! TODO !!
#define OBSTACLE_DETECTOR_GPIO_SDA PORT::D, 7
#define OBSTACLE_DETECTOR_GPIO_SCL PORT::D, 6

#define FORMAT_INIT_OK  FG_GREEN
#define FORMAT_INIT_ERR FG_RED, BOLD
#define MESSAGE_INIT_OK  "[+] INITIATED DRIVER FOR %s!\n"
#define MESSAGE_INIT_ERR "[-] UNABLE TO INITIATE DRIVER FOR %s: %s!\n"
#define FORMAT_WELCOME FG_RED, BOLD
inline const char MESSAGE_WELCOME_PROGMEM[] PROGMEM = R"(
            \                    /
    _________))                ((__________
   /.-------./\\    \    /    //\.--------.\
  //#######//##\\   ))  ((   //##\\########\\
 //#######//###((  ((    ))  ))###\\########\\
((#######((#####\\  \\  //  //#####))########))
 \##' `###\######\\  \)(/  //######/####' `##/
  )'    ``#)'  `##\`->oo<-'/##'  `(#''     `(
          (       ``\`..'/''       )
                     \""(
                      `- )
                      / /
                     ( /\
                     /\| \
                    (  \
                        )
                       /
                      (
         (    (
         )\ ) )\ )    (       *   )
        (()/((()/(    )\    ` )  /( (
         /(_))/(_))((((_)(   ( )(_)))\
        (_)) (_))   )\ _ )\ (_(_())((_)
        / __|| |    (_)_\(_)|_   _|| __|
        \__ \| |__   / _ \    | |  | _|
        |___/|___(| /_/ \_)   |_|  |_)_|
                 )\ )  ( /(       ( /(
         (   (  (()/(  )\()) (    )\())
         )\  )\  /(_))((_)\  )\  ((_)\
        ((_)((_)(_))  __((_)((_)  _((_)
        \ \ / / |_ _| \ \/ /| __|| \| |
         \ V /   | |   >  < | _| | .` |
          \_/   |___| /_/\_\|___||_|\_|
)";

#endif
