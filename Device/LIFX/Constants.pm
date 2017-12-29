 
package Device::LIFX::Constants;

use strict;
use warnings;

require Exporter;
our @ISA = qw(Exporter);

use constant GET_PAN_GATEWAY => 0x02;
use constant PAN_GATEWAY => 0x03;
use constant GET_POWER_STATE => 0x14;
use constant SET_POWER_STATE => 0x15;
use constant POWER_STATE => 0x16;
use constant GET_WIFI_INFO => 0x10;
use constant WIFI_INFO => 0x11;
use constant GET_WIFI_FIRMWARE_STATE => 0x12;
use constant WIFI_FIRMWARE_STATE => 0x13;
use constant GET_WIFI_STATE => 0x12D;
use constant SET_WIFI_STATE => 0x12E;
use constant WIFI_STATE => 0x12F;
use constant GET_ACCESS_POINTS => 0x130;
use constant SET_ACCESS_POINT => 0x131;
use constant ACCESS_POINT => 0x132;
use constant GET_BULB_LABEL => 0x17;
use constant SET_BULB_LABEL => 0x18;
use constant BULB_LABEL => 0x19;
use constant GET_TAGS => 0x1A;
use constant SET_TAGS => 0x1B;
use constant TAGS => 0x1C;
use constant GET_TAG_LABELS => 0x1D;
use constant SET_TAG_LABELS => 0x1E;
use constant TAG_LABELS => 0x1F;
use constant GET_LIGHT_STATE => 0x65;
use constant SET_LIGHT_COLOR => 0x66;
use constant SET_WAVEFORM => 0x67;
use constant SET_DIM_ABSOLUTE => 0x68;
use constant SET_DIM_RELATIVE => 0x69;
use constant LIGHT_STATUS => 0x6B;
use constant GET_TIME => 0x04;
use constant SET_TIME => 0x05;
use constant TIME_STATE => 0x06;
use constant GET_RESET_SWITCH => 0x07;
use constant RESET_SWITCH_STATE => 0x08;
use constant GET_DUMMY_LOAD => 0x09;
use constant SET_DUMMY_LOAD => 0x0A;
use constant DUMMY_LOAD => 0x0B;
use constant GET_MESH_INFO => 0x0C;
use constant MESH_INFO => 0x0D;
use constant GET_MESH_FIRMWARE => 0x0E;
use constant MESH_FIRMWARE_STATE => 0x0F;
use constant GET_VERSION => 0x20;
use constant VERSION_STATE => 0x21;
use constant GET_INFO => 0x22;
use constant INFO => 0x23;
use constant GET_MCU_RAIL_VOLTAGE => 0x24;
use constant MCU_RAIL_VOLTAGE => 0x25;
use constant REBOOT => 0x26;
use constant SET_FACTORY_TEST_MODE => 0x27;
use constant DISABLE_FACTORY_TEST_MODE => 0x28;
 
my %typeStrings = (
    GET_PAN_GATEWAY, "GET_PAN_GATEWAY",
    PAN_GATEWAY, "PAN_GATEWAY",
    GET_POWER_STATE, "GET_POWER_STATE",
    SET_POWER_STATE, "SET_POWER_STATE",
    POWER_STATE, "POWER_STATE",
    GET_WIFI_INFO, "GET_WIFI_INFO",
    WIFI_INFO, "WIFI_INFO",
    GET_WIFI_FIRMWARE_STATE, "GET_WIFI_FIRMWARE_STATE",
    WIFI_FIRMWARE_STATE, "WIFI_FIRMWARE_STATE",
    GET_WIFI_STATE, "GET_WIFI_STATE",
    SET_WIFI_STATE, "SET_WIFI_STATE",
    WIFI_STATE, "WIFI_STATE",
    GET_ACCESS_POINTS, "GET_ACCESS_POINTS",
    SET_ACCESS_POINT, "SET_ACCESS_POINT",
    ACCESS_POINT, "ACCESS_POINT",
    GET_BULB_LABEL, "GET_BULB_LABEL",
    SET_BULB_LABEL, "SET_BULB_LABEL",
    BULB_LABEL, "BULB_LABEL",
    GET_TAGS, "GET_TAGS",
    SET_TAGS, "SET_TAGS",
    TAGS, "TAGS",
    GET_TAG_LABELS, "GET_TAG_LABELS",
    SET_TAG_LABELS, "SET_TAG_LABELS",
    TAG_LABELS, "TAG_LABELS",
    GET_LIGHT_STATE, "GET_LIGHT_STATE",
    SET_LIGHT_COLOR, "SET_LIGHT_COLOR",
    SET_WAVEFORM, "SET_WAVEFORM",
    SET_DIM_ABSOLUTE, "SET_DIM_ABSOLUTE",
    SET_DIM_RELATIVE, "SET_DIM_RELATIVE",
    LIGHT_STATUS, "LIGHT_STATUS",
    GET_TIME, "GET_TIME",
    SET_TIME, "SET_TIME",
    TIME_STATE, "TIME_STATE",
    GET_RESET_SWITCH, "GET_RESET_SWITCH",
    RESET_SWITCH_STATE, "RESET_SWITCH_STATE",
    GET_DUMMY_LOAD, "GET_DUMMY_LOAD",
    SET_DUMMY_LOAD, "SET_DUMMY_LOAD",
    DUMMY_LOAD, "DUMMY_LOAD",
    GET_MESH_INFO, "GET_MESH_INFO",
    MESH_INFO, "MESH_INFO",
    GET_MESH_FIRMWARE, "GET_MESH_FIRMWARE",
    MESH_FIRMWARE_STATE, "MESH_FIRMWARE_STATE",
    GET_VERSION, "GET_VERSION",
    VERSION_STATE, "VERSION_STATE",
    GET_INFO, "GET_INFO",
    INFO, "INFO",
    GET_MCU_RAIL_VOLTAGE, "GET_MCU_RAIL_VOLTAGE",
    MCU_RAIL_VOLTAGE, "MCU_RAIL_VOLTAGE",
    REBOOT, "REBOOT",
    SET_FACTORY_TEST_MODE, "SET_FACTORY_TEST_MODE",
    DISABLE_FACTORY_TEST_MODE, "DISABLE_FACTORY_TEST_MODE",
);

sub type2str($)
{
    my ($type) = @_;

    return $typeStrings{$type};
}

use constant ALL_BULBS_RESPONSE => 0x5400;
use constant ALL_BULBS_REQUEST  => 0x3400;
use constant BULB_COMMAND       => 0x1400;
use constant ALL_BULBS          => "\0\0\0\0\0\0";

sub protocol2str($)
{
    my ($protocol) = @_;

    if ($protocol == ALL_BULBS_RESPONSE) {
        return "ALL_BULBS_RESPONSE";
    } elsif ($protocol == ALL_BULBS_REQUEST) {
        return "ALL_BULBS_REQUEST";
    } elsif ($protocol == BULB_COMMAND) {
        return "BULB_COMMAND";
    }
    return "UNKOWN_PROTOCOL";
}

our %EXPORT_TAGS = (
    get => [qw(
        GET_PAN_GATEWAY GET_POWER_STATE GET_WIFI_INFO GET_WIFI_FIRMWARE_STATE
        GET_WIFI_STATE GET_ACCESS_POINTS GET_BULB_LABEL GET_TAGS GET_TAG_LABELS
        GET_LIGHT_STATE GET_TIME GET_RESET_SWITCH GET_DUMMY_LOAD GET_MESH_INFO
        GET_MESH_FIRMWARE GET_VERSION GET_INFO GET_MCU_RAIL_VOLTAGE 
    )],
    set => [qw(
        SET_POWER_STATE SET_WIFI_STATE SET_ACCESS_POINT SET_BULB_LABEL SET_TAGS
        SET_TAG_LABELS SET_LIGHT_COLOR SET_WAVEFORM SET_DIM_ABSOLUTE SET_DIM_RELATIVE
        SET_TIME SET_DUMMY_LOAD SET_FACTORY_TEST_MODE DISABLE_FACTORY_TEST_MODE REBOOT
    )],
    responses => [qw(
        PAN_GATEWAY POWER_STATE WIFI_INFO WIFI_FIRMWARE_STATE WIFI_STATE ACCESS_POINT
        BULB_LABEL TAGS TAG_LABELS LIGHT_STATUS TIME_STATE DUMMY_LOAD MESH_INFO
        MESH_FIRMWARE_STATE VERSION_STATE INFO MCU_RAIL_VOLTAGE 
    )],
    protocols => [qw(
        ALL_BULBS_RESPONSE ALL_BULBS_REQUEST BULB_COMMAND
    )],
    methods => [qw(
        type2str protocol2str
    )],
);

our @EXPORT_OK = qw(ALL_BULBS);

Exporter::export_ok_tags('get','set','responses','protocols','methods');

1;

