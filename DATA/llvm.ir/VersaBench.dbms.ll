; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.Metrics = type { i64, i64, i64, %struct.CommandMetric, %struct.CommandMetric, %struct.CommandMetric, i32 }
%struct.CommandMetric = type { i64, i64, double, double, i64, i64, double, double }
%struct.IndexNode = type { i64, %struct.IndexEntry* }
%struct.IndexEntry = type { %union.anon, %struct.IndexKey, %struct.IndexEntry* }
%union.anon = type { %struct.IndexNode* }
%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }
%struct.DataObject = type { i32, %struct.DataObjectAttribute* }
%struct.DataObjectAttribute = type { %union.anon.6 }
%union.anon.6 = type { i8* }
%struct.DataAttribute = type { i64, %struct.DataObjectAttribute, %struct.DataAttribute* }

@.str = private unnamed_addr constant [8 x i8] c"metrics\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"calcMetricsData.c\00", align 1
@__PRETTY_FUNCTION__.calcMetricsData = private unnamed_addr constant [32 x i8] c"void calcMetricsData(Metrics *)\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.1.3 = private unnamed_addr constant [14 x i8] c"chooseEntry.c\00", align 1
@__PRETTY_FUNCTION__.chooseEntry = private unnamed_addr constant [51 x i8] c"IndexEntry *chooseEntry(IndexNode *, IndexEntry *)\00", align 1
@.str.2.4 = private unnamed_addr constant [14 x i8] c"node->entries\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"inputFile\00", align 1
@.str.1.6 = private unnamed_addr constant [13 x i8] c"closeFiles.c\00", align 1
@__PRETTY_FUNCTION__.closeFiles = private unnamed_addr constant [40 x i8] c"void closeFiles(FILE *, FILE *, FILE *)\00", align 1
@.str.2.7 = private unnamed_addr constant [11 x i8] c"outputFile\00", align 1
@.str.3.8 = private unnamed_addr constant [11 x i8] c"metricFile\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"error closing input file\00", align 1
@closeFiles.name = internal global [11 x i8] c"closeFiles\00", align 1
@.str.5.9 = private unnamed_addr constant [26 x i8] c"error closing output file\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"error closing metric file\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1.11 = private unnamed_addr constant [13 x i8] c"consistent.c\00", align 1
@__PRETTY_FUNCTION__.consistentKey = private unnamed_addr constant [46 x i8] c"Boolean consistentKey(IndexKey *, IndexKey *)\00", align 1
@.str.2.12 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@__PRETTY_FUNCTION__.consistentNonKey = private unnamed_addr constant [41 x i8] c"Boolean consistentNonKey(Char *, Char *)\00", align 1
@.str.13 = private unnamed_addr constant [83 x i8] c"!(dataObjectType != SMALL && dataObjectType != MEDIUM && dataObjectType != LARGE )\00", align 1
@.str.1.14 = private unnamed_addr constant [19 x i8] c"createDataObject.c\00", align 1
@__PRETTY_FUNCTION__.createDataObject = private unnamed_addr constant [45 x i8] c"DataObject *createDataObject(DataObjectType)\00", align 1
@.str.2.15 = private unnamed_addr constant [26 x i8] c"memory allocation failure\00", align 1
@createDataObject.name = internal global [17 x i8] c"createDataObject\00", align 16
@.str.3.16 = private unnamed_addr constant [30 x i8] c"invalid object type to create\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"allocation failure\00", align 1
@createIndexEntry.name = internal global [17 x i8] c"createIndexEntry\00", align 16
@.str.18 = private unnamed_addr constant [24 x i8] c"invalid level specified\00", align 1
@createIndexNode.name = internal global [16 x i8] c"createIndexNode\00", align 16
@.str.1.19 = private unnamed_addr constant [19 x i8] c"allocation failure\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"dataObject\00", align 1
@.str.1.21 = private unnamed_addr constant [19 x i8] c"deleteDataObject.c\00", align 1
@__PRETTY_FUNCTION__.deleteDataObject = private unnamed_addr constant [36 x i8] c"void deleteDataObject(DataObject *)\00", align 1
@.str.2.22 = private unnamed_addr constant [90 x i8] c"!( dataObject->type != SMALL && dataObject->type != MEDIUM && dataObject->type != LARGE )\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.1.24 = private unnamed_addr constant [14 x i8] c"deleteEntry.c\00", align 1
@__PRETTY_FUNCTION__.deleteEntry = private unnamed_addr constant [70 x i8] c"void deleteEntry(IndexNode *, IndexKey *, DataAttribute *, Boolean *)\00", align 1
@.str.2.25 = private unnamed_addr constant [10 x i8] c"searchKey\00", align 1
@.str.3.26 = private unnamed_addr constant [15 x i8] c"adjustmentFlag\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@.str.1.30 = private unnamed_addr constant [19 x i8] c"deleteIndexEntry.c\00", align 1
@__PRETTY_FUNCTION__.deleteIndexEntry = private unnamed_addr constant [41 x i8] c"void deleteIndexEntry(IndexEntry *, Int)\00", align 1
@.str.2.31 = private unnamed_addr constant [14 x i8] c"level >= LEAF\00", align 1
@.str.3.32 = private unnamed_addr constant [18 x i8] c"entry->child.node\00", align 1
@.str.4.33 = private unnamed_addr constant [24 x i8] c"entry->child.dataObject\00", align 1
@.str.5.34 = private unnamed_addr constant [14 x i8] c"invalid level\00", align 1
@deleteIndexEntry.name = internal global [17 x i8] c"deleteIndexEntry\00", align 16
@.str.37 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.1.38 = private unnamed_addr constant [18 x i8] c"deleteIndexNode.c\00", align 1
@__PRETTY_FUNCTION__.deleteIndexNode = private unnamed_addr constant [34 x i8] c"void deleteIndexNode(IndexNode *)\00", align 1
@.str.2.39 = private unnamed_addr constant [20 x i8] c"node->level >= LEAF\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.1.41 = private unnamed_addr constant [9 x i8] c"delete.c\00", align 1
@__PRETTY_FUNCTION__.delete = private unnamed_addr constant [54 x i8] c"Int delete(IndexNode **, IndexKey *, DataAttribute *)\00", align 1
@.str.2.42 = private unnamed_addr constant [6 x i8] c"*root\00", align 1
@.str.3.43 = private unnamed_addr constant [10 x i8] c"searchKey\00", align 1
@.str.4.44 = private unnamed_addr constant [32 x i8] c"invalid index key search values\00", align 1
@delete.name = internal global [7 x i8] c"delete\00", align 1
@.str.5.45 = private unnamed_addr constant [30 x i8] c"invalid non-key search values\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.48 = private unnamed_addr constant [46 x i8] c"Error Message Too Large for Buffer: flushing\0A\00", align 1
@.str.1.49 = private unnamed_addr constant [17 x i8] c"unconnected: %s\0A\00", align 1
@errorBuffer = internal global [1024 x i8] zeroinitializer, align 16
@.str.2.50 = private unnamed_addr constant [37 x i8] c"Error Message Buffer full: flushing\0A\00", align 1
@.str.3.51 = private unnamed_addr constant [21 x i8] c"unconnected: %s: %s\0A\00", align 1
@.str.4.52 = private unnamed_addr constant [12 x i8] c"unconnected\00", align 1
@.str.5.53 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.6.54 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1.56 = private unnamed_addr constant [19 x i8] c"getDeleteCommand.c\00", align 1
@__PRETTY_FUNCTION__.getDeleteCommand = private unnamed_addr constant [59 x i8] c"Int getDeleteCommand(FILE *, IndexKey *, DataAttribute **)\00", align 1
@.str.2.57 = private unnamed_addr constant [10 x i8] c"searchKey\00", align 1
@.str.3.58 = private unnamed_addr constant [18 x i8] c"code out-of-range\00", align 1
@getDeleteCommand.name = internal global [17 x i8] c"getDeleteCommand\00", align 16
@.str.4.59 = private unnamed_addr constant [28 x i8] c"improper format - early EOI\00", align 1
@.str.5.60 = private unnamed_addr constant [20 x i8] c"low-level I/O error\00", align 1
@.str.6.61 = private unnamed_addr constant [19 x i8] c"allocation failure\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"allocation of non-key attribute\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1.63 = private unnamed_addr constant [11 x i8] c"getFloat.c\00", align 1
@__PRETTY_FUNCTION__.getFloat = private unnamed_addr constant [30 x i8] c"Int getFloat(FILE *, Float *)\00", align 1
@.str.2.64 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1.66 = private unnamed_addr constant [17 x i8] c"getInitCommand.c\00", align 1
@__PRETTY_FUNCTION__.getInitCommand = private unnamed_addr constant [34 x i8] c"Int getInitCommand(FILE *, Int *)\00", align 1
@.str.2.67 = private unnamed_addr constant [4 x i8] c"fan\00", align 1
@.str.3.68 = private unnamed_addr constant [22 x i8] c"invalid fan specified\00", align 1
@getInitCommand.name = internal global [15 x i8] c"getInitCommand\00", align 1
@.str.4.69 = private unnamed_addr constant [28 x i8] c"improper format - early EOI\00", align 1
@.str.5.70 = private unnamed_addr constant [41 x i8] c"improper format - fan must be an integer\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1.72 = private unnamed_addr constant [19 x i8] c"getInsertCommand.c\00", align 1
@__PRETTY_FUNCTION__.getInsertCommand = private unnamed_addr constant [44 x i8] c"Int getInsertCommand(FILE *, DataObject **)\00", align 1
@.str.2.73 = private unnamed_addr constant [11 x i8] c"dataObject\00", align 1
@.str.3.74 = private unnamed_addr constant [28 x i8] c"improper format - early EOI\00", align 1
@getInsertCommand.name = internal global [17 x i8] c"getInsertCommand\00", align 16
@.str.4.75 = private unnamed_addr constant [25 x i8] c"unknown data object type\00", align 1
@.str.5.76 = private unnamed_addr constant [42 x i8] c"improper format - type must be an integer\00", align 1
@.str.6.77 = private unnamed_addr constant [19 x i8] c"allocation failure\00", align 1
@.str.7.78 = private unnamed_addr constant [20 x i8] c"low-level I/O error\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"allocation failure for non-key attribute\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1.82 = private unnamed_addr constant [9 x i8] c"getInt.c\00", align 1
@__PRETTY_FUNCTION__.getInt = private unnamed_addr constant [26 x i8] c"Int getInt(FILE *, Int *)\00", align 1
@.str.2.83 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1.87 = private unnamed_addr constant [18 x i8] c"getKeyAttribute.c\00", align 1
@__PRETTY_FUNCTION__.getKeyAttribute = private unnamed_addr constant [37 x i8] c"Int getKeyAttribute(FILE *, Float *)\00", align 1
@.str.2.88 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@getKeyAttribute.name = internal global [16 x i8] c"getKeyAttribute\00", align 16
@.str.89 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1.90 = private unnamed_addr constant [21 x i8] c"getNextCommandCode.c\00", align 1
@__PRETTY_FUNCTION__.getNextCommandCode = private unnamed_addr constant [46 x i8] c"Int getNextCommandCode(FILE *, CommandType *)\00", align 1
@.str.2.91 = private unnamed_addr constant [12 x i8] c"commandCode\00", align 1
@.str.3.92 = private unnamed_addr constant [21 x i8] c"unknown command code\00", align 1
@getNextCommandCode.name = internal global [19 x i8] c"getNextCommandCode\00", align 16
@.str.4.93 = private unnamed_addr constant [42 x i8] c"improper format - code must be an integer\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1.97 = private unnamed_addr constant [21 x i8] c"getNonKeyAttribute.c\00", align 1
@__PRETTY_FUNCTION__.getNonKeyAttribute = private unnamed_addr constant [40 x i8] c"Int getNonKeyAttribute(FILE *, Char **)\00", align 1
@.str.2.98 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@getNonKeyAttribute.name = internal global [19 x i8] c"getNonKeyAttribute\00", align 16
@.str.3.99 = private unnamed_addr constant [47 x i8] c"strlen( temp ) < MAX_SIZE_OF_NON_KEY_ATTRIBUTE\00", align 1
@.str.4.100 = private unnamed_addr constant [19 x i8] c"allocation failure\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1.102 = private unnamed_addr constant [18 x i8] c"getQueryCommand.c\00", align 1
@__PRETTY_FUNCTION__.getQueryCommand = private unnamed_addr constant [58 x i8] c"Int getQueryCommand(FILE *, IndexKey *, DataAttribute **)\00", align 1
@.str.2.103 = private unnamed_addr constant [10 x i8] c"searchKey\00", align 1
@.str.3.104 = private unnamed_addr constant [18 x i8] c"code out-of-range\00", align 1
@getQueryCommand.name = internal global [16 x i8] c"getQueryCommand\00", align 16
@.str.4.105 = private unnamed_addr constant [28 x i8] c"improper format - early EOI\00", align 1
@.str.5.106 = private unnamed_addr constant [20 x i8] c"low-level I/O error\00", align 1
@.str.6.107 = private unnamed_addr constant [19 x i8] c"allocation failure\00", align 1
@.str.7.108 = private unnamed_addr constant [32 x i8] c"allocation of non-key attribute\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1.112 = private unnamed_addr constant [12 x i8] c"getString.c\00", align 1
@__PRETTY_FUNCTION__.getString = private unnamed_addr constant [24 x i8] c"Char *getString(FILE *)\00", align 1
@getString.buffer = internal global [1025 x i8] zeroinitializer, align 16
@.str.2.113 = private unnamed_addr constant [31 x i8] c"maximum buffer length exceeded\00", align 1
@getString.name = internal global [10 x i8] c"getString\00", align 1
@.str.3.114 = private unnamed_addr constant [41 x i8] c"error pushing character back onto stream\00", align 1
@.str.115 = private unnamed_addr constant [8 x i8] c"metrics\00", align 1
@.str.1.116 = private unnamed_addr constant [18 x i8] c"initMetricsData.c\00", align 1
@__PRETTY_FUNCTION__.initMetricsData = private unnamed_addr constant [32 x i8] c"void initMetricsData(Metrics *)\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.1.118 = private unnamed_addr constant [14 x i8] c"insertEntry.c\00", align 1
@__PRETTY_FUNCTION__.insertEntry = private unnamed_addr constant [68 x i8] c"Int insertEntry(IndexNode *, IndexEntry *, Int, Int, IndexEntry **)\00", align 1
@.str.2.119 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@.str.3.120 = private unnamed_addr constant [14 x i8] c"level >= LEAF\00", align 1
@.str.4.121 = private unnamed_addr constant [24 x i8] c"fan >= MINIMUM_FAN_SIZE\00", align 1
@.str.5.122 = private unnamed_addr constant [22 x i8] c"node->entries != NULL\00", align 1
@.str.6.123 = private unnamed_addr constant [27 x i8] c"can't choose entry on node\00", align 1
@insertEntry.name = internal global [12 x i8] c"insertEntry\00", align 1
@.str.7.124 = private unnamed_addr constant [22 x i8] c"can't split LEAF node\00", align 1
@.str.8.125 = private unnamed_addr constant [26 x i8] c"can't split non-LEAF node\00", align 1
@.str.126 = private unnamed_addr constant [5 x i8] c"root\00", align 1
@.str.1.127 = private unnamed_addr constant [9 x i8] c"insert.c\00", align 1
@__PRETTY_FUNCTION__.insert = private unnamed_addr constant [44 x i8] c"Int insert(IndexNode **, DataObject *, Int)\00", align 1
@.str.2.128 = private unnamed_addr constant [6 x i8] c"*root\00", align 1
@.str.3.129 = private unnamed_addr constant [11 x i8] c"dataObject\00", align 1
@.str.4.130 = private unnamed_addr constant [23 x i8] c"dataObject->attributes\00", align 1
@.str.5.131 = private unnamed_addr constant [24 x i8] c"fan >= MINIMUM_FAN_SIZE\00", align 1
@.str.6.132 = private unnamed_addr constant [39 x i8] c"can't create entry for new data object\00", align 1
@insert.name = internal global [7 x i8] c"insert\00", align 1
@.str.7.133 = private unnamed_addr constant [27 x i8] c"can't create new root node\00", align 1
@.str.8.134 = private unnamed_addr constant [32 x i8] c"can't create entry for old root\00", align 1
@.str.135 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1.136 = private unnamed_addr constant [11 x i8] c"keyUnion.c\00", align 1
@__PRETTY_FUNCTION__.keyUnion = private unnamed_addr constant [50 x i8] c"void keyUnion(IndexKey *, IndexKey *, IndexKey *)\00", align 1
@.str.2.137 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.3.138 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.4.141 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@__PRETTY_FUNCTION__.keysUnion = private unnamed_addr constant [41 x i8] c"void keysUnion(IndexEntry *, IndexKey *)\00", align 1
@.str.142 = private unnamed_addr constant [10 x i8] c"root node\00", align 1
@.str.1.143 = private unnamed_addr constant [32 x i8] c"Can't read first command (INIT)\00", align 1
@.str.2.144 = private unnamed_addr constant [34 x i8] c"First command is not INIT command\00", align 1
@.str.3.145 = private unnamed_addr constant [29 x i8] c"Additional INIT command read\00", align 1
@.str.148 = private unnamed_addr constant [9 x i8] c"argc > 0\00", align 1
@.str.1.149 = private unnamed_addr constant [12 x i8] c"openFiles.c\00", align 1
@__PRETTY_FUNCTION__.openFiles = private unnamed_addr constant [55 x i8] c"Int openFiles(Int, Char **, FILE **, FILE **, FILE **)\00", align 1
@.str.2.150 = private unnamed_addr constant [18 x i8] c"argv && argv[ 0 ]\00", align 1
@.str.3.151 = private unnamed_addr constant [19 x i8] c"*inputFile == NULL\00", align 1
@.str.4.152 = private unnamed_addr constant [20 x i8] c"*outputFile == NULL\00", align 1
@.str.5.153 = private unnamed_addr constant [21 x i8] c"*metricsFile == NULL\00", align 1
@.str.6.154 = private unnamed_addr constant [24 x i8] c"missing argument for -i\00", align 1
@openFiles.name = internal global [10 x i8] c"openFiles\00", align 1
@.str.7.155 = private unnamed_addr constant [20 x i8] c"Usage: %s [-h], or\0A\00", align 1
@.str.8.156 = private unnamed_addr constant [10 x i8] c"       %s\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c" [-i <input file = stdin>]\00", align 1
@.str.10.157 = private unnamed_addr constant [29 x i8] c" [-o <output file = stdout>]\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c" [-m <metrics file = stderr>]\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"missing argument for -o\00", align 1
@.str.13.158 = private unnamed_addr constant [24 x i8] c"missing argument for -m\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"unknown option\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"incorrect format - unknown option\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.17.159 = private unnamed_addr constant [25 x i8] c"error opening input file\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.18.160 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"error opening output file\00", align 1
@.str.20.161 = private unnamed_addr constant [27 x i8] c"error opening metrics file\00", align 1
@.str.162 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.1.163 = private unnamed_addr constant [20 x i8] c"outputMetricsData.c\00", align 1
@__PRETTY_FUNCTION__.outputMetricsData = private unnamed_addr constant [42 x i8] c"void outputMetricsData(FILE *, Metrics *)\00", align 1
@.str.2.164 = private unnamed_addr constant [8 x i8] c"metrics\00", align 1
@.str.3.165 = private unnamed_addr constant [29 x i8] c"DIS Data Management Metrics\0A\00", align 1
@.str.4.166 = private unnamed_addr constant [29 x i8] c"    total time  = %li msecs\0A\00", align 1
@.str.5.167 = private unnamed_addr constant [29 x i8] c"    input time  = %li msecs\0A\00", align 1
@.str.6.168 = private unnamed_addr constant [29 x i8] c"    output time = %li msecs\0A\00", align 1
@.str.7.169 = private unnamed_addr constant [30 x i8] c"    Insert Commmand Metrics:\0A\00", align 1
@.str.8.170 = private unnamed_addr constant [40 x i8] c"        best time          = %li msecs\0A\00", align 1
@.str.9.171 = private unnamed_addr constant [40 x i8] c"        worst time         = %li msecs\0A\00", align 1
@.str.10.172 = private unnamed_addr constant [39 x i8] c"        average            = %f msecs\0A\00", align 1
@.str.11.173 = private unnamed_addr constant [39 x i8] c"        standard deviation = %f msecs\0A\00", align 1
@.str.12.174 = private unnamed_addr constant [29 x i8] c"    Query Commmand Metrics:\0A\00", align 1
@.str.13.175 = private unnamed_addr constant [30 x i8] c"    Delete Commmand Metrics:\0A\00", align 1
@outputFile = internal global %struct._IO_FILE* null, align 8
@.str.178 = private unnamed_addr constant [11 x i8] c"outputFile\00", align 1
@.str.1.179 = private unnamed_addr constant [14 x i8] c"outputQuery.c\00", align 1
@__PRETTY_FUNCTION__.outputQuery = private unnamed_addr constant [31 x i8] c"void outputQuery(DataObject *)\00", align 1
@.str.2.180 = private unnamed_addr constant [11 x i8] c"dataObject\00", align 1
@.str.3.181 = private unnamed_addr constant [89 x i8] c"!(dataObject->type != SMALL && dataObject->type != MEDIUM && dataObject->type != LARGE )\00", align 1
@outputQuery.dataObjectString = internal global [44484 x i8] zeroinitializer, align 16
@outputQuery.temp = internal global [51 x i8] zeroinitializer, align 16
@.str.4.182 = private unnamed_addr constant [5 x i8] c"%.8e\00", align 1
@.str.5.183 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6.184 = private unnamed_addr constant [41 x i8] c"dataObject->attributes[ i ].value.nonKey\00", align 1
@.str.7.185 = private unnamed_addr constant [55 x i8] c"strlen( dataObject->attributes[ i ].value.nonKey ) > 0\00", align 1
@.str.8.186 = private unnamed_addr constant [58 x i8] c"dataObject->attributes[ numberOfAttributes ].value.nonKey\00", align 1
@.str.9.187 = private unnamed_addr constant [68 x i8] c"strlen(dataObject->attributes[numberOfAttributes].value.nonKey) > 0\00", align 1
@.str.10.188 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11.189 = private unnamed_addr constant [52 x i8] c"strlen( dataObjectString ) <= REPRESENTATION_LENGTH\00", align 1
@outputBuffer = internal global [88967 x i8] zeroinitializer, align 16
@.str.12.190 = private unnamed_addr constant [30 x i8] c"output buffer full - flushing\00", align 1
@outputQuery.name = internal global [12 x i8] c"outputQuery\00", align 1
@__PRETTY_FUNCTION__.flushOutputBuffer = private unnamed_addr constant [29 x i8] c"void flushOutputBuffer(void)\00", align 1
@.str.14.193 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.13.196 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@__PRETTY_FUNCTION__.initOutputBuffer = private unnamed_addr constant [30 x i8] c"void initOutputBuffer(FILE *)\00", align 1
@.str.197 = private unnamed_addr constant [13 x i8] c"I && I->next\00", align 1
@.str.1.198 = private unnamed_addr constant [19 x i8] c"partitionEntries.c\00", align 1
@__PRETTY_FUNCTION__.partitionEntries = private unnamed_addr constant [71 x i8] c"void partitionEntries(IndexEntry *, Int, IndexEntry **, IndexEntry **)\00", align 1
@.str.2.199 = private unnamed_addr constant [24 x i8] c"fan >= MINIMUM_FAN_SIZE\00", align 1
@.str.3.200 = private unnamed_addr constant [30 x i8] c"too many entries to partition\00", align 1
@partitionEntries.name = internal global [17 x i8] c"partitionEntries\00", align 16
@.str.205 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.1.206 = private unnamed_addr constant [8 x i8] c"query.c\00", align 1
@__PRETTY_FUNCTION__.query = private unnamed_addr constant [85 x i8] c"Int query(IndexNode *, IndexKey *, DataAttribute *, Boolean, void (*)(DataObject *))\00", align 1
@.str.2.207 = private unnamed_addr constant [10 x i8] c"searchKey\00", align 1
@.str.3.208 = private unnamed_addr constant [53 x i8] c"!( checkValidity != TRUE && checkValidity != FALSE )\00", align 1
@.str.4.209 = private unnamed_addr constant [32 x i8] c"invalid index key search values\00", align 1
@query.name = internal global [6 x i8] c"query\00", align 1
@.str.5.210 = private unnamed_addr constant [30 x i8] c"invalid non-key search values\00", align 1
@.str.213 = private unnamed_addr constant [8 x i8] c"metrics\00", align 1
@.str.1.214 = private unnamed_addr constant [17 x i8] c"setMetricsData.c\00", align 1
@__PRETTY_FUNCTION__.setMetricsData = private unnamed_addr constant [44 x i8] c"void setMetricsData(Metrics *, CommandType)\00", align 1
@.str.2.215 = private unnamed_addr constant [119 x i8] c"command == INIT || command == INSERT || command == QUERY || command == DELETE || command == NONE || command == INVALID\00", align 1
@.str.218 = private unnamed_addr constant [12 x i8] c"nodeToSplit\00", align 1
@.str.1.219 = private unnamed_addr constant [12 x i8] c"splitNode.c\00", align 1
@__PRETTY_FUNCTION__.splitNode = private unnamed_addr constant [61 x i8] c"Int splitNode(IndexNode *, IndexEntry *, Int, IndexEntry **)\00", align 1
@.str.2.220 = private unnamed_addr constant [21 x i8] c"nodeToSplit->entries\00", align 1
@.str.3.221 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@.str.4.222 = private unnamed_addr constant [24 x i8] c"fan >= MINIMUM_FAN_SIZE\00", align 1
@.str.5.223 = private unnamed_addr constant [33 x i8] c"allocation failure - split entry\00", align 1
@splitNode.name = internal global [10 x i8] c"splitNode\00", align 1
@.str.6.224 = private unnamed_addr constant [34 x i8] c"allocation failure - sibling node\00", align 1
@startTime = internal global i64 0, align 8
@.str.231 = private unnamed_addr constant [8 x i8] c"metrics\00", align 1
@.str.1.232 = private unnamed_addr constant [20 x i8] c"updateMetricsData.c\00", align 1
@__PRETTY_FUNCTION__.updateMetricsData = private unnamed_addr constant [34 x i8] c"void updateMetricsData(Metrics *)\00", align 1
@.str.2.233 = private unnamed_addr constant [202 x i8] c"!( metrics->lastCommand != INIT && metrics->lastCommand != INSERT && metrics->lastCommand != QUERY && metrics->lastCommand != DELETE && metrics->lastCommand != NONE && metrics->lastCommand != INVALID )\00", align 1
@.str.3.234 = private unnamed_addr constant [36 x i8] c"lastTimeMark doesn't seem to be set\00", align 1
@updateMetricsData.name = internal global [18 x i8] c"updateMetricsData\00", align 16
@.str.237 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.1.238 = private unnamed_addr constant [8 x i8] c"valid.c\00", align 1
@__PRETTY_FUNCTION__.validIndexKey = private unnamed_addr constant [34 x i8] c"Boolean validIndexKey(IndexKey *)\00", align 1
@.str.2.239 = private unnamed_addr constant [18 x i8] c"Lower T > Upper T\00", align 1
@validIndexKey.name = internal global [14 x i8] c"validIndexKey\00", align 1
@.str.3.240 = private unnamed_addr constant [18 x i8] c"Lower X > Upper X\00", align 1
@.str.4.241 = private unnamed_addr constant [18 x i8] c"Lower Y > Upper Y\00", align 1
@.str.5.242 = private unnamed_addr constant [18 x i8] c"Lower Z > Upper Z\00", align 1
@.str.6.245 = private unnamed_addr constant [23 x i8] c"invalid attribute code\00", align 1
@validAttributes.name = internal global [16 x i8] c"validAttributes\00", align 16
@.str.7.246 = private unnamed_addr constant [23 x i8] c"key value out-of-range\00", align 1
@.str.8.247 = private unnamed_addr constant [26 x i8] c"non-key value set to NULL\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @calcMetricsData(%struct.Metrics* %0) #0 {
  %2 = alloca %struct.Metrics*, align 8
  %3 = alloca double, align 8
  store %struct.Metrics* %0, %struct.Metrics** %2, align 8
  %4 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %5 = icmp ne %struct.Metrics* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %8

7:                                                ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.calcMetricsData, i64 0, i64 0)) #7
  unreachable

8:                                                ; preds = %6
  %9 = call i64 @getTime()
  %10 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %11 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %9, %12
  %14 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %15 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %17 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %77

21:                                               ; preds = %8
  %22 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %23 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %23, i32 0, i32 2
  %25 = load double, double* %24, align 8
  %26 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %27 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sitofp i64 %29 to double
  %31 = fdiv double %25, %30
  %32 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %33 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %33, i32 0, i32 6
  store double %31, double* %34, align 8
  %35 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %36 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %36, i32 0, i32 3
  %38 = load double, double* %37, align 8
  %39 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %40 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %40, i32 0, i32 2
  %42 = load double, double* %41, align 8
  %43 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %44 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %44, i32 0, i32 2
  %46 = load double, double* %45, align 8
  %47 = fmul double %42, %46
  %48 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %49 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = sitofp i64 %51 to double
  %53 = fdiv double %47, %52
  %54 = fsub double %38, %53
  store double %54, double* %3, align 8
  %55 = load double, double* %3, align 8
  %56 = fcmp olt double %55, 0.000000e+00
  br i1 %56, label %57, label %64

57:                                               ; preds = %21
  %58 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %59 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %59, i32 0, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %60, align 8
  %61 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %62 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %62, i32 0, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %63, align 8
  br label %76

64:                                               ; preds = %21
  %65 = load double, double* %3, align 8
  %66 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %67 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = sitofp i64 %69 to double
  %71 = fdiv double %65, %70
  %72 = call double @sqrt(double %71) #8
  %73 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %74 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %74, i32 0, i32 7
  store double %72, double* %75, align 8
  br label %76

76:                                               ; preds = %64, %57
  br label %84

77:                                               ; preds = %8
  %78 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %79 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %79, i32 0, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %80, align 8
  %81 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %82 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %82, i32 0, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %83, align 8
  br label %84

84:                                               ; preds = %77, %76
  %85 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %86 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %146

90:                                               ; preds = %84
  %91 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %92 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %92, i32 0, i32 2
  %94 = load double, double* %93, align 8
  %95 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %96 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = sitofp i64 %98 to double
  %100 = fdiv double %94, %99
  %101 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %102 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %102, i32 0, i32 6
  store double %100, double* %103, align 8
  %104 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %105 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %105, i32 0, i32 3
  %107 = load double, double* %106, align 8
  %108 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %109 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %109, i32 0, i32 2
  %111 = load double, double* %110, align 8
  %112 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %113 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %113, i32 0, i32 2
  %115 = load double, double* %114, align 8
  %116 = fmul double %111, %115
  %117 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %118 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = sitofp i64 %120 to double
  %122 = fdiv double %116, %121
  %123 = fsub double %107, %122
  store double %123, double* %3, align 8
  %124 = load double, double* %3, align 8
  %125 = fcmp olt double %124, 0.000000e+00
  br i1 %125, label %126, label %133

126:                                              ; preds = %90
  %127 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %128 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %127, i32 0, i32 4
  %129 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %128, i32 0, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %129, align 8
  %130 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %131 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %131, i32 0, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %132, align 8
  br label %145

133:                                              ; preds = %90
  %134 = load double, double* %3, align 8
  %135 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %136 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = sitofp i64 %138 to double
  %140 = fdiv double %134, %139
  %141 = call double @sqrt(double %140) #8
  %142 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %143 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %143, i32 0, i32 7
  store double %141, double* %144, align 8
  br label %145

145:                                              ; preds = %133, %126
  br label %153

146:                                              ; preds = %84
  %147 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %148 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %148, i32 0, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %149, align 8
  %150 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %151 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %151, i32 0, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %152, align 8
  br label %153

153:                                              ; preds = %146, %145
  %154 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %155 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %154, i32 0, i32 5
  %156 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = icmp sgt i64 %157, 0
  br i1 %158, label %159, label %215

159:                                              ; preds = %153
  %160 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %161 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %160, i32 0, i32 5
  %162 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %161, i32 0, i32 2
  %163 = load double, double* %162, align 8
  %164 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %165 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %164, i32 0, i32 5
  %166 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = sitofp i64 %167 to double
  %169 = fdiv double %163, %168
  %170 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %171 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %170, i32 0, i32 5
  %172 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %171, i32 0, i32 6
  store double %169, double* %172, align 8
  %173 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %174 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %173, i32 0, i32 5
  %175 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %174, i32 0, i32 3
  %176 = load double, double* %175, align 8
  %177 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %178 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %177, i32 0, i32 5
  %179 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %178, i32 0, i32 2
  %180 = load double, double* %179, align 8
  %181 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %182 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %181, i32 0, i32 5
  %183 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %182, i32 0, i32 2
  %184 = load double, double* %183, align 8
  %185 = fmul double %180, %184
  %186 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %187 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %186, i32 0, i32 5
  %188 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = sitofp i64 %189 to double
  %191 = fdiv double %185, %190
  %192 = fsub double %176, %191
  store double %192, double* %3, align 8
  %193 = load double, double* %3, align 8
  %194 = fcmp olt double %193, 0.000000e+00
  br i1 %194, label %195, label %202

195:                                              ; preds = %159
  %196 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %197 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %196, i32 0, i32 5
  %198 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %197, i32 0, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %198, align 8
  %199 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %200 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %199, i32 0, i32 5
  %201 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %200, i32 0, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %201, align 8
  br label %214

202:                                              ; preds = %159
  %203 = load double, double* %3, align 8
  %204 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %205 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %204, i32 0, i32 5
  %206 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = sitofp i64 %207 to double
  %209 = fdiv double %203, %208
  %210 = call double @sqrt(double %209) #8
  %211 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %212 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %211, i32 0, i32 5
  %213 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %212, i32 0, i32 7
  store double %210, double* %213, align 8
  br label %214

214:                                              ; preds = %202, %195
  br label %222

215:                                              ; preds = %153
  %216 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %217 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %216, i32 0, i32 5
  %218 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %217, i32 0, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %218, align 8
  %219 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %220 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %219, i32 0, i32 5
  %221 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %220, i32 0, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %221, align 8
  br label %222

222:                                              ; preds = %215, %214
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.IndexEntry* @chooseEntry(%struct.IndexNode* %0, %struct.IndexEntry* %1) #0 {
  %3 = alloca %struct.IndexNode*, align 8
  %4 = alloca %struct.IndexEntry*, align 8
  %5 = alloca %struct.IndexEntry*, align 8
  %6 = alloca %struct.IndexEntry*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store %struct.IndexNode* %0, %struct.IndexNode** %3, align 8
  store %struct.IndexEntry* %1, %struct.IndexEntry** %4, align 8
  %9 = load %struct.IndexNode*, %struct.IndexNode** %3, align 8
  %10 = icmp ne %struct.IndexNode* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %13

12:                                               ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.3, i64 0, i64 0), i32 44, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.chooseEntry, i64 0, i64 0)) #7
  unreachable

13:                                               ; preds = %11
  %14 = load %struct.IndexNode*, %struct.IndexNode** %3, align 8
  %15 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %14, i32 0, i32 1
  %16 = load %struct.IndexEntry*, %struct.IndexEntry** %15, align 8
  %17 = icmp ne %struct.IndexEntry* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %20

19:                                               ; preds = %13
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.3, i64 0, i64 0), i32 45, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.chooseEntry, i64 0, i64 0)) #7
  unreachable

20:                                               ; preds = %18
  %21 = load %struct.IndexEntry*, %struct.IndexEntry** %4, align 8
  %22 = icmp ne %struct.IndexEntry* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %25

24:                                               ; preds = %20
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.3, i64 0, i64 0), i32 46, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__PRETTY_FUNCTION__.chooseEntry, i64 0, i64 0)) #7
  unreachable

25:                                               ; preds = %23
  %26 = load %struct.IndexNode*, %struct.IndexNode** %3, align 8
  %27 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %26, i32 0, i32 1
  %28 = load %struct.IndexEntry*, %struct.IndexEntry** %27, align 8
  store %struct.IndexEntry* %28, %struct.IndexEntry** %5, align 8
  %29 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %30 = load %struct.IndexEntry*, %struct.IndexEntry** %4, align 8
  %31 = call float @penalty(%struct.IndexEntry* byval(%struct.IndexEntry) align 8 %29, %struct.IndexEntry* byval(%struct.IndexEntry) align 8 %30)
  store float %31, float* %7, align 4
  %32 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %33 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %32, i32 0, i32 2
  %34 = load %struct.IndexEntry*, %struct.IndexEntry** %33, align 8
  store %struct.IndexEntry* %34, %struct.IndexEntry** %6, align 8
  br label %35

35:                                               ; preds = %49, %25
  %36 = load %struct.IndexEntry*, %struct.IndexEntry** %6, align 8
  %37 = icmp ne %struct.IndexEntry* %36, null
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load %struct.IndexEntry*, %struct.IndexEntry** %6, align 8
  %40 = load %struct.IndexEntry*, %struct.IndexEntry** %4, align 8
  %41 = call float @penalty(%struct.IndexEntry* byval(%struct.IndexEntry) align 8 %39, %struct.IndexEntry* byval(%struct.IndexEntry) align 8 %40)
  store float %41, float* %8, align 4
  %42 = load float, float* %8, align 4
  %43 = load float, float* %7, align 4
  %44 = fcmp olt float %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load %struct.IndexEntry*, %struct.IndexEntry** %6, align 8
  store %struct.IndexEntry* %46, %struct.IndexEntry** %5, align 8
  %47 = load float, float* %8, align 4
  store float %47, float* %7, align 4
  br label %48

48:                                               ; preds = %45, %38
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.IndexEntry*, %struct.IndexEntry** %6, align 8
  %51 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %50, i32 0, i32 2
  %52 = load %struct.IndexEntry*, %struct.IndexEntry** %51, align 8
  store %struct.IndexEntry* %52, %struct.IndexEntry** %6, align 8
  br label %35

53:                                               ; preds = %35
  %54 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  ret %struct.IndexEntry* %54
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @clearLine(%struct._IO_FILE* %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %5 = call i32 @fgetc(%struct._IO_FILE* %4)
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %3, align 8
  br label %7

7:                                                ; preds = %18, %1
  %8 = load i64, i64* %3, align 8
  %9 = icmp ne i64 %8, -1
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = load i64, i64* %3, align 8
  %12 = icmp ne i64 %11, 10
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i64, i64* %3, align 8
  %15 = icmp ne i64 %14, 13
  br label %16

16:                                               ; preds = %13, %10, %7
  %17 = phi i1 [ false, %10 ], [ false, %7 ], [ %15, %13 ]
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %20 = call i32 @fgetc(%struct._IO_FILE* %19)
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %3, align 8
  br label %7

22:                                               ; preds = %16
  ret void
}

declare dso_local i32 @fgetc(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @closeFiles(%struct._IO_FILE* %0, %struct._IO_FILE* %1, %struct._IO_FILE* %2) #0 {
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %5, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** %6, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %9 = icmp ne %struct._IO_FILE* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %12

11:                                               ; preds = %3
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.6, i64 0, i64 0), i32 42, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.closeFiles, i64 0, i64 0)) #7
  unreachable

12:                                               ; preds = %10
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %14 = icmp ne %struct._IO_FILE* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %17

16:                                               ; preds = %12
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2.7, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.6, i64 0, i64 0), i32 43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.closeFiles, i64 0, i64 0)) #7
  unreachable

17:                                               ; preds = %15
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %19 = icmp ne %struct._IO_FILE* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %22

21:                                               ; preds = %17
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3.8, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.6, i64 0, i64 0), i32 44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.closeFiles, i64 0, i64 0)) #7
  unreachable

22:                                               ; preds = %20
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %24 = call i32 @fclose(%struct._IO_FILE* %23)
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  call void @errorMessage(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @closeFiles.name, i64 0, i64 0), i8 signext 1)
  br label %29

29:                                               ; preds = %28, %22
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %31 = call i32 @fclose(%struct._IO_FILE* %30)
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  call void @errorMessage(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5.9, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @closeFiles.name, i64 0, i64 0), i8 signext 1)
  br label %36

36:                                               ; preds = %35, %29
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %38 = call i32 @fclose(%struct._IO_FILE* %37)
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  call void @errorMessage(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @closeFiles.name, i64 0, i64 0), i8 signext 1)
  br label %43

43:                                               ; preds = %42, %36
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @consistentKey(%struct.IndexKey* %0, %struct.IndexKey* %1) #0 {
  %3 = alloca %struct.IndexKey*, align 8
  %4 = alloca %struct.IndexKey*, align 8
  %5 = alloca i8, align 1
  store %struct.IndexKey* %0, %struct.IndexKey** %3, align 8
  store %struct.IndexKey* %1, %struct.IndexKey** %4, align 8
  %6 = load %struct.IndexKey*, %struct.IndexKey** %3, align 8
  %7 = icmp ne %struct.IndexKey* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %10

9:                                                ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.11, i64 0, i64 0), i32 49, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.consistentKey, i64 0, i64 0)) #7
  unreachable

10:                                               ; preds = %8
  %11 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %12 = icmp ne %struct.IndexKey* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %15

14:                                               ; preds = %10
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.12, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.11, i64 0, i64 0), i32 50, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.consistentKey, i64 0, i64 0)) #7
  unreachable

15:                                               ; preds = %13
  store i8 1, i8* %5, align 1
  %16 = load %struct.IndexKey*, %struct.IndexKey** %3, align 8
  %17 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %17, i32 0, i32 0
  %19 = load float, float* %18, align 4
  %20 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %21 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %21, i32 0, i32 0
  %23 = load float, float* %22, align 4
  %24 = fcmp ogt float %19, %23
  br i1 %24, label %35, label %25

25:                                               ; preds = %15
  %26 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %27 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %27, i32 0, i32 0
  %29 = load float, float* %28, align 4
  %30 = load %struct.IndexKey*, %struct.IndexKey** %3, align 8
  %31 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %31, i32 0, i32 0
  %33 = load float, float* %32, align 4
  %34 = fcmp ogt float %29, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25, %15
  store i8 0, i8* %5, align 1
  br label %102

36:                                               ; preds = %25
  %37 = load %struct.IndexKey*, %struct.IndexKey** %3, align 8
  %38 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %38, i32 0, i32 1
  %40 = load float, float* %39, align 4
  %41 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %42 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %42, i32 0, i32 1
  %44 = load float, float* %43, align 4
  %45 = fcmp ogt float %40, %44
  br i1 %45, label %56, label %46

46:                                               ; preds = %36
  %47 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %48 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %48, i32 0, i32 1
  %50 = load float, float* %49, align 4
  %51 = load %struct.IndexKey*, %struct.IndexKey** %3, align 8
  %52 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %52, i32 0, i32 1
  %54 = load float, float* %53, align 4
  %55 = fcmp ogt float %50, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %46, %36
  store i8 0, i8* %5, align 1
  br label %101

57:                                               ; preds = %46
  %58 = load %struct.IndexKey*, %struct.IndexKey** %3, align 8
  %59 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %59, i32 0, i32 2
  %61 = load float, float* %60, align 4
  %62 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %63 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %63, i32 0, i32 2
  %65 = load float, float* %64, align 4
  %66 = fcmp ogt float %61, %65
  br i1 %66, label %77, label %67

67:                                               ; preds = %57
  %68 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %69 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %69, i32 0, i32 2
  %71 = load float, float* %70, align 4
  %72 = load %struct.IndexKey*, %struct.IndexKey** %3, align 8
  %73 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %73, i32 0, i32 2
  %75 = load float, float* %74, align 4
  %76 = fcmp ogt float %71, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %67, %57
  store i8 0, i8* %5, align 1
  br label %100

78:                                               ; preds = %67
  %79 = load %struct.IndexKey*, %struct.IndexKey** %3, align 8
  %80 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %80, i32 0, i32 3
  %82 = load float, float* %81, align 4
  %83 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %84 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %84, i32 0, i32 3
  %86 = load float, float* %85, align 4
  %87 = fcmp ogt float %82, %86
  br i1 %87, label %98, label %88

88:                                               ; preds = %78
  %89 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %90 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %90, i32 0, i32 3
  %92 = load float, float* %91, align 4
  %93 = load %struct.IndexKey*, %struct.IndexKey** %3, align 8
  %94 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %94, i32 0, i32 3
  %96 = load float, float* %95, align 4
  %97 = fcmp ogt float %92, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %88, %78
  store i8 0, i8* %5, align 1
  br label %99

99:                                               ; preds = %98, %88
  br label %100

100:                                              ; preds = %99, %77
  br label %101

101:                                              ; preds = %100, %56
  br label %102

102:                                              ; preds = %101, %35
  %103 = load i8, i8* %5, align 1
  ret i8 %103
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @consistentNonKey(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %10

9:                                                ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.11, i64 0, i64 0), i32 106, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.consistentNonKey, i64 0, i64 0)) #7
  unreachable

10:                                               ; preds = %8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %15

14:                                               ; preds = %10
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.12, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.11, i64 0, i64 0), i32 107, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.consistentNonKey, i64 0, i64 0)) #7
  unreachable

15:                                               ; preds = %13
  %16 = load i8*, i8** %3, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i8* @strstr(i8* %16, i8* %17) #9
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i8 1, i8* %5, align 1
  br label %22

21:                                               ; preds = %15
  store i8 0, i8* %5, align 1
  br label %22

22:                                               ; preds = %21, %20
  %23 = load i8, i8* %5, align 1
  ret i8 %23
}

; Function Attrs: nounwind readonly
declare dso_local i8* @strstr(i8*, i8*) #4

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.DataObject* @createDataObject(i32 %0) #0 {
  %2 = alloca %struct.DataObject*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.DataObject*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 1
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 2
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 3
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %9, %1
  br label %17

16:                                               ; preds = %12
  call void @__assert_fail(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1.14, i64 0, i64 0), i32 47, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.createDataObject, i64 0, i64 0)) #7
  unreachable

17:                                               ; preds = %15
  %18 = call noalias i8* @malloc(i64 16) #8
  %19 = bitcast i8* %18 to %struct.DataObject*
  store %struct.DataObject* %19, %struct.DataObject** %6, align 8
  %20 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %21 = icmp eq %struct.DataObject* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  call void @errorMessage(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2.15, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @createDataObject.name, i64 0, i64 0), i8 signext 1)
  store %struct.DataObject* null, %struct.DataObject** %2, align 8
  br label %93

23:                                               ; preds = %17
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %28 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  store i64 18, i64* %5, align 8
  br label %46

29:                                               ; preds = %23
  %30 = load i32, i32* %3, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %34 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %33, i32 0, i32 0
  store i32 2, i32* %34, align 8
  store i64 25, i64* %5, align 8
  br label %45

35:                                               ; preds = %29
  %36 = load i32, i32* %3, align 4
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %40 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %39, i32 0, i32 0
  store i32 3, i32* %40, align 8
  store i64 51, i64* %5, align 8
  br label %44

41:                                               ; preds = %35
  call void @errorMessage(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3.16, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @createDataObject.name, i64 0, i64 0), i8 signext 1)
  %42 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %43 = bitcast %struct.DataObject* %42 to i8*
  call void @free(i8* %43) #8
  store %struct.DataObject* null, %struct.DataObject** %2, align 8
  br label %93

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %32
  br label %46

46:                                               ; preds = %45, %26
  %47 = load i64, i64* %5, align 8
  %48 = mul i64 %47, 8
  %49 = call noalias i8* @malloc(i64 %48) #8
  %50 = bitcast i8* %49 to %struct.DataObjectAttribute*
  %51 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %52 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %51, i32 0, i32 1
  store %struct.DataObjectAttribute* %50, %struct.DataObjectAttribute** %52, align 8
  %53 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %54 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %53, i32 0, i32 1
  %55 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %54, align 8
  %56 = icmp eq %struct.DataObjectAttribute* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %46
  call void @errorMessage(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2.15, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @createDataObject.name, i64 0, i64 0), i8 signext 1)
  %58 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %59 = bitcast %struct.DataObject* %58 to i8*
  call void @free(i8* %59) #8
  store %struct.DataObject* null, %struct.DataObject** %2, align 8
  br label %93

60:                                               ; preds = %46
  store i64 0, i64* %4, align 8
  br label %61

61:                                               ; preds = %72, %60
  %62 = load i64, i64* %4, align 8
  %63 = icmp slt i64 %62, 8
  br i1 %63, label %64, label %75

64:                                               ; preds = %61
  %65 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %66 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %65, i32 0, i32 1
  %67 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %66, align 8
  %68 = load i64, i64* %4, align 8
  %69 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %67, i64 %68
  %70 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %69, i32 0, i32 0
  %71 = bitcast %union.anon.6* %70 to float*
  store float 0xC7EFFFFFE0000000, float* %71, align 8
  br label %72

72:                                               ; preds = %64
  %73 = load i64, i64* %4, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %4, align 8
  br label %61

75:                                               ; preds = %61
  store i64 8, i64* %4, align 8
  br label %76

76:                                               ; preds = %88, %75
  %77 = load i64, i64* %4, align 8
  %78 = load i64, i64* %5, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %76
  %81 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %82 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %81, i32 0, i32 1
  %83 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %82, align 8
  %84 = load i64, i64* %4, align 8
  %85 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %83, i64 %84
  %86 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %85, i32 0, i32 0
  %87 = bitcast %union.anon.6* %86 to i8**
  store i8* null, i8** %87, align 8
  br label %88

88:                                               ; preds = %80
  %89 = load i64, i64* %4, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %4, align 8
  br label %76

91:                                               ; preds = %76
  %92 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  store %struct.DataObject* %92, %struct.DataObject** %2, align 8
  br label %93

93:                                               ; preds = %91, %57, %41, %22
  %94 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  ret %struct.DataObject* %94
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.IndexEntry* @createIndexEntry() #0 {
  %1 = alloca %struct.IndexEntry*, align 8
  store %struct.IndexEntry* null, %struct.IndexEntry** %1, align 8
  %2 = call noalias i8* @malloc(i64 48) #8
  %3 = bitcast i8* %2 to %struct.IndexEntry*
  store %struct.IndexEntry* %3, %struct.IndexEntry** %1, align 8
  %4 = load %struct.IndexEntry*, %struct.IndexEntry** %1, align 8
  %5 = icmp eq %struct.IndexEntry* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @errorMessage(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @createIndexEntry.name, i64 0, i64 0), i8 signext 1)
  br label %48

7:                                                ; preds = %0
  %8 = load %struct.IndexEntry*, %struct.IndexEntry** %1, align 8
  %9 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %8, i32 0, i32 0
  %10 = bitcast %union.anon* %9 to %struct.IndexNode**
  store %struct.IndexNode* null, %struct.IndexNode** %10, align 8
  %11 = load %struct.IndexEntry*, %struct.IndexEntry** %1, align 8
  %12 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.DataObject**
  store %struct.DataObject* null, %struct.DataObject** %13, align 8
  %14 = load %struct.IndexEntry*, %struct.IndexEntry** %1, align 8
  %15 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %16, i32 0, i32 0
  store float 0xC7EFFFFFE0000000, float* %17, align 8
  %18 = load %struct.IndexEntry*, %struct.IndexEntry** %1, align 8
  %19 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %20, i32 0, i32 1
  store float 0xC7EFFFFFE0000000, float* %21, align 4
  %22 = load %struct.IndexEntry*, %struct.IndexEntry** %1, align 8
  %23 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %24, i32 0, i32 2
  store float 0xC7EFFFFFE0000000, float* %25, align 8
  %26 = load %struct.IndexEntry*, %struct.IndexEntry** %1, align 8
  %27 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %28, i32 0, i32 3
  store float 0xC7EFFFFFE0000000, float* %29, align 4
  %30 = load %struct.IndexEntry*, %struct.IndexEntry** %1, align 8
  %31 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %32, i32 0, i32 0
  store float 0x47EFFFFFE0000000, float* %33, align 8
  %34 = load %struct.IndexEntry*, %struct.IndexEntry** %1, align 8
  %35 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %36, i32 0, i32 1
  store float 0x47EFFFFFE0000000, float* %37, align 4
  %38 = load %struct.IndexEntry*, %struct.IndexEntry** %1, align 8
  %39 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %40, i32 0, i32 2
  store float 0x47EFFFFFE0000000, float* %41, align 8
  %42 = load %struct.IndexEntry*, %struct.IndexEntry** %1, align 8
  %43 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %44, i32 0, i32 3
  store float 0x47EFFFFFE0000000, float* %45, align 4
  %46 = load %struct.IndexEntry*, %struct.IndexEntry** %1, align 8
  %47 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %46, i32 0, i32 2
  store %struct.IndexEntry* null, %struct.IndexEntry** %47, align 8
  br label %48

48:                                               ; preds = %7, %6
  %49 = load %struct.IndexEntry*, %struct.IndexEntry** %1, align 8
  ret %struct.IndexEntry* %49
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.IndexNode* @createIndexNode(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.IndexNode*, align 8
  store i64 %0, i64* %2, align 8
  store %struct.IndexNode* null, %struct.IndexNode** %3, align 8
  %4 = load i64, i64* %2, align 8
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  call void @errorMessage(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @createIndexNode.name, i64 0, i64 0), i8 signext 1)
  store %struct.IndexNode* null, %struct.IndexNode** %3, align 8
  br label %18

7:                                                ; preds = %1
  %8 = call noalias i8* @malloc(i64 16) #8
  %9 = bitcast i8* %8 to %struct.IndexNode*
  store %struct.IndexNode* %9, %struct.IndexNode** %3, align 8
  %10 = load %struct.IndexNode*, %struct.IndexNode** %3, align 8
  %11 = icmp eq %struct.IndexNode* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  call void @errorMessage(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1.19, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @createIndexNode.name, i64 0, i64 0), i8 signext 1)
  br label %17

13:                                               ; preds = %7
  %14 = load i64, i64* %2, align 8
  %15 = load %struct.IndexNode*, %struct.IndexNode** %3, align 8
  %16 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  br label %17

17:                                               ; preds = %13, %12
  br label %18

18:                                               ; preds = %17, %6
  %19 = load %struct.IndexNode*, %struct.IndexNode** %3, align 8
  %20 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %19, i32 0, i32 1
  store %struct.IndexEntry* null, %struct.IndexEntry** %20, align 8
  %21 = load %struct.IndexNode*, %struct.IndexNode** %3, align 8
  ret %struct.IndexNode* %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @deleteDataObject(%struct.DataObject* %0) #0 {
  %2 = alloca %struct.DataObject*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.DataObject* %0, %struct.DataObject** %2, align 8
  %5 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %6 = icmp ne %struct.DataObject* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %9

8:                                                ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1.21, i64 0, i64 0), i32 35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.deleteDataObject, i64 0, i64 0)) #7
  unreachable

9:                                                ; preds = %7
  %10 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %11 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %24

14:                                               ; preds = %9
  %15 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %16 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 2
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %21 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 3
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %14, %9
  br label %26

25:                                               ; preds = %19
  call void @__assert_fail(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.2.22, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1.21, i64 0, i64 0), i32 38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.deleteDataObject, i64 0, i64 0)) #7
  unreachable

26:                                               ; preds = %24
  store i64 0, i64* %4, align 8
  %27 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %28 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i64 18, i64* %4, align 8
  br label %46

32:                                               ; preds = %26
  %33 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %34 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i64 25, i64* %4, align 8
  br label %45

38:                                               ; preds = %32
  %39 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %40 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i64 51, i64* %4, align 8
  br label %44

44:                                               ; preds = %43, %38
  br label %45

45:                                               ; preds = %44, %37
  br label %46

46:                                               ; preds = %45, %31
  store i64 8, i64* %3, align 8
  br label %47

47:                                               ; preds = %71, %46
  %48 = load i64, i64* %3, align 8
  %49 = load i64, i64* %4, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %74

51:                                               ; preds = %47
  %52 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %53 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %52, i32 0, i32 1
  %54 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %53, align 8
  %55 = load i64, i64* %3, align 8
  %56 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %54, i64 %55
  %57 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %56, i32 0, i32 0
  %58 = bitcast %union.anon.6* %57 to i8**
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %51
  %62 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %63 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %62, i32 0, i32 1
  %64 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %63, align 8
  %65 = load i64, i64* %3, align 8
  %66 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %64, i64 %65
  %67 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %66, i32 0, i32 0
  %68 = bitcast %union.anon.6* %67 to i8**
  %69 = load i8*, i8** %68, align 8
  call void @free(i8* %69) #8
  br label %70

70:                                               ; preds = %61, %51
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %3, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %3, align 8
  br label %47

74:                                               ; preds = %47
  %75 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %76 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %75, i32 0, i32 1
  %77 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %76, align 8
  %78 = bitcast %struct.DataObjectAttribute* %77 to i8*
  call void @free(i8* %78) #8
  %79 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %80 = bitcast %struct.DataObject* %79 to i8*
  call void @free(i8* %80) #8
  store %struct.DataObject* null, %struct.DataObject** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @deleteEntry(%struct.IndexNode* %0, %struct.IndexKey* %1, %struct.DataAttribute* %2, i8* %3) #0 {
  %5 = alloca %struct.IndexNode*, align 8
  %6 = alloca %struct.IndexKey*, align 8
  %7 = alloca %struct.DataAttribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.IndexEntry*, align 8
  %10 = alloca %struct.IndexEntry*, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct.IndexEntry*, align 8
  %13 = alloca %struct.IndexEntry*, align 8
  %14 = alloca %struct.IndexEntry*, align 8
  %15 = alloca %struct.DataAttribute*, align 8
  %16 = alloca %struct.DataObject*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8, align 1
  %19 = alloca %struct.IndexEntry*, align 8
  store %struct.IndexNode* %0, %struct.IndexNode** %5, align 8
  store %struct.IndexKey* %1, %struct.IndexKey** %6, align 8
  store %struct.DataAttribute* %2, %struct.DataAttribute** %7, align 8
  store i8* %3, i8** %8, align 8
  %20 = load %struct.IndexNode*, %struct.IndexNode** %5, align 8
  %21 = icmp ne %struct.IndexNode* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %24

23:                                               ; preds = %4
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.24, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__PRETTY_FUNCTION__.deleteEntry, i64 0, i64 0)) #7
  unreachable

24:                                               ; preds = %22
  %25 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %26 = icmp ne %struct.IndexKey* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %29

28:                                               ; preds = %24
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2.25, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.24, i64 0, i64 0), i32 65, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__PRETTY_FUNCTION__.deleteEntry, i64 0, i64 0)) #7
  unreachable

29:                                               ; preds = %27
  %30 = load i8*, i8** %8, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %34

33:                                               ; preds = %29
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3.26, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.24, i64 0, i64 0), i32 66, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__PRETTY_FUNCTION__.deleteEntry, i64 0, i64 0)) #7
  unreachable

34:                                               ; preds = %32
  %35 = load i8*, i8** %8, align 8
  store i8 0, i8* %35, align 1
  %36 = load %struct.IndexNode*, %struct.IndexNode** %5, align 8
  %37 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %121

40:                                               ; preds = %34
  store %struct.IndexEntry* null, %struct.IndexEntry** %10, align 8
  %41 = load %struct.IndexNode*, %struct.IndexNode** %5, align 8
  %42 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %41, i32 0, i32 1
  %43 = load %struct.IndexEntry*, %struct.IndexEntry** %42, align 8
  store %struct.IndexEntry* %43, %struct.IndexEntry** %9, align 8
  br label %44

44:                                               ; preds = %119, %40
  %45 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %46 = icmp ne %struct.IndexEntry* %45, null
  br i1 %46, label %47, label %120

47:                                               ; preds = %44
  %48 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %49 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %48, i32 0, i32 1
  %50 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %51 = call signext i8 @consistentKey(%struct.IndexKey* %49, %struct.IndexKey* %50)
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %114

54:                                               ; preds = %47
  %55 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %56 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %55, i32 0, i32 0
  %57 = bitcast %union.anon* %56 to %struct.IndexNode**
  %58 = load %struct.IndexNode*, %struct.IndexNode** %57, align 8
  %59 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %60 = load %struct.DataAttribute*, %struct.DataAttribute** %7, align 8
  call void @deleteEntry(%struct.IndexNode* %58, %struct.IndexKey* %59, %struct.DataAttribute* %60, i8* %11)
  %61 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %62 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %61, i32 0, i32 0
  %63 = bitcast %union.anon* %62 to %struct.IndexNode**
  %64 = load %struct.IndexNode*, %struct.IndexNode** %63, align 8
  %65 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %64, i32 0, i32 1
  %66 = load %struct.IndexEntry*, %struct.IndexEntry** %65, align 8
  %67 = icmp eq %struct.IndexEntry* %66, null
  br i1 %67, label %68, label %89

68:                                               ; preds = %54
  %69 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %70 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %69, i32 0, i32 2
  %71 = load %struct.IndexEntry*, %struct.IndexEntry** %70, align 8
  store %struct.IndexEntry* %71, %struct.IndexEntry** %12, align 8
  %72 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %73 = load %struct.IndexNode*, %struct.IndexNode** %5, align 8
  %74 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  call void @deleteIndexEntry(%struct.IndexEntry* %72, i64 %75)
  %76 = load %struct.IndexEntry*, %struct.IndexEntry** %12, align 8
  store %struct.IndexEntry* %76, %struct.IndexEntry** %9, align 8
  %77 = load i8*, i8** %8, align 8
  store i8 1, i8* %77, align 1
  %78 = load %struct.IndexEntry*, %struct.IndexEntry** %10, align 8
  %79 = icmp ne %struct.IndexEntry* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %68
  %81 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %82 = load %struct.IndexEntry*, %struct.IndexEntry** %10, align 8
  %83 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %82, i32 0, i32 2
  store %struct.IndexEntry* %81, %struct.IndexEntry** %83, align 8
  br label %88

84:                                               ; preds = %68
  %85 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %86 = load %struct.IndexNode*, %struct.IndexNode** %5, align 8
  %87 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %86, i32 0, i32 1
  store %struct.IndexEntry* %85, %struct.IndexEntry** %87, align 8
  br label %88

88:                                               ; preds = %84, %80
  br label %113

89:                                               ; preds = %54
  %90 = load i8, i8* %11, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %107

93:                                               ; preds = %89
  %94 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %95 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %94, i32 0, i32 0
  %96 = bitcast %union.anon* %95 to %struct.IndexNode**
  %97 = load %struct.IndexNode*, %struct.IndexNode** %96, align 8
  %98 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %97, i32 0, i32 1
  %99 = load %struct.IndexEntry*, %struct.IndexEntry** %98, align 8
  %100 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %101 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %100, i32 0, i32 1
  call void @keysUnion(%struct.IndexEntry* %99, %struct.IndexKey* %101)
  %102 = load i8*, i8** %8, align 8
  store i8 1, i8* %102, align 1
  %103 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  store %struct.IndexEntry* %103, %struct.IndexEntry** %10, align 8
  %104 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %105 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %104, i32 0, i32 2
  %106 = load %struct.IndexEntry*, %struct.IndexEntry** %105, align 8
  store %struct.IndexEntry* %106, %struct.IndexEntry** %9, align 8
  br label %112

107:                                              ; preds = %89
  %108 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  store %struct.IndexEntry* %108, %struct.IndexEntry** %10, align 8
  %109 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %110 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %109, i32 0, i32 2
  %111 = load %struct.IndexEntry*, %struct.IndexEntry** %110, align 8
  store %struct.IndexEntry* %111, %struct.IndexEntry** %9, align 8
  br label %112

112:                                              ; preds = %107, %93
  br label %113

113:                                              ; preds = %112, %88
  br label %119

114:                                              ; preds = %47
  %115 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  store %struct.IndexEntry* %115, %struct.IndexEntry** %10, align 8
  %116 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %117 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %116, i32 0, i32 2
  %118 = load %struct.IndexEntry*, %struct.IndexEntry** %117, align 8
  store %struct.IndexEntry* %118, %struct.IndexEntry** %9, align 8
  br label %119

119:                                              ; preds = %114, %113
  br label %44

120:                                              ; preds = %44
  br label %232

121:                                              ; preds = %34
  store %struct.IndexEntry* null, %struct.IndexEntry** %14, align 8
  %122 = load %struct.IndexNode*, %struct.IndexNode** %5, align 8
  %123 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %122, i32 0, i32 1
  %124 = load %struct.IndexEntry*, %struct.IndexEntry** %123, align 8
  store %struct.IndexEntry* %124, %struct.IndexEntry** %13, align 8
  br label %125

125:                                              ; preds = %230, %121
  %126 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %127 = icmp ne %struct.IndexEntry* %126, null
  br i1 %127, label %128, label %231

128:                                              ; preds = %125
  %129 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %130 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %129, i32 0, i32 1
  %131 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %132 = call signext i8 @consistentKey(%struct.IndexKey* %130, %struct.IndexKey* %131)
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %225

135:                                              ; preds = %128
  %136 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %137 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %136, i32 0, i32 0
  %138 = bitcast %union.anon* %137 to %struct.DataObject**
  %139 = load %struct.DataObject*, %struct.DataObject** %138, align 8
  store %struct.DataObject* %139, %struct.DataObject** %16, align 8
  store i64 0, i64* %17, align 8
  %140 = load %struct.DataObject*, %struct.DataObject** %16, align 8
  %141 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %144, label %145

144:                                              ; preds = %135
  store i64 18, i64* %17, align 8
  br label %159

145:                                              ; preds = %135
  %146 = load %struct.DataObject*, %struct.DataObject** %16, align 8
  %147 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %148, 2
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  store i64 25, i64* %17, align 8
  br label %158

151:                                              ; preds = %145
  %152 = load %struct.DataObject*, %struct.DataObject** %16, align 8
  %153 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp eq i32 %154, 3
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  store i64 51, i64* %17, align 8
  br label %157

157:                                              ; preds = %156, %151
  br label %158

158:                                              ; preds = %157, %150
  br label %159

159:                                              ; preds = %158, %144
  store i8 1, i8* %18, align 1
  %160 = load %struct.DataAttribute*, %struct.DataAttribute** %7, align 8
  store %struct.DataAttribute* %160, %struct.DataAttribute** %15, align 8
  br label %161

161:                                              ; preds = %193, %159
  %162 = load %struct.DataAttribute*, %struct.DataAttribute** %15, align 8
  %163 = icmp ne %struct.DataAttribute* %162, null
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = load i8, i8* %18, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp eq i32 %166, 1
  br label %168

168:                                              ; preds = %164, %161
  %169 = phi i1 [ false, %161 ], [ %167, %164 ]
  br i1 %169, label %170, label %197

170:                                              ; preds = %168
  %171 = load %struct.DataAttribute*, %struct.DataAttribute** %15, align 8
  %172 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* %17, align 8
  %175 = icmp slt i64 %173, %174
  br i1 %175, label %176, label %193

176:                                              ; preds = %170
  %177 = load %struct.DataObject*, %struct.DataObject** %16, align 8
  %178 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %177, i32 0, i32 1
  %179 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %178, align 8
  %180 = load %struct.DataAttribute*, %struct.DataAttribute** %15, align 8
  %181 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %179, i64 %182
  %184 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %183, i32 0, i32 0
  %185 = bitcast %union.anon.6* %184 to i8**
  %186 = load i8*, i8** %185, align 8
  %187 = load %struct.DataAttribute*, %struct.DataAttribute** %15, align 8
  %188 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %188, i32 0, i32 0
  %190 = bitcast %union.anon.6* %189 to i8**
  %191 = load i8*, i8** %190, align 8
  %192 = call signext i8 @consistentNonKey(i8* %186, i8* %191)
  store i8 %192, i8* %18, align 1
  br label %193

193:                                              ; preds = %176, %170
  %194 = load %struct.DataAttribute*, %struct.DataAttribute** %15, align 8
  %195 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %194, i32 0, i32 2
  %196 = load %struct.DataAttribute*, %struct.DataAttribute** %195, align 8
  store %struct.DataAttribute* %196, %struct.DataAttribute** %15, align 8
  br label %161

197:                                              ; preds = %168
  %198 = load i8, i8* %18, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %197
  %202 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  store %struct.IndexEntry* %202, %struct.IndexEntry** %14, align 8
  %203 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %204 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %203, i32 0, i32 2
  %205 = load %struct.IndexEntry*, %struct.IndexEntry** %204, align 8
  store %struct.IndexEntry* %205, %struct.IndexEntry** %13, align 8
  br label %224

206:                                              ; preds = %197
  %207 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %208 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %207, i32 0, i32 2
  %209 = load %struct.IndexEntry*, %struct.IndexEntry** %208, align 8
  store %struct.IndexEntry* %209, %struct.IndexEntry** %19, align 8
  %210 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  call void @deleteIndexEntry(%struct.IndexEntry* %210, i64 0)
  %211 = load %struct.IndexEntry*, %struct.IndexEntry** %19, align 8
  store %struct.IndexEntry* %211, %struct.IndexEntry** %13, align 8
  %212 = load i8*, i8** %8, align 8
  store i8 1, i8* %212, align 1
  %213 = load %struct.IndexEntry*, %struct.IndexEntry** %14, align 8
  %214 = icmp ne %struct.IndexEntry* %213, null
  br i1 %214, label %215, label %219

215:                                              ; preds = %206
  %216 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %217 = load %struct.IndexEntry*, %struct.IndexEntry** %14, align 8
  %218 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %217, i32 0, i32 2
  store %struct.IndexEntry* %216, %struct.IndexEntry** %218, align 8
  br label %223

219:                                              ; preds = %206
  %220 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %221 = load %struct.IndexNode*, %struct.IndexNode** %5, align 8
  %222 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %221, i32 0, i32 1
  store %struct.IndexEntry* %220, %struct.IndexEntry** %222, align 8
  br label %223

223:                                              ; preds = %219, %215
  br label %224

224:                                              ; preds = %223, %201
  br label %230

225:                                              ; preds = %128
  %226 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  store %struct.IndexEntry* %226, %struct.IndexEntry** %14, align 8
  %227 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %228 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %227, i32 0, i32 2
  %229 = load %struct.IndexEntry*, %struct.IndexEntry** %228, align 8
  store %struct.IndexEntry* %229, %struct.IndexEntry** %13, align 8
  br label %230

230:                                              ; preds = %225, %224
  br label %125

231:                                              ; preds = %125
  br label %232

232:                                              ; preds = %231, %120
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @deleteIndexEntry(%struct.IndexEntry* %0, i64 %1) #0 {
  %3 = alloca %struct.IndexEntry*, align 8
  %4 = alloca i64, align 8
  store %struct.IndexEntry* %0, %struct.IndexEntry** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.IndexEntry*, %struct.IndexEntry** %3, align 8
  %6 = icmp ne %struct.IndexEntry* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %9

8:                                                ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1.30, i64 0, i64 0), i32 35, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.deleteIndexEntry, i64 0, i64 0)) #7
  unreachable

9:                                                ; preds = %7
  %10 = load i64, i64* %4, align 8
  %11 = icmp sge i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %14

13:                                               ; preds = %9
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.31, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1.30, i64 0, i64 0), i32 36, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.deleteIndexEntry, i64 0, i64 0)) #7
  unreachable

14:                                               ; preds = %12
  %15 = load i64, i64* %4, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = load %struct.IndexEntry*, %struct.IndexEntry** %3, align 8
  %19 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %18, i32 0, i32 0
  %20 = bitcast %union.anon* %19 to %struct.IndexNode**
  %21 = load %struct.IndexNode*, %struct.IndexNode** %20, align 8
  %22 = icmp ne %struct.IndexNode* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %25

24:                                               ; preds = %17
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3.32, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1.30, i64 0, i64 0), i32 43, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.deleteIndexEntry, i64 0, i64 0)) #7
  unreachable

25:                                               ; preds = %23
  %26 = load %struct.IndexEntry*, %struct.IndexEntry** %3, align 8
  %27 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %26, i32 0, i32 0
  %28 = bitcast %union.anon* %27 to %struct.IndexNode**
  %29 = load %struct.IndexNode*, %struct.IndexNode** %28, align 8
  call void @deleteIndexNode(%struct.IndexNode* %29)
  br label %48

30:                                               ; preds = %14
  %31 = load i64, i64* %4, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load %struct.IndexEntry*, %struct.IndexEntry** %3, align 8
  %35 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %34, i32 0, i32 0
  %36 = bitcast %union.anon* %35 to %struct.DataObject**
  %37 = load %struct.DataObject*, %struct.DataObject** %36, align 8
  %38 = icmp ne %struct.DataObject* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %41

40:                                               ; preds = %33
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4.33, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1.30, i64 0, i64 0), i32 51, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.deleteIndexEntry, i64 0, i64 0)) #7
  unreachable

41:                                               ; preds = %39
  %42 = load %struct.IndexEntry*, %struct.IndexEntry** %3, align 8
  %43 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %42, i32 0, i32 0
  %44 = bitcast %union.anon* %43 to %struct.DataObject**
  %45 = load %struct.DataObject*, %struct.DataObject** %44, align 8
  call void @deleteDataObject(%struct.DataObject* %45)
  br label %47

46:                                               ; preds = %30
  call void @errorMessage(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5.34, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @deleteIndexEntry.name, i64 0, i64 0), i8 signext 1)
  br label %47

47:                                               ; preds = %46, %41
  br label %48

48:                                               ; preds = %47, %25
  %49 = load %struct.IndexEntry*, %struct.IndexEntry** %3, align 8
  %50 = bitcast %struct.IndexEntry* %49 to i8*
  call void @free(i8* %50) #8
  store %struct.IndexEntry* null, %struct.IndexEntry** %3, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @deleteIndexNode(%struct.IndexNode* %0) #0 {
  %2 = alloca %struct.IndexNode*, align 8
  %3 = alloca %struct.IndexEntry*, align 8
  %4 = alloca %struct.IndexEntry*, align 8
  store %struct.IndexNode* %0, %struct.IndexNode** %2, align 8
  %5 = load %struct.IndexNode*, %struct.IndexNode** %2, align 8
  %6 = icmp ne %struct.IndexNode* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %9

8:                                                ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1.38, i64 0, i64 0), i32 29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.deleteIndexNode, i64 0, i64 0)) #7
  unreachable

9:                                                ; preds = %7
  %10 = load %struct.IndexNode*, %struct.IndexNode** %2, align 8
  %11 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %10, i32 0, i32 1
  %12 = load %struct.IndexEntry*, %struct.IndexEntry** %11, align 8
  store %struct.IndexEntry* %12, %struct.IndexEntry** %3, align 8
  br label %13

13:                                               ; preds = %26, %9
  %14 = load %struct.IndexEntry*, %struct.IndexEntry** %3, align 8
  %15 = icmp ne %struct.IndexEntry* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %13
  %17 = load %struct.IndexEntry*, %struct.IndexEntry** %3, align 8
  %18 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %17, i32 0, i32 2
  %19 = load %struct.IndexEntry*, %struct.IndexEntry** %18, align 8
  store %struct.IndexEntry* %19, %struct.IndexEntry** %4, align 8
  %20 = load %struct.IndexNode*, %struct.IndexNode** %2, align 8
  %21 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %26

25:                                               ; preds = %16
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2.39, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1.38, i64 0, i64 0), i32 47, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.deleteIndexNode, i64 0, i64 0)) #7
  unreachable

26:                                               ; preds = %24
  %27 = load %struct.IndexEntry*, %struct.IndexEntry** %3, align 8
  %28 = load %struct.IndexNode*, %struct.IndexNode** %2, align 8
  %29 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  call void @deleteIndexEntry(%struct.IndexEntry* %27, i64 %30)
  %31 = load %struct.IndexEntry*, %struct.IndexEntry** %4, align 8
  store %struct.IndexEntry* %31, %struct.IndexEntry** %3, align 8
  br label %13

32:                                               ; preds = %13
  %33 = load %struct.IndexNode*, %struct.IndexNode** %2, align 8
  %34 = bitcast %struct.IndexNode* %33 to i8*
  call void @free(i8* %34) #8
  store %struct.IndexNode* null, %struct.IndexNode** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @delete(%struct.IndexNode** %0, %struct.IndexKey* %1, %struct.DataAttribute* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.IndexNode**, align 8
  %6 = alloca %struct.IndexKey*, align 8
  %7 = alloca %struct.DataAttribute*, align 8
  %8 = alloca i8, align 1
  %9 = alloca %struct.IndexNode*, align 8
  store %struct.IndexNode** %0, %struct.IndexNode*** %5, align 8
  store %struct.IndexKey* %1, %struct.IndexKey** %6, align 8
  store %struct.DataAttribute* %2, %struct.DataAttribute** %7, align 8
  %10 = load %struct.IndexNode**, %struct.IndexNode*** %5, align 8
  %11 = icmp ne %struct.IndexNode** %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %14

13:                                               ; preds = %3
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.41, i64 0, i64 0), i32 70, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.delete, i64 0, i64 0)) #7
  unreachable

14:                                               ; preds = %12
  %15 = load %struct.IndexNode**, %struct.IndexNode*** %5, align 8
  %16 = load %struct.IndexNode*, %struct.IndexNode** %15, align 8
  %17 = icmp ne %struct.IndexNode* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %20

19:                                               ; preds = %14
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.42, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.41, i64 0, i64 0), i32 71, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.delete, i64 0, i64 0)) #7
  unreachable

20:                                               ; preds = %18
  %21 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %22 = icmp ne %struct.IndexKey* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %25

24:                                               ; preds = %20
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3.43, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.41, i64 0, i64 0), i32 72, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.delete, i64 0, i64 0)) #7
  unreachable

25:                                               ; preds = %23
  %26 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %27 = call signext i8 @validIndexKey(%struct.IndexKey* %26)
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  call void @errorMessage(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4.44, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @delete.name, i64 0, i64 0), i8 signext 1)
  store i64 1, i64* %4, align 8
  br label %100

31:                                               ; preds = %25
  %32 = load %struct.DataAttribute*, %struct.DataAttribute** %7, align 8
  %33 = call signext i8 @validAttributes(%struct.DataAttribute* %32)
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  call void @errorMessage(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5.45, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @delete.name, i64 0, i64 0), i8 signext 1)
  store i64 2, i64* %4, align 8
  br label %100

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.IndexNode**, %struct.IndexNode*** %5, align 8
  %40 = load %struct.IndexNode*, %struct.IndexNode** %39, align 8
  %41 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %42 = load %struct.DataAttribute*, %struct.DataAttribute** %7, align 8
  call void @deleteEntry(%struct.IndexNode* %40, %struct.IndexKey* %41, %struct.DataAttribute* %42, i8* %8)
  %43 = load %struct.IndexNode**, %struct.IndexNode*** %5, align 8
  %44 = load %struct.IndexNode*, %struct.IndexNode** %43, align 8
  %45 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %38
  %49 = load %struct.IndexNode**, %struct.IndexNode*** %5, align 8
  %50 = load %struct.IndexNode*, %struct.IndexNode** %49, align 8
  %51 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %50, i32 0, i32 1
  %52 = load %struct.IndexEntry*, %struct.IndexEntry** %51, align 8
  %53 = icmp eq %struct.IndexEntry* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.IndexNode**, %struct.IndexNode*** %5, align 8
  %56 = load %struct.IndexNode*, %struct.IndexNode** %55, align 8
  %57 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %54, %48, %38
  br label %59

59:                                               ; preds = %81, %58
  %60 = load %struct.IndexNode**, %struct.IndexNode*** %5, align 8
  %61 = load %struct.IndexNode*, %struct.IndexNode** %60, align 8
  %62 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %79

65:                                               ; preds = %59
  %66 = load %struct.IndexNode**, %struct.IndexNode*** %5, align 8
  %67 = load %struct.IndexNode*, %struct.IndexNode** %66, align 8
  %68 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %67, i32 0, i32 1
  %69 = load %struct.IndexEntry*, %struct.IndexEntry** %68, align 8
  %70 = icmp ne %struct.IndexEntry* %69, null
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load %struct.IndexNode**, %struct.IndexNode*** %5, align 8
  %73 = load %struct.IndexNode*, %struct.IndexNode** %72, align 8
  %74 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %73, i32 0, i32 1
  %75 = load %struct.IndexEntry*, %struct.IndexEntry** %74, align 8
  %76 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %75, i32 0, i32 2
  %77 = load %struct.IndexEntry*, %struct.IndexEntry** %76, align 8
  %78 = icmp eq %struct.IndexEntry* %77, null
  br label %79

79:                                               ; preds = %71, %65, %59
  %80 = phi i1 [ false, %65 ], [ false, %59 ], [ %78, %71 ]
  br i1 %80, label %81, label %99

81:                                               ; preds = %79
  %82 = load %struct.IndexNode**, %struct.IndexNode*** %5, align 8
  %83 = load %struct.IndexNode*, %struct.IndexNode** %82, align 8
  store %struct.IndexNode* %83, %struct.IndexNode** %9, align 8
  %84 = load %struct.IndexNode**, %struct.IndexNode*** %5, align 8
  %85 = load %struct.IndexNode*, %struct.IndexNode** %84, align 8
  %86 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %85, i32 0, i32 1
  %87 = load %struct.IndexEntry*, %struct.IndexEntry** %86, align 8
  %88 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %87, i32 0, i32 0
  %89 = bitcast %union.anon* %88 to %struct.IndexNode**
  %90 = load %struct.IndexNode*, %struct.IndexNode** %89, align 8
  %91 = load %struct.IndexNode**, %struct.IndexNode*** %5, align 8
  store %struct.IndexNode* %90, %struct.IndexNode** %91, align 8
  %92 = load %struct.IndexNode*, %struct.IndexNode** %9, align 8
  %93 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %92, i32 0, i32 1
  %94 = load %struct.IndexEntry*, %struct.IndexEntry** %93, align 8
  %95 = bitcast %struct.IndexEntry* %94 to i8*
  call void @free(i8* %95) #8
  %96 = load %struct.IndexNode*, %struct.IndexNode** %9, align 8
  %97 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %96, i32 0, i32 1
  store %struct.IndexEntry* null, %struct.IndexEntry** %97, align 8
  %98 = load %struct.IndexNode*, %struct.IndexNode** %9, align 8
  call void @deleteIndexNode(%struct.IndexNode* %98)
  br label %59

99:                                               ; preds = %79
  store i64 0, i64* %4, align 8
  br label %100

100:                                              ; preds = %99, %36, %30
  %101 = load i64, i64* %4, align 8
  ret i64 %101
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @errorMessage(i8* %0, i8 signext %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca [1024 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load i8, i8* %4, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strlen(i8* %10) #9
  %12 = icmp ugt i64 %11, 1023
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.48, i64 0, i64 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.49, i64 0, i64 0), i8* %17)
  br label %22

19:                                               ; preds = %9
  %20 = load i8*, i8** %3, align 8
  %21 = call i8* @strcpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @errorBuffer, i64 0, i64 0), i8* %20) #8
  br label %22

22:                                               ; preds = %19, %13
  br label %46

23:                                               ; preds = %2
  %24 = call i64 @strlen(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @errorBuffer, i64 0, i64 0)) #9
  %25 = load i8*, i8** %3, align 8
  %26 = call i64 @strlen(i8* %25) #9
  %27 = add i64 %24, %26
  %28 = icmp ugt i64 %27, 1023
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.50, i64 0, i64 0))
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3.51, i64 0, i64 0), i8* %33, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @errorBuffer, i64 0, i64 0))
  call void @errorMessage(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4.52, i64 0, i64 0), i8 signext 0)
  br label %45

35:                                               ; preds = %23
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %37 = load i8*, i8** %3, align 8
  %38 = call i8* @strcpy(i8* %36, i8* %37) #8
  %39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %40 = call i8* @strcat(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5.53, i64 0, i64 0)) #8
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %42 = call i8* @strcat(i8* %41, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @errorBuffer, i64 0, i64 0)) #8
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %44 = call i8* @strcpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @errorBuffer, i64 0, i64 0), i8* %43) #8
  br label %45

45:                                               ; preds = %35, %29
  br label %46

46:                                               ; preds = %45, %22
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #4

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8*, i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @flushErrorMessage() #0 {
  %1 = call i64 @strlen(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @errorBuffer, i64 0, i64 0)) #9
  %2 = icmp ugt i64 %1, 0
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6.54, i64 0, i64 0), i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @errorBuffer, i64 0, i64 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = call i32 @fflush(%struct._IO_FILE* %6)
  br label %8

8:                                                ; preds = %3, %0
  ret void
}

declare dso_local i32 @fflush(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @getDeleteCommand(%struct._IO_FILE* %0, %struct.IndexKey* %1, %struct.DataAttribute** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca %struct.IndexKey*, align 8
  %7 = alloca %struct.DataAttribute**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca float, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.DataAttribute*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  store %struct.IndexKey* %1, %struct.IndexKey** %6, align 8
  store %struct.DataAttribute** %2, %struct.DataAttribute*** %7, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %14 = icmp ne %struct._IO_FILE* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %17

16:                                               ; preds = %3
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1.56, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.getDeleteCommand, i64 0, i64 0)) #7
  unreachable

17:                                               ; preds = %15
  %18 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %19 = icmp ne %struct.IndexKey* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %22

21:                                               ; preds = %17
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2.57, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1.56, i64 0, i64 0), i32 79, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.getDeleteCommand, i64 0, i64 0)) #7
  unreachable

22:                                               ; preds = %20
  %23 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %24 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %24, i32 0, i32 0
  store float 0xC7EFFFFFE0000000, float* %25, align 4
  %26 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %27 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %27, i32 0, i32 1
  store float 0xC7EFFFFFE0000000, float* %28, align 4
  %29 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %30 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %30, i32 0, i32 2
  store float 0xC7EFFFFFE0000000, float* %31, align 4
  %32 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %33 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %33, i32 0, i32 3
  store float 0xC7EFFFFFE0000000, float* %34, align 4
  %35 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %36 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %36, i32 0, i32 0
  store float 0x47EFFFFFE0000000, float* %37, align 4
  %38 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %39 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %39, i32 0, i32 1
  store float 0x47EFFFFFE0000000, float* %40, align 4
  %41 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %42 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %42, i32 0, i32 2
  store float 0x47EFFFFFE0000000, float* %43, align 4
  %44 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %45 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %45, i32 0, i32 3
  store float 0x47EFFFFFE0000000, float* %46, align 4
  %47 = load %struct.DataAttribute**, %struct.DataAttribute*** %7, align 8
  store %struct.DataAttribute* null, %struct.DataAttribute** %47, align 8
  store i64 0, i64* %9, align 8
  br label %48

48:                                               ; preds = %208, %22
  %49 = load i64, i64* %9, align 8
  %50 = icmp ne i64 %49, 1
  br i1 %50, label %51, label %209

51:                                               ; preds = %48
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %53 = call i64 @getInt(%struct._IO_FILE* %52, i64* %8)
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %193

56:                                               ; preds = %51
  %57 = load i64, i64* %8, align 8
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i64, i64* %8, align 8
  %61 = icmp sgt i64 %60, 50
  br i1 %61, label %62, label %63

62:                                               ; preds = %59, %56
  call void @errorMessage(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3.58, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @getDeleteCommand.name, i64 0, i64 0), i8 signext 1)
  store i64 3, i64* %4, align 8
  br label %210

63:                                               ; preds = %59
  %64 = load i64, i64* %8, align 8
  %65 = icmp slt i64 %64, 8
  br i1 %65, label %66, label %154

66:                                               ; preds = %63
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %68 = call i64 @getKeyAttribute(%struct._IO_FILE* %67, float* %10)
  store i64 %68, i64* %9, align 8
  %69 = load i64, i64* %9, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %143

71:                                               ; preds = %66
  %72 = load i64, i64* %8, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load float, float* %10, align 4
  %76 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %77 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %77, i32 0, i32 0
  store float %75, float* %78, align 4
  br label %142

79:                                               ; preds = %71
  %80 = load i64, i64* %8, align 8
  %81 = icmp eq i64 %80, 1
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load float, float* %10, align 4
  %84 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %85 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %85, i32 0, i32 1
  store float %83, float* %86, align 4
  br label %141

87:                                               ; preds = %79
  %88 = load i64, i64* %8, align 8
  %89 = icmp eq i64 %88, 2
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load float, float* %10, align 4
  %92 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %93 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %93, i32 0, i32 2
  store float %91, float* %94, align 4
  br label %140

95:                                               ; preds = %87
  %96 = load i64, i64* %8, align 8
  %97 = icmp eq i64 %96, 3
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load float, float* %10, align 4
  %100 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %101 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %101, i32 0, i32 3
  store float %99, float* %102, align 4
  br label %139

103:                                              ; preds = %95
  %104 = load i64, i64* %8, align 8
  %105 = icmp eq i64 %104, 4
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load float, float* %10, align 4
  %108 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %109 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %109, i32 0, i32 0
  store float %107, float* %110, align 4
  br label %138

111:                                              ; preds = %103
  %112 = load i64, i64* %8, align 8
  %113 = icmp eq i64 %112, 5
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load float, float* %10, align 4
  %116 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %117 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %117, i32 0, i32 1
  store float %115, float* %118, align 4
  br label %137

119:                                              ; preds = %111
  %120 = load i64, i64* %8, align 8
  %121 = icmp eq i64 %120, 6
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load float, float* %10, align 4
  %124 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %125 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %125, i32 0, i32 2
  store float %123, float* %126, align 4
  br label %136

127:                                              ; preds = %119
  %128 = load i64, i64* %8, align 8
  %129 = icmp eq i64 %128, 7
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load float, float* %10, align 4
  %132 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %133 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %133, i32 0, i32 3
  store float %131, float* %134, align 4
  br label %135

135:                                              ; preds = %130, %127
  br label %136

136:                                              ; preds = %135, %122
  br label %137

137:                                              ; preds = %136, %114
  br label %138

138:                                              ; preds = %137, %106
  br label %139

139:                                              ; preds = %138, %98
  br label %140

140:                                              ; preds = %139, %90
  br label %141

141:                                              ; preds = %140, %82
  br label %142

142:                                              ; preds = %141, %74
  br label %153

143:                                              ; preds = %66
  %144 = load i64, i64* %9, align 8
  %145 = icmp eq i64 %144, 1
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  call void @errorMessage(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4.59, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @getDeleteCommand.name, i64 0, i64 0), i8 signext 1)
  store i64 2, i64* %4, align 8
  br label %210

147:                                              ; preds = %143
  %148 = load i64, i64* %9, align 8
  %149 = icmp eq i64 %148, 2
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  call void @errorMessage(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5.60, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @getDeleteCommand.name, i64 0, i64 0), i8 signext 1)
  store i64 1, i64* %4, align 8
  br label %210

151:                                              ; preds = %147
  br label %152

152:                                              ; preds = %151
  br label %153

153:                                              ; preds = %152, %142
  br label %191

154:                                              ; preds = %63
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %156 = call i64 @getNonKeyAttribute(%struct._IO_FILE* %155, i8** %11)
  store i64 %156, i64* %9, align 8
  %157 = load i64, i64* %9, align 8
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %180

159:                                              ; preds = %154
  %160 = call noalias i8* @malloc(i64 24) #8
  %161 = bitcast i8* %160 to %struct.DataAttribute*
  store %struct.DataAttribute* %161, %struct.DataAttribute** %12, align 8
  %162 = load %struct.DataAttribute*, %struct.DataAttribute** %12, align 8
  %163 = icmp eq %struct.DataAttribute* %162, null
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  call void @errorMessage(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6.61, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @getDeleteCommand.name, i64 0, i64 0), i8 signext 1)
  store i64 4, i64* %4, align 8
  br label %210

165:                                              ; preds = %159
  %166 = load i64, i64* %8, align 8
  %167 = load %struct.DataAttribute*, %struct.DataAttribute** %12, align 8
  %168 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %167, i32 0, i32 0
  store i64 %166, i64* %168, align 8
  %169 = load i8*, i8** %11, align 8
  %170 = load %struct.DataAttribute*, %struct.DataAttribute** %12, align 8
  %171 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %171, i32 0, i32 0
  %173 = bitcast %union.anon.6* %172 to i8**
  store i8* %169, i8** %173, align 8
  %174 = load %struct.DataAttribute**, %struct.DataAttribute*** %7, align 8
  %175 = load %struct.DataAttribute*, %struct.DataAttribute** %174, align 8
  %176 = load %struct.DataAttribute*, %struct.DataAttribute** %12, align 8
  %177 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %176, i32 0, i32 2
  store %struct.DataAttribute* %175, %struct.DataAttribute** %177, align 8
  %178 = load %struct.DataAttribute*, %struct.DataAttribute** %12, align 8
  %179 = load %struct.DataAttribute**, %struct.DataAttribute*** %7, align 8
  store %struct.DataAttribute* %178, %struct.DataAttribute** %179, align 8
  br label %190

180:                                              ; preds = %154
  %181 = load i64, i64* %9, align 8
  %182 = icmp eq i64 %181, 2
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  call void @errorMessage(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4.59, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @getDeleteCommand.name, i64 0, i64 0), i8 signext 1)
  store i64 2, i64* %4, align 8
  br label %210

184:                                              ; preds = %180
  %185 = load i64, i64* %9, align 8
  %186 = icmp eq i64 %185, 1
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  call void @errorMessage(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @getDeleteCommand.name, i64 0, i64 0), i8 signext 1)
  store i64 4, i64* %4, align 8
  br label %210

188:                                              ; preds = %184
  br label %189

189:                                              ; preds = %188
  br label %190

190:                                              ; preds = %189, %165
  br label %191

191:                                              ; preds = %190, %153
  br label %192

192:                                              ; preds = %191
  br label %208

193:                                              ; preds = %51
  %194 = load i64, i64* %9, align 8
  %195 = icmp eq i64 %194, 1
  br i1 %195, label %196, label %197

196:                                              ; preds = %193
  br label %207

197:                                              ; preds = %193
  %198 = load i64, i64* %9, align 8
  %199 = icmp eq i64 %198, 2
  br i1 %199, label %200, label %201

200:                                              ; preds = %197
  store i64 3, i64* %4, align 8
  br label %210

201:                                              ; preds = %197
  %202 = load i64, i64* %9, align 8
  %203 = icmp eq i64 %202, 3
  br i1 %203, label %204, label %205

204:                                              ; preds = %201
  store i64 3, i64* %4, align 8
  br label %210

205:                                              ; preds = %201
  br label %206

206:                                              ; preds = %205
  br label %207

207:                                              ; preds = %206, %196
  br label %208

208:                                              ; preds = %207, %192
  br label %48

209:                                              ; preds = %48
  store i64 0, i64* %4, align 8
  br label %210

210:                                              ; preds = %209, %204, %200, %187, %183, %164, %150, %146, %62
  %211 = load i64, i64* %4, align 8
  ret i64 %211
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @getFloat(%struct._IO_FILE* %0, float* %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store float* %1, float** %4, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %9 = icmp ne %struct._IO_FILE* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %12

11:                                               ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.63, i64 0, i64 0), i32 56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.getFloat, i64 0, i64 0)) #7
  unreachable

12:                                               ; preds = %10
  %13 = load float*, float** %4, align 8
  %14 = icmp ne float* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %17

16:                                               ; preds = %12
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.64, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.63, i64 0, i64 0), i32 57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.getFloat, i64 0, i64 0)) #7
  unreachable

17:                                               ; preds = %15
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %19 = call i8* @getString(%struct._IO_FILE* %18)
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %59

22:                                               ; preds = %17
  %23 = load i8*, i8** %5, align 8
  %24 = call double @strtod(i8* %23, i8** %6) #8
  %25 = fptrunc double %24 to float
  %26 = load float*, float** %4, align 8
  store float %25, float* %26, align 4
  %27 = load float*, float** %4, align 8
  %28 = load float, float* %27, align 4
  %29 = fpext float %28 to double
  %30 = fcmp oeq double %29, 0.000000e+00
  br i1 %30, label %31, label %41

31:                                               ; preds = %22
  %32 = load i8*, i8** %6, align 8
  %33 = call i64 @strlen(i8* %32) #9
  %34 = icmp ugt i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = call i32* @__errno_location() #10
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 34
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load float*, float** %4, align 8
  store float 0xC7EFFFFFE0000000, float* %40, align 4
  store i64 3, i64* %7, align 8
  br label %58

41:                                               ; preds = %35, %31, %22
  %42 = load float*, float** %4, align 8
  %43 = load float, float* %42, align 4
  %44 = fpext float %43 to double
  %45 = fcmp olt double %44, 0xC7EFFFFFE091FF3D
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load float*, float** %4, align 8
  store float 0xC7EFFFFFE0000000, float* %47, align 4
  store i64 2, i64* %7, align 8
  br label %57

48:                                               ; preds = %41
  %49 = load float*, float** %4, align 8
  %50 = load float, float* %49, align 4
  %51 = fpext float %50 to double
  %52 = fcmp ogt double %51, 0x47EFFFFFE091FF3D
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load float*, float** %4, align 8
  store float 0x47EFFFFFE0000000, float* %54, align 4
  store i64 2, i64* %7, align 8
  br label %56

55:                                               ; preds = %48
  store i64 0, i64* %7, align 8
  br label %56

56:                                               ; preds = %55, %53
  br label %57

57:                                               ; preds = %56, %46
  br label %58

58:                                               ; preds = %57, %39
  br label %61

59:                                               ; preds = %17
  %60 = load float*, float** %4, align 8
  store float 0xC7EFFFFFE0000000, float* %60, align 4
  store i64 1, i64* %7, align 8
  br label %61

61:                                               ; preds = %59, %58
  %62 = load i64, i64* %7, align 8
  ret i64 %62
}

; Function Attrs: nounwind
declare dso_local double @strtod(i8*, i8**) #2

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #5

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @getInitCommand(%struct._IO_FILE* %0, i64* %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %7 = icmp ne %struct._IO_FILE* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %10

9:                                                ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.66, i64 0, i64 0), i32 60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.getInitCommand, i64 0, i64 0)) #7
  unreachable

10:                                               ; preds = %8
  %11 = load i64*, i64** %4, align 8
  %12 = icmp ne i64* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %15

14:                                               ; preds = %10
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.67, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.66, i64 0, i64 0), i32 61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.getInitCommand, i64 0, i64 0)) #7
  unreachable

15:                                               ; preds = %13
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %17 = load i64*, i64** %4, align 8
  %18 = call i64 @getInt(%struct._IO_FILE* %16, i64* %17)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load i64*, i64** %4, align 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 2
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  call void @errorMessage(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3.68, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @getInitCommand.name, i64 0, i64 0), i8 signext 1)
  store i64 3, i64* %5, align 8
  br label %27

26:                                               ; preds = %21
  store i64 0, i64* %5, align 8
  br label %27

27:                                               ; preds = %26, %25
  br label %43

28:                                               ; preds = %15
  %29 = load i64, i64* %5, align 8
  %30 = icmp eq i64 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  call void @errorMessage(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4.69, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @getInitCommand.name, i64 0, i64 0), i8 signext 1)
  store i64 2, i64* %5, align 8
  br label %42

32:                                               ; preds = %28
  %33 = load i64, i64* %5, align 8
  %34 = icmp eq i64 %33, 2
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  call void @errorMessage(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3.68, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @getInitCommand.name, i64 0, i64 0), i8 signext 1)
  store i64 3, i64* %5, align 8
  br label %41

36:                                               ; preds = %32
  %37 = load i64, i64* %5, align 8
  %38 = icmp eq i64 %37, 3
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  call void @errorMessage(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5.70, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @getInitCommand.name, i64 0, i64 0), i8 signext 1)
  store i64 1, i64* %5, align 8
  br label %40

40:                                               ; preds = %39, %36
  br label %41

41:                                               ; preds = %40, %35
  br label %42

42:                                               ; preds = %41, %31
  br label %43

43:                                               ; preds = %42, %27
  %44 = load i64, i64* %5, align 8
  ret i64 %44
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @getInsertCommand(%struct._IO_FILE* %0, %struct.DataObject** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca %struct.DataObject**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca float, align 4
  %11 = alloca i8*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  store %struct.DataObject** %1, %struct.DataObject*** %5, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %13 = icmp ne %struct._IO_FILE* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %16

15:                                               ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1.72, i64 0, i64 0), i32 71, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.getInsertCommand, i64 0, i64 0)) #7
  unreachable

16:                                               ; preds = %14
  %17 = load %struct.DataObject**, %struct.DataObject*** %5, align 8
  %18 = icmp ne %struct.DataObject** %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %21

20:                                               ; preds = %16
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2.73, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1.72, i64 0, i64 0), i32 72, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.getInsertCommand, i64 0, i64 0)) #7
  unreachable

21:                                               ; preds = %19
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %23 = call i64 @getInt(%struct._IO_FILE* %22, i64* %8)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %42

27:                                               ; preds = %21
  %28 = load i64, i64* %7, align 8
  %29 = icmp eq i64 %28, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  call void @errorMessage(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3.74, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i64 0, i64 0), i8 signext 1)
  store i64 2, i64* %3, align 8
  br label %168

31:                                               ; preds = %27
  %32 = load i64, i64* %7, align 8
  %33 = icmp eq i64 %32, 2
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  call void @errorMessage(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4.75, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i64 0, i64 0), i8 signext 1)
  store i64 1, i64* %3, align 8
  br label %168

35:                                               ; preds = %31
  %36 = load i64, i64* %7, align 8
  %37 = icmp eq i64 %36, 3
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  call void @errorMessage(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5.76, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i64 0, i64 0), i8 signext 1)
  store i64 1, i64* %3, align 8
  br label %168

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %39
  br label %41

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %41, %26
  %43 = load i64, i64* %8, align 8
  %44 = icmp eq i64 %43, 1
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = call %struct.DataObject* @createDataObject(i32 1)
  %47 = load %struct.DataObject**, %struct.DataObject*** %5, align 8
  store %struct.DataObject* %46, %struct.DataObject** %47, align 8
  store i64 18, i64* %9, align 8
  br label %63

48:                                               ; preds = %42
  %49 = load i64, i64* %8, align 8
  %50 = icmp eq i64 %49, 2
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = call %struct.DataObject* @createDataObject(i32 2)
  %53 = load %struct.DataObject**, %struct.DataObject*** %5, align 8
  store %struct.DataObject* %52, %struct.DataObject** %53, align 8
  store i64 25, i64* %9, align 8
  br label %62

54:                                               ; preds = %48
  %55 = load i64, i64* %8, align 8
  %56 = icmp eq i64 %55, 3
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = call %struct.DataObject* @createDataObject(i32 3)
  %59 = load %struct.DataObject**, %struct.DataObject*** %5, align 8
  store %struct.DataObject* %58, %struct.DataObject** %59, align 8
  store i64 51, i64* %9, align 8
  br label %61

60:                                               ; preds = %54
  call void @errorMessage(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4.75, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i64 0, i64 0), i8 signext 1)
  store i64 3, i64* %3, align 8
  br label %168

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %61, %51
  br label %63

63:                                               ; preds = %62, %45
  %64 = load %struct.DataObject**, %struct.DataObject*** %5, align 8
  %65 = load %struct.DataObject*, %struct.DataObject** %64, align 8
  %66 = icmp eq %struct.DataObject* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  call void @errorMessage(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6.77, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i64 0, i64 0), i8 signext 1)
  store i64 4, i64* %3, align 8
  br label %168

68:                                               ; preds = %63
  store i64 0, i64* %6, align 8
  br label %69

69:                                               ; preds = %114, %68
  %70 = load i64, i64* %6, align 8
  %71 = icmp slt i64 %70, 8
  br i1 %71, label %72, label %117

72:                                               ; preds = %69
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %74 = call i64 @getKeyAttribute(%struct._IO_FILE* %73, float* %10)
  store i64 %74, i64* %7, align 8
  %75 = load i64, i64* %7, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %72
  %78 = load float, float* %10, align 4
  %79 = load %struct.DataObject**, %struct.DataObject*** %5, align 8
  %80 = load %struct.DataObject*, %struct.DataObject** %79, align 8
  %81 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %80, i32 0, i32 1
  %82 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %81, align 8
  %83 = load i64, i64* %6, align 8
  %84 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %82, i64 %83
  %85 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %84, i32 0, i32 0
  %86 = bitcast %union.anon.6* %85 to float*
  store float %78, float* %86, align 8
  br label %113

87:                                               ; preds = %72
  %88 = load i64, i64* %7, align 8
  %89 = icmp eq i64 %88, 1
  br i1 %89, label %90, label %99

90:                                               ; preds = %87
  call void @errorMessage(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3.74, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i64 0, i64 0), i8 signext 1)
  %91 = load %struct.DataObject**, %struct.DataObject*** %5, align 8
  %92 = load %struct.DataObject*, %struct.DataObject** %91, align 8
  %93 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %92, i32 0, i32 1
  %94 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %93, align 8
  %95 = load i64, i64* %6, align 8
  %96 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %94, i64 %95
  %97 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %96, i32 0, i32 0
  %98 = bitcast %union.anon.6* %97 to float*
  store float 0xC7EFFFFFE0000000, float* %98, align 8
  store i64 2, i64* %3, align 8
  br label %168

99:                                               ; preds = %87
  %100 = load i64, i64* %7, align 8
  %101 = icmp eq i64 %100, 2
  br i1 %101, label %102, label %111

102:                                              ; preds = %99
  call void @errorMessage(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7.78, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i64 0, i64 0), i8 signext 1)
  %103 = load %struct.DataObject**, %struct.DataObject*** %5, align 8
  %104 = load %struct.DataObject*, %struct.DataObject** %103, align 8
  %105 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %104, i32 0, i32 1
  %106 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %105, align 8
  %107 = load i64, i64* %6, align 8
  %108 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %106, i64 %107
  %109 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %108, i32 0, i32 0
  %110 = bitcast %union.anon.6* %109 to float*
  store float 0xC7EFFFFFE0000000, float* %110, align 8
  store i64 1, i64* %3, align 8
  br label %168

111:                                              ; preds = %99
  br label %112

112:                                              ; preds = %111
  br label %113

113:                                              ; preds = %112, %77
  br label %114

114:                                              ; preds = %113
  %115 = load i64, i64* %6, align 8
  %116 = add nsw i64 %115, 1
  store i64 %116, i64* %6, align 8
  br label %69

117:                                              ; preds = %69
  store i64 8, i64* %6, align 8
  br label %118

118:                                              ; preds = %164, %117
  %119 = load i64, i64* %6, align 8
  %120 = load i64, i64* %9, align 8
  %121 = icmp slt i64 %119, %120
  br i1 %121, label %122, label %167

122:                                              ; preds = %118
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %124 = call i64 @getNonKeyAttribute(%struct._IO_FILE* %123, i8** %11)
  store i64 %124, i64* %7, align 8
  %125 = load i64, i64* %7, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %122
  %128 = load i8*, i8** %11, align 8
  %129 = load %struct.DataObject**, %struct.DataObject*** %5, align 8
  %130 = load %struct.DataObject*, %struct.DataObject** %129, align 8
  %131 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %130, i32 0, i32 1
  %132 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %131, align 8
  %133 = load i64, i64* %6, align 8
  %134 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %132, i64 %133
  %135 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %134, i32 0, i32 0
  %136 = bitcast %union.anon.6* %135 to i8**
  store i8* %128, i8** %136, align 8
  br label %163

137:                                              ; preds = %122
  %138 = load i64, i64* %7, align 8
  %139 = icmp eq i64 %138, 2
  br i1 %139, label %140, label %149

140:                                              ; preds = %137
  call void @errorMessage(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3.74, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i64 0, i64 0), i8 signext 1)
  %141 = load %struct.DataObject**, %struct.DataObject*** %5, align 8
  %142 = load %struct.DataObject*, %struct.DataObject** %141, align 8
  %143 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %142, i32 0, i32 1
  %144 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %143, align 8
  %145 = load i64, i64* %6, align 8
  %146 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %144, i64 %145
  %147 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %146, i32 0, i32 0
  %148 = bitcast %union.anon.6* %147 to i8**
  store i8* null, i8** %148, align 8
  store i64 2, i64* %3, align 8
  br label %168

149:                                              ; preds = %137
  %150 = load i64, i64* %7, align 8
  %151 = icmp eq i64 %150, 1
  br i1 %151, label %152, label %161

152:                                              ; preds = %149
  call void @errorMessage(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @getInsertCommand.name, i64 0, i64 0), i8 signext 1)
  %153 = load %struct.DataObject**, %struct.DataObject*** %5, align 8
  %154 = load %struct.DataObject*, %struct.DataObject** %153, align 8
  %155 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %154, i32 0, i32 1
  %156 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %155, align 8
  %157 = load i64, i64* %6, align 8
  %158 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %156, i64 %157
  %159 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %158, i32 0, i32 0
  %160 = bitcast %union.anon.6* %159 to i8**
  store i8* null, i8** %160, align 8
  store i64 4, i64* %3, align 8
  br label %168

161:                                              ; preds = %149
  br label %162

162:                                              ; preds = %161
  br label %163

163:                                              ; preds = %162, %127
  br label %164

164:                                              ; preds = %163
  %165 = load i64, i64* %6, align 8
  %166 = add nsw i64 %165, 1
  store i64 %166, i64* %6, align 8
  br label %118

167:                                              ; preds = %118
  store i64 0, i64* %3, align 8
  br label %168

168:                                              ; preds = %167, %152, %140, %102, %90, %67, %60, %38, %34, %30
  %169 = load i64, i64* %3, align 8
  ret i64 %169
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @getInt(%struct._IO_FILE* %0, i64* %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %9 = icmp ne %struct._IO_FILE* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %12

11:                                               ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.82, i64 0, i64 0), i32 55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.getInt, i64 0, i64 0)) #7
  unreachable

12:                                               ; preds = %10
  %13 = load i64*, i64** %4, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %17

16:                                               ; preds = %12
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.83, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.82, i64 0, i64 0), i32 56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.getInt, i64 0, i64 0)) #7
  unreachable

17:                                               ; preds = %15
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %19 = call i8* @getString(%struct._IO_FILE* %18)
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %55

22:                                               ; preds = %17
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @strtol(i8* %23, i8** %6, i32 0) #8
  %25 = load i64*, i64** %4, align 8
  store i64 %24, i64* %25, align 8
  %26 = load i64*, i64** %4, align 8
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @strlen(i8* %30) #9
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = call i32* @__errno_location() #10
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 34
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i64*, i64** %4, align 8
  store i64 -2147483647, i64* %38, align 8
  store i64 3, i64* %7, align 8
  br label %54

39:                                               ; preds = %33, %29, %22
  %40 = load i64*, i64** %4, align 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %41, -2147483647
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i64*, i64** %4, align 8
  store i64 -2147483647, i64* %44, align 8
  store i64 2, i64* %7, align 8
  br label %53

45:                                               ; preds = %39
  %46 = load i64*, i64** %4, align 8
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %47, 2147483647
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i64*, i64** %4, align 8
  store i64 2147483647, i64* %50, align 8
  store i64 2, i64* %7, align 8
  br label %52

51:                                               ; preds = %45
  store i64 0, i64* %7, align 8
  br label %52

52:                                               ; preds = %51, %49
  br label %53

53:                                               ; preds = %52, %43
  br label %54

54:                                               ; preds = %53, %37
  br label %57

55:                                               ; preds = %17
  %56 = load i64*, i64** %4, align 8
  store i64 -2147483647, i64* %56, align 8
  store i64 1, i64* %7, align 8
  br label %57

57:                                               ; preds = %55, %54
  %58 = load i64, i64* %7, align 8
  ret i64 %58
}

; Function Attrs: nounwind
declare dso_local i64 @strtol(i8*, i8**, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @getKeyAttribute(%struct._IO_FILE* %0, float* %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store float* %1, float** %4, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %7 = icmp ne %struct._IO_FILE* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %10

9:                                                ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1.87, i64 0, i64 0), i32 44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.getKeyAttribute, i64 0, i64 0)) #7
  unreachable

10:                                               ; preds = %8
  %11 = load float*, float** %4, align 8
  %12 = icmp ne float* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %15

14:                                               ; preds = %10
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.88, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1.87, i64 0, i64 0), i32 45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.getKeyAttribute, i64 0, i64 0)) #7
  unreachable

15:                                               ; preds = %13
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %17 = load float*, float** %4, align 8
  %18 = call i64 @getFloat(%struct._IO_FILE* %16, float* %17)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i64 0, i64* %5, align 8
  br label %35

22:                                               ; preds = %15
  %23 = load i64, i64* %5, align 8
  %24 = icmp eq i64 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  call void @errorMessage(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @getKeyAttribute.name, i64 0, i64 0), i8 signext 1)
  store i64 1, i64* %5, align 8
  br label %34

26:                                               ; preds = %22
  %27 = load i64, i64* %5, align 8
  %28 = icmp eq i64 %27, 2
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i64, i64* %5, align 8
  %31 = icmp eq i64 %30, 3
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %26
  call void @errorMessage(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @getKeyAttribute.name, i64 0, i64 0), i8 signext 1)
  store i64 2, i64* %5, align 8
  br label %33

33:                                               ; preds = %32, %29
  br label %34

34:                                               ; preds = %33, %25
  br label %35

35:                                               ; preds = %34, %21
  %36 = load i64, i64* %5, align 8
  ret i64 %36
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @getNextCommandCode(%struct._IO_FILE* %0, i32* %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %8 = icmp ne %struct._IO_FILE* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %11

10:                                               ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.89, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1.90, i64 0, i64 0), i32 48, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.getNextCommandCode, i64 0, i64 0)) #7
  unreachable

11:                                               ; preds = %9
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %16

15:                                               ; preds = %11
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2.91, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1.90, i64 0, i64 0), i32 49, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.getNextCommandCode, i64 0, i64 0)) #7
  unreachable

16:                                               ; preds = %14
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %18 = call i64 @getInt(%struct._IO_FILE* %17, i64* %6)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %16
  %22 = load i64, i64* %6, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32*, i32** %4, align 8
  store i32 0, i32* %25, align 4
  store i64 0, i64* %5, align 8
  br label %46

26:                                               ; preds = %21
  %27 = load i64, i64* %6, align 8
  %28 = icmp eq i64 %27, 1
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32*, i32** %4, align 8
  store i32 1, i32* %30, align 4
  store i64 0, i64* %5, align 8
  br label %45

31:                                               ; preds = %26
  %32 = load i64, i64* %6, align 8
  %33 = icmp eq i64 %32, 2
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32*, i32** %4, align 8
  store i32 2, i32* %35, align 4
  store i64 0, i64* %5, align 8
  br label %44

36:                                               ; preds = %31
  %37 = load i64, i64* %6, align 8
  %38 = icmp eq i64 %37, 3
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32*, i32** %4, align 8
  store i32 3, i32* %40, align 4
  store i64 0, i64* %5, align 8
  br label %43

41:                                               ; preds = %36
  call void @errorMessage(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3.92, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @getNextCommandCode.name, i64 0, i64 0), i8 signext 1)
  %42 = load i32*, i32** %4, align 8
  store i32 5, i32* %42, align 4
  store i64 2, i64* %5, align 8
  br label %43

43:                                               ; preds = %41, %39
  br label %44

44:                                               ; preds = %43, %34
  br label %45

45:                                               ; preds = %44, %29
  br label %46

46:                                               ; preds = %45, %24
  br label %65

47:                                               ; preds = %16
  %48 = load i64, i64* %5, align 8
  %49 = icmp eq i64 %48, 1
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32*, i32** %4, align 8
  store i32 4, i32* %51, align 4
  store i64 0, i64* %5, align 8
  br label %64

52:                                               ; preds = %47
  %53 = load i64, i64* %5, align 8
  %54 = icmp eq i64 %53, 2
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  call void @errorMessage(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3.92, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @getNextCommandCode.name, i64 0, i64 0), i8 signext 1)
  %56 = load i32*, i32** %4, align 8
  store i32 5, i32* %56, align 4
  store i64 2, i64* %5, align 8
  br label %63

57:                                               ; preds = %52
  %58 = load i64, i64* %5, align 8
  %59 = icmp eq i64 %58, 3
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  call void @errorMessage(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4.93, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @getNextCommandCode.name, i64 0, i64 0), i8 signext 1)
  %61 = load i32*, i32** %4, align 8
  store i32 5, i32* %61, align 4
  store i64 2, i64* %5, align 8
  br label %62

62:                                               ; preds = %60, %57
  br label %63

63:                                               ; preds = %62, %55
  br label %64

64:                                               ; preds = %63, %50
  br label %65

65:                                               ; preds = %64, %46
  %66 = load i64, i64* %5, align 8
  ret i64 %66
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @getNonKeyAttribute(%struct._IO_FILE* %0, i8** %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store i8** %1, i8*** %4, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %8 = icmp ne %struct._IO_FILE* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %11

10:                                               ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.96, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1.97, i64 0, i64 0), i32 54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.getNonKeyAttribute, i64 0, i64 0)) #7
  unreachable

11:                                               ; preds = %9
  %12 = load i8**, i8*** %4, align 8
  %13 = icmp ne i8** %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %16

15:                                               ; preds = %11
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.98, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1.97, i64 0, i64 0), i32 55, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.getNonKeyAttribute, i64 0, i64 0)) #7
  unreachable

16:                                               ; preds = %14
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %18 = call i8* @getString(%struct._IO_FILE* %17)
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  call void @errorMessage(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @getNonKeyAttribute.name, i64 0, i64 0), i8 signext 1)
  %22 = load i8**, i8*** %4, align 8
  store i8* null, i8** %22, align 8
  store i64 2, i64* %6, align 8
  br label %45

23:                                               ; preds = %16
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @strlen(i8* %24) #9
  %26 = icmp ult i64 %25, 1024
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %29

28:                                               ; preds = %23
  call void @__assert_fail(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3.99, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1.97, i64 0, i64 0), i32 69, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.getNonKeyAttribute, i64 0, i64 0)) #7
  unreachable

29:                                               ; preds = %27
  %30 = load i8*, i8** %5, align 8
  %31 = call i64 @strlen(i8* %30) #9
  %32 = add i64 %31, 1
  %33 = call noalias i8* @malloc(i64 %32) #8
  %34 = load i8**, i8*** %4, align 8
  store i8* %33, i8** %34, align 8
  %35 = load i8**, i8*** %4, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  call void @errorMessage(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4.100, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @getNonKeyAttribute.name, i64 0, i64 0), i8 signext 1)
  store i64 1, i64* %6, align 8
  br label %44

39:                                               ; preds = %29
  %40 = load i8**, i8*** %4, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i8* @strcpy(i8* %41, i8* %42) #8
  store i64 0, i64* %6, align 8
  br label %44

44:                                               ; preds = %39, %38
  br label %45

45:                                               ; preds = %44, %21
  %46 = load i64, i64* %6, align 8
  ret i64 %46
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @getQueryCommand(%struct._IO_FILE* %0, %struct.IndexKey* %1, %struct.DataAttribute** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca %struct.IndexKey*, align 8
  %7 = alloca %struct.DataAttribute**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca float, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.DataAttribute*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  store %struct.IndexKey* %1, %struct.IndexKey** %6, align 8
  store %struct.DataAttribute** %2, %struct.DataAttribute*** %7, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %14 = icmp ne %struct._IO_FILE* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %17

16:                                               ; preds = %3
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1.102, i64 0, i64 0), i32 79, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.getQueryCommand, i64 0, i64 0)) #7
  unreachable

17:                                               ; preds = %15
  %18 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %19 = icmp ne %struct.IndexKey* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %22

21:                                               ; preds = %17
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2.103, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1.102, i64 0, i64 0), i32 80, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__PRETTY_FUNCTION__.getQueryCommand, i64 0, i64 0)) #7
  unreachable

22:                                               ; preds = %20
  %23 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %24 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %24, i32 0, i32 0
  store float 0xC7EFFFFFE0000000, float* %25, align 4
  %26 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %27 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %27, i32 0, i32 1
  store float 0xC7EFFFFFE0000000, float* %28, align 4
  %29 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %30 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %30, i32 0, i32 2
  store float 0xC7EFFFFFE0000000, float* %31, align 4
  %32 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %33 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %33, i32 0, i32 3
  store float 0xC7EFFFFFE0000000, float* %34, align 4
  %35 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %36 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %36, i32 0, i32 0
  store float 0x47EFFFFFE0000000, float* %37, align 4
  %38 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %39 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %39, i32 0, i32 1
  store float 0x47EFFFFFE0000000, float* %40, align 4
  %41 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %42 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %42, i32 0, i32 2
  store float 0x47EFFFFFE0000000, float* %43, align 4
  %44 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %45 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %45, i32 0, i32 3
  store float 0x47EFFFFFE0000000, float* %46, align 4
  %47 = load %struct.DataAttribute**, %struct.DataAttribute*** %7, align 8
  store %struct.DataAttribute* null, %struct.DataAttribute** %47, align 8
  store i64 0, i64* %9, align 8
  br label %48

48:                                               ; preds = %208, %22
  %49 = load i64, i64* %9, align 8
  %50 = icmp ne i64 %49, 1
  br i1 %50, label %51, label %209

51:                                               ; preds = %48
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %53 = call i64 @getInt(%struct._IO_FILE* %52, i64* %8)
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %193

56:                                               ; preds = %51
  %57 = load i64, i64* %8, align 8
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i64, i64* %8, align 8
  %61 = icmp sgt i64 %60, 50
  br i1 %61, label %62, label %63

62:                                               ; preds = %59, %56
  call void @errorMessage(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3.104, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @getQueryCommand.name, i64 0, i64 0), i8 signext 1)
  store i64 3, i64* %4, align 8
  br label %210

63:                                               ; preds = %59
  %64 = load i64, i64* %8, align 8
  %65 = icmp slt i64 %64, 8
  br i1 %65, label %66, label %154

66:                                               ; preds = %63
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %68 = call i64 @getKeyAttribute(%struct._IO_FILE* %67, float* %10)
  store i64 %68, i64* %9, align 8
  %69 = load i64, i64* %9, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %143

71:                                               ; preds = %66
  %72 = load i64, i64* %8, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load float, float* %10, align 4
  %76 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %77 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %77, i32 0, i32 0
  store float %75, float* %78, align 4
  br label %142

79:                                               ; preds = %71
  %80 = load i64, i64* %8, align 8
  %81 = icmp eq i64 %80, 1
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load float, float* %10, align 4
  %84 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %85 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %85, i32 0, i32 1
  store float %83, float* %86, align 4
  br label %141

87:                                               ; preds = %79
  %88 = load i64, i64* %8, align 8
  %89 = icmp eq i64 %88, 2
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load float, float* %10, align 4
  %92 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %93 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %93, i32 0, i32 2
  store float %91, float* %94, align 4
  br label %140

95:                                               ; preds = %87
  %96 = load i64, i64* %8, align 8
  %97 = icmp eq i64 %96, 3
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load float, float* %10, align 4
  %100 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %101 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %101, i32 0, i32 3
  store float %99, float* %102, align 4
  br label %139

103:                                              ; preds = %95
  %104 = load i64, i64* %8, align 8
  %105 = icmp eq i64 %104, 4
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load float, float* %10, align 4
  %108 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %109 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %109, i32 0, i32 0
  store float %107, float* %110, align 4
  br label %138

111:                                              ; preds = %103
  %112 = load i64, i64* %8, align 8
  %113 = icmp eq i64 %112, 5
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load float, float* %10, align 4
  %116 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %117 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %117, i32 0, i32 1
  store float %115, float* %118, align 4
  br label %137

119:                                              ; preds = %111
  %120 = load i64, i64* %8, align 8
  %121 = icmp eq i64 %120, 6
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load float, float* %10, align 4
  %124 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %125 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %125, i32 0, i32 2
  store float %123, float* %126, align 4
  br label %136

127:                                              ; preds = %119
  %128 = load i64, i64* %8, align 8
  %129 = icmp eq i64 %128, 7
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load float, float* %10, align 4
  %132 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %133 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %133, i32 0, i32 3
  store float %131, float* %134, align 4
  br label %135

135:                                              ; preds = %130, %127
  br label %136

136:                                              ; preds = %135, %122
  br label %137

137:                                              ; preds = %136, %114
  br label %138

138:                                              ; preds = %137, %106
  br label %139

139:                                              ; preds = %138, %98
  br label %140

140:                                              ; preds = %139, %90
  br label %141

141:                                              ; preds = %140, %82
  br label %142

142:                                              ; preds = %141, %74
  br label %153

143:                                              ; preds = %66
  %144 = load i64, i64* %9, align 8
  %145 = icmp eq i64 %144, 1
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  call void @errorMessage(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4.105, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @getQueryCommand.name, i64 0, i64 0), i8 signext 1)
  store i64 2, i64* %4, align 8
  br label %210

147:                                              ; preds = %143
  %148 = load i64, i64* %9, align 8
  %149 = icmp eq i64 %148, 2
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  call void @errorMessage(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5.106, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @getQueryCommand.name, i64 0, i64 0), i8 signext 1)
  store i64 1, i64* %4, align 8
  br label %210

151:                                              ; preds = %147
  br label %152

152:                                              ; preds = %151
  br label %153

153:                                              ; preds = %152, %142
  br label %191

154:                                              ; preds = %63
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %156 = call i64 @getNonKeyAttribute(%struct._IO_FILE* %155, i8** %11)
  store i64 %156, i64* %9, align 8
  %157 = load i64, i64* %9, align 8
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %180

159:                                              ; preds = %154
  %160 = call noalias i8* @malloc(i64 24) #8
  %161 = bitcast i8* %160 to %struct.DataAttribute*
  store %struct.DataAttribute* %161, %struct.DataAttribute** %12, align 8
  %162 = load %struct.DataAttribute*, %struct.DataAttribute** %12, align 8
  %163 = icmp eq %struct.DataAttribute* %162, null
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  call void @errorMessage(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6.107, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @getQueryCommand.name, i64 0, i64 0), i8 signext 1)
  store i64 4, i64* %4, align 8
  br label %210

165:                                              ; preds = %159
  %166 = load i64, i64* %8, align 8
  %167 = load %struct.DataAttribute*, %struct.DataAttribute** %12, align 8
  %168 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %167, i32 0, i32 0
  store i64 %166, i64* %168, align 8
  %169 = load i8*, i8** %11, align 8
  %170 = load %struct.DataAttribute*, %struct.DataAttribute** %12, align 8
  %171 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %171, i32 0, i32 0
  %173 = bitcast %union.anon.6* %172 to i8**
  store i8* %169, i8** %173, align 8
  %174 = load %struct.DataAttribute**, %struct.DataAttribute*** %7, align 8
  %175 = load %struct.DataAttribute*, %struct.DataAttribute** %174, align 8
  %176 = load %struct.DataAttribute*, %struct.DataAttribute** %12, align 8
  %177 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %176, i32 0, i32 2
  store %struct.DataAttribute* %175, %struct.DataAttribute** %177, align 8
  %178 = load %struct.DataAttribute*, %struct.DataAttribute** %12, align 8
  %179 = load %struct.DataAttribute**, %struct.DataAttribute*** %7, align 8
  store %struct.DataAttribute* %178, %struct.DataAttribute** %179, align 8
  br label %190

180:                                              ; preds = %154
  %181 = load i64, i64* %9, align 8
  %182 = icmp eq i64 %181, 2
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  call void @errorMessage(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4.105, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @getQueryCommand.name, i64 0, i64 0), i8 signext 1)
  store i64 2, i64* %4, align 8
  br label %210

184:                                              ; preds = %180
  %185 = load i64, i64* %9, align 8
  %186 = icmp eq i64 %185, 1
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  call void @errorMessage(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.108, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @getQueryCommand.name, i64 0, i64 0), i8 signext 1)
  store i64 4, i64* %4, align 8
  br label %210

188:                                              ; preds = %184
  br label %189

189:                                              ; preds = %188
  br label %190

190:                                              ; preds = %189, %165
  br label %191

191:                                              ; preds = %190, %153
  br label %192

192:                                              ; preds = %191
  br label %208

193:                                              ; preds = %51
  %194 = load i64, i64* %9, align 8
  %195 = icmp eq i64 %194, 1
  br i1 %195, label %196, label %197

196:                                              ; preds = %193
  br label %207

197:                                              ; preds = %193
  %198 = load i64, i64* %9, align 8
  %199 = icmp eq i64 %198, 2
  br i1 %199, label %200, label %201

200:                                              ; preds = %197
  store i64 3, i64* %4, align 8
  br label %210

201:                                              ; preds = %197
  %202 = load i64, i64* %9, align 8
  %203 = icmp eq i64 %202, 3
  br i1 %203, label %204, label %205

204:                                              ; preds = %201
  store i64 3, i64* %4, align 8
  br label %210

205:                                              ; preds = %201
  br label %206

206:                                              ; preds = %205
  br label %207

207:                                              ; preds = %206, %196
  br label %208

208:                                              ; preds = %207, %192
  br label %48

209:                                              ; preds = %48
  store i64 0, i64* %4, align 8
  br label %210

210:                                              ; preds = %209, %204, %200, %187, %183, %164, %150, %146, %62
  %211 = load i64, i64* %4, align 8
  ret i64 %211
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @getString(%struct._IO_FILE* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %8 = icmp ne %struct._IO_FILE* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %11

10:                                               ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.111, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.112, i64 0, i64 0), i32 57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.getString, i64 0, i64 0)) #7
  unreachable

11:                                               ; preds = %9
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %13 = call i32 @fgetc(%struct._IO_FILE* %12)
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %4, align 8
  br label %15

15:                                               ; preds = %37, %11
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, -1
  br i1 %17, label %18, label %35

18:                                               ; preds = %15
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %19, 10
  br i1 %20, label %21, label %35

21:                                               ; preds = %18
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %22, 13
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = call i16** @__ctype_b_loc() #10
  %26 = load i16*, i16** %25, align 8
  %27 = load i64, i64* %4, align 8
  %28 = trunc i64 %27 to i32
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i16, i16* %26, i64 %29
  %31 = load i16, i16* %30, align 2
  %32 = zext i16 %31 to i32
  %33 = and i32 %32, 8192
  %34 = icmp ne i32 %33, 0
  br label %35

35:                                               ; preds = %24, %21, %18, %15
  %36 = phi i1 [ false, %21 ], [ false, %18 ], [ false, %15 ], [ %34, %24 ]
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %39 = call i32 @fgetc(%struct._IO_FILE* %38)
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %4, align 8
  br label %15

41:                                               ; preds = %35
  %42 = load i64, i64* %4, align 8
  %43 = icmp eq i64 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i8* null, i8** %2, align 8
  br label %117

45:                                               ; preds = %41
  %46 = load i64, i64* %4, align 8
  %47 = icmp eq i64 %46, 10
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i64, i64* %4, align 8
  %50 = icmp eq i64 %49, 13
  br i1 %50, label %51, label %56

51:                                               ; preds = %48, %45
  %52 = load i64, i64* %4, align 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %55 = call i32 @ungetc(i32 %53, %struct._IO_FILE* %54)
  store i8* null, i8** %2, align 8
  br label %117

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %4, align 8
  %59 = trunc i64 %58 to i8
  store i8 %59, i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @getString.buffer, i64 0, i64 0), align 16
  store i64 1, i64* %5, align 8
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %61 = call i32 @fgetc(%struct._IO_FILE* %60)
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %4, align 8
  br label %63

63:                                               ; preds = %87, %57
  %64 = load i64, i64* %4, align 8
  %65 = icmp ne i64 %64, -1
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  %67 = call i16** @__ctype_b_loc() #10
  %68 = load i16*, i16** %67, align 8
  %69 = load i64, i64* %4, align 8
  %70 = trunc i64 %69 to i32
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i16, i16* %68, i64 %71
  %73 = load i16, i16* %72, align 2
  %74 = zext i16 %73 to i32
  %75 = and i32 %74, 8192
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  br label %78

78:                                               ; preds = %66, %63
  %79 = phi i1 [ false, %63 ], [ %77, %66 ]
  br i1 %79, label %80, label %97

80:                                               ; preds = %78
  %81 = load i64, i64* %5, align 8
  %82 = icmp sge i64 %81, 1024
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  call void @errorMessage(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2.113, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @getString.name, i64 0, i64 0), i8 signext 1)
  call void @flushErrorMessage()
  %84 = load i64, i64* %5, align 8
  %85 = add nsw i64 %84, 1
  %86 = getelementptr inbounds [1025 x i8], [1025 x i8]* @getString.buffer, i64 0, i64 %85
  store i8 0, i8* %86, align 1
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @getString.buffer, i64 0, i64 0), i8** %2, align 8
  br label %117

87:                                               ; preds = %80
  %88 = load i64, i64* %4, align 8
  %89 = trunc i64 %88 to i8
  %90 = load i64, i64* %5, align 8
  %91 = getelementptr inbounds [1025 x i8], [1025 x i8]* @getString.buffer, i64 0, i64 %90
  store i8 %89, i8* %91, align 1
  %92 = load i64, i64* %5, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %5, align 8
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %95 = call i32 @fgetc(%struct._IO_FILE* %94)
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %4, align 8
  br label %63

97:                                               ; preds = %78
  %98 = load i64, i64* %5, align 8
  %99 = getelementptr inbounds [1025 x i8], [1025 x i8]* @getString.buffer, i64 0, i64 %98
  store i8 0, i8* %99, align 1
  %100 = load i64, i64* %4, align 8
  %101 = icmp ne i64 %100, -1
  br i1 %101, label %102, label %116

102:                                              ; preds = %97
  %103 = load i64, i64* %4, align 8
  %104 = trunc i64 %103 to i32
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %106 = call i32 @ungetc(i32 %104, %struct._IO_FILE* %105)
  %107 = sext i32 %106 to i64
  store i64 %107, i64* %6, align 8
  %108 = load i64, i64* %6, align 8
  %109 = load i64, i64* %4, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %114, label %111

111:                                              ; preds = %102
  %112 = load i64, i64* %6, align 8
  %113 = icmp eq i64 %112, -1
  br i1 %113, label %114, label %115

114:                                              ; preds = %111, %102
  call void @errorMessage(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3.114, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @getString.name, i64 0, i64 0), i8 signext 1)
  call void @flushErrorMessage()
  store i8* null, i8** %2, align 8
  br label %117

115:                                              ; preds = %111
  br label %116

116:                                              ; preds = %115, %97
  store i8* getelementptr inbounds ([1025 x i8], [1025 x i8]* @getString.buffer, i64 0, i64 0), i8** %2, align 8
  br label %117

117:                                              ; preds = %116, %114, %83, %51, %44
  %118 = load i8*, i8** %2, align 8
  ret i8* %118
}

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() #5

declare dso_local i32 @ungetc(i32, %struct._IO_FILE*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @initMetricsData(%struct.Metrics* %0) #0 {
  %2 = alloca %struct.Metrics*, align 8
  %3 = alloca i64, align 8
  store %struct.Metrics* %0, %struct.Metrics** %2, align 8
  %4 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %5 = icmp ne %struct.Metrics* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %8

7:                                                ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.115, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1.116, i64 0, i64 0), i32 53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.initMetricsData, i64 0, i64 0)) #7
  unreachable

8:                                                ; preds = %6
  call void @initTime()
  %9 = call i64 @getTime()
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %12 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %15 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %14, i32 0, i32 1
  store i64 %13, i64* %15, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %18 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %17, i32 0, i32 2
  store i64 %16, i64* %18, align 8
  %19 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %20 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %20, i32 0, i32 0
  store i64 -2147483647, i64* %21, align 8
  %22 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %23 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %26 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %26, i32 0, i32 2
  store double 0.000000e+00, double* %27, align 8
  %28 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %29 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %29, i32 0, i32 3
  store double 0.000000e+00, double* %30, align 8
  %31 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %32 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %32, i32 0, i32 4
  store i64 -2147483647, i64* %33, align 8
  %34 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %35 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %35, i32 0, i32 5
  store i64 2147483647, i64* %36, align 8
  %37 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %38 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %38, i32 0, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %39, align 8
  %40 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %41 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %41, i32 0, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %42, align 8
  %43 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %44 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %44, i32 0, i32 0
  store i64 -2147483647, i64* %45, align 8
  %46 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %47 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %50 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %50, i32 0, i32 2
  store double 0.000000e+00, double* %51, align 8
  %52 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %53 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %53, i32 0, i32 3
  store double 0.000000e+00, double* %54, align 8
  %55 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %56 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %56, i32 0, i32 4
  store i64 -2147483647, i64* %57, align 8
  %58 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %59 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %59, i32 0, i32 5
  store i64 2147483647, i64* %60, align 8
  %61 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %62 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %62, i32 0, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %63, align 8
  %64 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %65 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %65, i32 0, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %66, align 8
  %67 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %68 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %68, i32 0, i32 0
  store i64 -2147483647, i64* %69, align 8
  %70 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %71 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  %73 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %74 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %74, i32 0, i32 2
  store double 0.000000e+00, double* %75, align 8
  %76 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %77 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %77, i32 0, i32 3
  store double 0.000000e+00, double* %78, align 8
  %79 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %80 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %80, i32 0, i32 4
  store i64 -2147483647, i64* %81, align 8
  %82 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %83 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %83, i32 0, i32 5
  store i64 2147483647, i64* %84, align 8
  %85 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %86 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %85, i32 0, i32 5
  %87 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %86, i32 0, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %87, align 8
  %88 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %89 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %89, i32 0, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %90, align 8
  %91 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %92 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %91, i32 0, i32 6
  store i32 5, i32* %92, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @insertEntry(%struct.IndexNode* %0, %struct.IndexEntry* %1, i64 %2, i64 %3, %struct.IndexEntry** %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.IndexNode*, align 8
  %8 = alloca %struct.IndexEntry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.IndexEntry**, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.IndexEntry*, align 8
  %14 = alloca %struct.IndexEntry*, align 8
  %15 = alloca %struct.IndexEntry*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.IndexEntry*, align 8
  %18 = alloca %struct.IndexEntry*, align 8
  %19 = alloca i64, align 8
  store %struct.IndexNode* %0, %struct.IndexNode** %7, align 8
  store %struct.IndexEntry* %1, %struct.IndexEntry** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.IndexEntry** %4, %struct.IndexEntry*** %11, align 8
  %20 = load %struct.IndexNode*, %struct.IndexNode** %7, align 8
  %21 = icmp ne %struct.IndexNode* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  br label %24

23:                                               ; preds = %5
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.117, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.118, i64 0, i64 0), i32 65, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.insertEntry, i64 0, i64 0)) #7
  unreachable

24:                                               ; preds = %22
  %25 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %26 = icmp ne %struct.IndexEntry* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %29

28:                                               ; preds = %24
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.119, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.118, i64 0, i64 0), i32 66, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.insertEntry, i64 0, i64 0)) #7
  unreachable

29:                                               ; preds = %27
  %30 = load i64, i64* %9, align 8
  %31 = icmp sge i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %34

33:                                               ; preds = %29
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3.120, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.118, i64 0, i64 0), i32 67, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.insertEntry, i64 0, i64 0)) #7
  unreachable

34:                                               ; preds = %32
  %35 = load i64, i64* %10, align 8
  %36 = icmp sge i64 %35, 2
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %39

38:                                               ; preds = %34
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4.121, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.118, i64 0, i64 0), i32 69, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.insertEntry, i64 0, i64 0)) #7
  unreachable

39:                                               ; preds = %37
  %40 = load %struct.IndexNode*, %struct.IndexNode** %7, align 8
  %41 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %140

45:                                               ; preds = %39
  %46 = load %struct.IndexNode*, %struct.IndexNode** %7, align 8
  %47 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %46, i32 0, i32 1
  %48 = load %struct.IndexEntry*, %struct.IndexEntry** %47, align 8
  %49 = icmp ne %struct.IndexEntry* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %52

51:                                               ; preds = %45
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5.122, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.118, i64 0, i64 0), i32 78, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.insertEntry, i64 0, i64 0)) #7
  unreachable

52:                                               ; preds = %50
  %53 = load %struct.IndexNode*, %struct.IndexNode** %7, align 8
  %54 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %55 = call %struct.IndexEntry* @chooseEntry(%struct.IndexNode* %53, %struct.IndexEntry* %54)
  store %struct.IndexEntry* %55, %struct.IndexEntry** %13, align 8
  %56 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %57 = icmp eq %struct.IndexEntry* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  call void @errorMessage(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6.123, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @insertEntry.name, i64 0, i64 0), i8 signext 1)
  store i64 1, i64* %6, align 8
  br label %190

59:                                               ; preds = %52
  %60 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %61 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %60, i32 0, i32 0
  %62 = bitcast %union.anon* %61 to %struct.IndexNode**
  %63 = load %struct.IndexNode*, %struct.IndexNode** %62, align 8
  %64 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load %struct.IndexEntry**, %struct.IndexEntry*** %11, align 8
  %68 = call i64 @insertEntry(%struct.IndexNode* %63, %struct.IndexEntry* %64, i64 %65, i64 %66, %struct.IndexEntry** %67)
  store i64 %68, i64* %12, align 8
  %69 = load i64, i64* %12, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %127

71:                                               ; preds = %59
  %72 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %73 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %72, i32 0, i32 0
  %74 = bitcast %union.anon* %73 to %struct.IndexNode**
  %75 = load %struct.IndexNode*, %struct.IndexNode** %74, align 8
  %76 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %75, i32 0, i32 1
  %77 = load %struct.IndexEntry*, %struct.IndexEntry** %76, align 8
  %78 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %79 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %78, i32 0, i32 1
  call void @keysUnion(%struct.IndexEntry* %77, %struct.IndexKey* %79)
  %80 = load %struct.IndexEntry**, %struct.IndexEntry*** %11, align 8
  %81 = load %struct.IndexEntry*, %struct.IndexEntry** %80, align 8
  %82 = icmp ne %struct.IndexEntry* %81, null
  br i1 %82, label %83, label %126

83:                                               ; preds = %71
  store %struct.IndexEntry* null, %struct.IndexEntry** %14, align 8
  store %struct.IndexEntry* null, %struct.IndexEntry** %15, align 8
  store i64 0, i64* %16, align 8
  %84 = load %struct.IndexNode*, %struct.IndexNode** %7, align 8
  %85 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %84, i32 0, i32 1
  %86 = load %struct.IndexEntry*, %struct.IndexEntry** %85, align 8
  store %struct.IndexEntry* %86, %struct.IndexEntry** %15, align 8
  %87 = load %struct.IndexEntry*, %struct.IndexEntry** %15, align 8
  store %struct.IndexEntry* %87, %struct.IndexEntry** %14, align 8
  br label %88

88:                                               ; preds = %91, %83
  %89 = load %struct.IndexEntry*, %struct.IndexEntry** %15, align 8
  %90 = icmp ne %struct.IndexEntry* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load i64, i64* %16, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %16, align 8
  %94 = load %struct.IndexEntry*, %struct.IndexEntry** %15, align 8
  store %struct.IndexEntry* %94, %struct.IndexEntry** %14, align 8
  %95 = load %struct.IndexEntry*, %struct.IndexEntry** %15, align 8
  %96 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %95, i32 0, i32 2
  %97 = load %struct.IndexEntry*, %struct.IndexEntry** %96, align 8
  store %struct.IndexEntry* %97, %struct.IndexEntry** %15, align 8
  br label %88

98:                                               ; preds = %88
  %99 = load i64, i64* %16, align 8
  %100 = load i64, i64* %10, align 8
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = load %struct.IndexEntry**, %struct.IndexEntry*** %11, align 8
  %104 = load %struct.IndexEntry*, %struct.IndexEntry** %103, align 8
  %105 = load %struct.IndexEntry*, %struct.IndexEntry** %14, align 8
  %106 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %105, i32 0, i32 2
  store %struct.IndexEntry* %104, %struct.IndexEntry** %106, align 8
  %107 = load %struct.IndexEntry**, %struct.IndexEntry*** %11, align 8
  store %struct.IndexEntry* null, %struct.IndexEntry** %107, align 8
  br label %125

108:                                              ; preds = %98
  %109 = load %struct.IndexNode*, %struct.IndexNode** %7, align 8
  %110 = load %struct.IndexEntry**, %struct.IndexEntry*** %11, align 8
  %111 = load %struct.IndexEntry*, %struct.IndexEntry** %110, align 8
  %112 = load i64, i64* %10, align 8
  %113 = call i64 @splitNode(%struct.IndexNode* %109, %struct.IndexEntry* %111, i64 %112, %struct.IndexEntry** %15)
  store i64 %113, i64* %12, align 8
  %114 = load i64, i64* %12, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %108
  %117 = load %struct.IndexEntry*, %struct.IndexEntry** %15, align 8
  %118 = load %struct.IndexEntry**, %struct.IndexEntry*** %11, align 8
  store %struct.IndexEntry* %117, %struct.IndexEntry** %118, align 8
  br label %124

119:                                              ; preds = %108
  %120 = load i64, i64* %12, align 8
  %121 = icmp eq i64 %120, 1
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  store i64 2, i64* %6, align 8
  br label %190

123:                                              ; preds = %119
  br label %124

124:                                              ; preds = %123, %116
  br label %125

125:                                              ; preds = %124, %102
  br label %126

126:                                              ; preds = %125, %71
  br label %139

127:                                              ; preds = %59
  %128 = load i64, i64* %12, align 8
  %129 = icmp eq i64 %128, 1
  br i1 %129, label %136, label %130

130:                                              ; preds = %127
  %131 = load i64, i64* %12, align 8
  %132 = icmp eq i64 %131, 2
  br i1 %132, label %136, label %133

133:                                              ; preds = %130
  %134 = load i64, i64* %12, align 8
  %135 = icmp eq i64 %134, 3
  br i1 %135, label %136, label %138

136:                                              ; preds = %133, %130, %127
  %137 = load i64, i64* %12, align 8
  store i64 %137, i64* %6, align 8
  br label %190

138:                                              ; preds = %133
  br label %139

139:                                              ; preds = %138, %126
  br label %189

140:                                              ; preds = %39
  store %struct.IndexEntry* null, %struct.IndexEntry** %17, align 8
  store %struct.IndexEntry* null, %struct.IndexEntry** %18, align 8
  store i64 0, i64* %19, align 8
  %141 = load %struct.IndexNode*, %struct.IndexNode** %7, align 8
  %142 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %141, i32 0, i32 1
  %143 = load %struct.IndexEntry*, %struct.IndexEntry** %142, align 8
  store %struct.IndexEntry* %143, %struct.IndexEntry** %18, align 8
  %144 = load %struct.IndexEntry*, %struct.IndexEntry** %18, align 8
  store %struct.IndexEntry* %144, %struct.IndexEntry** %17, align 8
  br label %145

145:                                              ; preds = %148, %140
  %146 = load %struct.IndexEntry*, %struct.IndexEntry** %18, align 8
  %147 = icmp ne %struct.IndexEntry* %146, null
  br i1 %147, label %148, label %155

148:                                              ; preds = %145
  %149 = load i64, i64* %19, align 8
  %150 = add nsw i64 %149, 1
  store i64 %150, i64* %19, align 8
  %151 = load %struct.IndexEntry*, %struct.IndexEntry** %18, align 8
  store %struct.IndexEntry* %151, %struct.IndexEntry** %17, align 8
  %152 = load %struct.IndexEntry*, %struct.IndexEntry** %18, align 8
  %153 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %152, i32 0, i32 2
  %154 = load %struct.IndexEntry*, %struct.IndexEntry** %153, align 8
  store %struct.IndexEntry* %154, %struct.IndexEntry** %18, align 8
  br label %145

155:                                              ; preds = %145
  %156 = load i64, i64* %19, align 8
  %157 = load i64, i64* %10, align 8
  %158 = icmp slt i64 %156, %157
  br i1 %158, label %159, label %172

159:                                              ; preds = %155
  %160 = load %struct.IndexEntry*, %struct.IndexEntry** %17, align 8
  %161 = icmp eq %struct.IndexEntry* %160, null
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %164 = load %struct.IndexNode*, %struct.IndexNode** %7, align 8
  %165 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %164, i32 0, i32 1
  store %struct.IndexEntry* %163, %struct.IndexEntry** %165, align 8
  br label %170

166:                                              ; preds = %159
  %167 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %168 = load %struct.IndexEntry*, %struct.IndexEntry** %17, align 8
  %169 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %168, i32 0, i32 2
  store %struct.IndexEntry* %167, %struct.IndexEntry** %169, align 8
  br label %170

170:                                              ; preds = %166, %162
  %171 = load %struct.IndexEntry**, %struct.IndexEntry*** %11, align 8
  store %struct.IndexEntry* null, %struct.IndexEntry** %171, align 8
  br label %188

172:                                              ; preds = %155
  %173 = load %struct.IndexNode*, %struct.IndexNode** %7, align 8
  %174 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %175 = load i64, i64* %10, align 8
  %176 = load %struct.IndexEntry**, %struct.IndexEntry*** %11, align 8
  %177 = call i64 @splitNode(%struct.IndexNode* %173, %struct.IndexEntry* %174, i64 %175, %struct.IndexEntry** %176)
  store i64 %177, i64* %12, align 8
  %178 = load i64, i64* %12, align 8
  %179 = icmp eq i64 %178, 1
  br i1 %179, label %180, label %187

180:                                              ; preds = %172
  %181 = load %struct.IndexNode*, %struct.IndexNode** %7, align 8
  %182 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %180
  call void @errorMessage(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7.124, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @insertEntry.name, i64 0, i64 0), i8 signext 1)
  store i64 3, i64* %6, align 8
  br label %190

186:                                              ; preds = %180
  call void @errorMessage(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8.125, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @insertEntry.name, i64 0, i64 0), i8 signext 1)
  store i64 2, i64* %6, align 8
  br label %190

187:                                              ; preds = %172
  br label %188

188:                                              ; preds = %187, %170
  br label %189

189:                                              ; preds = %188, %139
  store i64 0, i64* %6, align 8
  br label %190

190:                                              ; preds = %189, %186, %185, %136, %122, %58
  %191 = load i64, i64* %6, align 8
  ret i64 %191
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @insert(%struct.IndexNode** %0, %struct.DataObject* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.IndexNode**, align 8
  %6 = alloca %struct.DataObject*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.IndexEntry*, align 8
  %9 = alloca %struct.IndexEntry*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.IndexNode*, align 8
  store %struct.IndexNode** %0, %struct.IndexNode*** %5, align 8
  store %struct.DataObject* %1, %struct.DataObject** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.IndexNode**, %struct.IndexNode*** %5, align 8
  %13 = icmp ne %struct.IndexNode** %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %16

15:                                               ; preds = %3
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.126, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.127, i64 0, i64 0), i32 99, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.insert, i64 0, i64 0)) #7
  unreachable

16:                                               ; preds = %14
  %17 = load %struct.IndexNode**, %struct.IndexNode*** %5, align 8
  %18 = load %struct.IndexNode*, %struct.IndexNode** %17, align 8
  %19 = icmp ne %struct.IndexNode* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %22

21:                                               ; preds = %16
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.128, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.127, i64 0, i64 0), i32 100, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.insert, i64 0, i64 0)) #7
  unreachable

22:                                               ; preds = %20
  %23 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %24 = icmp ne %struct.DataObject* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %27

26:                                               ; preds = %22
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3.129, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.127, i64 0, i64 0), i32 101, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.insert, i64 0, i64 0)) #7
  unreachable

27:                                               ; preds = %25
  %28 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %29 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %28, i32 0, i32 1
  %30 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %29, align 8
  %31 = icmp ne %struct.DataObjectAttribute* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %34

33:                                               ; preds = %27
  call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4.130, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.127, i64 0, i64 0), i32 102, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.insert, i64 0, i64 0)) #7
  unreachable

34:                                               ; preds = %32
  %35 = load i64, i64* %7, align 8
  %36 = icmp sge i64 %35, 2
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %39

38:                                               ; preds = %34
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5.131, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.127, i64 0, i64 0), i32 104, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.insert, i64 0, i64 0)) #7
  unreachable

39:                                               ; preds = %37
  %40 = call %struct.IndexEntry* @createIndexEntry()
  store %struct.IndexEntry* %40, %struct.IndexEntry** %8, align 8
  %41 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %42 = icmp eq %struct.IndexEntry* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  call void @errorMessage(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6.132, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @insert.name, i64 0, i64 0), i8 signext 1)
  store i64 3, i64* %4, align 8
  br label %206

44:                                               ; preds = %39
  %45 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %46 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %47 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %46, i32 0, i32 0
  %48 = bitcast %union.anon* %47 to %struct.DataObject**
  store %struct.DataObject* %45, %struct.DataObject** %48, align 8
  %49 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %50 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %49, i32 0, i32 1
  %51 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %50, align 8
  %52 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %51, i64 0
  %53 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %52, i32 0, i32 0
  %54 = bitcast %union.anon.6* %53 to float*
  %55 = load float, float* %54, align 8
  %56 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %57 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %58, i32 0, i32 0
  store float %55, float* %59, align 8
  %60 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %61 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %60, i32 0, i32 1
  %62 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %61, align 8
  %63 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %62, i64 1
  %64 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %63, i32 0, i32 0
  %65 = bitcast %union.anon.6* %64 to float*
  %66 = load float, float* %65, align 8
  %67 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %68 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %69, i32 0, i32 1
  store float %66, float* %70, align 4
  %71 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %72 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %71, i32 0, i32 1
  %73 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %72, align 8
  %74 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %73, i64 2
  %75 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %74, i32 0, i32 0
  %76 = bitcast %union.anon.6* %75 to float*
  %77 = load float, float* %76, align 8
  %78 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %79 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %80, i32 0, i32 2
  store float %77, float* %81, align 8
  %82 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %83 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %82, i32 0, i32 1
  %84 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %83, align 8
  %85 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %84, i64 3
  %86 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %85, i32 0, i32 0
  %87 = bitcast %union.anon.6* %86 to float*
  %88 = load float, float* %87, align 8
  %89 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %90 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %91, i32 0, i32 3
  store float %88, float* %92, align 4
  %93 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %94 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %93, i32 0, i32 1
  %95 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %94, align 8
  %96 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %95, i64 4
  %97 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %96, i32 0, i32 0
  %98 = bitcast %union.anon.6* %97 to float*
  %99 = load float, float* %98, align 8
  %100 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %101 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %102, i32 0, i32 0
  store float %99, float* %103, align 8
  %104 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %105 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %104, i32 0, i32 1
  %106 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %105, align 8
  %107 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %106, i64 5
  %108 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %107, i32 0, i32 0
  %109 = bitcast %union.anon.6* %108 to float*
  %110 = load float, float* %109, align 8
  %111 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %112 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %113, i32 0, i32 1
  store float %110, float* %114, align 4
  %115 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %116 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %115, i32 0, i32 1
  %117 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %116, align 8
  %118 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %117, i64 6
  %119 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %118, i32 0, i32 0
  %120 = bitcast %union.anon.6* %119 to float*
  %121 = load float, float* %120, align 8
  %122 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %123 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %124, i32 0, i32 2
  store float %121, float* %125, align 8
  %126 = load %struct.DataObject*, %struct.DataObject** %6, align 8
  %127 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %126, i32 0, i32 1
  %128 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %127, align 8
  %129 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %128, i64 7
  %130 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %129, i32 0, i32 0
  %131 = bitcast %union.anon.6* %130 to float*
  %132 = load float, float* %131, align 8
  %133 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %134 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %135, i32 0, i32 3
  store float %132, float* %136, align 4
  %137 = load %struct.IndexNode**, %struct.IndexNode*** %5, align 8
  %138 = load %struct.IndexNode*, %struct.IndexNode** %137, align 8
  %139 = load %struct.IndexEntry*, %struct.IndexEntry** %8, align 8
  %140 = load i64, i64* %7, align 8
  %141 = call i64 @insertEntry(%struct.IndexNode* %138, %struct.IndexEntry* %139, i64 0, i64 %140, %struct.IndexEntry** %9)
  store i64 %141, i64* %10, align 8
  %142 = load i64, i64* %10, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %190

144:                                              ; preds = %44
  %145 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %146 = icmp ne %struct.IndexEntry* %145, null
  br i1 %146, label %147, label %189

147:                                              ; preds = %144
  store %struct.IndexNode* null, %struct.IndexNode** %11, align 8
  %148 = load %struct.IndexNode**, %struct.IndexNode*** %5, align 8
  %149 = load %struct.IndexNode*, %struct.IndexNode** %148, align 8
  %150 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %151, 1
  %153 = call %struct.IndexNode* @createIndexNode(i64 %152)
  store %struct.IndexNode* %153, %struct.IndexNode** %11, align 8
  %154 = load %struct.IndexNode*, %struct.IndexNode** %11, align 8
  %155 = icmp eq %struct.IndexNode* %154, null
  br i1 %155, label %156, label %157

156:                                              ; preds = %147
  call void @errorMessage(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7.133, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @insert.name, i64 0, i64 0), i8 signext 1)
  store i64 3, i64* %4, align 8
  br label %206

157:                                              ; preds = %147
  %158 = call %struct.IndexEntry* @createIndexEntry()
  %159 = load %struct.IndexNode*, %struct.IndexNode** %11, align 8
  %160 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %159, i32 0, i32 1
  store %struct.IndexEntry* %158, %struct.IndexEntry** %160, align 8
  %161 = load %struct.IndexNode*, %struct.IndexNode** %11, align 8
  %162 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %161, i32 0, i32 1
  %163 = load %struct.IndexEntry*, %struct.IndexEntry** %162, align 8
  %164 = icmp eq %struct.IndexEntry* %163, null
  br i1 %164, label %165, label %166

165:                                              ; preds = %157
  call void @errorMessage(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8.134, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @insert.name, i64 0, i64 0), i8 signext 1)
  store i64 3, i64* %4, align 8
  br label %206

166:                                              ; preds = %157
  %167 = load %struct.IndexNode**, %struct.IndexNode*** %5, align 8
  %168 = load %struct.IndexNode*, %struct.IndexNode** %167, align 8
  %169 = load %struct.IndexNode*, %struct.IndexNode** %11, align 8
  %170 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %169, i32 0, i32 1
  %171 = load %struct.IndexEntry*, %struct.IndexEntry** %170, align 8
  %172 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %171, i32 0, i32 0
  %173 = bitcast %union.anon* %172 to %struct.IndexNode**
  store %struct.IndexNode* %168, %struct.IndexNode** %173, align 8
  %174 = load %struct.IndexNode**, %struct.IndexNode*** %5, align 8
  %175 = load %struct.IndexNode*, %struct.IndexNode** %174, align 8
  %176 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %175, i32 0, i32 1
  %177 = load %struct.IndexEntry*, %struct.IndexEntry** %176, align 8
  %178 = load %struct.IndexNode*, %struct.IndexNode** %11, align 8
  %179 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %178, i32 0, i32 1
  %180 = load %struct.IndexEntry*, %struct.IndexEntry** %179, align 8
  %181 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %180, i32 0, i32 1
  call void @keysUnion(%struct.IndexEntry* %177, %struct.IndexKey* %181)
  %182 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %183 = load %struct.IndexNode*, %struct.IndexNode** %11, align 8
  %184 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %183, i32 0, i32 1
  %185 = load %struct.IndexEntry*, %struct.IndexEntry** %184, align 8
  %186 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %185, i32 0, i32 2
  store %struct.IndexEntry* %182, %struct.IndexEntry** %186, align 8
  %187 = load %struct.IndexNode*, %struct.IndexNode** %11, align 8
  %188 = load %struct.IndexNode**, %struct.IndexNode*** %5, align 8
  store %struct.IndexNode* %187, %struct.IndexNode** %188, align 8
  br label %189

189:                                              ; preds = %166, %144
  br label %205

190:                                              ; preds = %44
  %191 = load i64, i64* %10, align 8
  %192 = icmp eq i64 %191, 1
  br i1 %192, label %193, label %194

193:                                              ; preds = %190
  store i64 2, i64* %4, align 8
  br label %206

194:                                              ; preds = %190
  %195 = load i64, i64* %10, align 8
  %196 = icmp eq i64 %195, 2
  br i1 %196, label %197, label %198

197:                                              ; preds = %194
  store i64 1, i64* %4, align 8
  br label %206

198:                                              ; preds = %194
  %199 = load i64, i64* %10, align 8
  %200 = icmp eq i64 %199, 3
  br i1 %200, label %201, label %202

201:                                              ; preds = %198
  store i64 2, i64* %4, align 8
  br label %206

202:                                              ; preds = %198
  br label %203

203:                                              ; preds = %202
  br label %204

204:                                              ; preds = %203
  br label %205

205:                                              ; preds = %204, %189
  store i64 0, i64* %4, align 8
  br label %206

206:                                              ; preds = %205, %201, %197, %193, %165, %156, %43
  %207 = load i64, i64* %4, align 8
  ret i64 %207
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @keyUnion(%struct.IndexKey* %0, %struct.IndexKey* %1, %struct.IndexKey* %2) #0 {
  %4 = alloca %struct.IndexKey*, align 8
  %5 = alloca %struct.IndexKey*, align 8
  %6 = alloca %struct.IndexKey*, align 8
  store %struct.IndexKey* %0, %struct.IndexKey** %4, align 8
  store %struct.IndexKey* %1, %struct.IndexKey** %5, align 8
  store %struct.IndexKey* %2, %struct.IndexKey** %6, align 8
  %7 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %8 = icmp ne %struct.IndexKey* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %11

10:                                               ; preds = %3
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.135, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.136, i64 0, i64 0), i32 65, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.keyUnion, i64 0, i64 0)) #7
  unreachable

11:                                               ; preds = %9
  %12 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %13 = icmp ne %struct.IndexKey* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %16

15:                                               ; preds = %11
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.137, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.136, i64 0, i64 0), i32 66, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.keyUnion, i64 0, i64 0)) #7
  unreachable

16:                                               ; preds = %14
  %17 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %18 = icmp ne %struct.IndexKey* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %21

20:                                               ; preds = %16
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.138, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.136, i64 0, i64 0), i32 67, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.keyUnion, i64 0, i64 0)) #7
  unreachable

21:                                               ; preds = %19
  %22 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %23 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %23, i32 0, i32 0
  %25 = load float, float* %24, align 4
  %26 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %27 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %27, i32 0, i32 0
  %29 = load float, float* %28, align 4
  %30 = fcmp olt float %25, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %33 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %33, i32 0, i32 0
  %35 = load float, float* %34, align 4
  br label %41

36:                                               ; preds = %21
  %37 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %38 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %38, i32 0, i32 0
  %40 = load float, float* %39, align 4
  br label %41

41:                                               ; preds = %36, %31
  %42 = phi float [ %35, %31 ], [ %40, %36 ]
  %43 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %44 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %44, i32 0, i32 0
  store float %42, float* %45, align 4
  %46 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %47 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %47, i32 0, i32 1
  %49 = load float, float* %48, align 4
  %50 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %51 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %51, i32 0, i32 1
  %53 = load float, float* %52, align 4
  %54 = fcmp olt float %49, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %41
  %56 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %57 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %57, i32 0, i32 1
  %59 = load float, float* %58, align 4
  br label %65

60:                                               ; preds = %41
  %61 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %62 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %62, i32 0, i32 1
  %64 = load float, float* %63, align 4
  br label %65

65:                                               ; preds = %60, %55
  %66 = phi float [ %59, %55 ], [ %64, %60 ]
  %67 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %68 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %68, i32 0, i32 1
  store float %66, float* %69, align 4
  %70 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %71 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %71, i32 0, i32 2
  %73 = load float, float* %72, align 4
  %74 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %75 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %75, i32 0, i32 2
  %77 = load float, float* %76, align 4
  %78 = fcmp olt float %73, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %65
  %80 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %81 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %81, i32 0, i32 2
  %83 = load float, float* %82, align 4
  br label %89

84:                                               ; preds = %65
  %85 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %86 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %86, i32 0, i32 2
  %88 = load float, float* %87, align 4
  br label %89

89:                                               ; preds = %84, %79
  %90 = phi float [ %83, %79 ], [ %88, %84 ]
  %91 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %92 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %92, i32 0, i32 2
  store float %90, float* %93, align 4
  %94 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %95 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %95, i32 0, i32 3
  %97 = load float, float* %96, align 4
  %98 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %99 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %99, i32 0, i32 3
  %101 = load float, float* %100, align 4
  %102 = fcmp olt float %97, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %89
  %104 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %105 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %105, i32 0, i32 3
  %107 = load float, float* %106, align 4
  br label %113

108:                                              ; preds = %89
  %109 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %110 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %110, i32 0, i32 3
  %112 = load float, float* %111, align 4
  br label %113

113:                                              ; preds = %108, %103
  %114 = phi float [ %107, %103 ], [ %112, %108 ]
  %115 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %116 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %116, i32 0, i32 3
  store float %114, float* %117, align 4
  %118 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %119 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %119, i32 0, i32 0
  %121 = load float, float* %120, align 4
  %122 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %123 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %123, i32 0, i32 0
  %125 = load float, float* %124, align 4
  %126 = fcmp ogt float %121, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %113
  %128 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %129 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %129, i32 0, i32 0
  %131 = load float, float* %130, align 4
  br label %137

132:                                              ; preds = %113
  %133 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %134 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %134, i32 0, i32 0
  %136 = load float, float* %135, align 4
  br label %137

137:                                              ; preds = %132, %127
  %138 = phi float [ %131, %127 ], [ %136, %132 ]
  %139 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %140 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %140, i32 0, i32 0
  store float %138, float* %141, align 4
  %142 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %143 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %143, i32 0, i32 1
  %145 = load float, float* %144, align 4
  %146 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %147 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %147, i32 0, i32 1
  %149 = load float, float* %148, align 4
  %150 = fcmp ogt float %145, %149
  br i1 %150, label %151, label %156

151:                                              ; preds = %137
  %152 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %153 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %153, i32 0, i32 1
  %155 = load float, float* %154, align 4
  br label %161

156:                                              ; preds = %137
  %157 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %158 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %158, i32 0, i32 1
  %160 = load float, float* %159, align 4
  br label %161

161:                                              ; preds = %156, %151
  %162 = phi float [ %155, %151 ], [ %160, %156 ]
  %163 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %164 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %164, i32 0, i32 1
  store float %162, float* %165, align 4
  %166 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %167 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %167, i32 0, i32 2
  %169 = load float, float* %168, align 4
  %170 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %171 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %171, i32 0, i32 2
  %173 = load float, float* %172, align 4
  %174 = fcmp ogt float %169, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %161
  %176 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %177 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %177, i32 0, i32 2
  %179 = load float, float* %178, align 4
  br label %185

180:                                              ; preds = %161
  %181 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %182 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %182, i32 0, i32 2
  %184 = load float, float* %183, align 4
  br label %185

185:                                              ; preds = %180, %175
  %186 = phi float [ %179, %175 ], [ %184, %180 ]
  %187 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %188 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %188, i32 0, i32 2
  store float %186, float* %189, align 4
  %190 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %191 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %191, i32 0, i32 3
  %193 = load float, float* %192, align 4
  %194 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %195 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %195, i32 0, i32 3
  %197 = load float, float* %196, align 4
  %198 = fcmp ogt float %193, %197
  br i1 %198, label %199, label %204

199:                                              ; preds = %185
  %200 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %201 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %201, i32 0, i32 3
  %203 = load float, float* %202, align 4
  br label %209

204:                                              ; preds = %185
  %205 = load %struct.IndexKey*, %struct.IndexKey** %5, align 8
  %206 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %206, i32 0, i32 3
  %208 = load float, float* %207, align 4
  br label %209

209:                                              ; preds = %204, %199
  %210 = phi float [ %203, %199 ], [ %208, %204 ]
  %211 = load %struct.IndexKey*, %struct.IndexKey** %6, align 8
  %212 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %212, i32 0, i32 3
  store float %210, float* %213, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @keysUnion(%struct.IndexEntry* %0, %struct.IndexKey* %1) #0 {
  %3 = alloca %struct.IndexEntry*, align 8
  %4 = alloca %struct.IndexKey*, align 8
  store %struct.IndexEntry* %0, %struct.IndexEntry** %3, align 8
  store %struct.IndexKey* %1, %struct.IndexKey** %4, align 8
  %5 = load %struct.IndexEntry*, %struct.IndexEntry** %3, align 8
  %6 = icmp ne %struct.IndexEntry* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %9

8:                                                ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.141, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.136, i64 0, i64 0), i32 114, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.keysUnion, i64 0, i64 0)) #7
  unreachable

9:                                                ; preds = %7
  %10 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %11 = icmp ne %struct.IndexKey* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %14

13:                                               ; preds = %9
  call void @__assert_fail(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.138, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.136, i64 0, i64 0), i32 115, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.keysUnion, i64 0, i64 0)) #7
  unreachable

14:                                               ; preds = %12
  %15 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %16 = load %struct.IndexEntry*, %struct.IndexEntry** %3, align 8
  %17 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %16, i32 0, i32 1
  %18 = bitcast %struct.IndexKey* %15 to i8*
  %19 = bitcast %struct.IndexKey* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 8 %19, i64 32, i1 false)
  %20 = load %struct.IndexEntry*, %struct.IndexEntry** %3, align 8
  %21 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %20, i32 0, i32 2
  %22 = load %struct.IndexEntry*, %struct.IndexEntry** %21, align 8
  store %struct.IndexEntry* %22, %struct.IndexEntry** %3, align 8
  br label %23

23:                                               ; preds = %31, %14
  %24 = load %struct.IndexEntry*, %struct.IndexEntry** %3, align 8
  %25 = icmp ne %struct.IndexEntry* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load %struct.IndexEntry*, %struct.IndexEntry** %3, align 8
  %28 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %27, i32 0, i32 1
  %29 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  %30 = load %struct.IndexKey*, %struct.IndexKey** %4, align 8
  call void @keyUnion(%struct.IndexKey* %28, %struct.IndexKey* %29, %struct.IndexKey* %30)
  br label %31

31:                                               ; preds = %26
  %32 = load %struct.IndexEntry*, %struct.IndexEntry** %3, align 8
  %33 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %32, i32 0, i32 2
  %34 = load %struct.IndexEntry*, %struct.IndexEntry** %33, align 8
  store %struct.IndexEntry* %34, %struct.IndexEntry** %3, align 8
  br label %23

35:                                               ; preds = %23
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._IO_FILE*, align 8
  %9 = alloca %struct._IO_FILE*, align 8
  %10 = alloca %struct._IO_FILE*, align 8
  %11 = alloca %struct.Metrics, align 8
  %12 = alloca %struct.IndexNode*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.DataObject*, align 8
  %16 = alloca %struct.IndexKey, align 4
  %17 = alloca %struct.DataAttribute*, align 8
  %18 = alloca %struct.DataAttribute*, align 8
  %19 = alloca %struct.DataAttribute*, align 8
  %20 = alloca %struct.IndexKey, align 4
  %21 = alloca %struct.DataAttribute*, align 8
  %22 = alloca %struct.DataAttribute*, align 8
  %23 = alloca %struct.DataAttribute*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  call void @initMetricsData(%struct.Metrics* %11)
  store %struct._IO_FILE* null, %struct._IO_FILE** %8, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %9, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %10, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = load i8**, i8*** %5, align 8
  %27 = call i64 @openFiles(i64 %25, i8** %26, %struct._IO_FILE** %8, %struct._IO_FILE** %9, %struct._IO_FILE** %10)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %2
  %31 = load i64, i64* %6, align 8
  %32 = icmp eq i64 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %295

34:                                               ; preds = %30
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  call void @errorMessage(i8* %37, i8 signext 1)
  call void @flushErrorMessage()
  store i32 -1, i32* %3, align 4
  br label %295

38:                                               ; preds = %2
  %39 = call %struct.IndexNode* @createIndexNode(i64 0)
  store %struct.IndexNode* %39, %struct.IndexNode** %12, align 8
  %40 = load %struct.IndexNode*, %struct.IndexNode** %12, align 8
  %41 = icmp eq %struct.IndexNode* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  call void @errorMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.142, i64 0, i64 0), i8 signext 1)
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  %45 = load i8*, i8** %44, align 8
  call void @errorMessage(i8* %45, i8 signext 1)
  call void @flushErrorMessage()
  store i32 -1, i32* %3, align 4
  br label %295

46:                                               ; preds = %38
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %48 = call i64 @getNextCommandCode(%struct._IO_FILE* %47, i32* %7)
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %6, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %76

51:                                               ; preds = %46
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %51
  %55 = call i64 @getTime()
  store i64 %55, i64* %14, align 8
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %57 = call i64 @getInitCommand(%struct._IO_FILE* %56, i64* %13)
  store i64 %57, i64* %6, align 8
  %58 = call i64 @getTime()
  %59 = load i64, i64* %14, align 8
  %60 = sub nsw i64 %58, %59
  %61 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %11, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, %60
  store i64 %63, i64* %61, align 8
  %64 = load i64, i64* %6, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %54
  call void @errorMessage(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1.143, i64 0, i64 0), i8 signext 1)
  %67 = load i8**, i8*** %5, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 0
  %69 = load i8*, i8** %68, align 8
  call void @errorMessage(i8* %69, i8 signext 1)
  call void @flushErrorMessage()
  store i32 -1, i32* %3, align 4
  br label %295

70:                                               ; preds = %54
  br label %75

71:                                               ; preds = %51
  call void @errorMessage(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.144, i64 0, i64 0), i8 signext 0)
  %72 = load i8**, i8*** %5, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 0
  %74 = load i8*, i8** %73, align 8
  call void @errorMessage(i8* %74, i8 signext 1)
  call void @flushErrorMessage()
  store i32 -1, i32* %3, align 4
  br label %295

75:                                               ; preds = %70
  br label %87

76:                                               ; preds = %46
  %77 = load i64, i64* %6, align 8
  %78 = icmp eq i64 %77, 1
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i64, i64* %6, align 8
  %81 = icmp eq i64 %80, 2
  br i1 %81, label %82, label %86

82:                                               ; preds = %79, %76
  call void @errorMessage(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1.143, i64 0, i64 0), i8 signext 1)
  %83 = load i8**, i8*** %5, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 0
  %85 = load i8*, i8** %84, align 8
  call void @errorMessage(i8* %85, i8 signext 1)
  call void @flushErrorMessage()
  store i32 -1, i32* %3, align 4
  br label %295

86:                                               ; preds = %79
  br label %87

87:                                               ; preds = %86, %75
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  call void @clearLine(%struct._IO_FILE* %88)
  br label %89

89:                                               ; preds = %288, %87
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 4
  br i1 %91, label %92, label %290

92:                                               ; preds = %89
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %94 = call i64 @getNextCommandCode(%struct._IO_FILE* %93, i32* %7)
  store i64 %94, i64* %6, align 8
  %95 = load i64, i64* %6, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %272

97:                                               ; preds = %92
  %98 = load i32, i32* %7, align 4
  call void @setMetricsData(%struct.Metrics* %11, i32 %98)
  %99 = load i32, i32* %7, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %145

101:                                              ; preds = %97
  %102 = call i64 @getTime()
  store i64 %102, i64* %14, align 8
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %104 = call i64 @getInsertCommand(%struct._IO_FILE* %103, %struct.DataObject** %15)
  store i64 %104, i64* %6, align 8
  %105 = call i64 @getTime()
  %106 = load i64, i64* %14, align 8
  %107 = sub nsw i64 %105, %106
  %108 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %11, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, %107
  store i64 %110, i64* %108, align 8
  %111 = load i64, i64* %6, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %140

113:                                              ; preds = %101
  %114 = load %struct.DataObject*, %struct.DataObject** %15, align 8
  %115 = load i64, i64* %13, align 8
  %116 = call i64 @insert(%struct.IndexNode** %12, %struct.DataObject* %114, i64 %115)
  store i64 %116, i64* %6, align 8
  %117 = load i64, i64* %6, align 8
  %118 = icmp eq i64 %117, 1
  br i1 %118, label %119, label %123

119:                                              ; preds = %113
  %120 = load i8**, i8*** %5, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 0
  %122 = load i8*, i8** %121, align 8
  call void @errorMessage(i8* %122, i8 signext 1)
  call void @flushErrorMessage()
  store i32 -1, i32* %3, align 4
  br label %295

123:                                              ; preds = %113
  %124 = load i64, i64* %6, align 8
  %125 = icmp eq i64 %124, 2
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load i8**, i8*** %5, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i64 0
  %129 = load i8*, i8** %128, align 8
  call void @errorMessage(i8* %129, i8 signext 1)
  call void @flushErrorMessage()
  br label %138

130:                                              ; preds = %123
  %131 = load i64, i64* %6, align 8
  %132 = icmp eq i64 %131, 3
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load i8**, i8*** %5, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i64 0
  %136 = load i8*, i8** %135, align 8
  call void @errorMessage(i8* %136, i8 signext 1)
  call void @flushErrorMessage()
  store i32 -1, i32* %3, align 4
  br label %295

137:                                              ; preds = %130
  br label %138

138:                                              ; preds = %137, %126
  br label %139

139:                                              ; preds = %138
  br label %144

140:                                              ; preds = %101
  %141 = load i8**, i8*** %5, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 0
  %143 = load i8*, i8** %142, align 8
  call void @errorMessage(i8* %143, i8 signext 1)
  call void @flushErrorMessage()
  br label %144

144:                                              ; preds = %140, %139
  br label %264

145:                                              ; preds = %97
  %146 = load i32, i32* %7, align 4
  %147 = icmp eq i32 %146, 2
  br i1 %147, label %148, label %196

148:                                              ; preds = %145
  %149 = call i64 @getTime()
  store i64 %149, i64* %14, align 8
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %151 = call i64 @getQueryCommand(%struct._IO_FILE* %150, %struct.IndexKey* %16, %struct.DataAttribute** %17)
  store i64 %151, i64* %6, align 8
  %152 = call i64 @getTime()
  %153 = load i64, i64* %14, align 8
  %154 = sub nsw i64 %152, %153
  %155 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %11, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %156, %154
  store i64 %157, i64* %155, align 8
  %158 = load i64, i64* %6, align 8
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %174

160:                                              ; preds = %148
  %161 = load %struct.IndexNode*, %struct.IndexNode** %12, align 8
  %162 = load %struct.DataAttribute*, %struct.DataAttribute** %17, align 8
  %163 = call i64 @query(%struct.IndexNode* %161, %struct.IndexKey* %16, %struct.DataAttribute* %162, i8 signext 1, void (%struct.DataObject*)* @outputQuery)
  store i64 %163, i64* %6, align 8
  %164 = load i64, i64* %6, align 8
  %165 = icmp eq i64 %164, 1
  br i1 %165, label %169, label %166

166:                                              ; preds = %160
  %167 = load i64, i64* %6, align 8
  %168 = icmp eq i64 %167, 2
  br i1 %168, label %169, label %173

169:                                              ; preds = %166, %160
  %170 = load i8**, i8*** %5, align 8
  %171 = getelementptr inbounds i8*, i8** %170, i64 0
  %172 = load i8*, i8** %171, align 8
  call void @errorMessage(i8* %172, i8 signext 1)
  call void @flushErrorMessage()
  br label %173

173:                                              ; preds = %169, %166
  br label %178

174:                                              ; preds = %148
  %175 = load i8**, i8*** %5, align 8
  %176 = getelementptr inbounds i8*, i8** %175, i64 0
  %177 = load i8*, i8** %176, align 8
  call void @errorMessage(i8* %177, i8 signext 1)
  call void @flushErrorMessage()
  br label %178

178:                                              ; preds = %174, %173
  %179 = load %struct.DataAttribute*, %struct.DataAttribute** %17, align 8
  store %struct.DataAttribute* %179, %struct.DataAttribute** %18, align 8
  br label %180

180:                                              ; preds = %183, %178
  %181 = load %struct.DataAttribute*, %struct.DataAttribute** %18, align 8
  %182 = icmp ne %struct.DataAttribute* %181, null
  br i1 %182, label %183, label %195

183:                                              ; preds = %180
  %184 = load %struct.DataAttribute*, %struct.DataAttribute** %18, align 8
  %185 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %184, i32 0, i32 2
  %186 = load %struct.DataAttribute*, %struct.DataAttribute** %185, align 8
  store %struct.DataAttribute* %186, %struct.DataAttribute** %19, align 8
  %187 = load %struct.DataAttribute*, %struct.DataAttribute** %18, align 8
  %188 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %188, i32 0, i32 0
  %190 = bitcast %union.anon.6* %189 to i8**
  %191 = load i8*, i8** %190, align 8
  call void @free(i8* %191) #8
  %192 = load %struct.DataAttribute*, %struct.DataAttribute** %18, align 8
  %193 = bitcast %struct.DataAttribute* %192 to i8*
  call void @free(i8* %193) #8
  %194 = load %struct.DataAttribute*, %struct.DataAttribute** %19, align 8
  store %struct.DataAttribute* %194, %struct.DataAttribute** %18, align 8
  br label %180

195:                                              ; preds = %180
  br label %263

196:                                              ; preds = %145
  %197 = load i32, i32* %7, align 4
  %198 = icmp eq i32 %197, 3
  br i1 %198, label %199, label %246

199:                                              ; preds = %196
  %200 = call i64 @getTime()
  store i64 %200, i64* %14, align 8
  %201 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %202 = call i64 @getDeleteCommand(%struct._IO_FILE* %201, %struct.IndexKey* %20, %struct.DataAttribute** %21)
  store i64 %202, i64* %6, align 8
  %203 = call i64 @getTime()
  %204 = load i64, i64* %14, align 8
  %205 = sub nsw i64 %203, %204
  %206 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %11, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = add nsw i64 %207, %205
  store i64 %208, i64* %206, align 8
  %209 = load i64, i64* %6, align 8
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %224

211:                                              ; preds = %199
  %212 = load %struct.DataAttribute*, %struct.DataAttribute** %21, align 8
  %213 = call i64 @delete(%struct.IndexNode** %12, %struct.IndexKey* %20, %struct.DataAttribute* %212)
  store i64 %213, i64* %6, align 8
  %214 = load i64, i64* %6, align 8
  %215 = icmp eq i64 %214, 1
  br i1 %215, label %219, label %216

216:                                              ; preds = %211
  %217 = load i64, i64* %6, align 8
  %218 = icmp eq i64 %217, 2
  br i1 %218, label %219, label %223

219:                                              ; preds = %216, %211
  %220 = load i8**, i8*** %5, align 8
  %221 = getelementptr inbounds i8*, i8** %220, i64 0
  %222 = load i8*, i8** %221, align 8
  call void @errorMessage(i8* %222, i8 signext 1)
  call void @flushErrorMessage()
  br label %223

223:                                              ; preds = %219, %216
  br label %228

224:                                              ; preds = %199
  %225 = load i8**, i8*** %5, align 8
  %226 = getelementptr inbounds i8*, i8** %225, i64 0
  %227 = load i8*, i8** %226, align 8
  call void @errorMessage(i8* %227, i8 signext 1)
  call void @flushErrorMessage()
  br label %228

228:                                              ; preds = %224, %223
  %229 = load %struct.DataAttribute*, %struct.DataAttribute** %21, align 8
  store %struct.DataAttribute* %229, %struct.DataAttribute** %22, align 8
  br label %230

230:                                              ; preds = %233, %228
  %231 = load %struct.DataAttribute*, %struct.DataAttribute** %22, align 8
  %232 = icmp ne %struct.DataAttribute* %231, null
  br i1 %232, label %233, label %245

233:                                              ; preds = %230
  %234 = load %struct.DataAttribute*, %struct.DataAttribute** %22, align 8
  %235 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %234, i32 0, i32 2
  %236 = load %struct.DataAttribute*, %struct.DataAttribute** %235, align 8
  store %struct.DataAttribute* %236, %struct.DataAttribute** %23, align 8
  %237 = load %struct.DataAttribute*, %struct.DataAttribute** %22, align 8
  %238 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %238, i32 0, i32 0
  %240 = bitcast %union.anon.6* %239 to i8**
  %241 = load i8*, i8** %240, align 8
  call void @free(i8* %241) #8
  %242 = load %struct.DataAttribute*, %struct.DataAttribute** %22, align 8
  %243 = bitcast %struct.DataAttribute* %242 to i8*
  call void @free(i8* %243) #8
  %244 = load %struct.DataAttribute*, %struct.DataAttribute** %23, align 8
  store %struct.DataAttribute* %244, %struct.DataAttribute** %22, align 8
  br label %230

245:                                              ; preds = %230
  br label %262

246:                                              ; preds = %196
  %247 = load i32, i32* %7, align 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %253

249:                                              ; preds = %246
  call void @errorMessage(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3.145, i64 0, i64 0), i8 signext 0)
  %250 = load i8**, i8*** %5, align 8
  %251 = getelementptr inbounds i8*, i8** %250, i64 0
  %252 = load i8*, i8** %251, align 8
  call void @errorMessage(i8* %252, i8 signext 1)
  call void @flushErrorMessage()
  br label %261

253:                                              ; preds = %246
  %254 = load i32, i32* %7, align 4
  %255 = icmp eq i32 %254, 5
  br i1 %255, label %256, label %260

256:                                              ; preds = %253
  %257 = load i8**, i8*** %5, align 8
  %258 = getelementptr inbounds i8*, i8** %257, i64 0
  %259 = load i8*, i8** %258, align 8
  call void @errorMessage(i8* %259, i8 signext 1)
  call void @flushErrorMessage()
  br label %260

260:                                              ; preds = %256, %253
  br label %261

261:                                              ; preds = %260, %249
  br label %262

262:                                              ; preds = %261, %245
  br label %263

263:                                              ; preds = %262, %195
  br label %264

264:                                              ; preds = %263, %144
  call void @updateMetricsData(%struct.Metrics* %11)
  %265 = call i64 @getTime()
  store i64 %265, i64* %14, align 8
  call void @flushOutputBuffer()
  %266 = call i64 @getTime()
  %267 = load i64, i64* %14, align 8
  %268 = sub nsw i64 %266, %267
  %269 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %11, i32 0, i32 2
  %270 = load i64, i64* %269, align 8
  %271 = add nsw i64 %270, %268
  store i64 %271, i64* %269, align 8
  br label %288

272:                                              ; preds = %92
  %273 = load i64, i64* %6, align 8
  %274 = icmp eq i64 %273, 1
  br i1 %274, label %275, label %279

275:                                              ; preds = %272
  %276 = load i8**, i8*** %5, align 8
  %277 = getelementptr inbounds i8*, i8** %276, i64 0
  %278 = load i8*, i8** %277, align 8
  call void @errorMessage(i8* %278, i8 signext 1)
  call void @flushErrorMessage()
  store i32 -1, i32* %3, align 4
  br label %295

279:                                              ; preds = %272
  %280 = load i64, i64* %6, align 8
  %281 = icmp eq i64 %280, 2
  br i1 %281, label %282, label %286

282:                                              ; preds = %279
  %283 = load i8**, i8*** %5, align 8
  %284 = getelementptr inbounds i8*, i8** %283, i64 0
  %285 = load i8*, i8** %284, align 8
  call void @errorMessage(i8* %285, i8 signext 1)
  call void @flushErrorMessage()
  br label %286

286:                                              ; preds = %282, %279
  br label %287

287:                                              ; preds = %286
  br label %288

288:                                              ; preds = %287, %264
  %289 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  call void @clearLine(%struct._IO_FILE* %289)
  br label %89

290:                                              ; preds = %89
  %291 = load %struct.IndexNode*, %struct.IndexNode** %12, align 8
  call void @deleteIndexNode(%struct.IndexNode* %291)
  %292 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %293 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %294 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  call void @closeFiles(%struct._IO_FILE* %292, %struct._IO_FILE* %293, %struct._IO_FILE* %294)
  call void @exit(i32 0) #7
  unreachable

295:                                              ; preds = %275, %133, %119, %82, %71, %66, %42, %34, %33
  %296 = load i32, i32* %3, align 4
  ret i32 %296
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @openFiles(i64 %0, i8** %1, %struct._IO_FILE** %2, %struct._IO_FILE** %3, %struct._IO_FILE** %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct._IO_FILE**, align 8
  %10 = alloca %struct._IO_FILE**, align 8
  %11 = alloca %struct._IO_FILE**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i8** %1, i8*** %8, align 8
  store %struct._IO_FILE** %2, %struct._IO_FILE*** %9, align 8
  store %struct._IO_FILE** %3, %struct._IO_FILE*** %10, align 8
  store %struct._IO_FILE** %4, %struct._IO_FILE*** %11, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  br label %20

19:                                               ; preds = %5
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.148, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.149, i64 0, i64 0), i32 71, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.openFiles, i64 0, i64 0)) #7
  unreachable

20:                                               ; preds = %18
  %21 = load i8**, i8*** %8, align 8
  %22 = icmp ne i8** %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i8**, i8*** %8, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %30

29:                                               ; preds = %23, %20
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2.150, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.149, i64 0, i64 0), i32 72, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.openFiles, i64 0, i64 0)) #7
  unreachable

30:                                               ; preds = %28
  %31 = load %struct._IO_FILE**, %struct._IO_FILE*** %9, align 8
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %31, align 8
  %33 = icmp eq %struct._IO_FILE* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %36

35:                                               ; preds = %30
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3.151, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.149, i64 0, i64 0), i32 73, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.openFiles, i64 0, i64 0)) #7
  unreachable

36:                                               ; preds = %34
  %37 = load %struct._IO_FILE**, %struct._IO_FILE*** %10, align 8
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %37, align 8
  %39 = icmp eq %struct._IO_FILE* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %42

41:                                               ; preds = %36
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.152, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.149, i64 0, i64 0), i32 74, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.openFiles, i64 0, i64 0)) #7
  unreachable

42:                                               ; preds = %40
  %43 = load %struct._IO_FILE**, %struct._IO_FILE*** %11, align 8
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %43, align 8
  %45 = icmp eq %struct._IO_FILE* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %48

47:                                               ; preds = %42
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.153, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.149, i64 0, i64 0), i32 75, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__.openFiles, i64 0, i64 0)) #7
  unreachable

48:                                               ; preds = %46
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp sgt i64 %49, 1
  br i1 %50, label %51, label %260

51:                                               ; preds = %48
  store i64 1, i64* %15, align 8
  br label %52

52:                                               ; preds = %258, %51
  %53 = load i64, i64* %15, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %259

56:                                               ; preds = %52
  %57 = load i8**, i8*** %8, align 8
  %58 = load i64, i64* %15, align 8
  %59 = getelementptr inbounds i8*, i8** %57, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @strlen(i8* %60) #9
  %62 = icmp eq i64 %61, 2
  br i1 %62, label %63, label %241

63:                                               ; preds = %56
  %64 = load i8**, i8*** %8, align 8
  %65 = load i64, i64* %15, align 8
  %66 = getelementptr inbounds i8*, i8** %64, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 45
  br i1 %71, label %72, label %241

72:                                               ; preds = %63
  %73 = load i8**, i8*** %8, align 8
  %74 = load i64, i64* %15, align 8
  %75 = getelementptr inbounds i8*, i8** %73, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 105
  br i1 %80, label %81, label %113

81:                                               ; preds = %72
  %82 = load i64, i64* %15, align 8
  %83 = add nsw i64 %82, 1
  %84 = load i64, i64* %7, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load i64, i64* %15, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %15, align 8
  %89 = load i8**, i8*** %8, align 8
  %90 = load i64, i64* %15, align 8
  %91 = getelementptr inbounds i8*, i8** %89, i64 %90
  %92 = load i8*, i8** %91, align 8
  store i8* %92, i8** %12, align 8
  br label %110

93:                                               ; preds = %81
  call void @errorMessage(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6.154, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i64 0, i64 0), i8 signext 1)
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %95 = load i8**, i8*** %8, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %94, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7.155, i64 0, i64 0), i8* %97)
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %100 = load i8**, i8*** %8, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8.156, i64 0, i64 0), i8* %102)
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %104, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %106, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10.157, i64 0, i64 0))
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %108, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  store i64 2, i64* %6, align 8
  br label %308

110:                                              ; preds = %86
  %111 = load i64, i64* %15, align 8
  %112 = add nsw i64 %111, 1
  store i64 %112, i64* %15, align 8
  br label %240

113:                                              ; preds = %72
  %114 = load i8**, i8*** %8, align 8
  %115 = load i64, i64* %15, align 8
  %116 = getelementptr inbounds i8*, i8** %114, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 1
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 111
  br i1 %121, label %122, label %154

122:                                              ; preds = %113
  %123 = load i64, i64* %15, align 8
  %124 = add nsw i64 %123, 1
  %125 = load i64, i64* %7, align 8
  %126 = icmp slt i64 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %122
  %128 = load i64, i64* %15, align 8
  %129 = add nsw i64 %128, 1
  store i64 %129, i64* %15, align 8
  %130 = load i8**, i8*** %8, align 8
  %131 = load i64, i64* %15, align 8
  %132 = getelementptr inbounds i8*, i8** %130, i64 %131
  %133 = load i8*, i8** %132, align 8
  store i8* %133, i8** %13, align 8
  br label %151

134:                                              ; preds = %122
  call void @errorMessage(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i64 0, i64 0), i8 signext 1)
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %136 = load i8**, i8*** %8, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i64 0
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %135, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7.155, i64 0, i64 0), i8* %138)
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %141 = load i8**, i8*** %8, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 0
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %140, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8.156, i64 0, i64 0), i8* %143)
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %146 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %145, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %148 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %147, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10.157, i64 0, i64 0))
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %149, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  store i64 2, i64* %6, align 8
  br label %308

151:                                              ; preds = %127
  %152 = load i64, i64* %15, align 8
  %153 = add nsw i64 %152, 1
  store i64 %153, i64* %15, align 8
  br label %239

154:                                              ; preds = %113
  %155 = load i8**, i8*** %8, align 8
  %156 = load i64, i64* %15, align 8
  %157 = getelementptr inbounds i8*, i8** %155, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 1
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %161, 109
  br i1 %162, label %163, label %195

163:                                              ; preds = %154
  %164 = load i64, i64* %15, align 8
  %165 = add nsw i64 %164, 1
  %166 = load i64, i64* %7, align 8
  %167 = icmp slt i64 %165, %166
  br i1 %167, label %168, label %175

168:                                              ; preds = %163
  %169 = load i64, i64* %15, align 8
  %170 = add nsw i64 %169, 1
  store i64 %170, i64* %15, align 8
  %171 = load i8**, i8*** %8, align 8
  %172 = load i64, i64* %15, align 8
  %173 = getelementptr inbounds i8*, i8** %171, i64 %172
  %174 = load i8*, i8** %173, align 8
  store i8* %174, i8** %14, align 8
  br label %192

175:                                              ; preds = %163
  call void @errorMessage(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13.158, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i64 0, i64 0), i8 signext 1)
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %176 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %177 = load i8**, i8*** %8, align 8
  %178 = getelementptr inbounds i8*, i8** %177, i64 0
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %176, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7.155, i64 0, i64 0), i8* %179)
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %182 = load i8**, i8*** %8, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i64 0
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %181, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8.156, i64 0, i64 0), i8* %184)
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %187 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %186, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %189 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %188, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10.157, i64 0, i64 0))
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %191 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %190, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  store i64 2, i64* %6, align 8
  br label %308

192:                                              ; preds = %168
  %193 = load i64, i64* %15, align 8
  %194 = add nsw i64 %193, 1
  store i64 %194, i64* %15, align 8
  br label %238

195:                                              ; preds = %154
  %196 = load i8**, i8*** %8, align 8
  %197 = load i64, i64* %15, align 8
  %198 = getelementptr inbounds i8*, i8** %196, i64 %197
  %199 = load i8*, i8** %198, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 1
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %202, 104
  br i1 %203, label %204, label %221

204:                                              ; preds = %195
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %206 = load i8**, i8*** %8, align 8
  %207 = getelementptr inbounds i8*, i8** %206, i64 0
  %208 = load i8*, i8** %207, align 8
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %205, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7.155, i64 0, i64 0), i8* %208)
  %210 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %211 = load i8**, i8*** %8, align 8
  %212 = getelementptr inbounds i8*, i8** %211, i64 0
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %210, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8.156, i64 0, i64 0), i8* %213)
  %215 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %216 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %215, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %217 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %218 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %217, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10.157, i64 0, i64 0))
  %219 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %220 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %219, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  store i64 1, i64* %6, align 8
  br label %308

221:                                              ; preds = %195
  call void @errorMessage(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i64 0, i64 0), i8 signext 1)
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %222 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %223 = load i8**, i8*** %8, align 8
  %224 = getelementptr inbounds i8*, i8** %223, i64 0
  %225 = load i8*, i8** %224, align 8
  %226 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %222, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7.155, i64 0, i64 0), i8* %225)
  %227 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %228 = load i8**, i8*** %8, align 8
  %229 = getelementptr inbounds i8*, i8** %228, i64 0
  %230 = load i8*, i8** %229, align 8
  %231 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %227, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8.156, i64 0, i64 0), i8* %230)
  %232 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %233 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %232, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %234 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %235 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %234, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10.157, i64 0, i64 0))
  %236 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %237 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %236, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  store i64 2, i64* %6, align 8
  br label %308

238:                                              ; preds = %192
  br label %239

239:                                              ; preds = %238, %151
  br label %240

240:                                              ; preds = %239, %110
  br label %258

241:                                              ; preds = %63, %56
  call void @errorMessage(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i64 0, i64 0), i8 signext 1)
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %242 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %243 = load i8**, i8*** %8, align 8
  %244 = getelementptr inbounds i8*, i8** %243, i64 0
  %245 = load i8*, i8** %244, align 8
  %246 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %242, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7.155, i64 0, i64 0), i8* %245)
  %247 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %248 = load i8**, i8*** %8, align 8
  %249 = getelementptr inbounds i8*, i8** %248, i64 0
  %250 = load i8*, i8** %249, align 8
  %251 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %247, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8.156, i64 0, i64 0), i8* %250)
  %252 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %253 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %252, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %254 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %255 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %254, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10.157, i64 0, i64 0))
  %256 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %257 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %256, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  store i64 2, i64* %6, align 8
  br label %308

258:                                              ; preds = %240
  br label %52

259:                                              ; preds = %52
  br label %260

260:                                              ; preds = %259, %48
  %261 = load i8*, i8** %12, align 8
  %262 = icmp eq i8* %261, null
  br i1 %262, label %263, label %266

263:                                              ; preds = %260
  %264 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %265 = load %struct._IO_FILE**, %struct._IO_FILE*** %9, align 8
  store %struct._IO_FILE* %264, %struct._IO_FILE** %265, align 8
  br label %275

266:                                              ; preds = %260
  %267 = load i8*, i8** %12, align 8
  %268 = call %struct._IO_FILE* @fopen(i8* %267, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %269 = load %struct._IO_FILE**, %struct._IO_FILE*** %9, align 8
  store %struct._IO_FILE* %268, %struct._IO_FILE** %269, align 8
  %270 = load %struct._IO_FILE**, %struct._IO_FILE*** %9, align 8
  %271 = load %struct._IO_FILE*, %struct._IO_FILE** %270, align 8
  %272 = icmp eq %struct._IO_FILE* %271, null
  br i1 %272, label %273, label %274

273:                                              ; preds = %266
  call void @errorMessage(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17.159, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i64 0, i64 0), i8 signext 1)
  store i64 3, i64* %6, align 8
  br label %308

274:                                              ; preds = %266
  br label %275

275:                                              ; preds = %274, %263
  %276 = load i8*, i8** %13, align 8
  %277 = icmp eq i8* %276, null
  br i1 %277, label %278, label %281

278:                                              ; preds = %275
  %279 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %280 = load %struct._IO_FILE**, %struct._IO_FILE*** %10, align 8
  store %struct._IO_FILE* %279, %struct._IO_FILE** %280, align 8
  br label %290

281:                                              ; preds = %275
  %282 = load i8*, i8** %13, align 8
  %283 = call %struct._IO_FILE* @fopen(i8* %282, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18.160, i64 0, i64 0))
  %284 = load %struct._IO_FILE**, %struct._IO_FILE*** %10, align 8
  store %struct._IO_FILE* %283, %struct._IO_FILE** %284, align 8
  %285 = load %struct._IO_FILE**, %struct._IO_FILE*** %10, align 8
  %286 = load %struct._IO_FILE*, %struct._IO_FILE** %285, align 8
  %287 = icmp eq %struct._IO_FILE* %286, null
  br i1 %287, label %288, label %289

288:                                              ; preds = %281
  call void @errorMessage(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i64 0, i64 0), i8 signext 1)
  store i64 4, i64* %6, align 8
  br label %308

289:                                              ; preds = %281
  br label %290

290:                                              ; preds = %289, %278
  %291 = load %struct._IO_FILE**, %struct._IO_FILE*** %10, align 8
  %292 = load %struct._IO_FILE*, %struct._IO_FILE** %291, align 8
  call void @initOutputBuffer(%struct._IO_FILE* %292)
  %293 = load i8*, i8** %14, align 8
  %294 = icmp eq i8* %293, null
  br i1 %294, label %295, label %298

295:                                              ; preds = %290
  %296 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %297 = load %struct._IO_FILE**, %struct._IO_FILE*** %11, align 8
  store %struct._IO_FILE* %296, %struct._IO_FILE** %297, align 8
  br label %307

298:                                              ; preds = %290
  %299 = load i8*, i8** %14, align 8
  %300 = call %struct._IO_FILE* @fopen(i8* %299, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18.160, i64 0, i64 0))
  %301 = load %struct._IO_FILE**, %struct._IO_FILE*** %11, align 8
  store %struct._IO_FILE* %300, %struct._IO_FILE** %301, align 8
  %302 = load %struct._IO_FILE**, %struct._IO_FILE*** %11, align 8
  %303 = load %struct._IO_FILE*, %struct._IO_FILE** %302, align 8
  %304 = icmp eq %struct._IO_FILE* %303, null
  br i1 %304, label %305, label %306

305:                                              ; preds = %298
  call void @errorMessage(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20.161, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @openFiles.name, i64 0, i64 0), i8 signext 1)
  store i64 5, i64* %6, align 8
  br label %308

306:                                              ; preds = %298
  br label %307

307:                                              ; preds = %306, %295
  store i64 0, i64* %6, align 8
  br label %308

308:                                              ; preds = %307, %305, %288, %273, %241, %221, %204, %175, %134, %93
  %309 = load i64, i64* %6, align 8
  ret i64 %309
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @outputMetricsData(%struct._IO_FILE* %0, %struct.Metrics* %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.Metrics*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store %struct.Metrics* %1, %struct.Metrics** %4, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %6 = icmp ne %struct._IO_FILE* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %9

8:                                                ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.162, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.163, i64 0, i64 0), i32 39, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.outputMetricsData, i64 0, i64 0)) #7
  unreachable

9:                                                ; preds = %7
  %10 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %11 = icmp ne %struct.Metrics* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %14

13:                                               ; preds = %9
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.164, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.163, i64 0, i64 0), i32 40, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.outputMetricsData, i64 0, i64 0)) #7
  unreachable

14:                                               ; preds = %12
  %15 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  call void @calcMetricsData(%struct.Metrics* %15)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3.165, i64 0, i64 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %19 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %20 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4.166, i64 0, i64 0), i64 %21)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %24 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %25 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5.167, i64 0, i64 0), i64 %26)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %29 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %30 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6.168, i64 0, i64 0), i64 %31)
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7.169, i64 0, i64 0))
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %36 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %37 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8.170, i64 0, i64 0), i64 %39)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %42 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %43 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.171, i64 0, i64 0), i64 %45)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %48 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %49 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %49, i32 0, i32 6
  %51 = load double, double* %50, align 8
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10.172, i64 0, i64 0), double %51)
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %54 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %55 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %55, i32 0, i32 7
  %57 = load double, double* %56, align 8
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11.173, i64 0, i64 0), double %57)
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12.174, i64 0, i64 0))
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %62 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %63 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8.170, i64 0, i64 0), i64 %65)
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %68 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %69 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.171, i64 0, i64 0), i64 %71)
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %74 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %75 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %75, i32 0, i32 6
  %77 = load double, double* %76, align 8
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10.172, i64 0, i64 0), double %77)
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %80 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %81 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %81, i32 0, i32 7
  %83 = load double, double* %82, align 8
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %79, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11.173, i64 0, i64 0), double %83)
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13.175, i64 0, i64 0))
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %88 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %89 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %87, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8.170, i64 0, i64 0), i64 %91)
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %94 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %95 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %94, i32 0, i32 5
  %96 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %93, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.171, i64 0, i64 0), i64 %97)
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %100 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %101 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %101, i32 0, i32 6
  %103 = load double, double* %102, align 8
  %104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %99, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10.172, i64 0, i64 0), double %103)
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %106 = load %struct.Metrics*, %struct.Metrics** %4, align 8
  %107 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %107, i32 0, i32 7
  %109 = load double, double* %108, align 8
  %110 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %105, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11.173, i64 0, i64 0), double %109)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @outputQuery(%struct.DataObject* %0) #0 {
  %2 = alloca %struct.DataObject*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.DataObject* %0, %struct.DataObject** %2, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @outputFile, align 8
  %6 = icmp ne %struct._IO_FILE* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %9

8:                                                ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.178, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.179, i64 0, i64 0), i32 128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.outputQuery, i64 0, i64 0)) #7
  unreachable

9:                                                ; preds = %7
  %10 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %11 = icmp ne %struct.DataObject* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %14

13:                                               ; preds = %9
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2.180, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.179, i64 0, i64 0), i32 129, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.outputQuery, i64 0, i64 0)) #7
  unreachable

14:                                               ; preds = %12
  %15 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %16 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %21 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 2
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %26 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 3
  br i1 %28, label %30, label %29

29:                                               ; preds = %24, %19, %14
  br label %31

30:                                               ; preds = %24
  call void @__assert_fail(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.3.181, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.179, i64 0, i64 0), i32 132, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.outputQuery, i64 0, i64 0)) #7
  unreachable

31:                                               ; preds = %29
  store i64 0, i64* %4, align 8
  %32 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %33 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i64 17, i64* %4, align 8
  br label %51

37:                                               ; preds = %31
  %38 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %39 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i64 24, i64* %4, align 8
  br label %50

43:                                               ; preds = %37
  %44 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %45 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 3
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i64 50, i64* %4, align 8
  br label %49

49:                                               ; preds = %48, %43
  br label %50

50:                                               ; preds = %49, %42
  br label %51

51:                                               ; preds = %50, %36
  store i8 0, i8* getelementptr inbounds ([44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i64 0, i64 0), align 16
  store i64 0, i64* %3, align 8
  br label %52

52:                                               ; preds = %68, %51
  %53 = load i64, i64* %3, align 8
  %54 = icmp slt i64 %53, 8
  br i1 %54, label %55, label %71

55:                                               ; preds = %52
  %56 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %57 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %56, i32 0, i32 1
  %58 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %57, align 8
  %59 = load i64, i64* %3, align 8
  %60 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %58, i64 %59
  %61 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %60, i32 0, i32 0
  %62 = bitcast %union.anon.6* %61 to float*
  %63 = load float, float* %62, align 8
  %64 = fpext float %63 to double
  %65 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @outputQuery.temp, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4.182, i64 0, i64 0), double %64) #8
  %66 = call i8* @strcat(i8* getelementptr inbounds ([44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @outputQuery.temp, i64 0, i64 0)) #8
  %67 = call i8* @strcat(i8* getelementptr inbounds ([44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.183, i64 0, i64 0)) #8
  br label %68

68:                                               ; preds = %55
  %69 = load i64, i64* %3, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %3, align 8
  br label %52

71:                                               ; preds = %52
  store i64 8, i64* %3, align 8
  br label %72

72:                                               ; preds = %112, %71
  %73 = load i64, i64* %3, align 8
  %74 = load i64, i64* %4, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %115

76:                                               ; preds = %72
  %77 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %78 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %77, i32 0, i32 1
  %79 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %78, align 8
  %80 = load i64, i64* %3, align 8
  %81 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %79, i64 %80
  %82 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %81, i32 0, i32 0
  %83 = bitcast %union.anon.6* %82 to i8**
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  br label %88

87:                                               ; preds = %76
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6.184, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.179, i64 0, i64 0), i32 186, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.outputQuery, i64 0, i64 0)) #7
  unreachable

88:                                               ; preds = %86
  %89 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %90 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %89, i32 0, i32 1
  %91 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %90, align 8
  %92 = load i64, i64* %3, align 8
  %93 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %91, i64 %92
  %94 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %93, i32 0, i32 0
  %95 = bitcast %union.anon.6* %94 to i8**
  %96 = load i8*, i8** %95, align 8
  %97 = call i64 @strlen(i8* %96) #9
  %98 = icmp ugt i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %88
  br label %101

100:                                              ; preds = %88
  call void @__assert_fail(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7.185, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.179, i64 0, i64 0), i32 187, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.outputQuery, i64 0, i64 0)) #7
  unreachable

101:                                              ; preds = %99
  %102 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %103 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %102, i32 0, i32 1
  %104 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %103, align 8
  %105 = load i64, i64* %3, align 8
  %106 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %104, i64 %105
  %107 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %106, i32 0, i32 0
  %108 = bitcast %union.anon.6* %107 to i8**
  %109 = load i8*, i8** %108, align 8
  %110 = call i8* @strcat(i8* getelementptr inbounds ([44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i64 0, i64 0), i8* %109) #8
  %111 = call i8* @strcat(i8* getelementptr inbounds ([44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.183, i64 0, i64 0)) #8
  br label %112

112:                                              ; preds = %101
  %113 = load i64, i64* %3, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %3, align 8
  br label %72

115:                                              ; preds = %72
  %116 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %117 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %116, i32 0, i32 1
  %118 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %117, align 8
  %119 = load i64, i64* %4, align 8
  %120 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %118, i64 %119
  %121 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %120, i32 0, i32 0
  %122 = bitcast %union.anon.6* %121 to i8**
  %123 = load i8*, i8** %122, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %115
  br label %127

126:                                              ; preds = %115
  call void @__assert_fail(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8.186, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.179, i64 0, i64 0), i32 193, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.outputQuery, i64 0, i64 0)) #7
  unreachable

127:                                              ; preds = %125
  %128 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %129 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %128, i32 0, i32 1
  %130 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %129, align 8
  %131 = load i64, i64* %4, align 8
  %132 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %130, i64 %131
  %133 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %132, i32 0, i32 0
  %134 = bitcast %union.anon.6* %133 to i8**
  %135 = load i8*, i8** %134, align 8
  %136 = call i64 @strlen(i8* %135) #9
  %137 = icmp ugt i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %127
  br label %140

139:                                              ; preds = %127
  call void @__assert_fail(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.9.187, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.179, i64 0, i64 0), i32 194, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.outputQuery, i64 0, i64 0)) #7
  unreachable

140:                                              ; preds = %138
  %141 = load %struct.DataObject*, %struct.DataObject** %2, align 8
  %142 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %141, i32 0, i32 1
  %143 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %142, align 8
  %144 = load i64, i64* %4, align 8
  %145 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %143, i64 %144
  %146 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %145, i32 0, i32 0
  %147 = bitcast %union.anon.6* %146 to i8**
  %148 = load i8*, i8** %147, align 8
  %149 = call i8* @strcat(i8* getelementptr inbounds ([44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i64 0, i64 0), i8* %148) #8
  %150 = call i8* @strcat(i8* getelementptr inbounds ([44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.188, i64 0, i64 0)) #8
  %151 = call i64 @strlen(i8* getelementptr inbounds ([44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i64 0, i64 0)) #9
  %152 = icmp ule i64 %151, 44483
  br i1 %152, label %153, label %154

153:                                              ; preds = %140
  br label %155

154:                                              ; preds = %140
  call void @__assert_fail(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11.189, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.179, i64 0, i64 0), i32 200, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.outputQuery, i64 0, i64 0)) #7
  unreachable

155:                                              ; preds = %153
  %156 = call i64 @strlen(i8* getelementptr inbounds ([44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i64 0, i64 0)) #9
  %157 = call i64 @strlen(i8* getelementptr inbounds ([88967 x i8], [88967 x i8]* @outputBuffer, i64 0, i64 0)) #9
  %158 = add i64 %156, %157
  %159 = icmp ugt i64 %158, 88966
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  call void @errorMessage(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12.190, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @outputQuery.name, i64 0, i64 0), i8 signext 1)
  call void @flushErrorMessage()
  call void @flushOutputBuffer()
  br label %161

161:                                              ; preds = %160, %155
  %162 = call i8* @strcat(i8* getelementptr inbounds ([88967 x i8], [88967 x i8]* @outputBuffer, i64 0, i64 0), i8* getelementptr inbounds ([44484 x i8], [44484 x i8]* @outputQuery.dataObjectString, i64 0, i64 0)) #8
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @flushOutputBuffer() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @outputFile, align 8
  %2 = icmp ne %struct._IO_FILE* %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %5

4:                                                ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.178, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.179, i64 0, i64 0), i32 276, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.flushOutputBuffer, i64 0, i64 0)) #7
  unreachable

5:                                                ; preds = %3
  %6 = call i64 @strlen(i8* getelementptr inbounds ([88967 x i8], [88967 x i8]* @outputBuffer, i64 0, i64 0)) #9
  %7 = icmp ugt i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @outputFile, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14.193, i64 0, i64 0), i8* getelementptr inbounds ([88967 x i8], [88967 x i8]* @outputBuffer, i64 0, i64 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @outputFile, align 8
  %12 = call i32 @fflush(%struct._IO_FILE* %11)
  br label %13

13:                                               ; preds = %8, %5
  store i8 0, i8* getelementptr inbounds ([88967 x i8], [88967 x i8]* @outputBuffer, i64 0, i64 0), align 16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initOutputBuffer(%struct._IO_FILE* %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %4 = icmp ne %struct._IO_FILE* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %7

6:                                                ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13.196, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.179, i64 0, i64 0), i32 245, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.initOutputBuffer, i64 0, i64 0)) #7
  unreachable

7:                                                ; preds = %5
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  store %struct._IO_FILE* %8, %struct._IO_FILE** @outputFile, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @partitionEntries(%struct.IndexEntry* %0, i64 %1, %struct.IndexEntry** %2, %struct.IndexEntry** %3) #0 {
  %5 = alloca %struct.IndexEntry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.IndexEntry**, align 8
  %8 = alloca %struct.IndexEntry**, align 8
  %9 = alloca %struct.IndexEntry*, align 8
  %10 = alloca %struct.IndexEntry*, align 8
  %11 = alloca %struct.IndexEntry*, align 8
  %12 = alloca %struct.IndexEntry*, align 8
  %13 = alloca %struct.IndexEntry*, align 8
  %14 = alloca %struct.IndexEntry*, align 8
  %15 = alloca %struct.IndexKey, align 8
  %16 = alloca float, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.IndexKey, align 8
  %20 = alloca float, align 4
  store %struct.IndexEntry* %0, %struct.IndexEntry** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.IndexEntry** %2, %struct.IndexEntry*** %7, align 8
  store %struct.IndexEntry** %3, %struct.IndexEntry*** %8, align 8
  %21 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %22 = icmp ne %struct.IndexEntry* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %25 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %24, i32 0, i32 2
  %26 = load %struct.IndexEntry*, %struct.IndexEntry** %25, align 8
  %27 = icmp ne %struct.IndexEntry* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %30

29:                                               ; preds = %23, %4
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.197, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1.198, i64 0, i64 0), i32 85, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.partitionEntries, i64 0, i64 0)) #7
  unreachable

30:                                               ; preds = %28
  %31 = load i64, i64* %6, align 8
  %32 = icmp sge i64 %31, 2
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %35

34:                                               ; preds = %30
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2.199, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1.198, i64 0, i64 0), i32 87, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.partitionEntries, i64 0, i64 0)) #7
  unreachable

35:                                               ; preds = %33
  %36 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %37 = load %struct.IndexEntry**, %struct.IndexEntry*** %7, align 8
  store %struct.IndexEntry* %36, %struct.IndexEntry** %37, align 8
  %38 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %39 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %38, i32 0, i32 2
  %40 = load %struct.IndexEntry*, %struct.IndexEntry** %39, align 8
  %41 = load %struct.IndexEntry**, %struct.IndexEntry*** %8, align 8
  store %struct.IndexEntry* %40, %struct.IndexEntry** %41, align 8
  %42 = load %struct.IndexEntry**, %struct.IndexEntry*** %7, align 8
  %43 = load %struct.IndexEntry*, %struct.IndexEntry** %42, align 8
  %44 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %43, i32 0, i32 1
  %45 = load %struct.IndexEntry**, %struct.IndexEntry*** %8, align 8
  %46 = load %struct.IndexEntry*, %struct.IndexEntry** %45, align 8
  %47 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %46, i32 0, i32 1
  call void @keyUnion(%struct.IndexKey* %44, %struct.IndexKey* %47, %struct.IndexKey* %15)
  %48 = call float @volume(%struct.IndexKey* byval(%struct.IndexKey) align 8 %15)
  store float %48, float* %16, align 4
  %49 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  store %struct.IndexEntry* %49, %struct.IndexEntry** %9, align 8
  br label %50

50:                                               ; preds = %83, %35
  %51 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %52 = icmp ne %struct.IndexEntry* %51, null
  br i1 %52, label %53, label %87

53:                                               ; preds = %50
  %54 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %55 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %54, i32 0, i32 2
  %56 = load %struct.IndexEntry*, %struct.IndexEntry** %55, align 8
  store %struct.IndexEntry* %56, %struct.IndexEntry** %10, align 8
  br label %57

57:                                               ; preds = %78, %53
  %58 = load %struct.IndexEntry*, %struct.IndexEntry** %10, align 8
  %59 = icmp ne %struct.IndexEntry* %58, null
  br i1 %59, label %60, label %82

60:                                               ; preds = %57
  %61 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %62 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %61, i32 0, i32 1
  %63 = load %struct.IndexEntry*, %struct.IndexEntry** %10, align 8
  %64 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %63, i32 0, i32 1
  call void @keyUnion(%struct.IndexKey* %62, %struct.IndexKey* %64, %struct.IndexKey* %19)
  %65 = call float @volume(%struct.IndexKey* byval(%struct.IndexKey) align 8 %19)
  store float %65, float* %20, align 4
  %66 = load float, float* %20, align 4
  %67 = load float, float* %16, align 4
  %68 = fcmp ogt float %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %60
  %70 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %71 = load %struct.IndexEntry**, %struct.IndexEntry*** %7, align 8
  store %struct.IndexEntry* %70, %struct.IndexEntry** %71, align 8
  %72 = load %struct.IndexEntry*, %struct.IndexEntry** %10, align 8
  %73 = load %struct.IndexEntry**, %struct.IndexEntry*** %8, align 8
  store %struct.IndexEntry* %72, %struct.IndexEntry** %73, align 8
  %74 = bitcast %struct.IndexKey* %15 to i8*
  %75 = bitcast %struct.IndexKey* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %74, i8* align 4 %75, i64 32, i1 false)
  %76 = load float, float* %20, align 4
  store float %76, float* %16, align 4
  br label %77

77:                                               ; preds = %69, %60
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.IndexEntry*, %struct.IndexEntry** %10, align 8
  %80 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %79, i32 0, i32 2
  %81 = load %struct.IndexEntry*, %struct.IndexEntry** %80, align 8
  store %struct.IndexEntry* %81, %struct.IndexEntry** %10, align 8
  br label %57

82:                                               ; preds = %57
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.IndexEntry*, %struct.IndexEntry** %9, align 8
  %85 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %84, i32 0, i32 2
  %86 = load %struct.IndexEntry*, %struct.IndexEntry** %85, align 8
  store %struct.IndexEntry* %86, %struct.IndexEntry** %9, align 8
  br label %50

87:                                               ; preds = %50
  %88 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  store %struct.IndexEntry* %88, %struct.IndexEntry** %11, align 8
  store %struct.IndexEntry* null, %struct.IndexEntry** %12, align 8
  br label %89

89:                                               ; preds = %125, %87
  %90 = load %struct.IndexEntry*, %struct.IndexEntry** %11, align 8
  %91 = icmp ne %struct.IndexEntry* %90, null
  br i1 %91, label %92, label %126

92:                                               ; preds = %89
  %93 = load %struct.IndexEntry*, %struct.IndexEntry** %11, align 8
  %94 = load %struct.IndexEntry**, %struct.IndexEntry*** %7, align 8
  %95 = load %struct.IndexEntry*, %struct.IndexEntry** %94, align 8
  %96 = icmp eq %struct.IndexEntry* %93, %95
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  %98 = load %struct.IndexEntry*, %struct.IndexEntry** %11, align 8
  %99 = load %struct.IndexEntry**, %struct.IndexEntry*** %8, align 8
  %100 = load %struct.IndexEntry*, %struct.IndexEntry** %99, align 8
  %101 = icmp eq %struct.IndexEntry* %98, %100
  br i1 %101, label %102, label %120

102:                                              ; preds = %97, %92
  %103 = load %struct.IndexEntry*, %struct.IndexEntry** %12, align 8
  %104 = icmp eq %struct.IndexEntry* %103, null
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = load %struct.IndexEntry*, %struct.IndexEntry** %11, align 8
  %107 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %106, i32 0, i32 2
  %108 = load %struct.IndexEntry*, %struct.IndexEntry** %107, align 8
  store %struct.IndexEntry* %108, %struct.IndexEntry** %5, align 8
  %109 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  store %struct.IndexEntry* %109, %struct.IndexEntry** %11, align 8
  store %struct.IndexEntry* null, %struct.IndexEntry** %12, align 8
  br label %119

110:                                              ; preds = %102
  %111 = load %struct.IndexEntry*, %struct.IndexEntry** %11, align 8
  %112 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %111, i32 0, i32 2
  %113 = load %struct.IndexEntry*, %struct.IndexEntry** %112, align 8
  %114 = load %struct.IndexEntry*, %struct.IndexEntry** %12, align 8
  %115 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %114, i32 0, i32 2
  store %struct.IndexEntry* %113, %struct.IndexEntry** %115, align 8
  %116 = load %struct.IndexEntry*, %struct.IndexEntry** %12, align 8
  %117 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %116, i32 0, i32 2
  %118 = load %struct.IndexEntry*, %struct.IndexEntry** %117, align 8
  store %struct.IndexEntry* %118, %struct.IndexEntry** %11, align 8
  br label %119

119:                                              ; preds = %110, %105
  br label %125

120:                                              ; preds = %97
  %121 = load %struct.IndexEntry*, %struct.IndexEntry** %11, align 8
  store %struct.IndexEntry* %121, %struct.IndexEntry** %12, align 8
  %122 = load %struct.IndexEntry*, %struct.IndexEntry** %11, align 8
  %123 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %122, i32 0, i32 2
  %124 = load %struct.IndexEntry*, %struct.IndexEntry** %123, align 8
  store %struct.IndexEntry* %124, %struct.IndexEntry** %11, align 8
  br label %125

125:                                              ; preds = %120, %119
  br label %89

126:                                              ; preds = %89
  %127 = load %struct.IndexEntry**, %struct.IndexEntry*** %7, align 8
  %128 = load %struct.IndexEntry*, %struct.IndexEntry** %127, align 8
  %129 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %128, i32 0, i32 2
  store %struct.IndexEntry* null, %struct.IndexEntry** %129, align 8
  %130 = load %struct.IndexEntry**, %struct.IndexEntry*** %8, align 8
  %131 = load %struct.IndexEntry*, %struct.IndexEntry** %130, align 8
  %132 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %131, i32 0, i32 2
  store %struct.IndexEntry* null, %struct.IndexEntry** %132, align 8
  store i64 1, i64* %17, align 8
  store i64 1, i64* %18, align 8
  %133 = load %struct.IndexEntry**, %struct.IndexEntry*** %7, align 8
  %134 = load %struct.IndexEntry*, %struct.IndexEntry** %133, align 8
  store %struct.IndexEntry* %134, %struct.IndexEntry** %13, align 8
  %135 = load %struct.IndexEntry**, %struct.IndexEntry*** %8, align 8
  %136 = load %struct.IndexEntry*, %struct.IndexEntry** %135, align 8
  store %struct.IndexEntry* %136, %struct.IndexEntry** %14, align 8
  br label %137

137:                                              ; preds = %237, %126
  %138 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %139 = icmp ne %struct.IndexEntry* %138, null
  br i1 %139, label %140, label %238

140:                                              ; preds = %137
  %141 = load i64, i64* %17, align 8
  %142 = load i64, i64* %6, align 8
  %143 = icmp slt i64 %141, %142
  br i1 %143, label %144, label %187

144:                                              ; preds = %140
  %145 = load i64, i64* %18, align 8
  %146 = load i64, i64* %6, align 8
  %147 = icmp slt i64 %145, %146
  br i1 %147, label %148, label %187

148:                                              ; preds = %144
  %149 = load %struct.IndexEntry**, %struct.IndexEntry*** %7, align 8
  %150 = load %struct.IndexEntry*, %struct.IndexEntry** %149, align 8
  %151 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %152 = call float @penalty(%struct.IndexEntry* byval(%struct.IndexEntry) align 8 %150, %struct.IndexEntry* byval(%struct.IndexEntry) align 8 %151)
  %153 = load %struct.IndexEntry**, %struct.IndexEntry*** %8, align 8
  %154 = load %struct.IndexEntry*, %struct.IndexEntry** %153, align 8
  %155 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %156 = call float @penalty(%struct.IndexEntry* byval(%struct.IndexEntry) align 8 %154, %struct.IndexEntry* byval(%struct.IndexEntry) align 8 %155)
  %157 = fcmp olt float %152, %156
  br i1 %157, label %158, label %172

158:                                              ; preds = %148
  %159 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %160 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %161 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %160, i32 0, i32 2
  store %struct.IndexEntry* %159, %struct.IndexEntry** %161, align 8
  %162 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %163 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %162, i32 0, i32 2
  %164 = load %struct.IndexEntry*, %struct.IndexEntry** %163, align 8
  store %struct.IndexEntry* %164, %struct.IndexEntry** %5, align 8
  %165 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %166 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %165, i32 0, i32 2
  %167 = load %struct.IndexEntry*, %struct.IndexEntry** %166, align 8
  store %struct.IndexEntry* %167, %struct.IndexEntry** %13, align 8
  %168 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %169 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %168, i32 0, i32 2
  store %struct.IndexEntry* null, %struct.IndexEntry** %169, align 8
  %170 = load i64, i64* %17, align 8
  %171 = add nsw i64 %170, 1
  store i64 %171, i64* %17, align 8
  br label %186

172:                                              ; preds = %148
  %173 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %174 = load %struct.IndexEntry*, %struct.IndexEntry** %14, align 8
  %175 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %174, i32 0, i32 2
  store %struct.IndexEntry* %173, %struct.IndexEntry** %175, align 8
  %176 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %177 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %176, i32 0, i32 2
  %178 = load %struct.IndexEntry*, %struct.IndexEntry** %177, align 8
  store %struct.IndexEntry* %178, %struct.IndexEntry** %5, align 8
  %179 = load %struct.IndexEntry*, %struct.IndexEntry** %14, align 8
  %180 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %179, i32 0, i32 2
  %181 = load %struct.IndexEntry*, %struct.IndexEntry** %180, align 8
  store %struct.IndexEntry* %181, %struct.IndexEntry** %14, align 8
  %182 = load %struct.IndexEntry*, %struct.IndexEntry** %14, align 8
  %183 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %182, i32 0, i32 2
  store %struct.IndexEntry* null, %struct.IndexEntry** %183, align 8
  %184 = load i64, i64* %18, align 8
  %185 = add nsw i64 %184, 1
  store i64 %185, i64* %18, align 8
  br label %186

186:                                              ; preds = %172, %158
  br label %237

187:                                              ; preds = %144, %140
  %188 = load i64, i64* %17, align 8
  %189 = load i64, i64* %6, align 8
  %190 = icmp sge i64 %188, %189
  br i1 %190, label %191, label %209

191:                                              ; preds = %187
  %192 = load i64, i64* %18, align 8
  %193 = load i64, i64* %6, align 8
  %194 = icmp slt i64 %192, %193
  br i1 %194, label %195, label %209

195:                                              ; preds = %191
  %196 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %197 = load %struct.IndexEntry*, %struct.IndexEntry** %14, align 8
  %198 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %197, i32 0, i32 2
  store %struct.IndexEntry* %196, %struct.IndexEntry** %198, align 8
  %199 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %200 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %199, i32 0, i32 2
  %201 = load %struct.IndexEntry*, %struct.IndexEntry** %200, align 8
  store %struct.IndexEntry* %201, %struct.IndexEntry** %5, align 8
  %202 = load %struct.IndexEntry*, %struct.IndexEntry** %14, align 8
  %203 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %202, i32 0, i32 2
  %204 = load %struct.IndexEntry*, %struct.IndexEntry** %203, align 8
  store %struct.IndexEntry* %204, %struct.IndexEntry** %14, align 8
  %205 = load %struct.IndexEntry*, %struct.IndexEntry** %14, align 8
  %206 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %205, i32 0, i32 2
  store %struct.IndexEntry* null, %struct.IndexEntry** %206, align 8
  %207 = load i64, i64* %18, align 8
  %208 = add nsw i64 %207, 1
  store i64 %208, i64* %18, align 8
  br label %236

209:                                              ; preds = %191, %187
  %210 = load i64, i64* %18, align 8
  %211 = load i64, i64* %6, align 8
  %212 = icmp sge i64 %210, %211
  br i1 %212, label %213, label %231

213:                                              ; preds = %209
  %214 = load i64, i64* %17, align 8
  %215 = load i64, i64* %6, align 8
  %216 = icmp slt i64 %214, %215
  br i1 %216, label %217, label %231

217:                                              ; preds = %213
  %218 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %219 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %220 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %219, i32 0, i32 2
  store %struct.IndexEntry* %218, %struct.IndexEntry** %220, align 8
  %221 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %222 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %221, i32 0, i32 2
  %223 = load %struct.IndexEntry*, %struct.IndexEntry** %222, align 8
  store %struct.IndexEntry* %223, %struct.IndexEntry** %5, align 8
  %224 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %225 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %224, i32 0, i32 2
  %226 = load %struct.IndexEntry*, %struct.IndexEntry** %225, align 8
  store %struct.IndexEntry* %226, %struct.IndexEntry** %13, align 8
  %227 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %228 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %227, i32 0, i32 2
  store %struct.IndexEntry* null, %struct.IndexEntry** %228, align 8
  %229 = load i64, i64* %17, align 8
  %230 = add nsw i64 %229, 1
  store i64 %230, i64* %17, align 8
  br label %235

231:                                              ; preds = %213, %209
  %232 = load %struct.IndexEntry*, %struct.IndexEntry** %5, align 8
  %233 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %232, i32 0, i32 2
  %234 = load %struct.IndexEntry*, %struct.IndexEntry** %233, align 8
  store %struct.IndexEntry* %234, %struct.IndexEntry** %5, align 8
  call void @errorMessage(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3.200, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @partitionEntries.name, i64 0, i64 0), i8 signext 1)
  br label %235

235:                                              ; preds = %231, %217
  br label %236

236:                                              ; preds = %235, %195
  br label %237

237:                                              ; preds = %236, %186
  br label %137

238:                                              ; preds = %137
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @penalty(%struct.IndexEntry* byval(%struct.IndexEntry) align 8 %0, %struct.IndexEntry* byval(%struct.IndexEntry) align 8 %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca %struct.IndexKey, align 8
  %5 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %0, i32 0, i32 1
  %6 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %1, i32 0, i32 1
  call void @keyUnion(%struct.IndexKey* %5, %struct.IndexKey* %6, %struct.IndexKey* %4)
  %7 = call float @volume(%struct.IndexKey* byval(%struct.IndexKey) align 8 %4)
  %8 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %0, i32 0, i32 1
  %9 = call float @volume(%struct.IndexKey* byval(%struct.IndexKey) align 8 %8)
  %10 = fsub float %7, %9
  store float %10, float* %3, align 4
  %11 = load float, float* %3, align 4
  ret float %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @query(%struct.IndexNode* %0, %struct.IndexKey* %1, %struct.DataAttribute* %2, i8 signext %3, void (%struct.DataObject*)* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.IndexNode*, align 8
  %8 = alloca %struct.IndexKey*, align 8
  %9 = alloca %struct.DataAttribute*, align 8
  %10 = alloca i8, align 1
  %11 = alloca void (%struct.DataObject*)*, align 8
  %12 = alloca %struct.IndexEntry*, align 8
  %13 = alloca %struct.IndexEntry*, align 8
  %14 = alloca %struct.DataAttribute*, align 8
  %15 = alloca %struct.DataObject*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8, align 1
  store %struct.IndexNode* %0, %struct.IndexNode** %7, align 8
  store %struct.IndexKey* %1, %struct.IndexKey** %8, align 8
  store %struct.DataAttribute* %2, %struct.DataAttribute** %9, align 8
  store i8 %3, i8* %10, align 1
  store void (%struct.DataObject*)* %4, void (%struct.DataObject*)** %11, align 8
  %18 = load %struct.IndexNode*, %struct.IndexNode** %7, align 8
  %19 = icmp ne %struct.IndexNode* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  br label %22

21:                                               ; preds = %5
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.205, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.206, i64 0, i64 0), i32 83, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @__PRETTY_FUNCTION__.query, i64 0, i64 0)) #7
  unreachable

22:                                               ; preds = %20
  %23 = load %struct.IndexKey*, %struct.IndexKey** %8, align 8
  %24 = icmp ne %struct.IndexKey* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %27

26:                                               ; preds = %22
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2.207, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.206, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @__PRETTY_FUNCTION__.query, i64 0, i64 0)) #7
  unreachable

27:                                               ; preds = %25
  %28 = load i8, i8* %10, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i8, i8* %10, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31, %27
  br label %37

36:                                               ; preds = %31
  call void @__assert_fail(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3.208, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.206, i64 0, i64 0), i32 85, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @__PRETTY_FUNCTION__.query, i64 0, i64 0)) #7
  unreachable

37:                                               ; preds = %35
  %38 = load i8, i8* %10, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %55

41:                                               ; preds = %37
  %42 = load %struct.IndexKey*, %struct.IndexKey** %8, align 8
  %43 = call signext i8 @validIndexKey(%struct.IndexKey* %42)
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  call void @errorMessage(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4.209, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @query.name, i64 0, i64 0), i8 signext 1)
  store i64 1, i64* %6, align 8
  br label %183

47:                                               ; preds = %41
  %48 = load %struct.DataAttribute*, %struct.DataAttribute** %9, align 8
  %49 = call signext i8 @validAttributes(%struct.DataAttribute* %48)
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  call void @errorMessage(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5.210, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @query.name, i64 0, i64 0), i8 signext 1)
  store i64 2, i64* %6, align 8
  br label %183

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54, %37
  %56 = load %struct.IndexNode*, %struct.IndexNode** %7, align 8
  %57 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %89

60:                                               ; preds = %55
  %61 = load %struct.IndexNode*, %struct.IndexNode** %7, align 8
  %62 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %61, i32 0, i32 1
  %63 = load %struct.IndexEntry*, %struct.IndexEntry** %62, align 8
  store %struct.IndexEntry* %63, %struct.IndexEntry** %12, align 8
  br label %64

64:                                               ; preds = %84, %60
  %65 = load %struct.IndexEntry*, %struct.IndexEntry** %12, align 8
  %66 = icmp ne %struct.IndexEntry* %65, null
  br i1 %66, label %67, label %88

67:                                               ; preds = %64
  %68 = load %struct.IndexEntry*, %struct.IndexEntry** %12, align 8
  %69 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %68, i32 0, i32 1
  %70 = load %struct.IndexKey*, %struct.IndexKey** %8, align 8
  %71 = call signext i8 @consistentKey(%struct.IndexKey* %69, %struct.IndexKey* %70)
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %83

74:                                               ; preds = %67
  %75 = load %struct.IndexEntry*, %struct.IndexEntry** %12, align 8
  %76 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %75, i32 0, i32 0
  %77 = bitcast %union.anon* %76 to %struct.IndexNode**
  %78 = load %struct.IndexNode*, %struct.IndexNode** %77, align 8
  %79 = load %struct.IndexKey*, %struct.IndexKey** %8, align 8
  %80 = load %struct.DataAttribute*, %struct.DataAttribute** %9, align 8
  %81 = load void (%struct.DataObject*)*, void (%struct.DataObject*)** %11, align 8
  %82 = call i64 @query(%struct.IndexNode* %78, %struct.IndexKey* %79, %struct.DataAttribute* %80, i8 signext 0, void (%struct.DataObject*)* %81)
  br label %83

83:                                               ; preds = %74, %67
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.IndexEntry*, %struct.IndexEntry** %12, align 8
  %86 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %85, i32 0, i32 2
  %87 = load %struct.IndexEntry*, %struct.IndexEntry** %86, align 8
  store %struct.IndexEntry* %87, %struct.IndexEntry** %12, align 8
  br label %64

88:                                               ; preds = %64
  br label %182

89:                                               ; preds = %55
  %90 = load %struct.IndexNode*, %struct.IndexNode** %7, align 8
  %91 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %90, i32 0, i32 1
  %92 = load %struct.IndexEntry*, %struct.IndexEntry** %91, align 8
  store %struct.IndexEntry* %92, %struct.IndexEntry** %13, align 8
  br label %93

93:                                               ; preds = %177, %89
  %94 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %95 = icmp ne %struct.IndexEntry* %94, null
  br i1 %95, label %96, label %181

96:                                               ; preds = %93
  %97 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %98 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %97, i32 0, i32 1
  %99 = load %struct.IndexKey*, %struct.IndexKey** %8, align 8
  %100 = call signext i8 @consistentKey(%struct.IndexKey* %98, %struct.IndexKey* %99)
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %176

103:                                              ; preds = %96
  %104 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %105 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %104, i32 0, i32 0
  %106 = bitcast %union.anon* %105 to %struct.DataObject**
  %107 = load %struct.DataObject*, %struct.DataObject** %106, align 8
  store %struct.DataObject* %107, %struct.DataObject** %15, align 8
  store i64 0, i64* %16, align 8
  %108 = load %struct.DataObject*, %struct.DataObject** %15, align 8
  %109 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %113

112:                                              ; preds = %103
  store i64 18, i64* %16, align 8
  br label %127

113:                                              ; preds = %103
  %114 = load %struct.DataObject*, %struct.DataObject** %15, align 8
  %115 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 2
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  store i64 25, i64* %16, align 8
  br label %126

119:                                              ; preds = %113
  %120 = load %struct.DataObject*, %struct.DataObject** %15, align 8
  %121 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp eq i32 %122, 3
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  store i64 51, i64* %16, align 8
  br label %125

125:                                              ; preds = %124, %119
  br label %126

126:                                              ; preds = %125, %118
  br label %127

127:                                              ; preds = %126, %112
  store i8 1, i8* %17, align 1
  %128 = load %struct.DataAttribute*, %struct.DataAttribute** %9, align 8
  store %struct.DataAttribute* %128, %struct.DataAttribute** %14, align 8
  br label %129

129:                                              ; preds = %161, %127
  %130 = load %struct.DataAttribute*, %struct.DataAttribute** %14, align 8
  %131 = icmp ne %struct.DataAttribute* %130, null
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = load i8, i8* %17, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 1
  br label %136

136:                                              ; preds = %132, %129
  %137 = phi i1 [ false, %129 ], [ %135, %132 ]
  br i1 %137, label %138, label %165

138:                                              ; preds = %136
  %139 = load %struct.DataAttribute*, %struct.DataAttribute** %14, align 8
  %140 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %16, align 8
  %143 = icmp slt i64 %141, %142
  br i1 %143, label %144, label %161

144:                                              ; preds = %138
  %145 = load %struct.DataObject*, %struct.DataObject** %15, align 8
  %146 = getelementptr inbounds %struct.DataObject, %struct.DataObject* %145, i32 0, i32 1
  %147 = load %struct.DataObjectAttribute*, %struct.DataObjectAttribute** %146, align 8
  %148 = load %struct.DataAttribute*, %struct.DataAttribute** %14, align 8
  %149 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %147, i64 %150
  %152 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %151, i32 0, i32 0
  %153 = bitcast %union.anon.6* %152 to i8**
  %154 = load i8*, i8** %153, align 8
  %155 = load %struct.DataAttribute*, %struct.DataAttribute** %14, align 8
  %156 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %156, i32 0, i32 0
  %158 = bitcast %union.anon.6* %157 to i8**
  %159 = load i8*, i8** %158, align 8
  %160 = call signext i8 @consistentNonKey(i8* %154, i8* %159)
  store i8 %160, i8* %17, align 1
  br label %161

161:                                              ; preds = %144, %138
  %162 = load %struct.DataAttribute*, %struct.DataAttribute** %14, align 8
  %163 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %162, i32 0, i32 2
  %164 = load %struct.DataAttribute*, %struct.DataAttribute** %163, align 8
  store %struct.DataAttribute* %164, %struct.DataAttribute** %14, align 8
  br label %129

165:                                              ; preds = %136
  %166 = load i8, i8* %17, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 1
  br i1 %168, label %169, label %175

169:                                              ; preds = %165
  %170 = load void (%struct.DataObject*)*, void (%struct.DataObject*)** %11, align 8
  %171 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %172 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %171, i32 0, i32 0
  %173 = bitcast %union.anon* %172 to %struct.DataObject**
  %174 = load %struct.DataObject*, %struct.DataObject** %173, align 8
  call void %170(%struct.DataObject* %174)
  br label %175

175:                                              ; preds = %169, %165
  br label %176

176:                                              ; preds = %175, %96
  br label %177

177:                                              ; preds = %176
  %178 = load %struct.IndexEntry*, %struct.IndexEntry** %13, align 8
  %179 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %178, i32 0, i32 2
  %180 = load %struct.IndexEntry*, %struct.IndexEntry** %179, align 8
  store %struct.IndexEntry* %180, %struct.IndexEntry** %13, align 8
  br label %93

181:                                              ; preds = %93
  br label %182

182:                                              ; preds = %181, %88
  store i64 0, i64* %6, align 8
  br label %183

183:                                              ; preds = %182, %52, %46
  %184 = load i64, i64* %6, align 8
  ret i64 %184
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @setMetricsData(%struct.Metrics* %0, i32 %1) #0 {
  %3 = alloca %struct.Metrics*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.Metrics* %0, %struct.Metrics** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.Metrics*, %struct.Metrics** %3, align 8
  %7 = icmp ne %struct.Metrics* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %10

9:                                                ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.213, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.214, i64 0, i64 0), i32 44, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.setMetricsData, i64 0, i64 0)) #7
  unreachable

10:                                               ; preds = %8
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %28, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %28, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 4
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 5
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %22, %19, %16, %13, %10
  br label %30

29:                                               ; preds = %25
  call void @__assert_fail(i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.2.215, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.214, i64 0, i64 0), i32 50, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.setMetricsData, i64 0, i64 0)) #7
  unreachable

30:                                               ; preds = %28
  %31 = call i64 @getTime()
  store i64 %31, i64* %5, align 8
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.Metrics*, %struct.Metrics** %3, align 8
  %37 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %37, i32 0, i32 0
  store i64 %35, i64* %38, align 8
  %39 = load %struct.Metrics*, %struct.Metrics** %3, align 8
  %40 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %39, i32 0, i32 6
  store i32 1, i32* %40, align 8
  br label %66

41:                                               ; preds = %30
  %42 = load i32, i32* %4, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.Metrics*, %struct.Metrics** %3, align 8
  %47 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %47, i32 0, i32 0
  store i64 %45, i64* %48, align 8
  %49 = load %struct.Metrics*, %struct.Metrics** %3, align 8
  %50 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %49, i32 0, i32 6
  store i32 2, i32* %50, align 8
  br label %65

51:                                               ; preds = %41
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %52, 3
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load i64, i64* %5, align 8
  %56 = load %struct.Metrics*, %struct.Metrics** %3, align 8
  %57 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %57, i32 0, i32 0
  store i64 %55, i64* %58, align 8
  %59 = load %struct.Metrics*, %struct.Metrics** %3, align 8
  %60 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %59, i32 0, i32 6
  store i32 3, i32* %60, align 8
  br label %64

61:                                               ; preds = %51
  %62 = load %struct.Metrics*, %struct.Metrics** %3, align 8
  %63 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %62, i32 0, i32 6
  store i32 5, i32* %63, align 8
  br label %64

64:                                               ; preds = %61, %54
  br label %65

65:                                               ; preds = %64, %44
  br label %66

66:                                               ; preds = %65, %34
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @splitNode(%struct.IndexNode* %0, %struct.IndexEntry* %1, i64 %2, %struct.IndexEntry** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.IndexNode*, align 8
  %7 = alloca %struct.IndexEntry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.IndexEntry**, align 8
  %10 = alloca %struct.IndexEntry*, align 8
  %11 = alloca %struct.IndexNode*, align 8
  store %struct.IndexNode* %0, %struct.IndexNode** %6, align 8
  store %struct.IndexEntry* %1, %struct.IndexEntry** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.IndexEntry** %3, %struct.IndexEntry*** %9, align 8
  %12 = load %struct.IndexNode*, %struct.IndexNode** %6, align 8
  %13 = icmp ne %struct.IndexNode* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %16

15:                                               ; preds = %4
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.218, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.219, i64 0, i64 0), i32 69, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__.splitNode, i64 0, i64 0)) #7
  unreachable

16:                                               ; preds = %14
  %17 = load %struct.IndexNode*, %struct.IndexNode** %6, align 8
  %18 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %17, i32 0, i32 1
  %19 = load %struct.IndexEntry*, %struct.IndexEntry** %18, align 8
  %20 = icmp ne %struct.IndexEntry* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %23

22:                                               ; preds = %16
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.220, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.219, i64 0, i64 0), i32 70, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__.splitNode, i64 0, i64 0)) #7
  unreachable

23:                                               ; preds = %21
  %24 = load %struct.IndexEntry*, %struct.IndexEntry** %7, align 8
  %25 = icmp ne %struct.IndexEntry* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %28

27:                                               ; preds = %23
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.221, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.219, i64 0, i64 0), i32 71, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__.splitNode, i64 0, i64 0)) #7
  unreachable

28:                                               ; preds = %26
  %29 = load i64, i64* %8, align 8
  %30 = icmp sge i64 %29, 2
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %33

32:                                               ; preds = %28
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4.222, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.219, i64 0, i64 0), i32 73, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__.splitNode, i64 0, i64 0)) #7
  unreachable

33:                                               ; preds = %31
  %34 = call %struct.IndexEntry* @createIndexEntry()
  %35 = load %struct.IndexEntry**, %struct.IndexEntry*** %9, align 8
  store %struct.IndexEntry* %34, %struct.IndexEntry** %35, align 8
  %36 = load %struct.IndexEntry**, %struct.IndexEntry*** %9, align 8
  %37 = load %struct.IndexEntry*, %struct.IndexEntry** %36, align 8
  %38 = icmp eq %struct.IndexEntry* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  call void @errorMessage(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5.223, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @splitNode.name, i64 0, i64 0), i8 signext 1)
  store i64 1, i64* %5, align 8
  br label %82

40:                                               ; preds = %33
  %41 = load %struct.IndexNode*, %struct.IndexNode** %6, align 8
  %42 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call %struct.IndexNode* @createIndexNode(i64 %43)
  store %struct.IndexNode* %44, %struct.IndexNode** %11, align 8
  %45 = load %struct.IndexNode*, %struct.IndexNode** %11, align 8
  %46 = icmp eq %struct.IndexNode* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load %struct.IndexEntry**, %struct.IndexEntry*** %9, align 8
  %49 = load %struct.IndexEntry*, %struct.IndexEntry** %48, align 8
  %50 = load %struct.IndexNode*, %struct.IndexNode** %6, align 8
  %51 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  call void @deleteIndexEntry(%struct.IndexEntry* %49, i64 %52)
  call void @errorMessage(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.224, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @splitNode.name, i64 0, i64 0), i8 signext 1)
  store i64 1, i64* %5, align 8
  br label %82

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.IndexEntry*, %struct.IndexEntry** %7, align 8
  store %struct.IndexEntry* %55, %struct.IndexEntry** %10, align 8
  %56 = load %struct.IndexNode*, %struct.IndexNode** %6, align 8
  %57 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %56, i32 0, i32 1
  %58 = load %struct.IndexEntry*, %struct.IndexEntry** %57, align 8
  %59 = load %struct.IndexEntry*, %struct.IndexEntry** %10, align 8
  %60 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %59, i32 0, i32 2
  store %struct.IndexEntry* %58, %struct.IndexEntry** %60, align 8
  %61 = load %struct.IndexNode*, %struct.IndexNode** %6, align 8
  %62 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %61, i32 0, i32 1
  store %struct.IndexEntry* null, %struct.IndexEntry** %62, align 8
  %63 = load %struct.IndexNode*, %struct.IndexNode** %11, align 8
  %64 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %63, i32 0, i32 1
  store %struct.IndexEntry* null, %struct.IndexEntry** %64, align 8
  %65 = load %struct.IndexEntry*, %struct.IndexEntry** %10, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load %struct.IndexNode*, %struct.IndexNode** %6, align 8
  %68 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %67, i32 0, i32 1
  %69 = load %struct.IndexNode*, %struct.IndexNode** %11, align 8
  %70 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %69, i32 0, i32 1
  call void @partitionEntries(%struct.IndexEntry* %65, i64 %66, %struct.IndexEntry** %68, %struct.IndexEntry** %70)
  %71 = load %struct.IndexNode*, %struct.IndexNode** %11, align 8
  %72 = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %71, i32 0, i32 1
  %73 = load %struct.IndexEntry*, %struct.IndexEntry** %72, align 8
  %74 = load %struct.IndexEntry**, %struct.IndexEntry*** %9, align 8
  %75 = load %struct.IndexEntry*, %struct.IndexEntry** %74, align 8
  %76 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %75, i32 0, i32 1
  call void @keysUnion(%struct.IndexEntry* %73, %struct.IndexKey* %76)
  %77 = load %struct.IndexNode*, %struct.IndexNode** %11, align 8
  %78 = load %struct.IndexEntry**, %struct.IndexEntry*** %9, align 8
  %79 = load %struct.IndexEntry*, %struct.IndexEntry** %78, align 8
  %80 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %79, i32 0, i32 0
  %81 = bitcast %union.anon* %80 to %struct.IndexNode**
  store %struct.IndexNode* %77, %struct.IndexNode** %81, align 8
  store i64 0, i64* %5, align 8
  br label %82

82:                                               ; preds = %54, %47, %39
  %83 = load i64, i64* %5, align 8
  ret i64 %83
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @initTime() #0 {
  %1 = call i64 @time(i64* null) #8
  store i64 %1, i64* @startTime, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @getTime() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = call i64 @time(i64* null) #8
  store i64 %3, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @startTime, align 8
  %6 = call double @difftime(i64 %4, i64 %5) #10
  %7 = fptosi double %6 to i64
  %8 = mul nsw i64 1000, %7
  store i64 %8, i64* %1, align 8
  %9 = load i64, i64* %1, align 8
  ret i64 %9
}

; Function Attrs: nounwind readnone
declare dso_local double @difftime(i64, i64) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @updateMetricsData(%struct.Metrics* %0) #0 {
  %2 = alloca %struct.Metrics*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.CommandMetric*, align 8
  store %struct.Metrics* %0, %struct.Metrics** %2, align 8
  %5 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %6 = icmp ne %struct.Metrics* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %9

8:                                                ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.231, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.232, i64 0, i64 0), i32 49, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.updateMetricsData, i64 0, i64 0)) #7
  unreachable

9:                                                ; preds = %7
  %10 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %11 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %9
  %15 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %16 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %39

19:                                               ; preds = %14
  %20 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %21 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 2
  br i1 %23, label %24, label %39

24:                                               ; preds = %19
  %25 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %26 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 3
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %31 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 4
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %36 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 5
  br i1 %38, label %40, label %39

39:                                               ; preds = %34, %29, %24, %19, %14, %9
  br label %41

40:                                               ; preds = %34
  call void @__assert_fail(i8* getelementptr inbounds ([202 x i8], [202 x i8]* @.str.2.233, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.232, i64 0, i64 0), i32 55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.updateMetricsData, i64 0, i64 0)) #7
  unreachable

41:                                               ; preds = %39
  %42 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %43 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %48 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %47, i32 0, i32 3
  store %struct.CommandMetric* %48, %struct.CommandMetric** %4, align 8
  br label %70

49:                                               ; preds = %41
  %50 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %51 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %56 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %55, i32 0, i32 4
  store %struct.CommandMetric* %56, %struct.CommandMetric** %4, align 8
  br label %69

57:                                               ; preds = %49
  %58 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %59 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 3
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %64 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %63, i32 0, i32 5
  store %struct.CommandMetric* %64, %struct.CommandMetric** %4, align 8
  br label %68

65:                                               ; preds = %57
  %66 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %67 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %66, i32 0, i32 6
  store i32 5, i32* %67, align 8
  br label %122

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68, %54
  br label %70

70:                                               ; preds = %69, %46
  %71 = call i64 @getTime()
  %72 = load %struct.CommandMetric*, %struct.CommandMetric** %4, align 8
  %73 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %71, %74
  store i64 %75, i64* %3, align 8
  %76 = load i64, i64* %3, align 8
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  call void @errorMessage(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3.234, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @updateMetricsData.name, i64 0, i64 0), i8 signext 1)
  call void @flushErrorMessage()
  br label %119

79:                                               ; preds = %70
  %80 = load i64, i64* %3, align 8
  %81 = load %struct.CommandMetric*, %struct.CommandMetric** %4, align 8
  %82 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = icmp slt i64 %80, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load i64, i64* %3, align 8
  %87 = load %struct.CommandMetric*, %struct.CommandMetric** %4, align 8
  %88 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %87, i32 0, i32 5
  store i64 %86, i64* %88, align 8
  br label %89

89:                                               ; preds = %85, %79
  %90 = load i64, i64* %3, align 8
  %91 = load %struct.CommandMetric*, %struct.CommandMetric** %4, align 8
  %92 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %90, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load i64, i64* %3, align 8
  %97 = load %struct.CommandMetric*, %struct.CommandMetric** %4, align 8
  %98 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %97, i32 0, i32 4
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %95, %89
  %100 = load i64, i64* %3, align 8
  %101 = sitofp i64 %100 to double
  %102 = load %struct.CommandMetric*, %struct.CommandMetric** %4, align 8
  %103 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %102, i32 0, i32 2
  %104 = load double, double* %103, align 8
  %105 = fadd double %104, %101
  store double %105, double* %103, align 8
  %106 = load i64, i64* %3, align 8
  %107 = sitofp i64 %106 to double
  %108 = load i64, i64* %3, align 8
  %109 = sitofp i64 %108 to double
  %110 = fmul double %107, %109
  %111 = load %struct.CommandMetric*, %struct.CommandMetric** %4, align 8
  %112 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %111, i32 0, i32 3
  %113 = load double, double* %112, align 8
  %114 = fadd double %113, %110
  store double %114, double* %112, align 8
  %115 = load %struct.CommandMetric*, %struct.CommandMetric** %4, align 8
  %116 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %117, 1
  store i64 %118, i64* %116, align 8
  br label %119

119:                                              ; preds = %99, %78
  %120 = load %struct.Metrics*, %struct.Metrics** %2, align 8
  %121 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %120, i32 0, i32 6
  store i32 5, i32* %121, align 8
  br label %122

122:                                              ; preds = %119, %65
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @validIndexKey(%struct.IndexKey* %0) #0 {
  %2 = alloca %struct.IndexKey*, align 8
  %3 = alloca i8, align 1
  store %struct.IndexKey* %0, %struct.IndexKey** %2, align 8
  store i8 1, i8* %3, align 1
  %4 = load %struct.IndexKey*, %struct.IndexKey** %2, align 8
  %5 = icmp ne %struct.IndexKey* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %8

7:                                                ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.237, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.238, i64 0, i64 0), i32 43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.validIndexKey, i64 0, i64 0)) #7
  unreachable

8:                                                ; preds = %6
  %9 = load %struct.IndexKey*, %struct.IndexKey** %2, align 8
  %10 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %10, i32 0, i32 0
  %12 = load float, float* %11, align 4
  %13 = load %struct.IndexKey*, %struct.IndexKey** %2, align 8
  %14 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %14, i32 0, i32 0
  %16 = load float, float* %15, align 4
  %17 = fcmp oge float %12, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %8
  call void @errorMessage(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2.239, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @validIndexKey.name, i64 0, i64 0), i8 signext 1)
  store i8 0, i8* %3, align 1
  br label %55

19:                                               ; preds = %8
  %20 = load %struct.IndexKey*, %struct.IndexKey** %2, align 8
  %21 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %21, i32 0, i32 1
  %23 = load float, float* %22, align 4
  %24 = load %struct.IndexKey*, %struct.IndexKey** %2, align 8
  %25 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %25, i32 0, i32 1
  %27 = load float, float* %26, align 4
  %28 = fcmp oge float %23, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  call void @errorMessage(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3.240, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @validIndexKey.name, i64 0, i64 0), i8 signext 1)
  store i8 0, i8* %3, align 1
  br label %54

30:                                               ; preds = %19
  %31 = load %struct.IndexKey*, %struct.IndexKey** %2, align 8
  %32 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %32, i32 0, i32 2
  %34 = load float, float* %33, align 4
  %35 = load %struct.IndexKey*, %struct.IndexKey** %2, align 8
  %36 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %36, i32 0, i32 2
  %38 = load float, float* %37, align 4
  %39 = fcmp oge float %34, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  call void @errorMessage(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4.241, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @validIndexKey.name, i64 0, i64 0), i8 signext 1)
  store i8 0, i8* %3, align 1
  br label %53

41:                                               ; preds = %30
  %42 = load %struct.IndexKey*, %struct.IndexKey** %2, align 8
  %43 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %43, i32 0, i32 3
  %45 = load float, float* %44, align 4
  %46 = load %struct.IndexKey*, %struct.IndexKey** %2, align 8
  %47 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %47, i32 0, i32 3
  %49 = load float, float* %48, align 4
  %50 = fcmp oge float %45, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  call void @errorMessage(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5.242, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @validIndexKey.name, i64 0, i64 0), i8 signext 1)
  store i8 0, i8* %3, align 1
  br label %52

52:                                               ; preds = %51, %41
  br label %53

53:                                               ; preds = %52, %40
  br label %54

54:                                               ; preds = %53, %29
  br label %55

55:                                               ; preds = %54, %18
  %56 = load i8, i8* %3, align 1
  ret i8 %56
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @validAttributes(%struct.DataAttribute* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.DataAttribute*, align 8
  %4 = alloca %struct.DataAttribute*, align 8
  store %struct.DataAttribute* %0, %struct.DataAttribute** %3, align 8
  %5 = load %struct.DataAttribute*, %struct.DataAttribute** %3, align 8
  store %struct.DataAttribute* %5, %struct.DataAttribute** %4, align 8
  br label %6

6:                                                ; preds = %59, %1
  %7 = load %struct.DataAttribute*, %struct.DataAttribute** %4, align 8
  %8 = icmp ne %struct.DataAttribute* %7, null
  br i1 %8, label %9, label %63

9:                                                ; preds = %6
  %10 = load %struct.DataAttribute*, %struct.DataAttribute** %4, align 8
  %11 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = load %struct.DataAttribute*, %struct.DataAttribute** %4, align 8
  %16 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 50
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %9
  call void @errorMessage(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6.245, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @validAttributes.name, i64 0, i64 0), i8 signext 1)
  store i8 0, i8* %2, align 1
  br label %64

20:                                               ; preds = %14
  %21 = load %struct.DataAttribute*, %struct.DataAttribute** %4, align 8
  %22 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %20
  %26 = load %struct.DataAttribute*, %struct.DataAttribute** %4, align 8
  %27 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %28, 8
  br i1 %29, label %30, label %48

30:                                               ; preds = %25
  %31 = load %struct.DataAttribute*, %struct.DataAttribute** %4, align 8
  %32 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %32, i32 0, i32 0
  %34 = bitcast %union.anon.6* %33 to float*
  %35 = load float, float* %34, align 8
  %36 = fpext float %35 to double
  %37 = fcmp olt double %36, 0xC7EFFFFFE091FF3D
  br i1 %37, label %46, label %38

38:                                               ; preds = %30
  %39 = load %struct.DataAttribute*, %struct.DataAttribute** %4, align 8
  %40 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %40, i32 0, i32 0
  %42 = bitcast %union.anon.6* %41 to float*
  %43 = load float, float* %42, align 8
  %44 = fpext float %43 to double
  %45 = fcmp ogt double %44, 0x47EFFFFFE091FF3D
  br i1 %45, label %46, label %47

46:                                               ; preds = %38, %30
  call void @errorMessage(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.246, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @validAttributes.name, i64 0, i64 0), i8 signext 1)
  store i8 0, i8* %2, align 1
  br label %64

47:                                               ; preds = %38
  br label %57

48:                                               ; preds = %25, %20
  %49 = load %struct.DataAttribute*, %struct.DataAttribute** %4, align 8
  %50 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.DataObjectAttribute, %struct.DataObjectAttribute* %50, i32 0, i32 0
  %52 = bitcast %union.anon.6* %51 to i8**
  %53 = load i8*, i8** %52, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  call void @errorMessage(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8.247, i64 0, i64 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @validAttributes.name, i64 0, i64 0), i8 signext 1)
  store i8 0, i8* %2, align 1
  br label %64

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %47
  br label %58

58:                                               ; preds = %57
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.DataAttribute*, %struct.DataAttribute** %4, align 8
  %61 = getelementptr inbounds %struct.DataAttribute, %struct.DataAttribute* %60, i32 0, i32 2
  %62 = load %struct.DataAttribute*, %struct.DataAttribute** %61, align 8
  store %struct.DataAttribute* %62, %struct.DataAttribute** %4, align 8
  br label %6

63:                                               ; preds = %6
  store i8 1, i8* %2, align 1
  br label %64

64:                                               ; preds = %63, %55, %46, %19
  %65 = load i8, i8* %2, align 1
  ret i8 %65
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @volume(%struct.IndexKey* byval(%struct.IndexKey) align 8 %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float*, align 8
  %4 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i32 0, i32 1
  %5 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %4, i32 0, i32 0
  %6 = load float, float* %5, align 8
  %7 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i32 0, i32 0
  %8 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %7, i32 0, i32 0
  %9 = load float, float* %8, align 8
  %10 = fsub float %6, %9
  store float %10, float* %2, align 4
  %11 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i32 0, i32 1
  %12 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %11, i32 0, i32 1
  %13 = load float, float* %12, align 4
  %14 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i32 0, i32 0
  %15 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %14, i32 0, i32 1
  %16 = load float, float* %15, align 4
  %17 = fsub float %13, %16
  %18 = load float, float* %2, align 4
  %19 = fmul float %18, %17
  store float %19, float* %2, align 4
  %20 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i32 0, i32 1
  %21 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %20, i32 0, i32 2
  %22 = load float, float* %21, align 8
  %23 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i32 0, i32 0
  %24 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %23, i32 0, i32 2
  %25 = load float, float* %24, align 8
  %26 = fsub float %22, %25
  %27 = load float, float* %2, align 4
  %28 = fmul float %27, %26
  store float %28, float* %2, align 4
  %29 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i32 0, i32 1
  %30 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %29, i32 0, i32 3
  %31 = load float, float* %30, align 4
  %32 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %0, i32 0, i32 0
  %33 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %32, i32 0, i32 3
  %34 = load float, float* %33, align 4
  %35 = fsub float %31, %34
  %36 = load float, float* %2, align 4
  %37 = fmul float %36, %35
  store float %37, float* %2, align 4
  %38 = load float, float* %2, align 4
  %39 = fpext float %38 to double
  %40 = fcmp ole double %39, 0.000000e+00
  br i1 %40, label %41, label %44

41:                                               ; preds = %1
  store float* null, float** %3, align 8
  %42 = load float*, float** %3, align 8
  %43 = load float, float* %42, align 4
  store float %43, float* %2, align 4
  br label %44

44:                                               ; preds = %41, %1
  %45 = load float, float* %2, align 4
  ret float %45
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind willreturn }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind readnone }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
