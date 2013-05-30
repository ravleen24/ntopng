--
-- (C) 2013 - ntop.org
--

local NTOP_BASE_ID = 57472
local NTOP_BASE_NETFLOW_ID = NTOP_BASE_ID+1024

-- template name to id
template = {
['IN_BYTES'] = 1,
--['SYSTEM_ID'] = 1,
['IN_PKTS'] = 2,
--['INTERFACE_ID'] = 2,
['FLOWS'] = 3,
--['LINE_CARD'] = 3,
['PROTOCOL'] = 4,
['PROTOCOL_MAP'] = NTOP_BASE_NETFLOW_ID+4,
--['NETFLOW_CACHE'] = 4,
['SRC_TOS'] = 5,
--['TEMPLATE_ID'] = 5,
['TCP_FLAGS'] = 6,
['L4_SRC_PORT'] = 7,
['L4_SRC_PORT_MAP'] = NTOP_BASE_NETFLOW_ID+7,
['IPV4_SRC_ADDR'] = 8,
['IPV4_SRC_MASK'] = 9,
['INPUT_SNMP'] = 10,
['L4_DST_PORT'] = 11,
['L4_DST_PORT_MAP'] = NTOP_BASE_NETFLOW_ID+11,
['L4_SRV_PORT'] = NTOP_BASE_NETFLOW_ID+12,
['L4_SRV_PORT_MAP'] = NTOP_BASE_NETFLOW_ID+13,
['IPV4_DST_ADDR'] = 12,
['IPV4_DST_MASK'] = 13,
['OUTPUT_SNMP'] = 14,
['IPV4_NEXT_HOP'] = 15,
['SRC_AS'] = 16,
['DST_AS'] = 17,
['BGP_IPV4_NEXT_HOP'] = 18,
['MUL_DST_PKTS'] = 19,
['MUL_DST_BYTES'] = 20,
['LAST_SWITCHED'] = 21,
['FIRST_SWITCHED'] = 22,
['OUT_BYTES'] = 23,
['OUT_PKTS'] = 24,
['IPV6_SRC_ADDR'] = 27,
['IPV6_DST_ADDR'] = 28,
['IPV6_SRC_MASK'] = 29,
['IPV6_DST_MASK'] = 30,
['IPV6_FLOW_LABEL'] = 31,
['ICMP_TYPE'] = 32,
['MUL_IGMP_TYPE'] = 33,
['SAMPLING_INTERVAL'] = 34,
['SAMPLING_ALGORITHM'] = 35,
['FLOW_ACTIVE_TIMEOUT'] = 36,
['FLOW_INACTIVE_TIMEOUT'] = 37,
['ENGINE_TYPE'] = 38,
['ENGINE_ID'] = 39,
['TOTAL_BYTES_EXP'] = 40,
['TOTAL_PKTS_EXP'] = 41,
['TOTAL_FLOWS_EXP'] = 42,
['MIN_TTL'] = 52,
['MAX_TTL'] = 53,
['IN_SRC_MAC'] = 56,
['SRC_VLAN'] = 58,
['DST_VLAN'] = 59,
['IP_PROTOCOL_VERSION'] = 60,
['DIRECTION'] = 61,
['IPV6_NEXT_HOP'] = 62,
['BPG_IPV6_NEXT_HOP'] = 63,
['IPV6_OPTION_HEADERS'] = 64,
['MPLS_LABEL_1'] = 70,
['MPLS_LABEL_2'] = 71,
['MPLS_LABEL_3'] = 72,
['MPLS_LABEL_4'] = 73,
['MPLS_LABEL_5'] = 74,
['MPLS_LABEL_6'] = 75,
['MPLS_LABEL_7'] = 76,
['MPLS_LABEL_8'] = 77,
['MPLS_LABEL_9'] = 78,
['MPLS_LABEL_10'] = 79,
['OUT_DST_MAC'] = 80,
['APPLICATION_ID'] = 95,
['PACKET_SECTION_OFFSET'] = 102,
['SAMPLED_PACKET_SIZE'] = 103,
['SAMPLED_PACKET_ID'] = 104,
['EXPORTER_IPV4_ADDRESS'] = 130,
['EXPORTER_IPV6_ADDRESS'] = 131,
['FLOW_ID'] = 148,
['FLOW_START_SEC'] = 150,
['FLOW_END_SEC'] = 151,
['FLOW_START_MILLISECONDS'] = 152,
['FLOW_END_MILLISECONDS'] = 153,
['BIFLOW_DIRECTION'] = 239,
['OBSERVATION_POINT_TYPE'] = 277,
['OBSERVATION_POINT_ID'] = 300,
['SELECTOR_ID'] = 302,
['IPFIX_SAMPLING_ALGORITHM'] = 304,
['SAMPLING_SIZE'] = 309,
['SAMPLING_POPULATION'] = 310,
['FRAME_LENGTH'] = 312,
['PACKETS_OBSERVED'] = 318,
['PACKETS_SELECTED'] = 319,
['SELECTOR_NAME'] = 335,
['FRAGMENTS'] = NTOP_BASE_ID+80,
['CLIENT_NW_DELAY_SEC'] = NTOP_BASE_ID+82,
['CLIENT_NW_DELAY_USEC'] = NTOP_BASE_ID+83,
['SERVER_NW_DELAY_SEC'] = NTOP_BASE_ID+84,
['SERVER_NW_DELAY_USEC'] = NTOP_BASE_ID+85,
['APPL_LATENCY_SEC'] = NTOP_BASE_ID+86,
['APPL_LATENCY_USEC'] = NTOP_BASE_ID+87,
['NUM_PKTS_UP_TO_128_BYTES'] = NTOP_BASE_ID+88,
['NUM_PKTS_128_TO_256_BYTES'] = NTOP_BASE_ID+89,
['NUM_PKTS_256_TO_512_BYTES'] = NTOP_BASE_ID+90,
['NUM_PKTS_512_TO_1024_BYTES'] = NTOP_BASE_ID+91,
['NUM_PKTS_1024_TO_1514_BYTES'] = NTOP_BASE_ID+92,
['NUM_PKTS_OVER_1514_BYTES'] = NTOP_BASE_ID+93,
['CUMULATIVE_ICMP_TYPE'] = NTOP_BASE_ID+98,
['SRC_IP_COUNTRY'] = NTOP_BASE_ID+101,
['SRC_IP_CITY'] = NTOP_BASE_ID+102,
['DST_IP_COUNTRY'] = NTOP_BASE_ID+103,
['DST_IP_CITY'] = NTOP_BASE_ID+104,
['FLOW_PROTO_PORT'] = NTOP_BASE_ID+105,
['UPSTREAM_TUNNEL_ID'] = NTOP_BASE_ID+106,
['LONGEST_FLOW_PKT'] = NTOP_BASE_ID+107,
['SHORTEST_FLOW_PKT'] = NTOP_BASE_ID+108,
['RETRANSMITTED_IN_PKTS'] = NTOP_BASE_ID+109,
['RETRANSMITTED_OUT_PKTS'] = NTOP_BASE_ID+110,
['OOORDER_IN_PKTS'] = NTOP_BASE_ID+111,
['OOORDER_OUT_PKTS'] = NTOP_BASE_ID+112,
['UNTUNNELED_PROTOCOL'] = NTOP_BASE_ID+113,
['UNTUNNELED_IPV4_SRC_ADDR'] = NTOP_BASE_ID+114,
['UNTUNNELED_L4_SRC_PORT'] = NTOP_BASE_ID+115,
['UNTUNNELED_IPV4_DST_ADDR'] = NTOP_BASE_ID+116,
['UNTUNNELED_L4_DST_PORT'] = NTOP_BASE_ID+117,
['L7_PROTO'] = NTOP_BASE_ID+118,
['L7_PROTO_NAME'] = NTOP_BASE_ID+119,
['DOWNSTREAM_TUNNEL_ID'] = NTOP_BASE_ID+120,
['FLOW_USER_NAME'] = NTOP_BASE_ID+121,
['FLOW_SERVER_NAME'] = NTOP_BASE_ID+122,
['CLIENT_NW_DELAY_MS'] = NTOP_BASE_ID+123,
['SERVER_NW_DELAY_MS'] = NTOP_BASE_ID+124,
['APPL_LATENCY_MS'] = NTOP_BASE_ID+125,
['PLUGIN_NAME'] = NTOP_BASE_ID+126,
['NUM_PKTS_TTL_EQ_1'] = NTOP_BASE_ID+347,
['NUM_PKTS_TTL_2_5'] = NTOP_BASE_ID+346,
['NUM_PKTS_TTL_5_32'] = NTOP_BASE_ID+334,
['NUM_PKTS_TTL_32_64'] = NTOP_BASE_ID+335,
['NUM_PKTS_TTL_64_96'] = NTOP_BASE_ID+336,
['NUM_PKTS_TTL_96_128'] = NTOP_BASE_ID+337,
['NUM_PKTS_TTL_128_160'] = NTOP_BASE_ID+338,
['NUM_PKTS_TTL_160_192'] = NTOP_BASE_ID+339,
['NUM_PKTS_TTL_192_224'] = NTOP_BASE_ID+340,
['NUM_PKTS_TTL_224_255'] = NTOP_BASE_ID+341,
['IN_SRC_OSI_SAP'] = NTOP_BASE_ID+349,
['OUT_DST_OSI_SAP'] = NTOP_BASE_ID+350,

-- SIP
['SIP_CALL_ID'] = NTOP_BASE_ID+130,
['SIP_CALLING_PARTY'] = NTOP_BASE_ID+131,
['SIP_CALLED_PARTY'] = NTOP_BASE_ID+132,
['SIP_RTP_CODECS'] = NTOP_BASE_ID+133,
['SIP_INVITE_TIME'] = NTOP_BASE_ID+134,
['SIP_TRYING_TIME'] = NTOP_BASE_ID+135,
['SIP_RINGING_TIME'] = NTOP_BASE_ID+136,
['SIP_INVITE_OK_TIME'] = NTOP_BASE_ID+137,
['SIP_INVITE_FAILURE_TIME'] = NTOP_BASE_ID+138,
['SIP_BYE_TIME'] = NTOP_BASE_ID+139,
['SIP_BYE_OK_TIME'] = NTOP_BASE_ID+140,
['SIP_CANCEL_TIME'] = NTOP_BASE_ID+141,
['SIP_CANCEL_OK_TIME'] = NTOP_BASE_ID+142,
['SIP_RTP_IPV4_SRC_ADDR'] = NTOP_BASE_ID+143,
['SIP_RTP_L4_SRC_PORT'] = NTOP_BASE_ID+144,
['SIP_RTP_IPV4_DST_ADDR'] = NTOP_BASE_ID+145,
['SIP_RTP_L4_DST_PORT'] = NTOP_BASE_ID+146,
['SIP_FAILURE_CODE'] = NTOP_BASE_ID+147,
['SIP_REASON_CAUSE'] = NTOP_BASE_ID+148,

-- RTP
['RTP_FIRST_SSRC'] = NTOP_BASE_ID+150,
['RTP_FIRST_TS'] = NTOP_BASE_ID+151,
['RTP_LAST_SSRC'] = NTOP_BASE_ID+152,
['RTP_LAST_TS'] = NTOP_BASE_ID+153,
['RTP_IN_JITTER'] = NTOP_BASE_ID+154,
['RTP_OUT_JITTER'] = NTOP_BASE_ID+155,
['RTP_IN_PKT_LOST'] = NTOP_BASE_ID+156,
['RTP_OUT_PKT_LOST'] = NTOP_BASE_ID+157,
['RTP_OUT_PAYLOAD_TYPE'] = NTOP_BASE_ID+158,
['RTP_IN_MAX_DELTA'] = NTOP_BASE_ID+159,
['RTP_OUT_MAX_DELTA'] = NTOP_BASE_ID+160,
['RTP_IN_PAYLOAD_TYPE'] = NTOP_BASE_ID+161,
['RTP_SIP_CALL_ID'] = NTOP_BASE_ID+348,
-- Process
['PROC_ID'] = NTOP_BASE_ID+168,
['PROC_NAME'] = NTOP_BASE_ID+169,

-- HTTP
['HTTP_URL'] = NTOP_BASE_ID+180,
['HTTP_RET_CODE'] = NTOP_BASE_ID+181,
['HTTP_REFERER'] = NTOP_BASE_ID+182,
['HTTP_UA'] = NTOP_BASE_ID+183,
['HTTP_MIME'] = NTOP_BASE_ID+184,
['HTTP_HOST'] = NTOP_BASE_ID+187,
['HTTP_FBOOK_CHAT'] = NTOP_BASE_ID+188,

-- SMTP
['SMTP_MAIL_FROM'] = NTOP_BASE_ID+185,
['SMTP_RCPT_TO'] = NTOP_BASE_ID+186,

-- MySQL
['MYSQL_SRV_VERSION'] = NTOP_BASE_ID+195,
['MYSQL_USERNAME'] = NTOP_BASE_ID+196,
['MYSQL_DB'] = NTOP_BASE_ID+197,
['MYSQL_QUERY'] = NTOP_BASE_ID+198,
['MYSQL_RESPONSE'] = NTOP_BASE_ID+199,
['MYSQL_APPL_LATENCY_USEC'] = NTOP_BASE_ID+320,

-- Oracle
['ORACLE_USERNAME'] = NTOP_BASE_ID+200,
['ORACLE_QUERY'] = NTOP_BASE_ID+201,
['ORACLE_RSP_CODE'] = NTOP_BASE_ID+202,
['ORACLE_RSP_STRING'] = NTOP_BASE_ID+203,
['ORACLE_QUERY_DURATION'] = NTOP_BASE_ID+204,

-- DNS
['DNS_QUERY'] = NTOP_BASE_ID+205,
['DNS_QUERY_ID'] = NTOP_BASE_ID+206,
['DNS_QUERY_TYPE'] = NTOP_BASE_ID+207,
['DNS_RET_CODE'] = NTOP_BASE_ID+208,
['DNS_NUM_ANSWERS'] = NTOP_BASE_ID+209,

-- POP
['POP_USER'] = NTOP_BASE_ID+210,

-- GTPv1
['GTPV1_REQ_MSG_TYPE'] = NTOP_BASE_ID+220,
['GTPV1_RSP_MSG_TYPE'] = NTOP_BASE_ID+221,
['GTPV1_C2S_TEID_DATA'] = NTOP_BASE_ID+222,
['GTPV1_C2S_TEID_CTRL'] = NTOP_BASE_ID+223,
['GTPV1_S2C_TEID_DATA'] = NTOP_BASE_ID+224,
['GTPV1_S2C_TEID_CTRL'] = NTOP_BASE_ID+225,
['GTPV1_END_USER_IP'] = NTOP_BASE_ID+226,
['GTPV1_END_USER_IMSI'] = NTOP_BASE_ID+227,
['GTPV1_END_USER_MSISDN'] = NTOP_BASE_ID+228,
['GTPV1_END_USER_IMEI'] = NTOP_BASE_ID+229,
['GTPV1_APN_NAME'] = NTOP_BASE_ID+230,
['GTPV1_RAI_MCC'] = NTOP_BASE_ID+231,
['GTPV1_RAI_MNC'] = NTOP_BASE_ID+232,
['GTPV1_RAI_LAC'] = NTOP_BASE_ID+342,
['GTPV1_RAI_RAC'] = NTOP_BASE_ID+343,
['GTPV1_ULI_MCC'] = NTOP_BASE_ID+344,
['GTPV1_ULI_MNC'] = NTOP_BASE_ID+345,
['GTPV1_ULI_CELL_LAC'] = NTOP_BASE_ID+233,
['GTPV1_ULI_CELL_CI'] = NTOP_BASE_ID+234,
['GTPV1_ULI_SAC'] = NTOP_BASE_ID+235,
['GTPV1_RESPONSE_CAUSE'] = NTOP_BASE_ID+332,

-- Radius
['RADIUS_REQ_MSG_TYPE'] = NTOP_BASE_ID+240,
['RADIUS_RSP_MSG_TYPE'] = NTOP_BASE_ID+241,
['RADIUS_USER_NAME'] = NTOP_BASE_ID+242,
['RADIUS_CALLING_STATION_ID'] = NTOP_BASE_ID+243,
['RADIUS_CALLED_STATION_ID'] = NTOP_BASE_ID+244,
['RADIUS_NAS_IP_ADDR'] = NTOP_BASE_ID+245,
['RADIUS_NAS_IDENTIFIER'] = NTOP_BASE_ID+246,
['RADIUS_USER_IMSI'] = NTOP_BASE_ID+247,
['RADIUS_USER_IMEI'] = NTOP_BASE_ID+248,
['RADIUS_FRAMED_IP_ADDR'] = NTOP_BASE_ID+249,
['RADIUS_ACCT_SESSION_ID'] = NTOP_BASE_ID+250,
['RADIUS_ACCT_STATUS_TYPE'] = NTOP_BASE_ID+251,
['RADIUS_ACCT_IN_OCTETS'] = NTOP_BASE_ID+252,
['RADIUS_ACCT_OUT_OCTETS'] = NTOP_BASE_ID+253,
['RADIUS_ACCT_IN_PKTS'] = NTOP_BASE_ID+254,
['RADIUS_ACCT_OUT_PKTS'] = NTOP_BASE_ID+255,

-- IMAP
['IMAP_LOGIN'] = NTOP_BASE_ID+260,

-- GTPv2
['GTPV2_REQ_MSG_TYPE'] = NTOP_BASE_ID+270,
['GTPV2_RSP_MSG_TYPE'] = NTOP_BASE_ID+271,
['GTPV2_C2S_S1U_GTPU_TEID'] = NTOP_BASE_ID+272,
['GTPV2_C2S_S1U_GTPU_IP'] = NTOP_BASE_ID+273,
['GTPV2_S2C_S1U_GTPU_TEID'] = NTOP_BASE_ID+274,
['GTPV2_S2C_S1U_GTPU_IP'] = NTOP_BASE_ID+275,
['GTPV2_END_USER_IMSI'] = NTOP_BASE_ID+276,
['GTPV2_END_USER_MSISDN'] = NTOP_BASE_ID+277,
['GTPV2_APN_NAME'] = NTOP_BASE_ID+278,
['GTPV2_ULI_MCC'] = NTOP_BASE_ID+279,
['GTPV2_ULI_MNC'] = NTOP_BASE_ID+280,
['GTPV2_ULI_CELL_TAC'] = NTOP_BASE_ID+281,
['GTPV2_ULI_CELL_ID'] = NTOP_BASE_ID+282,
['GTPV2_RESPONSE_CAUSE'] = NTOP_BASE_ID+333,

-- BGP
['SRC_AS_PATH_1'] = NTOP_BASE_ID+290,
['SRC_AS_PATH_2'] = NTOP_BASE_ID+291,
['SRC_AS_PATH_3'] = NTOP_BASE_ID+292,
['SRC_AS_PATH_4'] = NTOP_BASE_ID+293,
['SRC_AS_PATH_5'] = NTOP_BASE_ID+294,
['SRC_AS_PATH_6'] = NTOP_BASE_ID+295,
['SRC_AS_PATH_7'] = NTOP_BASE_ID+296,
['SRC_AS_PATH_8'] = NTOP_BASE_ID+297,
['SRC_AS_PATH_9'] = NTOP_BASE_ID+298,
['SRC_AS_PATH_10'] = NTOP_BASE_ID+299,
['DST_AS_PATH_1'] = NTOP_BASE_ID+300,
['DST_AS_PATH_2'] = NTOP_BASE_ID+301,
['DST_AS_PATH_3'] = NTOP_BASE_ID+302,
['DST_AS_PATH_4'] = NTOP_BASE_ID+303,
['DST_AS_PATH_5'] = NTOP_BASE_ID+304,
['DST_AS_PATH_6'] = NTOP_BASE_ID+305,
['DST_AS_PATH_7'] = NTOP_BASE_ID+306,
['DST_AS_PATH_8'] = NTOP_BASE_ID+307,
['DST_AS_PATH_9'] = NTOP_BASE_ID+308,
['DST_AS_PATH_10'] = NTOP_BASE_ID+309,

-- GTPv0
['GTPV0_REQ_MSG_TYPE'] = NTOP_BASE_ID+321,
['GTPV0_RSP_MSG_TYPE'] = NTOP_BASE_ID+322,
['GTPV0_TID'] = NTOP_BASE_ID+323,
['GTPV0_END_USER_IP'] = NTOP_BASE_ID+324,
['GTPV0_END_USER_MSISDN'] = NTOP_BASE_ID+325,
['GTPV0_APN_NAME'] = NTOP_BASE_ID+326,
['GTPV0_RAI_MCC'] = NTOP_BASE_ID+327,
['GTPV0_RAI_MNC'] = NTOP_BASE_ID+328,
['GTPV0_RAI_CELL_LAC'] = NTOP_BASE_ID+329,
['GTPV0_RAI_CELL_RAC'] = NTOP_BASE_ID+330,
['GTPV0_RESPONSE_CAUSE'] = NTOP_BASE_ID+331
}

-- template id to name
rtemplate = {}
for key,value in pairs(template) do
  rtemplate[value] = key
end


