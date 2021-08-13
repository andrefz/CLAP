; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.alias_node = type { i8*, %struct.alias_node*, %struct.alias_node* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.reqheaders = type { i8*, i8*, i8 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.pw_node = type { i8*, i8*, i32, i8*, %struct.pw_node* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.passwd = type { i8*, i8*, i32, i32, i8*, i8*, i8* }

@nargc = internal global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c":include:\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c".forward\00", align 1
@alias.t_dom = internal global [512 x i8] zeroinitializer, align 16
@alias.t_unam = internal global [512 x i8] zeroinitializer, align 16
@nargv = internal global [500 x i8*] zeroinitializer, align 16
@aliases = internal global %struct.alias_node { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i32 0, i32 0), %struct.alias_node* null, %struct.alias_node* null }, align 8
@v_search.loaded = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"load_alias open('%s') failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"load_alias '%s' includes file '%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"load_alias for '%s' failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stderrfile = common dso_local global [20 x i8] zeroinitializer, align 16
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.9 = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@.str.2.10 = private unnamed_addr constant [18 x i8] c"/tmp/stderrXXXXXX\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.3.11 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.4.12 = private unnamed_addr constant [3 x i8] c"-R\00", align 1
@.str.5.13 = private unnamed_addr constant [11 x i8] c"/bin/lmail\00", align 1
@.str.6.14 = private unnamed_addr constant [22 x i8] c"%s -a%s %s - %s!rmail\00", align 1
@.str.7.15 = private unnamed_addr constant [13 x i8] c"/usr/bin/uux\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.8.16 = private unnamed_addr constant [16 x i8] c"%s %s %s -f %s \00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"/bin/smail\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c" '%s'\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c" '%s!%s'\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c" '(%s)'\00", align 1
@deliver.errbuf = internal global [512 x i8] zeroinitializer, align 16
@.str.14 = private unnamed_addr constant [40 x i8] c"address resolution ('%s' @ '%s') failed\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"COMMAND: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"couldn't execute %s.\0A\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"From %s %.24s\0A\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"From %s  %.24s remote from %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"Received: by %s (%s)\0A\09id AA%05d; %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"smail2.5\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"%s failed (%d)\0Atrying %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"%s failed (%d)\0A\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"Date: %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"From: MAILER-DAEMON@%s\0A\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"Subject: failed mail\0A\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"To: %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"=======     command failed      =======\0A\0A\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c" COMMAND: %s\0A\0A\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c"======= standard error follows  =======\0A\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.33 = private unnamed_addr constant [41 x i8] c"======= text of message follows =======\0A\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"From %s\0A\00", align 1
@unix_smail_opterr = dso_local global i32 1, align 4
@unix_smail_optind = dso_local global i32 1, align 4
@optopt = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@unix_smail_getopt.sp = internal global i32 1, align 4
@.str.35 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.1.36 = private unnamed_addr constant [21 x i8] c": illegal option -- \00", align 1
@.str.2.37 = private unnamed_addr constant [34 x i8] c": option requires an argument -- \00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"getpath: looking for '%s'\0A\00", align 1
@getpath.pathlength = internal global i64 0, align 8
@.str.1.39 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@getpath.file = internal global %struct._IO_FILE* null, align 8
@.str.2.40 = private unnamed_addr constant [18 x i8] c"can't access %s.\0A\00", align 1
@.str.3.41 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.1.43 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2.44 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3.45 = private unnamed_addr constant [6 x i8] c"%s!%s\00", align 1
@.str.4.46 = private unnamed_addr constant [6 x i8] c"%s@%s\00", align 1
@spool.tmpf = internal global i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5.76, i32 0, i32 0), align 8
@.str.6.49 = private unnamed_addr constant [27 x i8] c"spool: bad file name '%s'\0A\00", align 1
@spool.splbuf = internal global [512 x i8] zeroinitializer, align 16
@.str.7.50 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.8.51 = private unnamed_addr constant [18 x i8] c"can't create %s.\0A\00", align 1
@.str.9.52 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ieof = internal global i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29.55, i32 0, i32 0), align 8
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.10.53 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.11.54 = private unnamed_addr constant [16 x i8] c"can't open %s.\0A\00", align 1
@.str.29.55 = private unnamed_addr constant [8 x i8] c"NOTNULL\00", align 1
@reqtab = internal global [5 x %struct.reqheaders] [%struct.reqheaders { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30.57, i32 0, i32 0), i8* getelementptr inbounds ([512 x i8], [512 x i8]* @midline, i32 0, i32 0), i8 78 }, %struct.reqheaders { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31.58, i32 0, i32 0), i8* getelementptr inbounds ([512 x i8], [512 x i8]* @dateline, i32 0, i32 0), i8 78 }, %struct.reqheaders { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17.59, i32 0, i32 0), i8* getelementptr inbounds ([512 x i8], [512 x i8]* @fromline, i32 0, i32 0), i8 78 }, %struct.reqheaders { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32.60, i32 0, i32 0), i8* getelementptr inbounds ([512 x i8], [512 x i8]* @toline, i32 0, i32 0), i8 78 }, %struct.reqheaders { i8* null, i8* null, i8 78 }], align 16
@.str.16.56 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.30.57 = private unnamed_addr constant [12 x i8] c"Message-Id:\00", align 1
@midline = internal global [512 x i8] zeroinitializer, align 16
@.str.31.58 = private unnamed_addr constant [6 x i8] c"Date:\00", align 1
@dateline = internal global [512 x i8] zeroinitializer, align 16
@.str.17.59 = private unnamed_addr constant [6 x i8] c"From:\00", align 1
@fromline = internal global [512 x i8] zeroinitializer, align 16
@.str.32.60 = private unnamed_addr constant [4 x i8] c"To:\00", align 1
@toline = internal global [512 x i8] zeroinitializer, align 16
@.str.18.61 = private unnamed_addr constant [10 x i8] c"From: %s\0A\00", align 1
@.str.20.62 = private unnamed_addr constant [45 x i8] c"Message-Id: <%02d%02d%02d%02d%02d.AA%05d@%s>\00", align 1
@.str.21.63 = private unnamed_addr constant [9 x i8] c"From: %s\00", align 1
@.str.22.64 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@.str.23.65 = private unnamed_addr constant [17 x i8] c"From: %s@%s (%s)\00", align 1
@.str.24.66 = private unnamed_addr constant [12 x i8] c"From: %s@%s\00", align 1
@.str.19.67 = private unnamed_addr constant [7 x i8] c"Date: \00", align 1
@.str.25.68 = private unnamed_addr constant [5 x i8] c"To: \00", align 1
@.str.26.69 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.27.70 = private unnamed_addr constant [4 x i8] c",\0A\09\00", align 1
@.str.28.71 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.12.72 = private unnamed_addr constant [6 x i8] c"From \00", align 1
@.str.13.73 = private unnamed_addr constant [7 x i8] c">From \00", align 1
@.str.14.74 = private unnamed_addr constant [13 x i8] c"remote from \00", align 1
@.str.15.75 = private unnamed_addr constant [7 x i8] c"nobody\00", align 1
@.str.5.76 = private unnamed_addr constant [14 x i8] c"/tmp/rmXXXXXX\00", align 1
@exitstat = dso_local global i32 0, align 4
@debug = dso_local global i32 0, align 4
@handle = dso_local global i32 0, align 4
@routing = dso_local global i32 0, align 4
@hostname = dso_local global [512 x i8] zeroinitializer, align 16
@hostdomain = dso_local global [512 x i8] zeroinitializer, align 16
@hostuucp = dso_local global [512 x i8] zeroinitializer, align 16
@pathfile = dso_local global i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.91, i32 0, i32 0), align 8
@.str.91 = private unnamed_addr constant [20 x i8] c"/usr/lib/uucp/paths\00", align 1
@uuxargs = dso_local global i8* null, align 8
@aliasfile = dso_local global i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.96, i32 0, i32 0), align 8
@.str.1.96 = private unnamed_addr constant [17 x i8] c"/usr/lib/aliases\00", align 1
@fnlist = dso_local global i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2.97, i32 0, i32 0), align 8
@.str.2.97 = private unnamed_addr constant [19 x i8] c"/usr/lib/fullnames\00", align 1
@queuecost = dso_local global i32 100, align 4
@from_addr = dso_local global i8* null, align 8
@maxnoqueue = dso_local global i32 2, align 4
@getcost = dso_local global i32 1, align 4
@spoolfile = dso_local global i8* null, align 8
@spoolmaster = dso_local global i32 0, align 4
@spoolfp = common dso_local global %struct._IO_FILE* null, align 8
@.str.3.110 = private unnamed_addr constant [29 x i8] c"cdvArRlLH:h:p:u:q:a:n:m:f:F:\00", align 1
@.str.4.111 = private unnamed_addr constant [20 x i8] c"valid flags are %s\0A\00", align 1
@.str.5.112 = private unnamed_addr constant [30 x i8] c"usage: %s [flags] address...\0A\00", align 1
@.str.6.113 = private unnamed_addr constant [6 x i8] c"smail\00", align 1
@map.userbuf = internal global [4096 x i8] zeroinitializer, align 16
@map.userz = internal global i8* null, align 8
@map.hostbuf = internal global [4096 x i8] zeroinitializer, align 16
@map.hostz = internal global i8* null, align 8
@now = common dso_local global i64 0, align 8
@nows = common dso_local global [50 x i8] zeroinitializer, align 16
@gmt = common dso_local global %struct.tm* null, align 8
@loc = common dso_local global %struct.tm* null, align 8
@arpanows = common dso_local global [50 x i8] zeroinitializer, align 16
@arpadate.b = internal global [40 x i8] zeroinitializer, align 16
@tzname = external dso_local global [2 x i8*], align 16
@postmaster.pm = internal global i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.126, i32 0, i32 0), align 8
@.str.126 = private unnamed_addr constant [11 x i8] c"postmaster\00", align 1
@.str.1.127 = private unnamed_addr constant [5 x i8] c"UUCP\00", align 1
@.str.2.128 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.3.129 = private unnamed_addr constant [6 x i8] c"LOCAL\00", align 1
@.str.4.130 = private unnamed_addr constant [7 x i8] c"DOMAIN\00", align 1
@.str.5.131 = private unnamed_addr constant [6 x i8] c"ROUTE\00", align 1
@.str.6.132 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.7.135 = private unnamed_addr constant [20 x i8] c"uname() call failed\00", align 1
@.str.8.136 = private unnamed_addr constant [27 x i8] c"can't determine hostname.\0A\00", align 1
@.str.9.137 = private unnamed_addr constant [6 x i8] c".UUCP\00", align 1
@pwhead = common dso_local global %struct.pw_node* null, align 8
@pwparse.pw_eof = internal global i32 0, align 4
@fullname.fname = internal global [512 x i8] zeroinitializer, align 16
@.str.146 = private unnamed_addr constant [29 x i8] c"res_fname: looking for '%s'\0A\00", align 1
@res_fname.pathlength = internal global i64 0, align 8
@.str.1.147 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@res_fname.file = internal global %struct._IO_FILE* null, align 8
@.str.2.148 = private unnamed_addr constant [18 x i8] c"can't access %s.\0A\00", align 1
@.str.3.149 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@table = dso_local global [5 x [3 x i32]] [[3 x i32] zeroinitializer, [3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 4, i32 1, i32 1], [3 x i32] [i32 3, i32 3, i32 1], [3 x i32] zeroinitializer], align 16
@.str.152 = private unnamed_addr constant [48 x i8] c"resolve: parse address '%s' = '%s' @ '%s' (%s)\0A\00", align 1
@.str.1.153 = private unnamed_addr constant [46 x i8] c"resolve: parse route '%s' = '%s' @ '%s' (%s)\0A\00", align 1
@.str.2.154 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3.155 = private unnamed_addr constant [40 x i8] c"resolve failed '%s' = '%s' @ '%s' (%s)\0A\00", align 1
@.str.4.156 = private unnamed_addr constant [33 x i8] c"resolve '%s' = '%s' @ '%s' (%s)\0A\00", align 1
@.str.5.157 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6.158 = private unnamed_addr constant [22 x i8] c"route: '%s' is local\0A\00", align 1
@.str.7.159 = private unnamed_addr constant [6 x i8] c".UUCP\00", align 1
@.str.8.160 = private unnamed_addr constant [11 x i8] c"smart-host\00", align 1
@.str.9.161 = private unnamed_addr constant [19 x i8] c"route '%s' failed\0A\00", align 1
@.str.11.162 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.10.163 = private unnamed_addr constant [31 x i8] c"route:  '%s' (%s) = '%s' (%d)\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i8** @alias(i32* %0, i8** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca [512 x i8], align 16
  %7 = alloca [512 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca %struct.alias_node*, align 8
  %10 = alloca %struct.alias_node, align 8
  %11 = alloca %struct.alias_node*, align 8
  %12 = alloca %struct.alias_node, align 8
  %13 = alloca %struct.alias_node*, align 8
  %14 = alloca %struct._IO_FILE*, align 8
  %15 = alloca %struct.alias_node*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca [512 x i8], align 16
  %18 = alloca i32, align 4
  %19 = alloca %struct.stat, align 8
  %20 = alloca i8*, align 8
  %21 = alloca [512 x i8], align 16
  %22 = alloca [512 x i8], align 16
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.alias_node*, align 8
  %26 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8** %1, i8*** %4, align 8
  store %struct.alias_node* %10, %struct.alias_node** %9, align 8
  store %struct.alias_node* %12, %struct.alias_node** %11, align 8
  %27 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  store i8* %27, i8** %8, align 8
  %28 = load %struct.alias_node*, %struct.alias_node** %9, align 8
  %29 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %28, i32 0, i32 1
  store %struct.alias_node* null, %struct.alias_node** %29, align 8
  %30 = load %struct.alias_node*, %struct.alias_node** %11, align 8
  %31 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %30, i32 0, i32 1
  store %struct.alias_node* null, %struct.alias_node** %31, align 8
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %44, %2
  %33 = load i32, i32* %5, align 4
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load %struct.alias_node*, %struct.alias_node** %9, align 8
  %39 = load i8**, i8*** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  call void @add_horz(%struct.alias_node* %38, i8* %43)
  br label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %32

47:                                               ; preds = %32
  br label %48

48:                                               ; preds = %310, %261, %254, %242, %201, %190, %106, %47
  %49 = load i32, i32* @nargc, align 4
  %50 = icmp slt i32 %49, 500
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.alias_node*, %struct.alias_node** %9, align 8
  %53 = call %struct.alias_node* @pop(%struct.alias_node* %52)
  store %struct.alias_node* %53, %struct.alias_node** %13, align 8
  %54 = icmp ne %struct.alias_node* %53, null
  br label %55

55:                                               ; preds = %51, %48
  %56 = phi i1 [ false, %48 ], [ %54, %51 ]
  br i1 %56, label %57, label %311

57:                                               ; preds = %55
  %58 = load %struct.alias_node*, %struct.alias_node** %13, align 8
  %59 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 (i8*, i8*, i32, ...) bitcast (i32 (i8*, i8*, i32)* @strncmpic to i32 (i8*, i8*, i32, ...)*)(i8* %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 9)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %107

63:                                               ; preds = %57
  %64 = load %struct.alias_node*, %struct.alias_node** %13, align 8
  %65 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 9
  store i8* %67, i8** %20, align 8
  %68 = load i8*, i8** %20, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 47
  br i1 %71, label %72, label %106

72:                                               ; preds = %63
  %73 = load %struct.alias_node*, %struct.alias_node** %11, align 8
  %74 = load i8*, i8** %20, align 8
  %75 = call %struct.alias_node* @h_search(%struct.alias_node* %73, i8* %74)
  %76 = icmp eq %struct.alias_node* %75, null
  br i1 %76, label %77, label %106

77:                                               ; preds = %72
  %78 = load %struct.alias_node*, %struct.alias_node** %11, align 8
  %79 = load i8*, i8** %20, align 8
  call void @add_horz(%struct.alias_node* %78, i8* %79)
  %80 = load i8*, i8** %20, align 8
  %81 = call i32 @stat(i8* %80, %struct.stat* %19) #6
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %105

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.stat, %struct.stat* %19, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = and i32 %85, 61440
  %87 = icmp eq i32 %86, 32768
  br i1 %87, label %88, label %105

88:                                               ; preds = %83
  %89 = load i8*, i8** %20, align 8
  %90 = call %struct._IO_FILE* @fopen(i8* %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %90, %struct._IO_FILE** %14, align 8
  %91 = icmp ne %struct._IO_FILE* %90, null
  br i1 %91, label %92, label %105

92:                                               ; preds = %88
  br label %93

93:                                               ; preds = %98, %92
  %94 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %96 = call i8* @fgets(i8* %94, i32 512, %struct._IO_FILE* %95)
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load %struct.alias_node*, %struct.alias_node** %9, align 8
  %100 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %101 = call i32 @recipients(%struct.alias_node* %99, i8* %100)
  br label %93

102:                                              ; preds = %93
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %104 = call i32 @fclose(%struct._IO_FILE* %103)
  br label %105

105:                                              ; preds = %102, %88, %83, %77
  br label %106

106:                                              ; preds = %105, %72, %63
  br label %48

107:                                              ; preds = %57
  %108 = load %struct.alias_node*, %struct.alias_node** %13, align 8
  %109 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %112 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %113 = call i32 (i8*, i8*, i8*, ...) bitcast (i32 (i8*, i8*, i8*)* @islocal to i32 (i8*, i8*, i8*, ...)*)(i8* %110, i8* %111, i8* %112)
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  br label %265

116:                                              ; preds = %107
  %117 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %118 = load i8, i8* %117, align 16
  %119 = sext i8 %118 to i32
  %120 = icmp ne i32 %119, 92
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  br label %126

123:                                              ; preds = %116
  %124 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %125 = getelementptr inbounds i8, i8* %124, i64 1
  br label %126

126:                                              ; preds = %123, %121
  %127 = phi i8* [ %122, %121 ], [ %125, %123 ]
  store i8* %127, i8** %8, align 8
  %128 = load %struct.alias_node*, %struct.alias_node** %13, align 8
  %129 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = load i8*, i8** %8, align 8
  %132 = call i8* @strcpy(i8* %130, i8* %131) #6
  %133 = load i8*, i8** %8, align 8
  %134 = call %struct.alias_node* @v_search(i8* %133)
  store %struct.alias_node* %134, %struct.alias_node** %15, align 8
  %135 = icmp ne %struct.alias_node* %134, null
  br i1 %135, label %136, label %192

136:                                              ; preds = %126
  store i32 0, i32* %24, align 4
  %137 = load %struct.alias_node*, %struct.alias_node** %15, align 8
  store %struct.alias_node* %137, %struct.alias_node** %25, align 8
  %138 = load %struct.alias_node*, %struct.alias_node** %15, align 8
  %139 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %138, i32 0, i32 1
  %140 = load %struct.alias_node*, %struct.alias_node** %139, align 8
  store %struct.alias_node* %140, %struct.alias_node** %15, align 8
  br label %141

141:                                              ; preds = %181, %136
  %142 = load %struct.alias_node*, %struct.alias_node** %15, align 8
  %143 = icmp ne %struct.alias_node* %142, null
  br i1 %143, label %144, label %185

144:                                              ; preds = %141
  %145 = load %struct.alias_node*, %struct.alias_node** %15, align 8
  %146 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = getelementptr inbounds [512 x i8], [512 x i8]* %21, i64 0, i64 0
  %149 = getelementptr inbounds [512 x i8], [512 x i8]* %22, i64 0, i64 0
  %150 = call i32 (i8*, i8*, i8*, ...) bitcast (i32 (i8*, i8*, i8*)* @islocal to i32 (i8*, i8*, i8*, ...)*)(i8* %147, i8* %148, i8* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %175

152:                                              ; preds = %144
  %153 = getelementptr inbounds [512 x i8], [512 x i8]* %22, i64 0, i64 0
  %154 = load i8, i8* %153, align 16
  %155 = sext i8 %154 to i32
  %156 = icmp ne i32 %155, 92
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = getelementptr inbounds [512 x i8], [512 x i8]* %22, i64 0, i64 0
  br label %162

159:                                              ; preds = %152
  %160 = getelementptr inbounds [512 x i8], [512 x i8]* %22, i64 0, i64 0
  %161 = getelementptr inbounds i8, i8* %160, i64 1
  br label %162

162:                                              ; preds = %159, %157
  %163 = phi i8* [ %158, %157 ], [ %161, %159 ]
  store i8* %163, i8** %23, align 8
  %164 = load i8*, i8** %23, align 8
  %165 = load i8*, i8** %8, align 8
  %166 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* %164, i8* %165)
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %162
  store i32 1, i32* %24, align 4
  br label %174

169:                                              ; preds = %162
  %170 = load %struct.alias_node*, %struct.alias_node** %9, align 8
  %171 = load %struct.alias_node*, %struct.alias_node** %15, align 8
  %172 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %171, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  call void @add_horz(%struct.alias_node* %170, i8* %173)
  br label %174

174:                                              ; preds = %169, %168
  br label %180

175:                                              ; preds = %144
  %176 = load %struct.alias_node*, %struct.alias_node** %9, align 8
  %177 = load %struct.alias_node*, %struct.alias_node** %15, align 8
  %178 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  call void @add_horz(%struct.alias_node* %176, i8* %179)
  br label %180

180:                                              ; preds = %175, %174
  br label %181

181:                                              ; preds = %180
  %182 = load %struct.alias_node*, %struct.alias_node** %15, align 8
  %183 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %182, i32 0, i32 1
  %184 = load %struct.alias_node*, %struct.alias_node** %183, align 8
  store %struct.alias_node* %184, %struct.alias_node** %15, align 8
  br label %141

185:                                              ; preds = %141
  %186 = load %struct.alias_node*, %struct.alias_node** %25, align 8
  %187 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %186, i32 0, i32 1
  store %struct.alias_node* null, %struct.alias_node** %187, align 8
  %188 = load i32, i32* %24, align 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %185
  br label %48

191:                                              ; preds = %185
  br label %192

192:                                              ; preds = %191, %126
  %193 = load i8*, i8** %8, align 8
  %194 = call i8* (i8*, ...) bitcast (i8* (i8*)* @tilde to i8* (i8*, ...)*)(i8* %193)
  store i8* %194, i8** %16, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %196, label %245

196:                                              ; preds = %192
  %197 = load %struct.alias_node*, %struct.alias_node** %11, align 8
  %198 = load i8*, i8** %16, align 8
  %199 = call %struct.alias_node* @h_search(%struct.alias_node* %197, i8* %198)
  %200 = icmp ne %struct.alias_node* %199, null
  br i1 %200, label %201, label %202

201:                                              ; preds = %196
  br label %48

202:                                              ; preds = %196
  %203 = load %struct.alias_node*, %struct.alias_node** %11, align 8
  %204 = load i8*, i8** %16, align 8
  call void @add_horz(%struct.alias_node* %203, i8* %204)
  %205 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %206 = load i8*, i8** %16, align 8
  %207 = call i32 (i8*, i8*, ...) @sprintf(i8* %205, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %206, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)) #6
  %208 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %209 = call i32 @stat(i8* %208, %struct.stat* %19) #6
  %210 = icmp sge i32 %209, 0
  br i1 %210, label %211, label %244

211:                                              ; preds = %202
  %212 = getelementptr inbounds %struct.stat, %struct.stat* %19, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = and i32 %213, 61440
  %215 = icmp eq i32 %214, 32768
  br i1 %215, label %216, label %244

216:                                              ; preds = %211
  %217 = getelementptr inbounds %struct.stat, %struct.stat* %19, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = and i32 %218, 292
  %220 = icmp eq i32 %219, 292
  br i1 %220, label %221, label %244

221:                                              ; preds = %216
  %222 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %223 = call %struct._IO_FILE* @fopen(i8* %222, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %223, %struct._IO_FILE** %14, align 8
  %224 = icmp ne %struct._IO_FILE* %223, null
  br i1 %224, label %225, label %244

225:                                              ; preds = %221
  store i32 0, i32* %18, align 4
  br label %226

226:                                              ; preds = %231, %225
  %227 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %228 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %229 = call i8* @fgets(i8* %227, i32 512, %struct._IO_FILE* %228)
  %230 = icmp ne i8* %229, null
  br i1 %230, label %231, label %237

231:                                              ; preds = %226
  %232 = load %struct.alias_node*, %struct.alias_node** %9, align 8
  %233 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %234 = call i32 @recipients(%struct.alias_node* %232, i8* %233)
  %235 = load i32, i32* %18, align 4
  %236 = or i32 %235, %234
  store i32 %236, i32* %18, align 4
  br label %226

237:                                              ; preds = %226
  %238 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %239 = call i32 @fclose(%struct._IO_FILE* %238)
  %240 = load i32, i32* %18, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %237
  br label %48

243:                                              ; preds = %237
  br label %244

244:                                              ; preds = %243, %221, %216, %211, %202
  br label %245

245:                                              ; preds = %244, %192
  %246 = load i8*, i8** %8, align 8
  %247 = call i8* (i8*, ...) bitcast (i8* (i8*)* @res_fname to i8* (i8*, ...)*)(i8* %246)
  store i8* %247, i8** %26, align 8
  %248 = load i8*, i8** %26, align 8
  %249 = icmp ne i8* %248, null
  br i1 %249, label %250, label %264

250:                                              ; preds = %245
  %251 = load i8*, i8** %26, align 8
  %252 = call i32 (i8*, i8*, i8*, ...) bitcast (i32 (i8*, i8*, i8*)* @islocal to i32 (i8*, i8*, i8*, ...)*)(i8* %251, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @alias.t_dom, i64 0, i64 0), i8* getelementptr inbounds ([512 x i8], [512 x i8]* @alias.t_unam, i64 0, i64 0))
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %250
  %255 = load %struct.alias_node*, %struct.alias_node** %9, align 8
  %256 = load i8*, i8** %26, align 8
  call void @add_horz(%struct.alias_node* %255, i8* %256)
  br label %48

257:                                              ; preds = %250
  %258 = load i8*, i8** %8, align 8
  %259 = call i32 @strcmp(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @alias.t_unam, i64 0, i64 0), i8* %258) #7
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %257
  %262 = load %struct.alias_node*, %struct.alias_node** %9, align 8
  call void @add_horz(%struct.alias_node* %262, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @alias.t_unam, i64 0, i64 0))
  br label %48

263:                                              ; preds = %257
  br label %264

264:                                              ; preds = %263, %245
  br label %265

265:                                              ; preds = %264, %115
  %266 = load %struct.alias_node*, %struct.alias_node** %13, align 8
  %267 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %266, i32 0, i32 0
  %268 = load i8*, i8** %267, align 8
  %269 = load i8, i8* %268, align 1
  %270 = sext i8 %269 to i32
  %271 = icmp ne i32 %270, 92
  br i1 %271, label %272, label %276

272:                                              ; preds = %265
  %273 = load %struct.alias_node*, %struct.alias_node** %13, align 8
  %274 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %273, i32 0, i32 0
  %275 = load i8*, i8** %274, align 8
  br label %281

276:                                              ; preds = %265
  %277 = load %struct.alias_node*, %struct.alias_node** %13, align 8
  %278 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %277, i32 0, i32 0
  %279 = load i8*, i8** %278, align 8
  %280 = getelementptr inbounds i8, i8* %279, i64 1
  br label %281

281:                                              ; preds = %276, %272
  %282 = phi i8* [ %275, %272 ], [ %280, %276 ]
  store i8* %282, i8** %8, align 8
  store i32 0, i32* %5, align 4
  br label %283

283:                                              ; preds = %297, %281
  %284 = load i32, i32* %5, align 4
  %285 = load i32, i32* @nargc, align 4
  %286 = icmp slt i32 %284, %285
  br i1 %286, label %287, label %300

287:                                              ; preds = %283
  %288 = load i32, i32* %5, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [500 x i8*], [500 x i8*]* @nargv, i64 0, i64 %289
  %291 = load i8*, i8** %290, align 8
  %292 = load i8*, i8** %8, align 8
  %293 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* %291, i8* %292)
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %287
  br label %300

296:                                              ; preds = %287
  br label %297

297:                                              ; preds = %296
  %298 = load i32, i32* %5, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %5, align 4
  br label %283

300:                                              ; preds = %295, %283
  %301 = load i32, i32* %5, align 4
  %302 = load i32, i32* @nargc, align 4
  %303 = icmp eq i32 %301, %302
  br i1 %303, label %304, label %310

304:                                              ; preds = %300
  %305 = load i8*, i8** %8, align 8
  %306 = load i32, i32* @nargc, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* @nargc, align 4
  %308 = sext i32 %306 to i64
  %309 = getelementptr inbounds [500 x i8*], [500 x i8*]* @nargv, i64 0, i64 %308
  store i8* %305, i8** %309, align 8
  br label %310

310:                                              ; preds = %304, %300
  br label %48

311:                                              ; preds = %55
  %312 = load i32, i32* @nargc, align 4
  %313 = load i32*, i32** %3, align 8
  store i32 %312, i32* %313, align 4
  ret i8** getelementptr inbounds ([500 x i8*], [500 x i8*]* @nargv, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @add_horz(%struct.alias_node* %0, i8* %1) #0 {
  %3 = alloca %struct.alias_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.alias_node*, align 8
  store %struct.alias_node* %0, %struct.alias_node** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call noalias i8* @malloc(i64 24) #6
  %7 = bitcast i8* %6 to %struct.alias_node*
  store %struct.alias_node* %7, %struct.alias_node** %5, align 8
  %8 = icmp ne %struct.alias_node* %7, null
  br i1 %8, label %9, label %39

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @strlen(i8* %10) #7
  %12 = trunc i64 %11 to i32
  %13 = add i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call noalias i8* @malloc(i64 %14) #6
  %16 = load %struct.alias_node*, %struct.alias_node** %5, align 8
  %17 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %16, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  %18 = icmp eq i8* %15, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %9
  %20 = load %struct.alias_node*, %struct.alias_node** %5, align 8
  %21 = bitcast %struct.alias_node* %20 to i8*
  call void @free(i8* %21) #6
  store %struct.alias_node* null, %struct.alias_node** %5, align 8
  br label %38

22:                                               ; preds = %9
  %23 = load %struct.alias_node*, %struct.alias_node** %5, align 8
  %24 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = call i8* @strcpy(i8* %25, i8* %26) #6
  %28 = load %struct.alias_node*, %struct.alias_node** %3, align 8
  %29 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %28, i32 0, i32 1
  %30 = load %struct.alias_node*, %struct.alias_node** %29, align 8
  %31 = load %struct.alias_node*, %struct.alias_node** %5, align 8
  %32 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %31, i32 0, i32 1
  store %struct.alias_node* %30, %struct.alias_node** %32, align 8
  %33 = load %struct.alias_node*, %struct.alias_node** %5, align 8
  %34 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %33, i32 0, i32 2
  store %struct.alias_node* null, %struct.alias_node** %34, align 8
  %35 = load %struct.alias_node*, %struct.alias_node** %5, align 8
  %36 = load %struct.alias_node*, %struct.alias_node** %3, align 8
  %37 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %36, i32 0, i32 1
  store %struct.alias_node* %35, %struct.alias_node** %37, align 8
  br label %38

38:                                               ; preds = %22, %19
  br label %39

39:                                               ; preds = %38, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.alias_node* @pop(%struct.alias_node* %0) #0 {
  %2 = alloca %struct.alias_node*, align 8
  %3 = alloca %struct.alias_node*, align 8
  store %struct.alias_node* %0, %struct.alias_node** %2, align 8
  store %struct.alias_node* null, %struct.alias_node** %3, align 8
  %4 = load %struct.alias_node*, %struct.alias_node** %2, align 8
  %5 = icmp ne %struct.alias_node* %4, null
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = load %struct.alias_node*, %struct.alias_node** %2, align 8
  %8 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %7, i32 0, i32 1
  %9 = load %struct.alias_node*, %struct.alias_node** %8, align 8
  store %struct.alias_node* %9, %struct.alias_node** %3, align 8
  %10 = load %struct.alias_node*, %struct.alias_node** %3, align 8
  %11 = icmp ne %struct.alias_node* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = load %struct.alias_node*, %struct.alias_node** %3, align 8
  %14 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %13, i32 0, i32 1
  %15 = load %struct.alias_node*, %struct.alias_node** %14, align 8
  %16 = load %struct.alias_node*, %struct.alias_node** %2, align 8
  %17 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %16, i32 0, i32 1
  store %struct.alias_node* %15, %struct.alias_node** %17, align 8
  br label %18

18:                                               ; preds = %12, %6
  br label %19

19:                                               ; preds = %18, %1
  %20 = load %struct.alias_node*, %struct.alias_node** %3, align 8
  ret %struct.alias_node* %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.alias_node* @h_search(%struct.alias_node* %0, i8* %1) #0 {
  %3 = alloca %struct.alias_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.alias_node*, align 8
  store %struct.alias_node* %0, %struct.alias_node** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.alias_node*, %struct.alias_node** %3, align 8
  %7 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %6, i32 0, i32 1
  %8 = load %struct.alias_node*, %struct.alias_node** %7, align 8
  store %struct.alias_node* %8, %struct.alias_node** %5, align 8
  br label %9

9:                                                ; preds = %21, %2
  %10 = load %struct.alias_node*, %struct.alias_node** %5, align 8
  %11 = icmp ne %struct.alias_node* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = load %struct.alias_node*, %struct.alias_node** %5, align 8
  %14 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* %15, i8* %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %25

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.alias_node*, %struct.alias_node** %5, align 8
  %23 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %22, i32 0, i32 1
  %24 = load %struct.alias_node*, %struct.alias_node** %23, align 8
  store %struct.alias_node* %24, %struct.alias_node** %5, align 8
  br label %9

25:                                               ; preds = %19, %9
  %26 = load %struct.alias_node*, %struct.alias_node** %5, align 8
  ret %struct.alias_node* %26
}

; Function Attrs: nounwind
declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @recipients(%struct.alias_node* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.alias_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [512 x i8], align 16
  %8 = alloca [512 x i8], align 16
  %9 = alloca i32, align 4
  store %struct.alias_node* %0, %struct.alias_node** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load i8*, i8** %5, align 8
  call void @strip_comments(i8* %10)
  br label %11

11:                                               ; preds = %33, %2
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 32
  br i1 %15, label %31, label %16

16:                                               ; preds = %11
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 9
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = load i8*, i8** %5, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 10
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i8*, i8** %5, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 44
  br label %31

31:                                               ; preds = %26, %21, %16, %11
  %32 = phi i1 [ true, %21 ], [ true, %16 ], [ true, %11 ], [ %30, %26 ]
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %5, align 8
  br label %11

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %141, %36
  %38 = load i8*, i8** %5, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load i8*, i8** %5, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 35
  br label %48

48:                                               ; preds = %43, %37
  %49 = phi i1 [ false, %37 ], [ %47, %43 ]
  br i1 %49, label %50, label %142

50:                                               ; preds = %48
  %51 = load i8*, i8** %5, align 8
  store i8* %51, i8** %6, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 34
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %6, align 8
  %59 = call i8* @strchr(i8* %58, i32 34) #7
  store i8* %59, i8** %5, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %3, align 4
  br label %144

63:                                               ; preds = %56
  br label %91

64:                                               ; preds = %50
  br label %65

65:                                               ; preds = %87, %64
  %66 = load i8*, i8** %5, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 32
  br i1 %69, label %70, label %85

70:                                               ; preds = %65
  %71 = load i8*, i8** %5, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 9
  br i1 %74, label %75, label %85

75:                                               ; preds = %70
  %76 = load i8*, i8** %5, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 10
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load i8*, i8** %5, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 44
  br label %85

85:                                               ; preds = %80, %75, %70, %65
  %86 = phi i1 [ false, %75 ], [ false, %70 ], [ false, %65 ], [ %84, %80 ]
  br i1 %86, label %87, label %90

87:                                               ; preds = %85
  %88 = load i8*, i8** %5, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %5, align 8
  br label %65

90:                                               ; preds = %85
  br label %91

91:                                               ; preds = %90, %63
  %92 = load i8*, i8** %5, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i8*, i8** %5, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %5, align 8
  store i8 0, i8* %97, align 1
  br label %99

99:                                               ; preds = %96, %91
  %100 = load i8*, i8** %6, align 8
  %101 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %102 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %103 = call i32 (i8*, i8*, i8*, ...) bitcast (i32 (i8*, i8*, i8*)* @islocal to i32 (i8*, i8*, i8*, ...)*)(i8* %100, i8* %101, i8* %102)
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %99
  %106 = load %struct.alias_node*, %struct.alias_node** %4, align 8
  %107 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %110 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* %108, i8* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %105, %99
  %113 = load %struct.alias_node*, %struct.alias_node** %4, align 8
  %114 = load i8*, i8** %6, align 8
  call void @add_horz(%struct.alias_node* %113, i8* %114)
  store i32 1, i32* %9, align 4
  br label %115

115:                                              ; preds = %112, %105
  br label %116

116:                                              ; preds = %138, %115
  %117 = load i8*, i8** %5, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 32
  br i1 %120, label %136, label %121

121:                                              ; preds = %116
  %122 = load i8*, i8** %5, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 9
  br i1 %125, label %136, label %126

126:                                              ; preds = %121
  %127 = load i8*, i8** %5, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 10
  br i1 %130, label %136, label %131

131:                                              ; preds = %126
  %132 = load i8*, i8** %5, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 44
  br label %136

136:                                              ; preds = %131, %126, %121, %116
  %137 = phi i1 [ true, %126 ], [ true, %121 ], [ true, %116 ], [ %135, %131 ]
  br i1 %137, label %138, label %141

138:                                              ; preds = %136
  %139 = load i8*, i8** %5, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %5, align 8
  br label %116

141:                                              ; preds = %136
  br label %37

142:                                              ; preds = %48
  %143 = load i32, i32* %9, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %142, %61
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.alias_node* @v_search(i8* %0) #0 {
  %2 = alloca %struct.alias_node*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.alias_node*, align 8
  %5 = alloca %struct.alias_node*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.alias_node* @aliases, %struct.alias_node** %4, align 8
  %6 = load i32, i32* @v_search.loaded, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.alias_node*, %struct.alias_node** %4, align 8
  %10 = load i8*, i8** @aliasfile, align 8
  call void @load_alias(%struct.alias_node* %9, i8* %10)
  store i32 1, i32* @v_search.loaded, align 4
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.alias_node*, %struct.alias_node** %4, align 8
  %13 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %12, i32 0, i32 2
  %14 = load %struct.alias_node*, %struct.alias_node** %13, align 8
  store %struct.alias_node* %14, %struct.alias_node** %5, align 8
  br label %15

15:                                               ; preds = %27, %11
  %16 = load %struct.alias_node*, %struct.alias_node** %5, align 8
  %17 = icmp ne %struct.alias_node* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load %struct.alias_node*, %struct.alias_node** %5, align 8
  %20 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* %21, i8* %22)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %31

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.alias_node*, %struct.alias_node** %5, align 8
  %29 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %28, i32 0, i32 2
  %30 = load %struct.alias_node*, %struct.alias_node** %29, align 8
  store %struct.alias_node* %30, %struct.alias_node** %5, align 8
  br label %15

31:                                               ; preds = %25, %15
  %32 = load %struct.alias_node*, %struct.alias_node** %5, align 8
  %33 = icmp eq %struct.alias_node* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store %struct.alias_node* null, %struct.alias_node** %2, align 8
  br label %37

35:                                               ; preds = %31
  %36 = load %struct.alias_node*, %struct.alias_node** %5, align 8
  store %struct.alias_node* %36, %struct.alias_node** %2, align 8
  br label %37

37:                                               ; preds = %35, %34
  %38 = load %struct.alias_node*, %struct.alias_node** %2, align 8
  ret %struct.alias_node* %38
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @load_alias(%struct.alias_node* %0, i8* %1) #0 {
  %3 = alloca %struct.alias_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca %struct.alias_node*, align 8
  %7 = alloca %struct.alias_node*, align 8
  %8 = alloca [512 x i8], align 16
  %9 = alloca [512 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [512 x i8], align 16
  %13 = alloca i8*, align 8
  store %struct.alias_node* %0, %struct.alias_node** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call %struct._IO_FILE* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %15, %struct._IO_FILE** %5, align 8
  %16 = icmp eq %struct._IO_FILE* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i32, i32* @debug, align 4
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %20, %17
  br label %156

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %123, %109, %61, %41, %24
  %26 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %28 = call i8* @fgets(i8* %26, i32 512, %struct._IO_FILE* %27)
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %127

30:                                               ; preds = %25
  %31 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  store i8* %31, i8** %10, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 35
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = load i8*, i8** %10, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 10
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %30
  br label %25

42:                                               ; preds = %36
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @strncmp(i8* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 9) #7
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %42
  %47 = load i8*, i8** %10, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 9
  store i8* %48, i8** %10, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = call i8* @strchr(i8* %49, i32 10) #7
  store i8* %50, i8** %13, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i8*, i8** %13, align 8
  store i8 0, i8* %53, align 1
  br label %54

54:                                               ; preds = %52, %46
  %55 = load i32, i32* @debug, align 4
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i8*, i8** %4, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %58, i8* %59)
  br label %61

61:                                               ; preds = %57, %54
  %62 = load %struct.alias_node*, %struct.alias_node** %3, align 8
  %63 = load i8*, i8** %10, align 8
  call void @load_alias(%struct.alias_node* %62, i8* %63)
  br label %25

64:                                               ; preds = %42
  %65 = load i8*, i8** %10, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 32
  br i1 %68, label %69, label %123

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 9
  br i1 %73, label %74, label %123

74:                                               ; preds = %69
  %75 = load i8*, i8** %10, align 8
  store i8* %75, i8** %11, align 8
  br label %76

76:                                               ; preds = %98, %74
  %77 = load i8*, i8** %10, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 32
  br i1 %80, label %81, label %96

81:                                               ; preds = %76
  %82 = load i8*, i8** %10, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 9
  br i1 %85, label %86, label %96

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 10
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load i8*, i8** %10, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 44
  br label %96

96:                                               ; preds = %91, %86, %81, %76
  %97 = phi i1 [ false, %86 ], [ false, %81 ], [ false, %76 ], [ %95, %91 ]
  br i1 %97, label %98, label %101

98:                                               ; preds = %96
  %99 = load i8*, i8** %10, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %10, align 8
  br label %76

101:                                              ; preds = %96
  %102 = load i8*, i8** %10, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %10, align 8
  store i8 0, i8* %102, align 1
  %104 = load i8*, i8** %11, align 8
  %105 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %106 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %107 = call i32 (i8*, i8*, i8*, ...) bitcast (i32 (i8*, i8*, i8*)* @islocal to i32 (i8*, i8*, i8*, ...)*)(i8* %104, i8* %105, i8* %106)
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  br label %25

110:                                              ; preds = %101
  %111 = load %struct.alias_node*, %struct.alias_node** %3, align 8
  %112 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %113 = call %struct.alias_node* @add_vert(%struct.alias_node* %111, i8* %112)
  store %struct.alias_node* %113, %struct.alias_node** %7, align 8
  %114 = icmp eq %struct.alias_node* %113, null
  br i1 %114, label %115, label %122

115:                                              ; preds = %110
  %116 = load i32, i32* @debug, align 4
  %117 = icmp eq i32 %116, 2
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i8*, i8** %11, align 8
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8* %119)
  br label %121

121:                                              ; preds = %118, %115
  br label %156

122:                                              ; preds = %110
  br label %123

123:                                              ; preds = %122, %69, %64
  %124 = load %struct.alias_node*, %struct.alias_node** %7, align 8
  %125 = load i8*, i8** %10, align 8
  %126 = call i32 @recipients(%struct.alias_node* %124, i8* %125)
  br label %25

127:                                              ; preds = %25
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %129 = call i32 @fclose(%struct._IO_FILE* %128)
  %130 = load %struct.alias_node*, %struct.alias_node** %3, align 8
  store %struct.alias_node* %130, %struct.alias_node** %6, align 8
  br label %131

131:                                              ; preds = %155, %127
  %132 = load %struct.alias_node*, %struct.alias_node** %6, align 8
  %133 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %132, i32 0, i32 2
  %134 = load %struct.alias_node*, %struct.alias_node** %133, align 8
  %135 = icmp ne %struct.alias_node* %134, null
  br i1 %135, label %136, label %156

136:                                              ; preds = %131
  %137 = load %struct.alias_node*, %struct.alias_node** %6, align 8
  %138 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %137, i32 0, i32 2
  %139 = load %struct.alias_node*, %struct.alias_node** %138, align 8
  %140 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %139, i32 0, i32 1
  %141 = load %struct.alias_node*, %struct.alias_node** %140, align 8
  %142 = icmp eq %struct.alias_node* %141, null
  br i1 %142, label %143, label %151

143:                                              ; preds = %136
  %144 = load %struct.alias_node*, %struct.alias_node** %6, align 8
  %145 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %144, i32 0, i32 2
  %146 = load %struct.alias_node*, %struct.alias_node** %145, align 8
  %147 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %146, i32 0, i32 2
  %148 = load %struct.alias_node*, %struct.alias_node** %147, align 8
  %149 = load %struct.alias_node*, %struct.alias_node** %6, align 8
  %150 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %149, i32 0, i32 2
  store %struct.alias_node* %148, %struct.alias_node** %150, align 8
  br label %155

151:                                              ; preds = %136
  %152 = load %struct.alias_node*, %struct.alias_node** %6, align 8
  %153 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %152, i32 0, i32 2
  %154 = load %struct.alias_node*, %struct.alias_node** %153, align 8
  store %struct.alias_node* %154, %struct.alias_node** %6, align 8
  br label %155

155:                                              ; preds = %151, %143
  br label %131

156:                                              ; preds = %131, %121, %23
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind readonly
declare dso_local i8* @strchr(i8*, i32) #3

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.alias_node* @add_vert(%struct.alias_node* %0, i8* %1) #0 {
  %3 = alloca %struct.alias_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.alias_node*, align 8
  store %struct.alias_node* %0, %struct.alias_node** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i8* @strchr(i8* %7, i32 58) #7
  store i8* %8, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  store i8 0, i8* %11, align 1
  br label %12

12:                                               ; preds = %10, %2
  %13 = call noalias i8* @malloc(i64 24) #6
  %14 = bitcast i8* %13 to %struct.alias_node*
  store %struct.alias_node* %14, %struct.alias_node** %6, align 8
  %15 = icmp ne %struct.alias_node* %14, null
  br i1 %15, label %16, label %46

16:                                               ; preds = %12
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @strlen(i8* %17) #7
  %19 = trunc i64 %18 to i32
  %20 = add i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call noalias i8* @malloc(i64 %21) #6
  %23 = load %struct.alias_node*, %struct.alias_node** %6, align 8
  %24 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = icmp eq i8* %22, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load %struct.alias_node*, %struct.alias_node** %6, align 8
  %28 = bitcast %struct.alias_node* %27 to i8*
  call void @free(i8* %28) #6
  store %struct.alias_node* null, %struct.alias_node** %6, align 8
  br label %45

29:                                               ; preds = %16
  %30 = load %struct.alias_node*, %struct.alias_node** %6, align 8
  %31 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call i8* @strcpy(i8* %32, i8* %33) #6
  %35 = load %struct.alias_node*, %struct.alias_node** %3, align 8
  %36 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %35, i32 0, i32 2
  %37 = load %struct.alias_node*, %struct.alias_node** %36, align 8
  %38 = load %struct.alias_node*, %struct.alias_node** %6, align 8
  %39 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %38, i32 0, i32 2
  store %struct.alias_node* %37, %struct.alias_node** %39, align 8
  %40 = load %struct.alias_node*, %struct.alias_node** %6, align 8
  %41 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %40, i32 0, i32 1
  store %struct.alias_node* null, %struct.alias_node** %41, align 8
  %42 = load %struct.alias_node*, %struct.alias_node** %6, align 8
  %43 = load %struct.alias_node*, %struct.alias_node** %3, align 8
  %44 = getelementptr inbounds %struct.alias_node, %struct.alias_node* %43, i32 0, i32 2
  store %struct.alias_node* %42, %struct.alias_node** %44, align 8
  br label %45

45:                                               ; preds = %29, %26
  br label %46

46:                                               ; preds = %45, %12
  %47 = load %struct.alias_node*, %struct.alias_node** %6, align 8
  ret %struct.alias_node* %47
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @strip_comments(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %4

4:                                                ; preds = %21, %1
  %5 = load i8*, i8** %2, align 8
  %6 = call i8* @strchr(i8* %5, i32 40) #7
  store i8* %6, i8** %2, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = load i8*, i8** %2, align 8
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** %2, align 8
  store i8* %9, i8** %3, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = call i8* @strchr(i8* %11, i32 41) #7
  store i8* %12, i8** %2, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = load i8*, i8** %3, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %2, align 8
  %18 = call i8* @strcpy(i8* %15, i8* %17) #6
  br label %21

19:                                               ; preds = %8
  %20 = load i8*, i8** %3, align 8
  store i8 0, i8* %20, align 1
  br label %22

21:                                               ; preds = %14
  br label %4

22:                                               ; preds = %19, %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @deliver(i32 %0, i8** %1, i8** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct._IO_FILE*, align 8
  %12 = alloca [512 x i8], align 16
  %13 = alloca [512 x i8], align 16
  %14 = alloca [512 x i8], align 16
  %15 = alloca [512 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca [512 x i8], align 16
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i64, align 8
  %32 = alloca %struct.stat, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8** %29, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1.9, i64 0, i64 0), i8** %30, align 8
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %40 = call i32 @fseek(%struct._IO_FILE* %39, i64 0, i32 0)
  %41 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %43 = call i8* @fgets(i8* %41, i32 512, %struct._IO_FILE* %42)
  %44 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %45 = call i8* @strchr(i8* %44, i32 10) #7
  store i8* %45, i8** %26, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %5
  %48 = load i8*, i8** %26, align 8
  store i8 0, i8* %48, align 1
  br label %49

49:                                               ; preds = %47, %5
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %51 = call i64 @ftell(%struct._IO_FILE* %50)
  store i64 %51, i64* %31, align 8
  store i8 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @stderrfile, i64 0, i64 0), align 16
  store i32 0, i32* %22, align 4
  br label %52

52:                                               ; preds = %465, %49
  %53 = load i32, i32* %22, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %468

56:                                               ; preds = %52
  %57 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  store i8* %57, i8** %33, align 8
  %58 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  store i8* %58, i8** %34, align 8
  %59 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  store i8* %59, i8** %35, align 8
  %60 = call i32 @unlink(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @stderrfile, i64 0, i64 0)) #6
  %61 = call i8* @strcpy(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @stderrfile, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2.10, i64 0, i64 0)) #6
  %62 = call i8* (i8*, ...) bitcast (i8* (...)* @mktemp to i8* (i8*, ...)*)(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @stderrfile, i64 0, i64 0))
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %64 = call %struct._IO_FILE* @freopen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @stderrfile, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.11, i64 0, i64 0), %struct._IO_FILE* %63)
  %65 = load i32, i32* @debug, align 4
  %66 = icmp ne i32 %65, 2
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %69 = call %struct._IO_FILE* @freopen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @stderrfile, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.11, i64 0, i64 0), %struct._IO_FILE* %68)
  br label %70

70:                                               ; preds = %67, %56
  %71 = load i8*, i8** %35, align 8
  store i8 0, i8* %71, align 1
  %72 = load i8*, i8** %34, align 8
  store i8 0, i8* %72, align 1
  %73 = load i8*, i8** %33, align 8
  store i8 0, i8* %73, align 1
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %22, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %18, align 4
  %79 = load i32, i32* %18, align 4
  %80 = icmp eq i32 %79, 5
  br i1 %80, label %81, label %82

81:                                               ; preds = %70
  br label %465

82:                                               ; preds = %70
  %83 = load i8*, i8** @uuxargs, align 8
  %84 = icmp eq i8* %83, null
  br i1 %84, label %85, label %102

85:                                               ; preds = %82
  %86 = load i32, i32* %28, align 4
  %87 = load i32, i32* @maxnoqueue, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %85
  %90 = load i32*, i32** %10, align 8
  %91 = load i32, i32* %22, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @queuecost, align 4
  %96 = icmp sle i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = load i8*, i8** %29, align 8
  store i8* %98, i8** %20, align 8
  br label %101

99:                                               ; preds = %89, %85
  %100 = load i8*, i8** %30, align 8
  store i8* %100, i8** %20, align 8
  br label %101

101:                                              ; preds = %99, %97
  br label %104

102:                                              ; preds = %82
  %103 = load i8*, i8** @uuxargs, align 8
  store i8* %103, i8** %20, align 8
  br label %104

104:                                              ; preds = %102, %101
  store i32 0, i32* %25, align 4
  %105 = load i32, i32* @routing, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1.9, i64 0, i64 0), i8** %21, align 8
  br label %114

108:                                              ; preds = %104
  %109 = load i32, i32* @routing, align 4
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.12, i64 0, i64 0), i8** %21, align 8
  br label %113

112:                                              ; preds = %108
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), i8** %21, align 8
  br label %113

113:                                              ; preds = %112, %111
  br label %114

114:                                              ; preds = %113, %107
  %115 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %116 = call i32 (i8*, i8*, ...) @sprintf(i8* %115, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5.13, i64 0, i64 0)) #6
  %117 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %118 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %119 = load i8*, i8** %20, align 8
  %120 = load i8**, i8*** %7, align 8
  %121 = load i32, i32* %22, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %120, i64 %122
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 (i8*, i8*, ...) @sprintf(i8* %117, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6.14, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7.15, i64 0, i64 0), i8* %118, i8* %119, i8* %124) #6
  %126 = load i32, i32* %22, align 4
  store i32 %126, i32* %23, align 4
  br label %127

127:                                              ; preds = %257, %114
  %128 = load i32, i32* %23, align 4
  %129 = load i32, i32* %6, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %260

131:                                              ; preds = %127
  %132 = load i32*, i32** %9, align 8
  %133 = load i32, i32* %23, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %18, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %168, label %139

139:                                              ; preds = %131
  %140 = load i8**, i8*** %7, align 8
  %141 = load i32, i32* %22, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8*, i8** %140, i64 %142
  %144 = load i8*, i8** %143, align 8
  %145 = load i8**, i8*** %7, align 8
  %146 = load i32, i32* %23, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %145, i64 %147
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* %144, i8* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %168, label %152

152:                                              ; preds = %139
  %153 = load i8*, i8** %33, align 8
  %154 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %155 = ptrtoint i8* %153 to i64
  %156 = ptrtoint i8* %154 to i64
  %157 = sub i64 %155, %156
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %36, align 4
  %159 = icmp sgt i32 %158, 128
  br i1 %159, label %168, label %160

160:                                              ; preds = %152
  %161 = load i8*, i8** %34, align 8
  %162 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %163 = ptrtoint i8* %161 to i64
  %164 = ptrtoint i8* %162 to i64
  %165 = sub i64 %163, %164
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %37, align 4
  %167 = icmp sgt i32 %166, 128
  br i1 %167, label %168, label %169

168:                                              ; preds = %160, %152, %139, %131
  br label %257

169:                                              ; preds = %160
  %170 = load i8*, i8** %35, align 8
  %171 = call i64 @strlen(i8* %170) #7
  %172 = load i8*, i8** %35, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 %171
  store i8* %173, i8** %35, align 8
  %174 = load i8*, i8** %35, align 8
  %175 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %176 = icmp ne i8* %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %169
  %178 = load i8*, i8** %35, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %35, align 8
  store i8 59, i8* %178, align 1
  br label %180

180:                                              ; preds = %177, %169
  %181 = load i8*, i8** %35, align 8
  %182 = load i32, i32* @debug, align 4
  %183 = icmp eq i32 %182, 1
  %184 = zext i1 %183 to i64
  %185 = select i1 %183, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %186 = load i8*, i8** %21, align 8
  %187 = load i8*, i8** @spoolfile, align 8
  %188 = call i32 (i8*, i8*, ...) @sprintf(i8* %181, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8.16, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* %185, i8* %186, i8* %187) #6
  %189 = load i8*, i8** %35, align 8
  %190 = call i64 @strlen(i8* %189) #7
  %191 = load i8*, i8** %35, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 %190
  store i8* %192, i8** %35, align 8
  %193 = load i8*, i8** %33, align 8
  %194 = call i64 @strlen(i8* %193) #7
  %195 = load i8*, i8** %33, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 %194
  store i8* %196, i8** %33, align 8
  %197 = load i8*, i8** %34, align 8
  %198 = call i64 @strlen(i8* %197) #7
  %199 = load i8*, i8** %34, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 %198
  store i8* %200, i8** %34, align 8
  %201 = load i32, i32* %18, align 4
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %203, label %220

203:                                              ; preds = %180
  %204 = load i8*, i8** %33, align 8
  %205 = load i8**, i8*** %8, align 8
  %206 = load i32, i32* %23, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8*, i8** %205, i64 %207
  %209 = load i8*, i8** %208, align 8
  %210 = call i8* @postmaster(i8* %209)
  %211 = call i32 (i8*, i8*, ...) @sprintf(i8* %204, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* %210) #6
  %212 = load i8*, i8** %35, align 8
  %213 = load i8**, i8*** %8, align 8
  %214 = load i32, i32* %23, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8*, i8** %213, i64 %215
  %217 = load i8*, i8** %216, align 8
  %218 = call i8* @postmaster(i8* %217)
  %219 = call i32 (i8*, i8*, ...) @sprintf(i8* %212, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* %218) #6
  br label %245

220:                                              ; preds = %180
  %221 = load i8*, i8** %33, align 8
  %222 = load i8**, i8*** %7, align 8
  %223 = load i32, i32* %22, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8*, i8** %222, i64 %224
  %226 = load i8*, i8** %225, align 8
  %227 = load i8**, i8*** %8, align 8
  %228 = load i32, i32* %23, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8*, i8** %227, i64 %229
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 (i8*, i8*, ...) @sprintf(i8* %221, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* %226, i8* %231) #6
  %233 = load i8*, i8** %35, align 8
  %234 = load i8**, i8*** %7, align 8
  %235 = load i32, i32* %22, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8*, i8** %234, i64 %236
  %238 = load i8*, i8** %237, align 8
  %239 = load i8**, i8*** %8, align 8
  %240 = load i32, i32* %23, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i8*, i8** %239, i64 %241
  %243 = load i8*, i8** %242, align 8
  %244 = call i32 (i8*, i8*, ...) @sprintf(i8* %233, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* %238, i8* %243) #6
  br label %245

245:                                              ; preds = %220, %203
  %246 = load i8*, i8** %34, align 8
  %247 = load i8**, i8*** %8, align 8
  %248 = load i32, i32* %23, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i8*, i8** %247, i64 %249
  %251 = load i8*, i8** %250, align 8
  %252 = call i32 (i8*, i8*, ...) @sprintf(i8* %246, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* %251) #6
  %253 = load i32*, i32** %9, align 8
  %254 = load i32, i32* %23, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  store i32 5, i32* %256, align 4
  br label %257

257:                                              ; preds = %245, %168
  %258 = load i32, i32* %23, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %23, align 4
  br label %127

260:                                              ; preds = %127
  br label %261

261:                                              ; preds = %442, %260
  %262 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %263 = load i64, i64* %31, align 8
  %264 = call i32 @fseek(%struct._IO_FILE* %262, i64 %263, i32 0)
  %265 = load i32, i32* %18, align 4
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %279

267:                                              ; preds = %261
  %268 = load i8**, i8*** %8, align 8
  %269 = load i32, i32* %22, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i8*, i8** %268, i64 %270
  %272 = load i8*, i8** %271, align 8
  %273 = load i8**, i8*** %7, align 8
  %274 = load i32, i32* %22, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i8*, i8** %273, i64 %275
  %277 = load i8*, i8** %276, align 8
  %278 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @deliver.errbuf, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0), i8* %272, i8* %277) #6
  store i8* getelementptr inbounds ([512 x i8], [512 x i8]* @deliver.errbuf, i64 0, i64 0), i8** %16, align 8
  store i64 0, i64* %19, align 8
  br label %407

279:                                              ; preds = %261
  %280 = load i32, i32* %25, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %279
  %283 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  store i8* %283, i8** %16, align 8
  br label %299

284:                                              ; preds = %279
  %285 = load i32, i32* %18, align 4
  %286 = icmp eq i32 %285, 1
  br i1 %286, label %287, label %289

287:                                              ; preds = %284
  %288 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  store i8* %288, i8** %16, align 8
  br label %298

289:                                              ; preds = %284
  %290 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  store i8* %290, i8** %16, align 8
  %291 = load i8*, i8** %20, align 8
  %292 = load i8*, i8** %29, align 8
  %293 = icmp eq i8* %291, %292
  br i1 %293, label %294, label %297

294:                                              ; preds = %289
  %295 = load i32, i32* %28, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %28, align 4
  br label %297

297:                                              ; preds = %294, %289
  br label %298

298:                                              ; preds = %297, %287
  br label %299

299:                                              ; preds = %298, %282
  %300 = load i32, i32* @debug, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %305

302:                                              ; preds = %299
  %303 = load i8*, i8** %16, align 8
  %304 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8* %303)
  br label %305

305:                                              ; preds = %302, %299
  %306 = call void (i32)* @signal(i32 13, void (i32)* inttoptr (i64 1 to void (i32)*)) #6
  %307 = load i32, i32* @debug, align 4
  %308 = icmp eq i32 %307, 2
  br i1 %308, label %309, label %311

309:                                              ; preds = %305
  %310 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %310, %struct._IO_FILE** %11, align 8
  br label %325

311:                                              ; preds = %305
  store i32 0, i32* %27, align 4
  br label %312

312:                                              ; preds = %320, %311
  %313 = load i8*, i8** %16, align 8
  %314 = call %struct._IO_FILE* @popen(i8* %313, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.11, i64 0, i64 0))
  store %struct._IO_FILE* %314, %struct._IO_FILE** %11, align 8
  %315 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %316 = icmp ne %struct._IO_FILE* %315, null
  br i1 %316, label %317, label %318

317:                                              ; preds = %312
  br label %324

318:                                              ; preds = %312
  %319 = call i32 @sleep(i32 60)
  br label %320

320:                                              ; preds = %318
  %321 = load i32, i32* %27, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %27, align 4
  %323 = icmp slt i32 %322, 10
  br i1 %323, label %312, label %324

324:                                              ; preds = %320, %317
  br label %325

325:                                              ; preds = %324, %309
  %326 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %327 = icmp eq %struct._IO_FILE* %326, null
  br i1 %327, label %328, label %331

328:                                              ; preds = %325
  store i32 69, i32* @exitstat, align 4
  %329 = load i8*, i8** %16, align 8
  %330 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i8* %329)
  br label %465

331:                                              ; preds = %325
  store i64 0, i64* %19, align 8
  %332 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %333 = call i32 @fileno(%struct._IO_FILE* %332) #6
  %334 = call i32 @fstat(i32 %333, %struct.stat* %32) #6
  %335 = icmp sge i32 %334, 0
  br i1 %335, label %336, label %341

336:                                              ; preds = %331
  %337 = getelementptr inbounds %struct.stat, %struct.stat* %32, i32 0, i32 8
  %338 = load i64, i64* %337, align 8
  %339 = load i64, i64* %31, align 8
  %340 = sub nsw i64 %338, %339
  store i64 %340, i64* %19, align 8
  br label %341

341:                                              ; preds = %336, %331
  %342 = load i32, i32* %18, align 4
  %343 = icmp eq i32 %342, 1
  br i1 %343, label %344, label %375

344:                                              ; preds = %341
  %345 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %346 = call i8* @strchr(i8* %345, i32 33) #7
  store i8* %346, i8** %38, align 8
  %347 = icmp eq i8* %346, null
  br i1 %347, label %348, label %359

348:                                              ; preds = %344
  %349 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %350 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %351 = call i32 (i8*, i8*, ...) @sprintf(i8* %349, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8* %350, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @nows, i64 0, i64 0)) #6
  %352 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %353 = call i64 @strlen(i8* %352) #7
  %354 = load i64, i64* %19, align 8
  %355 = add i64 %354, %353
  store i64 %355, i64* %19, align 8
  %356 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %357 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %358 = call i32 @fputs(i8* %356, %struct._IO_FILE* %357)
  br label %374

359:                                              ; preds = %344
  %360 = load i8*, i8** %38, align 8
  store i8 0, i8* %360, align 1
  %361 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %362 = load i8*, i8** %38, align 8
  %363 = getelementptr inbounds i8, i8* %362, i64 1
  %364 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %365 = call i32 (i8*, i8*, ...) @sprintf(i8* %361, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i8* %363, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @nows, i64 0, i64 0), i8* %364) #6
  %366 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %367 = call i64 @strlen(i8* %366) #7
  %368 = load i64, i64* %19, align 8
  %369 = add i64 %368, %367
  store i64 %369, i64* %19, align 8
  %370 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %371 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %372 = call i32 @fputs(i8* %370, %struct._IO_FILE* %371)
  %373 = load i8*, i8** %38, align 8
  store i8 33, i8* %373, align 1
  br label %374

374:                                              ; preds = %359, %348
  br label %386

375:                                              ; preds = %341
  %376 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %377 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %378 = call i32 (i8*, i8*, ...) @sprintf(i8* %376, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i8* %377, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @nows, i64 0, i64 0), i8* getelementptr inbounds ([512 x i8], [512 x i8]* @hostname, i64 0, i64 0)) #6
  %379 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %380 = call i64 @strlen(i8* %379) #7
  %381 = load i64, i64* %19, align 8
  %382 = add i64 %381, %380
  store i64 %382, i64* %19, align 8
  %383 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %384 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %385 = call i32 @fputs(i8* %383, %struct._IO_FILE* %384)
  br label %386

386:                                              ; preds = %375, %374
  %387 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %388 = call i32 @getpid() #6
  %389 = call i32 (i8*, i8*, ...) @sprintf(i8* %387, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([512 x i8], [512 x i8]* @hostdomain, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i32 %388, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @arpanows, i64 0, i64 0)) #6
  %390 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %391 = call i64 @strlen(i8* %390) #7
  %392 = load i64, i64* %19, align 8
  %393 = add i64 %392, %391
  store i64 %393, i64* %19, align 8
  %394 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %395 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %396 = call i32 @fputs(i8* %394, %struct._IO_FILE* %395)
  br label %397

397:                                              ; preds = %402, %386
  %398 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %399 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %400 = call i8* @fgets(i8* %398, i32 512, %struct._IO_FILE* %399)
  %401 = icmp ne i8* %400, null
  br i1 %401, label %402, label %406

402:                                              ; preds = %397
  %403 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %404 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %405 = call i32 @fputs(i8* %403, %struct._IO_FILE* %404)
  br label %397

406:                                              ; preds = %397
  br label %407

407:                                              ; preds = %406, %267
  %408 = load i32, i32* @debug, align 4
  %409 = icmp ne i32 %408, 2
  br i1 %409, label %410, label %464

410:                                              ; preds = %407
  %411 = load i32, i32* %18, align 4
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %413, label %414

413:                                              ; preds = %410
  store i32 68, i32* @exitstat, align 4
  br label %422

414:                                              ; preds = %410
  %415 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %416 = call i32 @pclose(%struct._IO_FILE* %415)
  store i32 %416, i32* %24, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %421

418:                                              ; preds = %414
  %419 = load i32, i32* %24, align 4
  %420 = ashr i32 %419, 8
  store i32 %420, i32* @exitstat, align 4
  br label %421

421:                                              ; preds = %418, %414
  br label %422

422:                                              ; preds = %421, %413
  %423 = load i32, i32* @exitstat, align 4
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %463

425:                                              ; preds = %422
  %426 = load i32, i32* %25, align 4
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %428, label %443

428:                                              ; preds = %425
  %429 = load i32, i32* @routing, align 4
  %430 = icmp ne i32 %429, 2
  br i1 %430, label %431, label %443

431:                                              ; preds = %428
  %432 = load i32, i32* %18, align 4
  %433 = icmp ne i32 %432, 1
  br i1 %433, label %434, label %443

434:                                              ; preds = %431
  %435 = load i32, i32* @debug, align 4
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %442

437:                                              ; preds = %434
  %438 = load i8*, i8** %16, align 8
  %439 = load i32, i32* @exitstat, align 4
  %440 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %441 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i8* %438, i32 %439, i8* %440)
  br label %442

442:                                              ; preds = %437, %434
  store i32 0, i32* @exitstat, align 4
  store i32 1, i32* %25, align 4
  store i32 5, i32* %18, align 4
  br label %261

443:                                              ; preds = %431, %428, %425
  %444 = load i32, i32* @routing, align 4
  %445 = icmp eq i32 %444, 2
  br i1 %445, label %449, label %446

446:                                              ; preds = %443
  %447 = load i32, i32* %18, align 4
  %448 = icmp eq i32 %447, 1
  br i1 %448, label %449, label %462

449:                                              ; preds = %446, %443
  %450 = load i32, i32* @debug, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %456

452:                                              ; preds = %449
  %453 = load i8*, i8** %16, align 8
  %454 = load i32, i32* @exitstat, align 4
  %455 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i8* %453, i32 %454)
  br label %456

456:                                              ; preds = %452, %449
  %457 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %458 = load i64, i64* %31, align 8
  %459 = call i32 @fseek(%struct._IO_FILE* %457, i64 %458, i32 0)
  %460 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %461 = load i8*, i8** %16, align 8
  call void @return_mail(i8* %460, i8* %461)
  store i32 0, i32* @exitstat, align 4
  br label %462

462:                                              ; preds = %456, %446
  br label %463

463:                                              ; preds = %462, %422
  br label %464

464:                                              ; preds = %463, %407
  br label %465

465:                                              ; preds = %464, %328, %81
  %466 = load i32, i32* %22, align 4
  %467 = add nsw i32 %466, 1
  store i32 %467, i32* %22, align 4
  br label %52

468:                                              ; preds = %52
  %469 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %470 = call i32 @fclose(%struct._IO_FILE* %469)
  %471 = load i32, i32* @spoolmaster, align 4
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %476

473:                                              ; preds = %468
  %474 = load i8*, i8** @spoolfile, align 8
  %475 = call i32 @unlink(i8* %474) #6
  br label %476

476:                                              ; preds = %473, %468
  %477 = call i32 @unlink(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @stderrfile, i64 0, i64 0)) #6
  ret void
}

declare dso_local i32 @fseek(%struct._IO_FILE*, i64, i32) #2

declare dso_local i64 @ftell(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare dso_local i32 @unlink(i8*) #1

declare dso_local i8* @mktemp(...) #2

declare dso_local %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32, void (i32)*) #1

declare dso_local %struct._IO_FILE* @popen(i8*, i8*) #2

declare dso_local i32 @sleep(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @fileno(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare dso_local i32 @getpid() #1

declare dso_local i32 @pclose(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @return_mail(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [512 x i8], align 16
  %6 = alloca [512 x i8], align 16
  %7 = alloca [512 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca %struct._IO_FILE*, align 8
  %10 = alloca %struct._IO_FILE*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i32, i32* @debug, align 4
  %15 = icmp eq i32 %14, 1
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %18 = call i32 (i8*, i8*, ...) @sprintf(i8* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* %17) #6
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @strlen(i8* %19) #7
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 %20
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %25 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %26 = call i32 (i8*, i8*, i8*, ...) bitcast (i32 (i8*, i8*, i8*)* @islocal to i32 (i8*, i8*, i8*, ...)*)(i8* %23, i8* %24, i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %31 = call i8* @postmaster(i8* %30)
  %32 = call i32 (i8*, i8*, ...) @sprintf(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* %31) #6
  br label %38

33:                                               ; preds = %2
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %36 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %37 = call i32 (i8*, i8*, ...) @sprintf(i8* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* %35, i8* %36) #6
  br label %38

38:                                               ; preds = %33, %28
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %47, %38
  %40 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %41 = call %struct._IO_FILE* @popen(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.11, i64 0, i64 0))
  store %struct._IO_FILE* %41, %struct._IO_FILE** %10, align 8
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %43 = icmp ne %struct._IO_FILE* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %51

45:                                               ; preds = %39
  %46 = call i32 @sleep(i32 60)
  br label %47

47:                                               ; preds = %45
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  %50 = icmp slt i32 %49, 10
  br i1 %50, label %39, label %51

51:                                               ; preds = %47, %44
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %53 = icmp eq %struct._IO_FILE* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i8* %55)
  br label %111

57:                                               ; preds = %51
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @arpanows, i64 0, i64 0))
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([512 x i8], [512 x i8]* @hostdomain, i64 0, i64 0))
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.26, i64 0, i64 0))
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %65 = load i8*, i8** %3, align 8
  %66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i8* %65)
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0))
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.29, i64 0, i64 0))
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), i8* %72)
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.31, i64 0, i64 0))
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %77 = call i32 @fflush(%struct._IO_FILE* %76)
  %78 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @stderrfile, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0))
  store %struct._IO_FILE* %78, %struct._IO_FILE** %9, align 8
  %79 = icmp ne %struct._IO_FILE* %78, null
  br i1 %79, label %80, label %91

80:                                               ; preds = %57
  br label %81

81:                                               ; preds = %86, %80
  %82 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %84 = call i8* @fgets(i8* %82, i32 512, %struct._IO_FILE* %83)
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %89 = call i32 @fputs(i8* %87, %struct._IO_FILE* %88)
  br label %81

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90, %57
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %93 = call i32 @fclose(%struct._IO_FILE* %92)
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %94, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.33, i64 0, i64 0))
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %97 = load i8*, i8** %3, align 8
  %98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0), i8* %97)
  br label %99

99:                                               ; preds = %104, %91
  %100 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %102 = call i8* @fgets(i8* %100, i32 512, %struct._IO_FILE* %101)
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %107 = call i32 @fputs(i8* %105, %struct._IO_FILE* %106)
  br label %99

108:                                              ; preds = %99
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %110 = call i32 @pclose(%struct._IO_FILE* %109)
  br label %111

111:                                              ; preds = %108, %54
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare dso_local i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @unix_smail_getopt(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca [2 x i8], align 1
  %11 = alloca [2 x i8], align 1
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i32, i32* @unix_smail_getopt.sp, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %54

14:                                               ; preds = %3
  %15 = load i32, i32* @unix_smail_optind, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %38, label %18

18:                                               ; preds = %14
  %19 = load i8**, i8*** %6, align 8
  %20 = load i32, i32* @unix_smail_optind, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 45
  br i1 %27, label %38, label %28

28:                                               ; preds = %18
  %29 = load i8**, i8*** %6, align 8
  %30 = load i32, i32* @unix_smail_optind, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28, %18, %14
  store i32 -1, i32* %4, align 4
  br label %193

39:                                               ; preds = %28
  %40 = load i8**, i8*** %6, align 8
  %41 = load i32, i32* @unix_smail_optind, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0)) #7
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to i8*
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load i32, i32* @unix_smail_optind, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @unix_smail_optind, align 4
  store i32 -1, i32* %4, align 4
  br label %193

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52
  br label %54

54:                                               ; preds = %53, %3
  %55 = load i8**, i8*** %6, align 8
  %56 = load i32, i32* @unix_smail_optind, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = load i32, i32* @unix_smail_getopt.sp, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  store i32 %64, i32* %8, align 4
  store i32 %64, i32* @optopt, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp eq i32 %65, 58
  br i1 %66, label %72, label %67

67:                                               ; preds = %54
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i8* @strchr(i8* %68, i32 %69) #7
  store i8* %70, i8** %9, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %109

72:                                               ; preds = %67, %54
  %73 = load i32, i32* @unix_smail_opterr, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %72
  %76 = load i32, i32* %8, align 4
  %77 = trunc i32 %76 to i8
  %78 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  store i8 %77, i8* %78, align 1
  %79 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  store i8 10, i8* %79, align 1
  %80 = load i8**, i8*** %6, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 0
  %82 = load i8*, i8** %81, align 8
  %83 = load i8**, i8*** %6, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i64 @strlen(i8* %85) #7
  %87 = trunc i64 %86 to i32
  %88 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i32, ...)*)(i32 2, i8* %82, i32 %87)
  %89 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i32, ...)*)(i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1.36, i64 0, i64 0), i32 20)
  %90 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %91 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i32, ...)*)(i32 2, i8* %90, i32 2)
  br label %92

92:                                               ; preds = %75, %72
  %93 = load i8**, i8*** %6, align 8
  %94 = load i32, i32* @unix_smail_optind, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = load i32, i32* @unix_smail_getopt.sp, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* @unix_smail_getopt.sp, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %92
  %106 = load i32, i32* @unix_smail_optind, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* @unix_smail_optind, align 4
  store i32 1, i32* @unix_smail_getopt.sp, align 4
  br label %108

108:                                              ; preds = %105, %92
  store i32 63, i32* %4, align 4
  br label %193

109:                                              ; preds = %67
  %110 = load i8*, i8** %9, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %9, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 58
  br i1 %114, label %115, label %174

115:                                              ; preds = %109
  %116 = load i8**, i8*** %6, align 8
  %117 = load i32, i32* @unix_smail_optind, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %116, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = load i32, i32* @unix_smail_getopt.sp, align 4
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %120, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %115
  %129 = load i8**, i8*** %6, align 8
  %130 = load i32, i32* @unix_smail_optind, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* @unix_smail_optind, align 4
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i8*, i8** %129, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = load i32, i32* @unix_smail_getopt.sp, align 4
  %136 = add nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %134, i64 %137
  store i8* %138, i8** @optarg, align 8
  br label %173

139:                                              ; preds = %115
  %140 = load i32, i32* @unix_smail_optind, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* @unix_smail_optind, align 4
  %142 = load i32, i32* %5, align 4
  %143 = icmp sge i32 %141, %142
  br i1 %143, label %144, label %165

144:                                              ; preds = %139
  %145 = load i32, i32* @unix_smail_opterr, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %164

147:                                              ; preds = %144
  %148 = load i32, i32* %8, align 4
  %149 = trunc i32 %148 to i8
  %150 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  store i8 %149, i8* %150, align 1
  %151 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 1
  store i8 10, i8* %151, align 1
  %152 = load i8**, i8*** %6, align 8
  %153 = getelementptr inbounds i8*, i8** %152, i64 0
  %154 = load i8*, i8** %153, align 8
  %155 = load i8**, i8*** %6, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 0
  %157 = load i8*, i8** %156, align 8
  %158 = call i64 @strlen(i8* %157) #7
  %159 = trunc i64 %158 to i32
  %160 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i32, ...)*)(i32 2, i8* %154, i32 %159)
  %161 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i32, ...)*)(i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2.37, i64 0, i64 0), i32 33)
  %162 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %163 = call i32 (i32, i8*, i32, ...) bitcast (i32 (...)* @write to i32 (i32, i8*, i32, ...)*)(i32 2, i8* %162, i32 2)
  br label %164

164:                                              ; preds = %147, %144
  store i32 1, i32* @unix_smail_getopt.sp, align 4
  store i32 63, i32* %4, align 4
  br label %193

165:                                              ; preds = %139
  %166 = load i8**, i8*** %6, align 8
  %167 = load i32, i32* @unix_smail_optind, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* @unix_smail_optind, align 4
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i8*, i8** %166, i64 %169
  %171 = load i8*, i8** %170, align 8
  store i8* %171, i8** @optarg, align 8
  br label %172

172:                                              ; preds = %165
  br label %173

173:                                              ; preds = %172, %128
  store i32 1, i32* @unix_smail_getopt.sp, align 4
  br label %191

174:                                              ; preds = %109
  %175 = load i8**, i8*** %6, align 8
  %176 = load i32, i32* @unix_smail_optind, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8*, i8** %175, i64 %177
  %179 = load i8*, i8** %178, align 8
  %180 = load i32, i32* @unix_smail_getopt.sp, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* @unix_smail_getopt.sp, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %179, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %174
  store i32 1, i32* @unix_smail_getopt.sp, align 4
  %188 = load i32, i32* @unix_smail_optind, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* @unix_smail_optind, align 4
  br label %190

190:                                              ; preds = %187, %174
  store i8* null, i8** @optarg, align 8
  br label %191

191:                                              ; preds = %190, %173
  %192 = load i32, i32* %8, align 4
  store i32 %192, i32* %4, align 4
  br label %193

193:                                              ; preds = %191, %164, %108, %49, %38
  %194 = load i32, i32* %4, align 4
  ret i32 %194
}

declare dso_local i32 @write(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getpath(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load i32, i32* @debug, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %18, %3
  %22 = load i64, i64* @getpath.pathlength, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = load i8*, i8** @pathfile, align 8
  %26 = call %struct._IO_FILE* @fopen(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.39, i64 0, i64 0))
  store %struct._IO_FILE* %26, %struct._IO_FILE** @getpath.file, align 8
  %27 = icmp eq %struct._IO_FILE* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i8*, i8** @pathfile, align 8
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2.40, i64 0, i64 0), i8* %29)
  store i64 -1, i64* @getpath.pathlength, align 8
  br label %36

31:                                               ; preds = %24
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @getpath.file, align 8
  %33 = call i32 @fseek(%struct._IO_FILE* %32, i64 0, i32 2)
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @getpath.file, align 8
  %35 = call i64 @ftell(%struct._IO_FILE* %34)
  store i64 %35, i64* @getpath.pathlength, align 8
  br label %36

36:                                               ; preds = %31, %28
  br label %37

37:                                               ; preds = %36, %21
  %38 = load i64, i64* @getpath.pathlength, align 8
  %39 = icmp eq i64 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 72, i32* %4, align 4
  br label %211

41:                                               ; preds = %37
  store i64 0, i64* %11, align 8
  %42 = load i64, i64* @getpath.pathlength, align 8
  store i64 %42, i64* %10, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i8* @strcpy(i8* %43, i8* %44) #6
  %46 = load i8*, i8** %6, align 8
  %47 = call i8* @strcat(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.41, i64 0, i64 0)) #6
  br label %48

48:                                               ; preds = %152, %41
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* %11, align 8
  %51 = add nsw i64 %49, %50
  %52 = add nsw i64 %51, 1
  %53 = sdiv i64 %52, 2
  store i64 %53, i64* %9, align 8
  store i64 %53, i64* %8, align 8
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @getpath.file, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @fseek(%struct._IO_FILE* %54, i64 %55, i32 0)
  %57 = load i64, i64* %8, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %69, %59
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @getpath.file, align 8
  %62 = call i32 @getc(%struct._IO_FILE* %61)
  store i32 %62, i32* %13, align 4
  %63 = icmp ne i32 %62, -1
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 10
  br label %67

67:                                               ; preds = %64, %60
  %68 = phi i1 [ false, %60 ], [ %66, %64 ]
  br i1 %68, label %69, label %70

69:                                               ; preds = %67
  br label %60

70:                                               ; preds = %67
  br label %71

71:                                               ; preds = %70, %48
  %72 = load i32, i32* %13, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 68, i32* %4, align 4
  br label %211

75:                                               ; preds = %71
  store i32 0, i32* %14, align 4
  %76 = load i8*, i8** %6, align 8
  store i8* %76, i8** %12, align 8
  br label %77

77:                                               ; preds = %133, %75
  %78 = load i32, i32* %14, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %136

80:                                               ; preds = %77
  %81 = load i8*, i8** %12, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %153

86:                                               ; preds = %80
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @getpath.file, align 8
  %88 = call i32 @getc(%struct._IO_FILE* %87)
  store i32 %88, i32* %13, align 4
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 68, i32* %4, align 4
  br label %211

91:                                               ; preds = %86
  %92 = call i16** @__ctype_b_loc() #8
  %93 = load i16*, i16** %92, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i16, i16* %93, i64 %95
  %97 = load i16, i16* %96, align 2
  %98 = zext i16 %97 to i32
  %99 = and i32 %98, 256
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %91
  %102 = load i32, i32* %13, align 4
  %103 = sub nsw i32 %102, 65
  %104 = add nsw i32 %103, 97
  br label %107

105:                                              ; preds = %91
  %106 = load i32, i32* %13, align 4
  br label %107

107:                                              ; preds = %105, %101
  %108 = phi i32 [ %104, %101 ], [ %106, %105 ]
  %109 = call i16** @__ctype_b_loc() #8
  %110 = load i16*, i16** %109, align 8
  %111 = load i8*, i8** %12, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i16, i16* %110, i64 %114
  %116 = load i16, i16* %115, align 2
  %117 = zext i16 %116 to i32
  %118 = and i32 %117, 256
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %107
  %121 = load i8*, i8** %12, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = sub nsw i32 %123, 65
  %125 = add nsw i32 %124, 97
  br label %130

126:                                              ; preds = %107
  %127 = load i8*, i8** %12, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  br label %130

130:                                              ; preds = %126, %120
  %131 = phi i32 [ %125, %120 ], [ %129, %126 ]
  %132 = sub nsw i32 %108, %131
  store i32 %132, i32* %14, align 4
  br label %133

133:                                              ; preds = %130
  %134 = load i8*, i8** %12, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %12, align 8
  br label %77

136:                                              ; preds = %77
  %137 = load i64, i64* %11, align 8
  %138 = load i64, i64* %9, align 8
  %139 = icmp sge i64 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  store i32 68, i32* %4, align 4
  br label %211

141:                                              ; preds = %136
  %142 = load i32, i32* %13, align 4
  %143 = icmp ne i32 %142, -1
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load i32, i32* %14, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = load i64, i64* %9, align 8
  store i64 %148, i64* %11, align 8
  br label %152

149:                                              ; preds = %144, %141
  %150 = load i64, i64* %9, align 8
  %151 = sub nsw i64 %150, 1
  store i64 %151, i64* %10, align 8
  br label %152

152:                                              ; preds = %149, %147
  br label %48

153:                                              ; preds = %85
  br label %154

154:                                              ; preds = %166, %153
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @getpath.file, align 8
  %156 = call i32 @getc(%struct._IO_FILE* %155)
  store i32 %156, i32* %13, align 4
  %157 = icmp ne i32 %156, -1
  br i1 %157, label %158, label %164

158:                                              ; preds = %154
  %159 = load i32, i32* %13, align 4
  %160 = icmp ne i32 %159, 9
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load i32, i32* %13, align 4
  %163 = icmp ne i32 %162, 10
  br label %164

164:                                              ; preds = %161, %158, %154
  %165 = phi i1 [ false, %158 ], [ false, %154 ], [ %163, %161 ]
  br i1 %165, label %166, label %171

166:                                              ; preds = %164
  %167 = load i32, i32* %13, align 4
  %168 = trunc i32 %167 to i8
  %169 = load i8*, i8** %6, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %6, align 8
  store i8 %168, i8* %169, align 1
  br label %154

171:                                              ; preds = %164
  %172 = load i8*, i8** %6, align 8
  store i8 0, i8* %172, align 1
  %173 = load i32, i32* %13, align 4
  %174 = icmp eq i32 %173, 9
  br i1 %174, label %175, label %210

175:                                              ; preds = %171
  store i32 -1, i32* %15, align 4
  br label %176

176:                                              ; preds = %196, %175
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** @getpath.file, align 8
  %178 = call i32 @getc(%struct._IO_FILE* %177)
  store i32 %178, i32* %13, align 4
  %179 = icmp ne i32 %178, -1
  br i1 %179, label %180, label %190

180:                                              ; preds = %176
  %181 = call i16** @__ctype_b_loc() #8
  %182 = load i16*, i16** %181, align 8
  %183 = load i32, i32* %13, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i16, i16* %182, i64 %184
  %186 = load i16, i16* %185, align 2
  %187 = zext i16 %186 to i32
  %188 = and i32 %187, 2048
  %189 = icmp ne i32 %188, 0
  br label %190

190:                                              ; preds = %180, %176
  %191 = phi i1 [ false, %176 ], [ %189, %180 ]
  br i1 %191, label %192, label %203

192:                                              ; preds = %190
  %193 = load i32, i32* %15, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  store i32 0, i32* %15, align 4
  br label %196

196:                                              ; preds = %195, %192
  %197 = load i32, i32* %15, align 4
  %198 = mul nsw i32 %197, 10
  store i32 %198, i32* %15, align 4
  %199 = load i32, i32* %13, align 4
  %200 = sub nsw i32 %199, 48
  %201 = load i32, i32* %15, align 4
  %202 = add nsw i32 %201, %200
  store i32 %202, i32* %15, align 4
  br label %176

203:                                              ; preds = %190
  %204 = load i32, i32* %15, align 4
  %205 = icmp sge i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = load i32, i32* %15, align 4
  %208 = load i32*, i32** %7, align 8
  store i32 %207, i32* %208, align 4
  br label %209

209:                                              ; preds = %206, %203
  br label %210

210:                                              ; preds = %209, %171
  store i32 0, i32* %4, align 4
  br label %211

211:                                              ; preds = %210, %140, %90, %74, %40
  %212 = load i32, i32* %4, align 4
  ret i32 %212
}

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8*, i8*) #1

declare dso_local i32 @getc(%struct._IO_FILE*) #2

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @parse(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [32 x i8*], align 16
  %10 = alloca [512 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca [512 x i8], align 16
  %13 = alloca [512 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 64
  br i1 %19, label %20, label %91

20:                                               ; preds = %3
  %21 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = call i8* @strcpy(i8* %21, i8* %23) #6
  %25 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  store i8* %25, i8** %11, align 8
  br label %26

26:                                               ; preds = %55, %20
  %27 = load i8*, i8** %11, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %58

31:                                               ; preds = %26
  %32 = load i8*, i8** %11, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 58
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %58

37:                                               ; preds = %31
  %38 = load i8*, i8** %11, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 44
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i8*, i8** %11, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = call i8* @strcpy(i8* %43, i8* %45) #6
  br label %47

47:                                               ; preds = %42, %37
  %48 = load i8*, i8** %11, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 64
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i8*, i8** %11, align 8
  store i8 33, i8* %53, align 1
  br label %54

54:                                               ; preds = %52, %47
  br label %55

55:                                               ; preds = %54
  %56 = load i8*, i8** %11, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %11, align 8
  br label %26

58:                                               ; preds = %36, %26
  %59 = load i8*, i8** %11, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 58
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %179

64:                                               ; preds = %58
  %65 = load i8*, i8** %11, align 8
  store i8 0, i8* %65, align 1
  %66 = load i8*, i8** %11, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %69 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %70 = call i32 @parse(i8* %67, i8* %68, i8* %69)
  %71 = icmp ne i32 %70, 1
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  %73 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %74 = call i8* @strcat(i8* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0)) #6
  %75 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %76 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %77 = call i8* @strcat(i8* %75, i8* %76) #6
  br label %78

78:                                               ; preds = %72, %64
  %79 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %80 = call i8* @strcat(i8* %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0)) #6
  %81 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %82 = getelementptr inbounds [512 x i8], [512 x i8]* %13, i64 0, i64 0
  %83 = call i8* @strcat(i8* %81, i8* %82) #6
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i64 0, i64 0
  %86 = call i8* @strcpy(i8* %84, i8* %85) #6
  %87 = load i8*, i8** %5, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 @parse(i8* %87, i8* %88, i8* %89)
  store i32 %90, i32* %4, align 4
  br label %185

91:                                               ; preds = %3
  %92 = load i8*, i8** %5, align 8
  %93 = getelementptr inbounds [32 x i8*], [32 x i8*]* %9, i64 0, i64 0
  %94 = call i32 @ssplit(i8* %92, i8 signext 64, i8** %93)
  store i32 %94, i32* %8, align 4
  %95 = icmp sge i32 %94, 2
  br i1 %95, label %96, label %126

96:                                               ; preds = %91
  %97 = load i8*, i8** %6, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [32 x i8*], [32 x i8*]* %9, i64 0, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = call i8* @strcpy(i8* %97, i8* %102) #6
  %104 = load i8*, i8** %7, align 8
  %105 = getelementptr inbounds [32 x i8*], [32 x i8*]* %9, i64 0, i64 0
  %106 = load i8*, i8** %105, align 16
  %107 = load i32, i32* %8, align 4
  %108 = sub nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [32 x i8*], [32 x i8*]* %9, i64 0, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds [32 x i8*], [32 x i8*]* %9, i64 0, i64 0
  %113 = load i8*, i8** %112, align 16
  %114 = ptrtoint i8* %111 to i64
  %115 = ptrtoint i8* %113 to i64
  %116 = sub i64 %114, %115
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %14, align 4
  %118 = sub nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = call i8* @strncpy(i8* %104, i8* %106, i64 %119) #6
  %121 = load i8*, i8** %7, align 8
  %122 = load i32, i32* %14, align 4
  %123 = sub nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %121, i64 %124
  store i8 0, i8* %125, align 1
  store i32 2, i32* %4, align 4
  br label %185

126:                                              ; preds = %91
  %127 = load i8*, i8** %5, align 8
  %128 = getelementptr inbounds [32 x i8*], [32 x i8*]* %9, i64 0, i64 0
  %129 = call i32 @ssplit(i8* %127, i8 signext 33, i8** %128)
  %130 = icmp sgt i32 %129, 1
  br i1 %130, label %131, label %178

131:                                              ; preds = %126
  %132 = load i8*, i8** %7, align 8
  %133 = getelementptr inbounds [32 x i8*], [32 x i8*]* %9, i64 0, i64 1
  %134 = load i8*, i8** %133, align 8
  %135 = call i8* @strcpy(i8* %132, i8* %134) #6
  %136 = load i8*, i8** %6, align 8
  %137 = getelementptr inbounds [32 x i8*], [32 x i8*]* %9, i64 0, i64 0
  %138 = load i8*, i8** %137, align 16
  %139 = getelementptr inbounds [32 x i8*], [32 x i8*]* %9, i64 0, i64 1
  %140 = load i8*, i8** %139, align 8
  %141 = getelementptr inbounds [32 x i8*], [32 x i8*]* %9, i64 0, i64 0
  %142 = load i8*, i8** %141, align 16
  %143 = ptrtoint i8* %140 to i64
  %144 = ptrtoint i8* %142 to i64
  %145 = sub i64 %143, %144
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %15, align 4
  %147 = sub nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = call i8* @strncpy(i8* %136, i8* %138, i64 %148) #6
  %150 = load i8*, i8** %6, align 8
  %151 = load i32, i32* %15, align 4
  %152 = sub nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %150, i64 %153
  store i8 0, i8* %154, align 1
  %155 = load i8*, i8** %6, align 8
  %156 = getelementptr inbounds [32 x i8*], [32 x i8*]* %9, i64 0, i64 0
  %157 = call i32 @ssplit(i8* %155, i8 signext 46, i8** %156)
  store i32 %157, i32* %8, align 4
  %158 = icmp slt i32 %157, 2
  br i1 %158, label %159, label %160

159:                                              ; preds = %131
  store i32 3, i32* %4, align 4
  br label %185

160:                                              ; preds = %131
  %161 = load i32, i32* %8, align 4
  %162 = sub nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [32 x i8*], [32 x i8*]* %9, i64 0, i64 %163
  %165 = load i8*, i8** %164, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 0
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %160
  %171 = load i32, i32* %8, align 4
  %172 = sub nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [32 x i8*], [32 x i8*]* %9, i64 0, i64 %173
  %175 = load i8*, i8** %174, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 -1
  store i8 0, i8* %176, align 1
  br label %177

177:                                              ; preds = %170, %160
  store i32 2, i32* %4, align 4
  br label %185

178:                                              ; preds = %126
  br label %179

179:                                              ; preds = %178, %63
  %180 = load i8*, i8** %7, align 8
  %181 = load i8*, i8** %5, align 8
  %182 = call i8* @strcpy(i8* %180, i8* %181) #6
  %183 = load i8*, i8** %6, align 8
  %184 = call i8* @strcpy(i8* %183, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.43, i64 0, i64 0)) #6
  store i32 1, i32* %4, align 4
  br label %185

185:                                              ; preds = %179, %177, %159, %96, %78
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ssplit(i8* %0, i8 signext %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8** %2, i8*** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %30, %3
  %10 = load i8*, i8** %4, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %9
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %7, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = load i8**, i8*** %6, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i32 1
  store i8** %21, i8*** %6, align 8
  store i8* %19, i8** %20, align 8
  br label %22

22:                                               ; preds = %16, %13
  %23 = load i8, i8* %5, align 1
  %24 = sext i8 %23 to i32
  %25 = load i8*, i8** %4, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %24, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %22
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %4, align 8
  br label %9

33:                                               ; preds = %9
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = load i8**, i8*** %6, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i32 1
  store i8** %41, i8*** %6, align 8
  store i8* %39, i8** %40, align 8
  br label %42

42:                                               ; preds = %36, %33
  %43 = load i8**, i8*** %6, align 8
  store i8* null, i8** %43, align 8
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8*, i8*, i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @build(i8* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %9 = load i32, i32* %7, align 4
  switch i32 %9, label %24 [
    i32 1, label %10
    i32 3, label %14
    i32 2, label %19
  ]

10:                                               ; preds = %4
  %11 = load i8*, i8** %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.44, i64 0, i64 0), i8* %12) #6
  br label %24

14:                                               ; preds = %4
  %15 = load i8*, i8** %8, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 (i8*, i8*, ...) @sprintf(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.45, i64 0, i64 0), i8* %16, i8* %17) #6
  br label %24

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 (i8*, i8*, ...) @sprintf(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4.46, i64 0, i64 0), i8* %21, i8* %22) #6
  br label %24

24:                                               ; preds = %19, %14, %10, %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @islocal(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @parse(i8* %9, i8* %10, i8* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %27, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* %16, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @hostdomain, i64 0, i64 0))
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %15
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* %20, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @hostname, i64 0, i64 0))
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* %24, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @hostuucp, i64 0, i64 0))
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %19, %15, %3
  store i32 1, i32* %4, align 4
  br label %29

28:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %28, %27
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @spool(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca [512 x i8], align 16
  %6 = alloca [512 x i8], align 16
  %7 = alloca [512 x i8], align 16
  %8 = alloca [512 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %9 = load i8*, i8** @spoolfile, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load i8*, i8** @spoolfile, align 8
  %13 = load i8*, i8** @spool.tmpf, align 8
  %14 = load i8*, i8** @spool.tmpf, align 8
  %15 = call i64 @strlen(i8* %14) #7
  %16 = sub i64 %15, 6
  %17 = call i32 @strncmp(i8* %12, i8* %13, i64 %16) #7
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %11
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = load i8*, i8** @spoolfile, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6.49, i64 0, i64 0), i8* %21)
  call void @exit(i32 75) #9
  unreachable

23:                                               ; preds = %11, %2
  %24 = call i32 (...) bitcast (void ()* @setdates to i32 (...)*)()
  %25 = load i8*, i8** @spoolfile, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %92

27:                                               ; preds = %23
  %28 = load i8*, i8** @spool.tmpf, align 8
  %29 = call i8* @strcpy(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @spool.splbuf, i64 0, i64 0), i8* %28) #6
  store i8* %29, i8** @spoolfile, align 8
  %30 = load i8*, i8** @spoolfile, align 8
  %31 = call i8* (i8*, ...) bitcast (i8* (...)* @mktemp to i8* (i8*, ...)*)(i8* %30)
  %32 = load i8*, i8** @spoolfile, align 8
  %33 = call %struct._IO_FILE* @fopen(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7.50, i64 0, i64 0))
  store %struct._IO_FILE* %33, %struct._IO_FILE** @spoolfp, align 8
  %34 = icmp eq %struct._IO_FILE* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %37 = load i8*, i8** @spoolfile, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8.51, i64 0, i64 0), i8* %37)
  call void @exit(i32 73) #9
  unreachable

39:                                               ; preds = %27
  store i32 1, i32* @spoolmaster, align 4
  %40 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %41 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  call void @rline(i8* %40, i8* %41)
  %42 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  %43 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %44 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %45 = call i32 @islocal(i8* %42, i8* %43, i8* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = load i8*, i8** @from_addr, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %63

50:                                               ; preds = %47, %39
  %51 = load i32, i32* %3, align 4
  %52 = load i8**, i8*** %4, align 8
  %53 = getelementptr inbounds [512 x i8], [512 x i8]* %6, i64 0, i64 0
  call void @def_headers(i32 %51, i8** %52, i8* %53)
  %54 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  call void @scanheaders(i8* %54)
  call void @compheaders()
  %55 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %56 = load i8, i8* %55, align 16
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 10
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %61 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.52, i64 0, i64 0), %struct._IO_FILE* %60)
  br label %62

62:                                               ; preds = %59, %50
  br label %63

63:                                               ; preds = %62, %47
  br label %64

64:                                               ; preds = %86, %63
  %65 = load i8*, i8** @ieof, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %87

67:                                               ; preds = %64
  %68 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %70 = call i32 @fputs(i8* %68, %struct._IO_FILE* %69)
  %71 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %73 = call i8* @fgets(i8* %71, i32 512, %struct._IO_FILE* %72)
  %74 = icmp eq i8* %73, null
  br i1 %74, label %85, label %75

75:                                               ; preds = %67
  %76 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %77 = load i8, i8* %76, align 16
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 46
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 10
  br i1 %84, label %85, label %86

85:                                               ; preds = %80, %67
  store i8* null, i8** @ieof, align 8
  br label %86

86:                                               ; preds = %85, %80, %75
  br label %64

87:                                               ; preds = %64
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %89 = call i32 @fclose(%struct._IO_FILE* %88)
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %91 = call i32 @fclose(%struct._IO_FILE* %90)
  br label %92

92:                                               ; preds = %87, %23
  %93 = load i8*, i8** @spoolfile, align 8
  %94 = call %struct._IO_FILE* @fopen(i8* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.53, i64 0, i64 0))
  store %struct._IO_FILE* %94, %struct._IO_FILE** @spoolfp, align 8
  %95 = icmp eq %struct._IO_FILE* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %98 = load i8*, i8** @spoolfile, align 8
  %99 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11.54, i64 0, i64 0), i8* %98)
  call void @exit(i32 75) #9
  unreachable

100:                                              ; preds = %92
  ret void
}

; Function Attrs: noreturn
declare dso_local void @exit(i32) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @rline(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [16 x i8*], align 16
  %7 = alloca [512 x i8], align 16
  %8 = alloca [512 x i8], align 16
  %9 = alloca [512 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [512 x i8], align 16
  %15 = alloca [512 x i8], align 16
  %16 = alloca [128 x i8*], align 16
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %22 = load i32, i32* @spoolmaster, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %275

25:                                               ; preds = %2
  %26 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %26, align 16
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  store i8 0, i8* %29, align 16
  br label %30

30:                                               ; preds = %120, %25
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %33 = call i8* @strcpy(i8* %31, i8* %32) #6
  %34 = load i8*, i8** @ieof, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %125

37:                                               ; preds = %30
  %38 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %40 = call i8* @fgets(i8* %38, i32 512, %struct._IO_FILE* %39)
  %41 = icmp eq i8* %40, null
  br i1 %41, label %52, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %44 = load i8, i8* %43, align 16
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 46
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 10
  br i1 %51, label %52, label %53

52:                                               ; preds = %47, %37
  store i8* null, i8** @ieof, align 8
  br label %125

53:                                               ; preds = %47, %42
  %54 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %55 = call i32 @strncmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12.72, i64 0, i64 0), i8* %54, i64 5) #7
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %59 = call i32 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.73, i64 0, i64 0), i8* %58, i64 6) #7
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %125

62:                                               ; preds = %57, %53
  %63 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %64 = call i8* @strchr(i8* %63, i32 10) #7
  store i8* %64, i8** %11, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i8*, i8** %11, align 8
  store i8 0, i8* %67, align 1
  br label %68

68:                                               ; preds = %66, %62
  %69 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %70 = getelementptr inbounds [16 x i8*], [16 x i8*]* %6, i64 0, i64 0
  %71 = call i32 @ssplit(i8* %69, i8 signext 32, i8** %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp sgt i32 %72, 3
  br i1 %73, label %74, label %92

74:                                               ; preds = %68
  %75 = load i32, i32* %5, align 4
  %76 = sub nsw i32 %75, 3
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [16 x i8*], [16 x i8*]* %6, i64 0, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @strncmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14.74, i64 0, i64 0), i8* %79, i64 12) #7
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %74
  %83 = load i8*, i8** %3, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [16 x i8*], [16 x i8*]* %6, i64 0, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = call i8* @strcat(i8* %83, i8* %88) #6
  %90 = load i8*, i8** %3, align 8
  %91 = call i8* @strcat(i8* %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0)) #6
  br label %92

92:                                               ; preds = %82, %74, %68
  %93 = load i32, i32* %5, align 4
  %94 = icmp slt i32 %93, 2
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %125

96:                                               ; preds = %92
  %97 = getelementptr inbounds [16 x i8*], [16 x i8*]* %6, i64 0, i64 1
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %19, align 8
  %99 = load i8*, i8** %19, align 8
  %100 = call i8* @strchr(i8* %99, i32 32) #7
  store i8* %100, i8** %20, align 8
  %101 = load i8*, i8** %20, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i8*, i8** %20, align 8
  store i8 0, i8* %104, align 1
  br label %105

105:                                              ; preds = %103, %96
  %106 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %107 = load i8*, i8** %19, align 8
  %108 = call i8* @strcpy(i8* %106, i8* %107) #6
  br label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %111 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %112 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %113 = call i32 @parse(i8* %110, i8* %111, i8* %112)
  %114 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %115 = load i8, i8* %114, align 16
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %109
  store i32 1, i32* %10, align 4
  br label %120

119:                                              ; preds = %109
  store i32 3, i32* %10, align 4
  br label %120

120:                                              ; preds = %119, %118
  %121 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %122 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i64 0, i64 0
  %123 = load i32, i32* %10, align 4
  %124 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  call void @build(i8* %121, i8* %122, i32 %123, i8* %124)
  br label %30

125:                                              ; preds = %95, %61, %52, %36
  %126 = load i8*, i8** %3, align 8
  %127 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %128 = call i8* @strcat(i8* %126, i8* %127) #6
  %129 = load i8*, i8** %3, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 0
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %125
  %135 = call i32 @getuid() #6
  %136 = call i8* (i32, ...) bitcast (i8* (i32)* @pwuid to i8* (i32, ...)*)(i32 %135)
  store i8* %136, i8** %21, align 8
  %137 = icmp eq i8* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %134
  %139 = load i8*, i8** %3, align 8
  %140 = call i8* @strcpy(i8* %139, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15.75, i64 0, i64 0)) #6
  br label %145

141:                                              ; preds = %134
  %142 = load i8*, i8** %3, align 8
  %143 = load i8*, i8** %21, align 8
  %144 = call i8* @strcpy(i8* %142, i8* %143) #6
  br label %145

145:                                              ; preds = %141, %138
  br label %146

146:                                              ; preds = %145, %125
  %147 = load i8*, i8** %3, align 8
  %148 = getelementptr inbounds [128 x i8*], [128 x i8*]* %16, i64 0, i64 0
  %149 = call i32 @ssplit(i8* %147, i8 signext 33, i8** %148)
  store i32 %149, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %150

150:                                              ; preds = %189, %146
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* %12, align 4
  %153 = sub nsw i32 %152, 1
  %154 = icmp slt i32 %151, %153
  br i1 %154, label %155, label %192

155:                                              ; preds = %150
  %156 = load i32, i32* %13, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [128 x i8*], [128 x i8*]* %16, i64 0, i64 %157
  %159 = load i8*, i8** %158, align 8
  store i8* %159, i8** %18, align 8
  %160 = load i8*, i8** %18, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %155
  br label %189

165:                                              ; preds = %155
  %166 = load i32, i32* %13, align 4
  %167 = add nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [128 x i8*], [128 x i8*]* %16, i64 0, i64 %168
  %170 = load i8*, i8** %169, align 8
  store i8* %170, i8** %17, align 8
  %171 = load i8*, i8** %17, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 -1
  store i8* %172, i8** %17, align 8
  %173 = load i8*, i8** %17, align 8
  store i8 0, i8* %173, align 1
  %174 = load i8*, i8** %17, align 8
  %175 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %175, i8** %17, align 8
  %176 = load i32, i32* %13, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [128 x i8*], [128 x i8*]* %16, i64 0, i64 %177
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* %179, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @hostdomain, i64 0, i64 0))
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %165
  %183 = load i32, i32* %13, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [128 x i8*], [128 x i8*]* %16, i64 0, i64 %184
  %186 = load i8*, i8** %185, align 8
  %187 = call i8* @strcpy(i8* %186, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @hostname, i64 0, i64 0)) #6
  br label %188

188:                                              ; preds = %182, %165
  br label %189

189:                                              ; preds = %188, %164
  %190 = load i32, i32* %13, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %13, align 4
  br label %150

192:                                              ; preds = %150
  store i32 0, i32* %13, align 4
  br label %193

193:                                              ; preds = %215, %192
  %194 = load i32, i32* %13, align 4
  %195 = load i32, i32* %12, align 4
  %196 = sub nsw i32 %195, 2
  %197 = icmp slt i32 %194, %196
  br i1 %197, label %198, label %218

198:                                              ; preds = %193
  %199 = load i32, i32* %13, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [128 x i8*], [128 x i8*]* %16, i64 0, i64 %200
  %202 = load i8*, i8** %201, align 8
  store i8* %202, i8** %18, align 8
  %203 = load i32, i32* %13, align 4
  %204 = add nsw i32 %203, 1
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [128 x i8*], [128 x i8*]* %16, i64 0, i64 %205
  %207 = load i8*, i8** %206, align 8
  store i8* %207, i8** %17, align 8
  %208 = load i8*, i8** %18, align 8
  %209 = load i8*, i8** %17, align 8
  %210 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* %208, i8* %209)
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %198
  %213 = load i8*, i8** %18, align 8
  store i8 0, i8* %213, align 1
  br label %214

214:                                              ; preds = %212, %198
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %13, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %13, align 4
  br label %193

218:                                              ; preds = %193
  %219 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  store i8 0, i8* %219, align 16
  store i32 0, i32* %13, align 4
  br label %220

220:                                              ; preds = %256, %218
  %221 = load i32, i32* %13, align 4
  %222 = load i32, i32* %12, align 4
  %223 = sub nsw i32 %222, 1
  %224 = icmp slt i32 %221, %223
  br i1 %224, label %225, label %259

225:                                              ; preds = %220
  %226 = load i32, i32* %13, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [128 x i8*], [128 x i8*]* %16, i64 0, i64 %227
  %229 = load i8*, i8** %228, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 0
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %246, label %234

234:                                              ; preds = %225
  %235 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %236 = load i8, i8* %235, align 16
  %237 = sext i8 %236 to i32
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %247

239:                                              ; preds = %234
  %240 = load i32, i32* %13, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [128 x i8*], [128 x i8*]* %16, i64 0, i64 %241
  %243 = load i8*, i8** %242, align 8
  %244 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* %243, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @hostname, i64 0, i64 0))
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %239, %225
  br label %256

247:                                              ; preds = %239, %234
  %248 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %249 = load i32, i32* %13, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [128 x i8*], [128 x i8*]* %16, i64 0, i64 %250
  %252 = load i8*, i8** %251, align 8
  %253 = call i8* @strcat(i8* %248, i8* %252) #6
  %254 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %255 = call i8* @strcat(i8* %254, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0)) #6
  br label %256

256:                                              ; preds = %247, %246
  %257 = load i32, i32* %13, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %13, align 4
  br label %220

259:                                              ; preds = %220
  %260 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %261 = load i32, i32* %13, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [128 x i8*], [128 x i8*]* %16, i64 0, i64 %262
  %264 = load i8*, i8** %263, align 8
  %265 = call i8* @strcat(i8* %260, i8* %264) #6
  %266 = load i8*, i8** %3, align 8
  %267 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %268 = call i8* @strcpy(i8* %266, i8* %267) #6
  %269 = load i8*, i8** %4, align 8
  %270 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i64 0, i64 0
  %271 = call i8* @strcpy(i8* %269, i8* %270) #6
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %273 = load i8*, i8** %3, align 8
  %274 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %272, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16.56, i64 0, i64 0), i8* %273)
  br label %275

275:                                              ; preds = %259, %24
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @def_headers(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i8**, i8*** %5, align 8
  call void @def_to(i32 %7, i8** %8)
  call void @def_date()
  %9 = load i8*, i8** %6, align 8
  call void @def_from(i8* %9)
  call void @def_mid()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scanheaders(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %57, %1
  %5 = load i8*, i8** @ieof, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %58

7:                                                ; preds = %4
  %8 = load i8*, i8** %2, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 10
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  br label %58

14:                                               ; preds = %7
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %14
  %18 = load i8*, i8** %2, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 32
  br i1 %22, label %23, label %36

23:                                               ; preds = %17
  %24 = load i8*, i8** %2, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 9
  br i1 %28, label %29, label %36

29:                                               ; preds = %23, %14
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 @isheader(i8* %30)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %58

34:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  %35 = load i8*, i8** %2, align 8
  call void @haveheaders(i8* %35)
  br label %36

36:                                               ; preds = %34, %23, %17
  %37 = load i8*, i8** %2, align 8
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %39 = call i32 @fputs(i8* %37, %struct._IO_FILE* %38)
  %40 = load i8*, i8** %2, align 8
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %42 = call i8* @fgets(i8* %40, i32 512, %struct._IO_FILE* %41)
  %43 = icmp eq i8* %42, null
  br i1 %43, label %56, label %44

44:                                               ; preds = %36
  %45 = load i8*, i8** %2, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 46
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load i8*, i8** %2, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 10
  br i1 %55, label %56, label %57

56:                                               ; preds = %50, %36
  store i8* null, i8** @ieof, align 8
  br label %57

57:                                               ; preds = %56, %50, %44
  br label %4

58:                                               ; preds = %33, %13, %4
  %59 = load i8*, i8** %2, align 8
  %60 = call i32 @isheader(i8* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i8*, i8** %2, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  store i8 0, i8* %64, align 1
  br label %65

65:                                               ; preds = %62, %58
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @compheaders() #0 {
  %1 = alloca %struct.reqheaders*, align 8
  store %struct.reqheaders* getelementptr inbounds ([5 x %struct.reqheaders], [5 x %struct.reqheaders]* @reqtab, i64 0, i64 0), %struct.reqheaders** %1, align 8
  br label %2

2:                                                ; preds = %20, %0
  %3 = load %struct.reqheaders*, %struct.reqheaders** %1, align 8
  %4 = getelementptr inbounds %struct.reqheaders, %struct.reqheaders* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %23

7:                                                ; preds = %2
  %8 = load %struct.reqheaders*, %struct.reqheaders** %1, align 8
  %9 = getelementptr inbounds %struct.reqheaders, %struct.reqheaders* %8, i32 0, i32 2
  %10 = load i8, i8* %9, align 8
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 89
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @spoolfp, align 8
  %15 = load %struct.reqheaders*, %struct.reqheaders** %1, align 8
  %16 = getelementptr inbounds %struct.reqheaders, %struct.reqheaders* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16.56, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %13, %7
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.reqheaders*, %struct.reqheaders** %1, align 8
  %22 = getelementptr inbounds %struct.reqheaders, %struct.reqheaders* %21, i32 1
  store %struct.reqheaders* %22, %struct.reqheaders** %1, align 8
  br label %2

23:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @isheader(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i8* @strchr(i8* %5, i32 58) #7
  store i8* %6, i8** %4, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp eq i8* %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %33

13:                                               ; preds = %8
  br label %14

14:                                               ; preds = %29, %13
  %15 = load i8*, i8** %3, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = load i8*, i8** %3, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp slt i32 %21, 33
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load i8*, i8** %3, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp sgt i32 %26, 126
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %18
  store i32 0, i32* %2, align 4
  br label %33

29:                                               ; preds = %23
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %3, align 8
  br label %14

32:                                               ; preds = %14
  store i32 1, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %28, %12
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @haveheaders(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.reqheaders*, align 8
  store i8* %0, i8** %2, align 8
  store %struct.reqheaders* getelementptr inbounds ([5 x %struct.reqheaders], [5 x %struct.reqheaders]* @reqtab, i64 0, i64 0), %struct.reqheaders** %3, align 8
  br label %4

4:                                                ; preds = %35, %1
  %5 = load %struct.reqheaders*, %struct.reqheaders** %3, align 8
  %6 = getelementptr inbounds %struct.reqheaders, %struct.reqheaders* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %38

9:                                                ; preds = %4
  %10 = load %struct.reqheaders*, %struct.reqheaders** %3, align 8
  %11 = getelementptr inbounds %struct.reqheaders, %struct.reqheaders* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = load %struct.reqheaders*, %struct.reqheaders** %3, align 8
  %15 = getelementptr inbounds %struct.reqheaders, %struct.reqheaders* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @strlen(i8* %16) #7
  %18 = call i32 (i8*, i8*, i64, ...) bitcast (i32 (i8*, i8*, i32)* @strncmpic to i32 (i8*, i8*, i64, ...)*)(i8* %12, i8* %13, i64 %17)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %9
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 (i8*, i8*, i32, ...) bitcast (i32 (i8*, i8*, i32)* @strncmpic to i32 (i8*, i8*, i32, ...)*)(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17.59, i64 0, i64 0), i8* %21, i32 5)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load i8*, i8** @from_addr, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i8*, i8** %2, align 8
  %29 = load i8*, i8** @from_addr, align 8
  %30 = call i32 (i8*, i8*, ...) @sprintf(i8* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18.61, i64 0, i64 0), i8* %29) #6
  br label %31

31:                                               ; preds = %27, %24, %20
  %32 = load %struct.reqheaders*, %struct.reqheaders** %3, align 8
  %33 = getelementptr inbounds %struct.reqheaders, %struct.reqheaders* %32, i32 0, i32 2
  store i8 89, i8* %33, align 8
  br label %38

34:                                               ; preds = %9
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.reqheaders*, %struct.reqheaders** %3, align 8
  %37 = getelementptr inbounds %struct.reqheaders, %struct.reqheaders* %36, i32 1
  store %struct.reqheaders* %37, %struct.reqheaders** %3, align 8
  br label %4

38:                                               ; preds = %31, %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @def_to(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i8* getelementptr inbounds ([512 x i8], [512 x i8]* @toline, i64 0, i64 0), i8** %7, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = call i8* @strcpy(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25.68, i64 0, i64 0)) #6
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %66, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %69

14:                                               ; preds = %10
  %15 = load i8*, i8** %7, align 8
  %16 = load i8**, i8*** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = call i8* @strcat(i8* %15, i8* %20) #6
  %22 = load i8**, i8*** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @strchr(i8* %26, i32 33) #7
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %14
  %30 = load i8**, i8*** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i8* @strchr(i8* %34, i32 64) #7
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load i8*, i8** %7, align 8
  %39 = call i8* @strcat(i8* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26.69, i64 0, i64 0)) #6
  %40 = load i8*, i8** %7, align 8
  %41 = call i8* @strcat(i8* %40, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @hostdomain, i64 0, i64 0)) #6
  br label %42

42:                                               ; preds = %37, %29, %14
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  %45 = load i32, i32* %3, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %42
  %48 = load i8*, i8** %7, align 8
  %49 = call i64 @strlen(i8* %48) #7
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp sgt i32 %51, 50
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load i8*, i8** %7, align 8
  %55 = call i8* @strcat(i8* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27.70, i64 0, i64 0)) #6
  %56 = load i8*, i8** %7, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = call i64 @strlen(i8* %57) #7
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  store i8* %59, i8** %7, align 8
  %60 = load i8*, i8** %7, align 8
  store i8 0, i8* %60, align 1
  store i32 8, i32* %6, align 4
  br label %64

61:                                               ; preds = %47
  %62 = load i8*, i8** %7, align 8
  %63 = call i8* @strcat(i8* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28.71, i64 0, i64 0)) #6
  br label %64

64:                                               ; preds = %61, %53
  br label %65

65:                                               ; preds = %64, %42
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %10

69:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @def_date() #0 {
  %1 = call i8* @strcpy(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @dateline, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19.67, i64 0, i64 0)) #6
  %2 = call i8* @strcat(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @dateline, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @arpanows, i64 0, i64 0)) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @def_from(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [512 x i8], align 16
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** @from_addr, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i8*, i8** @from_addr, align 8
  %10 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @fromline, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21.63, i64 0, i64 0), i8* %9) #6
  br label %45

11:                                               ; preds = %1
  %12 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  store i8 0, i8* %12, align 16
  %13 = call i8* (i8*, ...) bitcast (i8* (...)* @getenv to i8* (i8*, ...)*)(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22.64, i64 0, i64 0))
  store i8* %13, i8** %3, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %17 = load i8*, i8** %3, align 8
  %18 = call i8* @strcpy(i8* %16, i8* %17) #6
  br label %33

19:                                               ; preds = %11
  %20 = call i32 @getuid() #6
  %21 = call i8* (i32, ...) bitcast (i8* (i32)* @pwuid to i8* (i32, ...)*)(i32 %20)
  store i8* %21, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = call i8* (i8*, ...) bitcast (i8* (i8*)* @pwfnam to i8* (i8*, ...)*)(i8* %24)
  store i8* %25, i8** %3, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %29 = load i8*, i8** %3, align 8
  %30 = call i8* @strcpy(i8* %28, i8* %29) #6
  br label %31

31:                                               ; preds = %27, %23
  br label %32

32:                                               ; preds = %31, %19
  br label %33

33:                                               ; preds = %32, %15
  %34 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %35 = load i8, i8* %34, align 16
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i8*, i8** %2, align 8
  %40 = getelementptr inbounds [512 x i8], [512 x i8]* %4, i64 0, i64 0
  %41 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @fromline, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23.65, i64 0, i64 0), i8* %39, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @hostdomain, i64 0, i64 0), i8* %40) #6
  br label %45

42:                                               ; preds = %33
  %43 = load i8*, i8** %2, align 8
  %44 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @fromline, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24.66, i64 0, i64 0), i8* %43, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @hostdomain, i64 0, i64 0)) #6
  br label %45

45:                                               ; preds = %42, %38, %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @def_mid() #0 {
  %1 = load %struct.tm*, %struct.tm** @gmt, align 8
  %2 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 5
  %3 = load i32, i32* %2, align 4
  %4 = load %struct.tm*, %struct.tm** @gmt, align 8
  %5 = getelementptr inbounds %struct.tm, %struct.tm* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 8
  %7 = add nsw i32 %6, 1
  %8 = load %struct.tm*, %struct.tm** @gmt, align 8
  %9 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.tm*, %struct.tm** @gmt, align 8
  %12 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.tm*, %struct.tm** @gmt, align 8
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @getpid() #6
  %18 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @midline, i64 0, i64 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.20.62, i64 0, i64 0), i32 %3, i32 %7, i32 %10, i32 %13, i32 %16, i32 %17, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @hostdomain, i64 0, i64 0)) #6
  ret void
}

declare dso_local i8* @getenv(...) #2

; Function Attrs: nounwind
declare dso_local i32 @getuid() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [500 x i8*], align 16
  %7 = alloca [500 x i8*], align 16
  %8 = alloca [500 x i32], align 16
  %9 = alloca [500 x i32], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca [512 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %12, align 4
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3.110, i64 0, i64 0), i8** %15, align 8
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i8* @strrchr(i8* %20, i32 47) #7
  store i8* %21, i8** %10, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %10, align 8
  br label %30

27:                                               ; preds = %2
  %28 = load i8*, i8** %10, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %10, align 8
  br label %30

30:                                               ; preds = %27, %23
  %31 = load i8*, i8** %10, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 114
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* @handle, align 4
  br label %36

36:                                               ; preds = %35, %30
  br label %37

37:                                               ; preds = %107, %36
  %38 = load i32, i32* %4, align 4
  %39 = load i8**, i8*** %5, align 8
  %40 = load i8*, i8** %15, align 8
  %41 = call i32 (i32, i8**, i8*, ...) bitcast (i32 (i32, i8**, i8*)* @unix_smail_getopt to i32 (i32, i8**, i8*, ...)*)(i32 %38, i8** %39, i8* %40)
  store i32 %41, i32* %11, align 4
  %42 = icmp ne i32 %41, -1
  br i1 %42, label %43, label %108

43:                                               ; preds = %37
  %44 = load i32, i32* %11, align 4
  switch i32 %44, label %103 [
    i32 100, label %45
    i32 118, label %46
    i32 65, label %47
    i32 70, label %48
    i32 114, label %50
    i32 82, label %51
    i32 108, label %52
    i32 76, label %53
    i32 102, label %54
    i32 112, label %56
    i32 117, label %58
    i32 97, label %60
    i32 110, label %62
    i32 72, label %64
    i32 104, label %67
    i32 109, label %70
    i32 99, label %86
    i32 113, label %87
  ]

45:                                               ; preds = %43
  store i32 2, i32* @debug, align 4
  br label %107

46:                                               ; preds = %43
  store i32 1, i32* @debug, align 4
  br label %107

47:                                               ; preds = %43
  store i32 1, i32* %12, align 4
  br label %107

48:                                               ; preds = %43
  %49 = load i8*, i8** @optarg, align 8
  store i8* %49, i8** @from_addr, align 8
  br label %107

50:                                               ; preds = %43
  store i32 1, i32* @routing, align 4
  br label %107

51:                                               ; preds = %43
  store i32 2, i32* @routing, align 4
  br label %107

52:                                               ; preds = %43
  store i32 1, i32* @handle, align 4
  br label %107

53:                                               ; preds = %43
  store i32 2, i32* @handle, align 4
  br label %107

54:                                               ; preds = %43
  %55 = load i8*, i8** @optarg, align 8
  store i8* %55, i8** @spoolfile, align 8
  br label %107

56:                                               ; preds = %43
  %57 = load i8*, i8** @optarg, align 8
  store i8* %57, i8** @pathfile, align 8
  br label %107

58:                                               ; preds = %43
  %59 = load i8*, i8** @optarg, align 8
  store i8* %59, i8** @uuxargs, align 8
  br label %107

60:                                               ; preds = %43
  %61 = load i8*, i8** @optarg, align 8
  store i8* %61, i8** @aliasfile, align 8
  br label %107

62:                                               ; preds = %43
  %63 = load i8*, i8** @optarg, align 8
  store i8* %63, i8** @fnlist, align 8
  br label %107

64:                                               ; preds = %43
  %65 = load i8*, i8** @optarg, align 8
  %66 = call i8* @strcpy(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @hostdomain, i64 0, i64 0), i8* %65) #6
  br label %107

67:                                               ; preds = %43
  %68 = load i8*, i8** @optarg, align 8
  %69 = call i8* @strcpy(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @hostname, i64 0, i64 0), i8* %68) #6
  br label %107

70:                                               ; preds = %43
  %71 = call i16** @__ctype_b_loc() #8
  %72 = load i16*, i16** %71, align 8
  %73 = load i8*, i8** @optarg, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i16, i16* %72, i64 %76
  %78 = load i16, i16* %77, align 2
  %79 = zext i16 %78 to i32
  %80 = and i32 %79, 2048
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %70
  %83 = load i8*, i8** @optarg, align 8
  %84 = call i32 @atoi(i8* %83) #7
  store i32 %84, i32* @maxnoqueue, align 4
  br label %85

85:                                               ; preds = %82, %70
  br label %107

86:                                               ; preds = %43
  store i32 1, i32* @getcost, align 4
  br label %107

87:                                               ; preds = %43
  %88 = call i16** @__ctype_b_loc() #8
  %89 = load i16*, i16** %88, align 8
  %90 = load i8*, i8** @optarg, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i16, i16* %89, i64 %93
  %95 = load i16, i16* %94, align 2
  %96 = zext i16 %95 to i32
  %97 = and i32 %96, 2048
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %87
  %100 = load i8*, i8** @optarg, align 8
  %101 = call i32 @atoi(i8* %100) #7
  store i32 %101, i32* @queuecost, align 4
  br label %102

102:                                              ; preds = %99, %87
  br label %107

103:                                              ; preds = %43
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %105 = load i8*, i8** %15, align 8
  %106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %104, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.111, i64 0, i64 0), i8* %105)
  call void @exit(i32 64) #10
  unreachable

107:                                              ; preds = %102, %86, %85, %67, %64, %62, %60, %58, %56, %54, %53, %52, %51, %50, %48, %47, %46, %45
  br label %37

108:                                              ; preds = %37
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @unix_smail_optind, align 4
  %111 = icmp sle i32 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %114 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %113, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5.112, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6.113, i64 0, i64 0))
  call void @exit(i32 64) #10
  unreachable

115:                                              ; preds = %108
  %116 = call i32 (...) bitcast (void ()* @getmynames to i32 (...)*)()
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @unix_smail_optind, align 4
  %119 = sub nsw i32 %117, %118
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %115
  %123 = load i32, i32* %13, align 4
  %124 = load i8**, i8*** %5, align 8
  %125 = load i32, i32* @unix_smail_optind, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %124, i64 %126
  call void (i32, i8**, ...) bitcast (void (i32, i8**)* @spool to void (i32, i8**, ...)*)(i32 %123, i8** %127)
  br label %128

128:                                              ; preds = %122, %115
  %129 = load i8**, i8*** %5, align 8
  %130 = load i32, i32* @unix_smail_optind, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %129, i64 %131
  %133 = call i8** (i32*, i8**, ...) bitcast (i8** (i32*, i8**)* @alias to i8** (i32*, i8**, ...)*)(i32* %13, i8** %132)
  store i8** %133, i8*** %14, align 8
  %134 = load i32, i32* %13, align 4
  %135 = load i8**, i8*** %14, align 8
  %136 = getelementptr inbounds [500 x i8*], [500 x i8*]* %6, i64 0, i64 0
  %137 = getelementptr inbounds [500 x i8*], [500 x i8*]* %7, i64 0, i64 0
  %138 = getelementptr inbounds [500 x i32], [500 x i32]* %9, i64 0, i64 0
  %139 = getelementptr inbounds [500 x i32], [500 x i32]* %8, i64 0, i64 0
  %140 = call i32 (i32, i8**, i8**, i8**, i32*, i32*, ...) bitcast (void (i32, i8**, i8**, i8**, i32*, i32*)* @map to i32 (i32, i8**, i8**, i8**, i32*, i32*, ...)*)(i32 %134, i8** %135, i8** %136, i8** %137, i32* %138, i32* %139)
  %141 = load i32, i32* %12, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %192

143:                                              ; preds = %128
  %144 = load i32, i32* %13, align 4
  %145 = sub nsw i32 %144, 1
  store i32 %145, i32* %16, align 4
  br label %146

146:                                              ; preds = %187, %143
  %147 = load i32, i32* %16, align 4
  %148 = icmp sge i32 %147, 0
  br i1 %148, label %149, label %190

149:                                              ; preds = %146
  %150 = load i32, i32* %16, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [500 x i32], [500 x i32]* %9, i64 0, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %149
  %156 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %157 = load i8**, i8*** %14, align 8
  %158 = load i32, i32* %16, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8*, i8** %157, i64 %159
  %161 = load i8*, i8** %160, align 8
  %162 = call i8* @strcpy(i8* %156, i8* %161) #6
  br label %178

163:                                              ; preds = %149
  %164 = load i32, i32* %16, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [500 x i8*], [500 x i8*]* %6, i64 0, i64 %165
  %167 = load i8*, i8** %166, align 8
  %168 = load i32, i32* %16, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [500 x i8*], [500 x i8*]* %7, i64 0, i64 %169
  %171 = load i8*, i8** %170, align 8
  %172 = load i32, i32* %16, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [500 x i32], [500 x i32]* %9, i64 0, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %177 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (void (i8*, i8*, i32, i8*)* @build to i32 (i8*, i8*, i32, i8*, ...)*)(i8* %167, i8* %171, i32 %175, i8* %176)
  br label %178

178:                                              ; preds = %163, %155
  %179 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %181 = call i32 @fputs(i8* %179, %struct._IO_FILE* %180)
  %182 = load i32, i32* %16, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %178
  %185 = call i32 @putchar(i32 32)
  br label %186

186:                                              ; preds = %184, %178
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %16, align 4
  %189 = add nsw i32 %188, -1
  store i32 %189, i32* %16, align 4
  br label %146

190:                                              ; preds = %146
  %191 = call i32 @putchar(i32 10)
  call void @exit(i32 0) #10
  unreachable

192:                                              ; preds = %128
  %193 = load i32, i32* %13, align 4
  %194 = getelementptr inbounds [500 x i8*], [500 x i8*]* %6, i64 0, i64 0
  %195 = getelementptr inbounds [500 x i8*], [500 x i8*]* %7, i64 0, i64 0
  %196 = getelementptr inbounds [500 x i32], [500 x i32]* %9, i64 0, i64 0
  %197 = getelementptr inbounds [500 x i32], [500 x i32]* %8, i64 0, i64 0
  %198 = call i32 (i32, i8**, i8**, i32*, i32*, ...) bitcast (void (i32, i8**, i8**, i32*, i32*)* @deliver to i32 (i32, i8**, i8**, i32*, i32*, ...)*)(i32 %193, i8** %194, i8** %195, i32* %196, i32* %197)
  %199 = load i32, i32* @exitstat, align 4
  ret i32 %199
}

; Function Attrs: nounwind readonly
declare dso_local i8* @strrchr(i8*, i32) #3

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #3

declare dso_local i32 @putchar(i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @map(i32 %0, i8** %1, i8** %2, i8** %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i8** %1, i8*** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @map.userbuf, i64 0, i64 0), i8** @map.userz, align 8
  store i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @map.hostbuf, i64 0, i64 0), i8** @map.hostz, align 8
  store i32 0, i32* %13, align 4
  br label %16

16:                                               ; preds = %76, %6
  %17 = load i32, i32* %13, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %79

20:                                               ; preds = %16
  %21 = load i32, i32* @queuecost, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %14, align 4
  %23 = load i8*, i8** @map.userz, align 8
  %24 = load i8**, i8*** %10, align 8
  %25 = load i32, i32* %13, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  store i8* %23, i8** %27, align 8
  %28 = load i8*, i8** @map.hostz, align 8
  %29 = load i8**, i8*** %9, align 8
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  store i8* %28, i8** %32, align 8
  %33 = load i8**, i8*** %8, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 40
  br i1 %37, label %38, label %50

38:                                               ; preds = %20
  %39 = load i8**, i8*** %8, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %39, align 8
  %42 = load i8**, i8*** %8, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = call i8* @strchr(i8* %43, i32 41) #7
  store i8* %44, i8** %15, align 8
  %45 = load i8*, i8** %15, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i8*, i8** %15, align 8
  store i8 0, i8* %48, align 1
  br label %49

49:                                               ; preds = %47, %38
  br label %50

50:                                               ; preds = %49, %20
  %51 = load i8**, i8*** %8, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i32 1
  store i8** %52, i8*** %8, align 8
  %53 = load i8*, i8** %51, align 8
  %54 = load i8*, i8** @map.hostz, align 8
  %55 = load i8*, i8** @map.userz, align 8
  %56 = call i32 (i8*, i8*, i8*, i32*, ...) bitcast (i32 (i8*, i8*, i8*, i32*)* @resolve to i32 (i8*, i8*, i8*, i32*, ...)*)(i8* %53, i8* %54, i8* %55, i32* %14)
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %56, i32* %60, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32*, i32** %12, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %61, i32* %65, align 4
  %66 = load i8*, i8** @map.userz, align 8
  %67 = call i64 @strlen(i8* %66) #7
  %68 = add i64 %67, 1
  %69 = load i8*, i8** @map.userz, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 %68
  store i8* %70, i8** @map.userz, align 8
  %71 = load i8*, i8** @map.hostz, align 8
  %72 = call i64 @strlen(i8* %71) #7
  %73 = add i64 %72, 1
  %74 = load i8*, i8** @map.hostz, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 %73
  store i8* %75, i8** @map.hostz, align 8
  br label %76

76:                                               ; preds = %50
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %13, align 4
  br label %16

79:                                               ; preds = %16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @setdates() #0 {
  %1 = call i64 @time(i64* @now) #6
  %2 = call i8* @ctime(i64* @now) #6
  %3 = call i8* @strcpy(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @nows, i64 0, i64 0), i8* %2) #6
  %4 = call %struct.tm* @gmtime(i64* @now) #6
  store %struct.tm* %4, %struct.tm** @gmt, align 8
  %5 = call %struct.tm* @localtime(i64* @now) #6
  store %struct.tm* %5, %struct.tm** @loc, align 8
  %6 = call i8* @arpadate(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @nows, i64 0, i64 0))
  %7 = call i8* @strcpy(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @arpanows, i64 0, i64 0), i8* %6) #6
  ret void
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #1

; Function Attrs: nounwind
declare dso_local i8* @ctime(i64*) #1

; Function Attrs: nounwind
declare dso_local %struct.tm* @gmtime(i64*) #1

; Function Attrs: nounwind
declare dso_local %struct.tm* @localtime(i64*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @arpadate(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %7 = call i64 @time(i64* %6) #6
  %8 = load i8*, i8** %2, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i8* @ctime(i64* %6) #6
  store i8* %11, i8** %2, align 8
  br label %12

12:                                               ; preds = %10, %1
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @arpadate.b, i64 0, i64 0), i8** %4, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 8
  store i8* %14, i8** %3, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 32
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %3, align 8
  br label %28

22:                                               ; preds = %12
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %3, align 8
  %25 = load i8, i8* %23, align 1
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %4, align 8
  store i8 %25, i8* %26, align 1
  br label %28

28:                                               ; preds = %22, %19
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %3, align 8
  %31 = load i8, i8* %29, align 1
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %4, align 8
  store i8 %31, i8* %32, align 1
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %4, align 8
  store i8 32, i8* %34, align 1
  %36 = load i8*, i8** %2, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 4
  store i8* %37, i8** %3, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %3, align 8
  %40 = load i8, i8* %38, align 1
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %4, align 8
  store i8 %40, i8* %41, align 1
  %43 = load i8*, i8** %3, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %3, align 8
  %45 = load i8, i8* %43, align 1
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %4, align 8
  store i8 %45, i8* %46, align 1
  %48 = load i8*, i8** %3, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %3, align 8
  %50 = load i8, i8* %48, align 1
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %4, align 8
  store i8 %50, i8* %51, align 1
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %4, align 8
  store i8 32, i8* %53, align 1
  %55 = load i8*, i8** %2, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 22
  store i8* %56, i8** %3, align 8
  %57 = load i8*, i8** %3, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %3, align 8
  %59 = load i8, i8* %57, align 1
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %4, align 8
  store i8 %59, i8* %60, align 1
  %62 = load i8*, i8** %3, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %3, align 8
  %64 = load i8, i8* %62, align 1
  %65 = load i8*, i8** %4, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %4, align 8
  store i8 %64, i8* %65, align 1
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %4, align 8
  store i8 32, i8* %67, align 1
  %69 = load i8*, i8** %2, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 11
  store i8* %70, i8** %3, align 8
  store i32 8, i32* %5, align 4
  br label %71

71:                                               ; preds = %80, %28
  %72 = load i32, i32* %5, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load i8*, i8** %3, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %3, align 8
  %77 = load i8, i8* %75, align 1
  %78 = load i8*, i8** %4, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %4, align 8
  store i8 %77, i8* %78, align 1
  br label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %5, align 4
  br label %71

83:                                               ; preds = %71
  %84 = call %struct.tm* @localtime(i64* %6) #6
  %85 = getelementptr inbounds %struct.tm, %struct.tm* %84, i32 0, i32 8
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [2 x i8*], [2 x i8*]* @tzname, i64 0, i64 %87
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** %3, align 8
  %90 = load i8*, i8** %3, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 3
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %135

95:                                               ; preds = %83
  %96 = load i8*, i8** %3, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 3
  store i8* %97, i8** %3, align 8
  %98 = load i8*, i8** %3, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %3, align 8
  %100 = load i8, i8* %98, align 1
  %101 = load i8*, i8** %4, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %4, align 8
  store i8 %100, i8* %101, align 1
  %103 = load i8*, i8** %3, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 58
  br i1 %107, label %108, label %111

108:                                              ; preds = %95
  %109 = load i8*, i8** %4, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %4, align 8
  store i8 48, i8* %109, align 1
  br label %117

111:                                              ; preds = %95
  %112 = load i8*, i8** %3, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %3, align 8
  %114 = load i8, i8* %112, align 1
  %115 = load i8*, i8** %4, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %4, align 8
  store i8 %114, i8* %115, align 1
  br label %117

117:                                              ; preds = %111, %108
  %118 = load i8*, i8** %3, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %3, align 8
  %120 = load i8, i8* %118, align 1
  %121 = load i8*, i8** %4, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %4, align 8
  store i8 %120, i8* %121, align 1
  %123 = load i8*, i8** %3, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %3, align 8
  %125 = load i8*, i8** %3, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %3, align 8
  %127 = load i8, i8* %125, align 1
  %128 = load i8*, i8** %4, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %4, align 8
  store i8 %127, i8* %128, align 1
  %130 = load i8*, i8** %3, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %3, align 8
  %132 = load i8, i8* %130, align 1
  %133 = load i8*, i8** %4, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %4, align 8
  store i8 %132, i8* %133, align 1
  br label %153

135:                                              ; preds = %83
  %136 = load i8*, i8** %4, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %4, align 8
  store i8 32, i8* %136, align 1
  %138 = load i8*, i8** %3, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %3, align 8
  %140 = load i8, i8* %138, align 1
  %141 = load i8*, i8** %4, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %4, align 8
  store i8 %140, i8* %141, align 1
  %143 = load i8*, i8** %3, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %3, align 8
  %145 = load i8, i8* %143, align 1
  %146 = load i8*, i8** %4, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %4, align 8
  store i8 %145, i8* %146, align 1
  %148 = load i8*, i8** %3, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %3, align 8
  %150 = load i8, i8* %148, align 1
  %151 = load i8*, i8** %4, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %4, align 8
  store i8 %150, i8* %151, align 1
  br label %153

153:                                              ; preds = %135, %117
  %154 = load i8*, i8** %2, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 0
  store i8* %155, i8** %3, align 8
  %156 = load i8*, i8** %4, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %4, align 8
  store i8 32, i8* %156, align 1
  %158 = load i8*, i8** %4, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %4, align 8
  store i8 40, i8* %158, align 1
  %160 = load i8*, i8** %3, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %3, align 8
  %162 = load i8, i8* %160, align 1
  %163 = load i8*, i8** %4, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %4, align 8
  store i8 %162, i8* %163, align 1
  %165 = load i8*, i8** %3, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %3, align 8
  %167 = load i8, i8* %165, align 1
  %168 = load i8*, i8** %4, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %4, align 8
  store i8 %167, i8* %168, align 1
  %170 = load i8*, i8** %3, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %3, align 8
  %172 = load i8, i8* %170, align 1
  %173 = load i8*, i8** %4, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %4, align 8
  store i8 %172, i8* %173, align 1
  %175 = load i8*, i8** %4, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %4, align 8
  store i8 41, i8* %175, align 1
  %177 = load i8*, i8** %4, align 8
  store i8 0, i8* %177, align 1
  ret i8* getelementptr inbounds ([40 x i8], [40 x i8]* @arpadate.b, i64 0, i64 0)
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @postmaster(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i8*, i8** @postmaster.pm, align 8
  %6 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* %4, i8* %5)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i8*, i8** @postmaster.pm, align 8
  store i8* %9, i8** %2, align 8
  br label %12

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  store i8* %11, i8** %2, align 8
  br label %12

12:                                               ; preds = %10, %8
  %13 = load i8*, i8** %2, align 8
  ret i8* %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @isuucp(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.127, i64 0, i64 0))
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %8, %7
  %10 = load i32, i32* %2, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @sform(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.128, i64 0, i64 0), i8** %2, align 8
  br label %24

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.129, i64 0, i64 0), i8** %2, align 8
  br label %24

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.130, i64 0, i64 0), i8** %2, align 8
  br label %24

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.127, i64 0, i64 0), i8** %2, align 8
  br label %24

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5.131, i64 0, i64 0), i8** %2, align 8
  br label %24

23:                                               ; preds = %19
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.132, i64 0, i64 0), i8** %2, align 8
  br label %24

24:                                               ; preds = %23, %22, %18, %14, %10, %6
  %25 = load i8*, i8** %2, align 8
  ret i8* %25
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @getmynames() #0 {
  %1 = alloca %struct.utsname, align 1
  %2 = load i8, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @hostname, i64 0, i64 0), align 1
  %3 = icmp ne i8 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %0
  %5 = call i32 @uname(%struct.utsname* %1) #6
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7.135, i64 0, i64 0), i32 0)
  call void @exit(i32 70) #9
  unreachable

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.utsname, %struct.utsname* %1, i32 0, i32 1
  %12 = getelementptr inbounds [65 x i8], [65 x i8]* %11, i64 0, i64 0
  %13 = call i8* @strcpy(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @hostname, i64 0, i64 0), i8* %12) #6
  br label %14

14:                                               ; preds = %10, %0
  %15 = load i8, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @hostname, i64 0, i64 0), align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8.136, i64 0, i64 0), i32 0)
  call void @exit(i32 70) #9
  unreachable

20:                                               ; preds = %14
  %21 = load i8, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @hostdomain, i64 0, i64 0), align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = call i8* @strcpy(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @hostdomain, i64 0, i64 0), i8* getelementptr inbounds ([512 x i8], [512 x i8]* @hostname, i64 0, i64 0)) #6
  %25 = call i8* @strcat(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9.137, i64 0, i64 0)) #6
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i8, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @hostdomain, i64 0, i64 0), align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = call i8* @strcpy(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @hostdomain, i64 0, i64 0), i8* getelementptr inbounds ([512 x i8], [512 x i8]* @hostname, i64 0, i64 0)) #6
  br label %31

31:                                               ; preds = %29, %26
  %32 = call i8* @strcpy(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @hostuucp, i64 0, i64 0), i8* getelementptr inbounds ([512 x i8], [512 x i8]* @hostname, i64 0, i64 0)) #6
  %33 = call i8* @strcat(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9.137, i64 0, i64 0)) #6
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @uname(%struct.utsname*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @pwfnam(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pw_node*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.pw_node*, %struct.pw_node** @pwhead, align 8
  store %struct.pw_node* %5, %struct.pw_node** %4, align 8
  br label %6

6:                                                ; preds = %21, %1
  %7 = load %struct.pw_node*, %struct.pw_node** %4, align 8
  %8 = icmp ne %struct.pw_node* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %6
  %10 = load i8*, i8** %3, align 8
  %11 = load %struct.pw_node*, %struct.pw_node** %4, align 8
  %12 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @strcmp(i8* %10, i8* %13) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = load %struct.pw_node*, %struct.pw_node** %4, align 8
  %18 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %2, align 8
  br label %42

20:                                               ; preds = %9
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.pw_node*, %struct.pw_node** %4, align 8
  %23 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %22, i32 0, i32 4
  %24 = load %struct.pw_node*, %struct.pw_node** %23, align 8
  store %struct.pw_node* %24, %struct.pw_node** %4, align 8
  br label %6

25:                                               ; preds = %6
  br label %26

26:                                               ; preds = %40, %25
  %27 = call %struct.pw_node* @pwparse()
  store %struct.pw_node* %27, %struct.pw_node** %4, align 8
  %28 = icmp ne %struct.pw_node* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load i8*, i8** %3, align 8
  %31 = load %struct.pw_node*, %struct.pw_node** %4, align 8
  %32 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @strcmp(i8* %30, i8* %33) #7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load %struct.pw_node*, %struct.pw_node** %4, align 8
  %38 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %2, align 8
  br label %42

40:                                               ; preds = %29
  br label %26

41:                                               ; preds = %26
  store i8* null, i8** %2, align 8
  br label %42

42:                                               ; preds = %41, %36, %16
  %43 = load i8*, i8** %2, align 8
  ret i8* %43
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.pw_node* @pwparse() #0 {
  %1 = alloca %struct.pw_node*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.passwd*, align 8
  %5 = alloca i32, align 4
  store i32 1, i32* @pwparse.pw_eof, align 4
  ret %struct.pw_node* null
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @pwuid(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pw_node*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.pw_node*, %struct.pw_node** @pwhead, align 8
  store %struct.pw_node* %5, %struct.pw_node** %4, align 8
  br label %6

6:                                                ; preds = %20, %1
  %7 = load %struct.pw_node*, %struct.pw_node** %4, align 8
  %8 = icmp ne %struct.pw_node* %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.pw_node*, %struct.pw_node** %4, align 8
  %12 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load %struct.pw_node*, %struct.pw_node** %4, align 8
  %17 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %2, align 8
  br label %40

19:                                               ; preds = %9
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.pw_node*, %struct.pw_node** %4, align 8
  %22 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %21, i32 0, i32 4
  %23 = load %struct.pw_node*, %struct.pw_node** %22, align 8
  store %struct.pw_node* %23, %struct.pw_node** %4, align 8
  br label %6

24:                                               ; preds = %6
  br label %25

25:                                               ; preds = %38, %24
  %26 = call %struct.pw_node* @pwparse()
  store %struct.pw_node* %26, %struct.pw_node** %4, align 8
  %27 = icmp ne %struct.pw_node* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.pw_node*, %struct.pw_node** %4, align 8
  %31 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.pw_node*, %struct.pw_node** %4, align 8
  %36 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %2, align 8
  br label %40

38:                                               ; preds = %28
  br label %25

39:                                               ; preds = %25
  store i8* null, i8** %2, align 8
  br label %40

40:                                               ; preds = %39, %34, %15
  %41 = load i8*, i8** %2, align 8
  ret i8* %41
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @tilde(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pw_node*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.pw_node*, %struct.pw_node** @pwhead, align 8
  store %struct.pw_node* %5, %struct.pw_node** %4, align 8
  br label %6

6:                                                ; preds = %21, %1
  %7 = load %struct.pw_node*, %struct.pw_node** %4, align 8
  %8 = icmp ne %struct.pw_node* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %6
  %10 = load i8*, i8** %3, align 8
  %11 = load %struct.pw_node*, %struct.pw_node** %4, align 8
  %12 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @strcmp(i8* %10, i8* %13) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = load %struct.pw_node*, %struct.pw_node** %4, align 8
  %18 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %17, i32 0, i32 3
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %2, align 8
  br label %42

20:                                               ; preds = %9
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.pw_node*, %struct.pw_node** %4, align 8
  %23 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %22, i32 0, i32 4
  %24 = load %struct.pw_node*, %struct.pw_node** %23, align 8
  store %struct.pw_node* %24, %struct.pw_node** %4, align 8
  br label %6

25:                                               ; preds = %6
  br label %26

26:                                               ; preds = %40, %25
  %27 = call %struct.pw_node* @pwparse()
  store %struct.pw_node* %27, %struct.pw_node** %4, align 8
  %28 = icmp ne %struct.pw_node* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load i8*, i8** %3, align 8
  %31 = load %struct.pw_node*, %struct.pw_node** %4, align 8
  %32 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @strcmp(i8* %30, i8* %33) #7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load %struct.pw_node*, %struct.pw_node** %4, align 8
  %38 = getelementptr inbounds %struct.pw_node, %struct.pw_node* %37, i32 0, i32 3
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %2, align 8
  br label %42

40:                                               ; preds = %29
  br label %26

41:                                               ; preds = %26
  store i8* null, i8** %2, align 8
  br label %42

42:                                               ; preds = %41, %36, %16
  %43 = load i8*, i8** %2, align 8
  ret i8* %43
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @fullname(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i8* @strcpy(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @fullname.fname, i64 0, i64 0), i8* %4) #6
  %6 = call i8* @strchr(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @fullname.fname, i64 0, i64 0), i32 44) #7
  store i8* %6, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  store i8 0, i8* %9, align 1
  br label %10

10:                                               ; preds = %8, %1
  %11 = call i8* @strchr(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @fullname.fname, i64 0, i64 0), i32 40) #7
  store i8* %11, i8** %3, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i8*, i8** %3, align 8
  store i8 0, i8* %14, align 1
  br label %15

15:                                               ; preds = %13, %10
  %16 = call i16** @__ctype_b_loc() #8
  %17 = load i16*, i16** %16, align 8
  store i8* getelementptr inbounds ([512 x i8], [512 x i8]* @fullname.fname, i64 0, i64 0), i8** %3, align 8
  %18 = load i8, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @fullname.fname, i64 0, i64 0), align 1
  %19 = sext i8 %18 to i32
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i16, i16* %17, i64 %20
  %22 = load i16, i16* %21, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %23, 2048
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %15
  %27 = call i8* @strchr(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @fullname.fname, i64 0, i64 0), i32 45) #7
  store i8* %27, i8** %3, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %3, align 8
  br label %33

32:                                               ; preds = %26
  store i8* getelementptr inbounds ([512 x i8], [512 x i8]* @fullname.fname, i64 0, i64 0), i8** %3, align 8
  br label %33

33:                                               ; preds = %32, %29
  br label %34

34:                                               ; preds = %33, %15
  %35 = load i8*, i8** %3, align 8
  ret i8* %35
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @res_fname(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [512 x i8], align 16
  %12 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %13 = load i32, i32* @debug, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.146, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i64, i64* @res_fname.pathlength, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %18
  %22 = load i8*, i8** @fnlist, align 8
  %23 = call %struct._IO_FILE* @fopen(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.147, i64 0, i64 0))
  store %struct._IO_FILE* %23, %struct._IO_FILE** @res_fname.file, align 8
  %24 = icmp eq %struct._IO_FILE* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i32, i32* @debug, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i8*, i8** @fnlist, align 8
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2.148, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %28, %25
  store i64 -1, i64* @res_fname.pathlength, align 8
  br label %37

32:                                               ; preds = %21
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @res_fname.file, align 8
  %34 = call i32 @fseek(%struct._IO_FILE* %33, i64 0, i32 2)
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @res_fname.file, align 8
  %36 = call i64 @ftell(%struct._IO_FILE* %35)
  store i64 %36, i64* @res_fname.pathlength, align 8
  br label %37

37:                                               ; preds = %32, %31
  br label %38

38:                                               ; preds = %37, %18
  %39 = load i64, i64* @res_fname.pathlength, align 8
  %40 = icmp eq i64 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i8* null, i8** %2, align 8
  br label %186

42:                                               ; preds = %38
  store i64 0, i64* %7, align 8
  %43 = load i64, i64* @res_fname.pathlength, align 8
  store i64 %43, i64* %6, align 8
  %44 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  store i8* %44, i8** %12, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = load i8*, i8** %3, align 8
  %47 = call i8* @strcpy(i8* %45, i8* %46) #6
  %48 = load i8*, i8** %12, align 8
  %49 = call i8* @strcat(i8* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.149, i64 0, i64 0)) #6
  br label %50

50:                                               ; preds = %147, %42
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = add nsw i64 %51, %52
  %54 = add nsw i64 %53, 1
  %55 = sdiv i64 %54, 2
  store i64 %55, i64* %5, align 8
  store i64 %55, i64* %4, align 8
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @res_fname.file, align 8
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @fseek(%struct._IO_FILE* %56, i64 %57, i32 0)
  %59 = load i64, i64* %4, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %71, %61
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @res_fname.file, align 8
  %64 = call i32 @getc(%struct._IO_FILE* %63)
  store i32 %64, i32* %9, align 4
  %65 = icmp ne i32 %64, -1
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 10
  br label %69

69:                                               ; preds = %66, %62
  %70 = phi i1 [ false, %62 ], [ %68, %66 ]
  br i1 %70, label %71, label %72

71:                                               ; preds = %69
  br label %62

72:                                               ; preds = %69
  br label %73

73:                                               ; preds = %72, %50
  store i32 0, i32* %10, align 4
  %74 = load i8*, i8** %12, align 8
  store i8* %74, i8** %8, align 8
  br label %75

75:                                               ; preds = %128, %73
  %76 = load i32, i32* %10, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %131

78:                                               ; preds = %75
  %79 = load i8*, i8** %8, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %148

84:                                               ; preds = %78
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @res_fname.file, align 8
  %86 = call i32 @getc(%struct._IO_FILE* %85)
  store i32 %86, i32* %9, align 4
  %87 = call i16** @__ctype_b_loc() #8
  %88 = load i16*, i16** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i16, i16* %88, i64 %90
  %92 = load i16, i16* %91, align 2
  %93 = zext i16 %92 to i32
  %94 = and i32 %93, 256
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %84
  %97 = load i32, i32* %9, align 4
  %98 = sub nsw i32 %97, 65
  %99 = add nsw i32 %98, 97
  br label %102

100:                                              ; preds = %84
  %101 = load i32, i32* %9, align 4
  br label %102

102:                                              ; preds = %100, %96
  %103 = phi i32 [ %99, %96 ], [ %101, %100 ]
  %104 = call i16** @__ctype_b_loc() #8
  %105 = load i16*, i16** %104, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i16, i16* %105, i64 %109
  %111 = load i16, i16* %110, align 2
  %112 = zext i16 %111 to i32
  %113 = and i32 %112, 256
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %102
  %116 = load i8*, i8** %8, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = sub nsw i32 %118, 65
  %120 = add nsw i32 %119, 97
  br label %125

121:                                              ; preds = %102
  %122 = load i8*, i8** %8, align 8
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  br label %125

125:                                              ; preds = %121, %115
  %126 = phi i32 [ %120, %115 ], [ %124, %121 ]
  %127 = sub nsw i32 %103, %126
  store i32 %127, i32* %10, align 4
  br label %128

128:                                              ; preds = %125
  %129 = load i8*, i8** %8, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %8, align 8
  br label %75

131:                                              ; preds = %75
  %132 = load i64, i64* %7, align 8
  %133 = load i64, i64* %5, align 8
  %134 = icmp sge i64 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  store i8* null, i8** %2, align 8
  br label %186

136:                                              ; preds = %131
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, -1
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = load i32, i32* %10, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = load i64, i64* %5, align 8
  store i64 %143, i64* %7, align 8
  br label %147

144:                                              ; preds = %139, %136
  %145 = load i64, i64* %5, align 8
  %146 = sub nsw i64 %145, 1
  store i64 %146, i64* %6, align 8
  br label %147

147:                                              ; preds = %144, %142
  br label %50

148:                                              ; preds = %83
  br label %149

149:                                              ; preds = %161, %148
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** @res_fname.file, align 8
  %151 = call i32 @getc(%struct._IO_FILE* %150)
  store i32 %151, i32* %9, align 4
  %152 = icmp ne i32 %151, -1
  br i1 %152, label %153, label %159

153:                                              ; preds = %149
  %154 = load i32, i32* %9, align 4
  %155 = icmp ne i32 %154, 9
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load i32, i32* %9, align 4
  %158 = icmp ne i32 %157, 10
  br label %159

159:                                              ; preds = %156, %153, %149
  %160 = phi i1 [ false, %153 ], [ false, %149 ], [ %158, %156 ]
  br i1 %160, label %161, label %166

161:                                              ; preds = %159
  %162 = load i32, i32* %9, align 4
  %163 = trunc i32 %162 to i8
  %164 = load i8*, i8** %12, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %12, align 8
  store i8 %163, i8* %164, align 1
  br label %149

166:                                              ; preds = %159
  %167 = load i8*, i8** %12, align 8
  %168 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %169 = icmp eq i8* %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %166
  store i8* null, i8** %2, align 8
  br label %186

171:                                              ; preds = %166
  %172 = load i8*, i8** %12, align 8
  store i8 0, i8* %172, align 1
  %173 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %174 = call i64 @strlen(i8* %173) #7
  %175 = trunc i64 %174 to i32
  %176 = add i32 %175, 1
  %177 = zext i32 %176 to i64
  %178 = call noalias i8* @malloc(i64 %177) #6
  store i8* %178, i8** %12, align 8
  %179 = icmp eq i8* %178, null
  br i1 %179, label %180, label %181

180:                                              ; preds = %171
  store i8* null, i8** %2, align 8
  br label %186

181:                                              ; preds = %171
  %182 = load i8*, i8** %12, align 8
  %183 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %184 = call i8* @strcpy(i8* %182, i8* %183) #6
  %185 = load i8*, i8** %12, align 8
  store i8* %185, i8** %2, align 8
  br label %186

186:                                              ; preds = %181, %180, %170, %135, %41
  %187 = load i8*, i8** %2, align 8
  ret i8* %187
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @resolve(i8* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [32 x i8*], align 16
  %12 = alloca [512 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [512 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load i32, i32* @routing, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %28

18:                                               ; preds = %4
  %19 = load i32, i32* @handle, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* getelementptr inbounds ([5 x [3 x i32]], [5 x [3 x i32]]* @table, i64 0, i64 3), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 3
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds [32 x i8*], [32 x i8*]* %11, i64 0, i64 0
  %27 = call i32 (i8*, i32, i8**, ...) bitcast (i32 (i8*, i8, i8**)* @ssplit to i32 (i8*, i32, i8**, ...)*)(i8* %25, i32 33, i8** %26)
  store i32 %27, i32* %10, align 4
  br label %31

28:                                               ; preds = %18, %4
  store i32 1, i32* %10, align 4
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds [32 x i8*], [32 x i8*]* %11, i64 0, i64 0
  store i8* %29, i8** %30, align 16
  br label %31

31:                                               ; preds = %28, %24
  %32 = load i32, i32* %10, align 4
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %13, align 4
  br label %34

34:                                               ; preds = %139, %31
  %35 = load i32, i32* %13, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %142

37:                                               ; preds = %34
  %38 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [32 x i8*], [32 x i8*]* %11, i64 0, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @strcpy(i8* %38, i8* %42) #6
  %44 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %45 = load i8*, i8** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 (i8*, i8*, i8*, ...) bitcast (i32 (i8*, i8*, i8*)* @parse to i32 (i8*, i8*, i8*, ...)*)(i8* %44, i8* %45, i8* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* @debug, align 4
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %57

50:                                               ; preds = %37
  %51 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %52 = load i8*, i8** %7, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i8* (i32, ...) bitcast (i8* (i32)* @sform to i8* (i32, ...)*)(i32 %54)
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.152, i64 0, i64 0), i8* %51, i8* %52, i8* %53, i8* %55)
  br label %57

57:                                               ; preds = %50, %37
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* %9, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %139

64:                                               ; preds = %60, %57
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [5 x [3 x i32]], [5 x [3 x i32]]* @table, i64 0, i64 %66
  %68 = load i32, i32* @handle, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [3 x i32], [3 x i32]* %67, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 4
  br i1 %72, label %85, label %73

73:                                               ; preds = %64
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [5 x [3 x i32]], [5 x [3 x i32]]* @table, i64 0, i64 %75
  %77 = load i32, i32* @handle, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [3 x i32], [3 x i32]* %76, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 3
  br i1 %81, label %82, label %116

82:                                               ; preds = %73
  %83 = load i32, i32* @routing, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %116

85:                                               ; preds = %82, %64
  store i32 0, i32* %14, align 4
  %86 = load i32, i32* @routing, align 4
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i32, i32* %13, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32 1, i32* %14, align 4
  br label %92

92:                                               ; preds = %91, %88, %85
  %93 = load i8*, i8** %6, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = load i32, i32* %14, align 4
  %96 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %97 = load i32*, i32** %8, align 8
  %98 = call i32 @route(i8* %93, i8* %94, i32 %95, i8* %96, i32* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %139

101:                                              ; preds = %92
  %102 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %103 = load i8*, i8** %6, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = call i32 (i8*, i8*, i8*, ...) bitcast (i32 (i8*, i8*, i8*)* @parse to i32 (i8*, i8*, i8*, ...)*)(i8* %102, i8* %103, i8* %104)
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* @debug, align 4
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %108, label %115

108:                                              ; preds = %101
  %109 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %110 = load i8*, i8** %7, align 8
  %111 = load i8*, i8** %6, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call i8* (i32, ...) bitcast (i8* (i32)* @sform to i8* (i32, ...)*)(i32 %112)
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1.153, i64 0, i64 0), i8* %109, i8* %110, i8* %111, i8* %113)
  br label %115

115:                                              ; preds = %108, %101
  br label %138

116:                                              ; preds = %82, %73
  %117 = load i32, i32* @getcost, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %137

119:                                              ; preds = %116
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [5 x [3 x i32]], [5 x [3 x i32]]* @table, i64 0, i64 %121
  %123 = load i32, i32* @handle, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [3 x i32], [3 x i32]* %122, i64 0, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 3
  br i1 %127, label %128, label %137

128:                                              ; preds = %119
  %129 = load i8*, i8** %6, align 8
  %130 = load i8*, i8** %7, align 8
  %131 = getelementptr inbounds [512 x i8], [512 x i8]* %15, i64 0, i64 0
  %132 = load i32*, i32** %8, align 8
  %133 = call i32 @route(i8* %129, i8* %130, i32 0, i8* %131, i32* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  br label %139

136:                                              ; preds = %128
  br label %137

137:                                              ; preds = %136, %119, %116
  br label %138

138:                                              ; preds = %137, %115
  br label %142

139:                                              ; preds = %135, %100, %63
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %13, align 4
  br label %34

142:                                              ; preds = %138, %34
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [5 x [3 x i32]], [5 x [3 x i32]]* @table, i64 0, i64 %144
  %146 = load i32, i32* @handle, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [3 x i32], [3 x i32]* %145, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %151, label %165

151:                                              ; preds = %142
  %152 = load i32, i32* %9, align 4
  %153 = icmp ne i32 %152, 1
  br i1 %153, label %154, label %165

154:                                              ; preds = %151
  %155 = load i8*, i8** %6, align 8
  %156 = load i8*, i8** %7, align 8
  %157 = load i32, i32* %9, align 4
  %158 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %159 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (void (i8*, i8*, i32, i8*)* @build to i32 (i8*, i8*, i32, i8*, ...)*)(i8* %155, i8* %156, i32 %157, i8* %158)
  %160 = load i8*, i8** %7, align 8
  %161 = getelementptr inbounds [512 x i8], [512 x i8]* %12, i64 0, i64 0
  %162 = call i8* @strcpy(i8* %160, i8* %161) #6
  %163 = load i8*, i8** %6, align 8
  %164 = call i8* @strcpy(i8* %163, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2.154, i64 0, i64 0)) #6
  store i32 1, i32* %9, align 4
  br label %165

165:                                              ; preds = %154, %151, %142
  %166 = load i32, i32* %9, align 4
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %177, label %168

168:                                              ; preds = %165
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [5 x [3 x i32]], [5 x [3 x i32]]* @table, i64 0, i64 %170
  %172 = load i32, i32* @handle, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [3 x i32], [3 x i32]* %171, i64 0, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %175, 4
  br i1 %176, label %177, label %188

177:                                              ; preds = %168, %165
  store i32 68, i32* @exitstat, align 4
  %178 = load i32, i32* @debug, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %177
  %181 = load i8*, i8** %5, align 8
  %182 = load i8*, i8** %7, align 8
  %183 = load i8*, i8** %6, align 8
  %184 = load i32, i32* %9, align 4
  %185 = call i8* (i32, ...) bitcast (i8* (i32)* @sform to i8* (i32, ...)*)(i32 %184)
  %186 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3.155, i64 0, i64 0), i8* %181, i8* %182, i8* %183, i8* %185)
  br label %187

187:                                              ; preds = %180, %177
  store i32 0, i32* %9, align 4
  br label %199

188:                                              ; preds = %168
  %189 = load i32, i32* @debug, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %188
  %192 = load i8*, i8** %5, align 8
  %193 = load i8*, i8** %7, align 8
  %194 = load i8*, i8** %6, align 8
  %195 = load i32, i32* %9, align 4
  %196 = call i8* (i32, ...) bitcast (i8* (i32)* @sform to i8* (i32, ...)*)(i32 %195)
  %197 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4.156, i64 0, i64 0), i8* %192, i8* %193, i8* %194, i8* %196)
  br label %198

198:                                              ; preds = %191, %188
  br label %199

199:                                              ; preds = %198, %187
  %200 = load i32, i32* %9, align 4
  ret i32 %200
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @route(i8* %0, i8* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [16 x i8*], align 16
  %16 = alloca [512 x i8], align 16
  %17 = alloca [512 x i8], align 16
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %18 = getelementptr inbounds [512 x i8], [512 x i8]* %16, i64 0, i64 0
  store i8 46, i8* %18, align 16
  %19 = getelementptr inbounds [512 x i8], [512 x i8]* %16, i64 0, i64 0
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8*, i8** %7, align 8
  %22 = call i8* @strcpy(i8* %20, i8* %21) #6
  %23 = getelementptr inbounds [512 x i8], [512 x i8]* %16, i64 0, i64 0
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = getelementptr inbounds [16 x i8*], [16 x i8*]* %15, i64 0, i64 0
  %26 = call i32 (i8*, i32, i8**, ...) bitcast (i32 (i8*, i8, i8**)* @ssplit to i32 (i8*, i32, i8**, ...)*)(i8* %24, i32 46, i8** %25)
  store i32 %26, i32* %13, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* %27, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @hostname, i64 0, i64 0))
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %5
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @strcmpic to i32 (i8*, i8*, ...)*)(i8* %31, i8* getelementptr inbounds ([512 x i8], [512 x i8]* @hostdomain, i64 0, i64 0))
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %30, %5
  store i32 0, i32* %14, align 4
  %35 = load i32*, i32** %11, align 8
  store i32 0, i32* %35, align 4
  %36 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %37 = call i8* @strcpy(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5.157, i64 0, i64 0)) #6
  %38 = load i32, i32* @debug, align 4
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6.158, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %40, %34
  br label %122

44:                                               ; preds = %30
  %45 = load i32, i32* %13, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %44
  %48 = load i32, i32* %13, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [16 x i8*], [16 x i8*]* %15, i64 0, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (i8*, ...) bitcast (i32 (i8*)* @isuucp to i32 (i8*, ...)*)(i8* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %47
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [16 x i8*], [16 x i8*]* %15, i64 0, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 -1
  store i8 0, i8* %62, align 1
  store i32 1, i32* %12, align 4
  br label %63

63:                                               ; preds = %55, %47, %44
  store i32 0, i32* %14, align 4
  br label %64

64:                                               ; preds = %89, %63
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %92

68:                                               ; preds = %64
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [16 x i8*], [16 x i8*]* %15, i64 0, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 -1
  %74 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 (i8*, i8*, i32*, ...) bitcast (i32 (i8*, i8*, i32*)* @getpath to i32 (i8*, i8*, i32*, ...)*)(i8* %73, i8* %74, i32* %75)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %68
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [16 x i8*], [16 x i8*]* %15, i64 0, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 (i8*, i8*, i32*, ...) bitcast (i32 (i8*, i8*, i32*)* @getpath to i32 (i8*, i8*, i32*, ...)*)(i8* %82, i8* %83, i32* %84)
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %78, %68
  br label %92

88:                                               ; preds = %78
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %14, align 4
  br label %64

92:                                               ; preds = %87, %64
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %121

96:                                               ; preds = %92
  %97 = load i32, i32* %12, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %96
  %100 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %101 = load i32*, i32** %11, align 8
  %102 = call i32 (i8*, i8*, i32*, ...) bitcast (i32 (i8*, i8*, i32*)* @getpath to i32 (i8*, i8*, i32*, ...)*)(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7.159, i64 0, i64 0), i8* %100, i32* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %99, %96
  %105 = load i32, i32* %9, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %109 = load i32*, i32** %11, align 8
  %110 = call i32 (i8*, i8*, i32*, ...) bitcast (i32 (i8*, i8*, i32*)* @getpath to i32 (i8*, i8*, i32*, ...)*)(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8.160, i64 0, i64 0), i8* %108, i32* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %107, %104
  %113 = load i32, i32* @debug, align 4
  %114 = icmp eq i32 %113, 2
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i8*, i8** %7, align 8
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9.161, i64 0, i64 0), i8* %116)
  br label %118

118:                                              ; preds = %115, %112
  store i32 68, i32* %6, align 4
  br label %157

119:                                              ; preds = %107
  br label %120

120:                                              ; preds = %119, %99
  br label %121

121:                                              ; preds = %120, %92
  br label %122

122:                                              ; preds = %121, %43
  %123 = load i32, i32* @debug, align 4
  %124 = icmp eq i32 %123, 2
  br i1 %124, label %125, label %144

125:                                              ; preds = %122
  %126 = load i8*, i8** %7, align 8
  %127 = load i32, i32* %14, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [16 x i8*], [16 x i8*]* %15, i64 0, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %137

132:                                              ; preds = %125
  %133 = load i32, i32* %14, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [16 x i8*], [16 x i8*]* %15, i64 0, i64 %134
  %136 = load i8*, i8** %135, align 8
  br label %138

137:                                              ; preds = %125
  br label %138

138:                                              ; preds = %137, %132
  %139 = phi i8* [ %136, %132 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11.162, i64 0, i64 0), %137 ]
  %140 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %141 = load i32*, i32** %11, align 8
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10.163, i64 0, i64 0), i8* %126, i8* %139, i8* %140, i32 %142)
  br label %144

144:                                              ; preds = %138, %122
  %145 = load i8*, i8** %7, align 8
  %146 = load i8*, i8** %8, align 8
  %147 = load i32, i32* %14, align 4
  %148 = icmp eq i32 %147, 0
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i32 1, i32 3
  %151 = getelementptr inbounds [512 x i8], [512 x i8]* %16, i64 0, i64 0
  %152 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (void (i8*, i8*, i32, i8*)* @build to i32 (i8*, i8*, i32, i8*, ...)*)(i8* %145, i8* %146, i32 %150, i8* %151)
  %153 = load i8*, i8** %10, align 8
  %154 = getelementptr inbounds [512 x i8], [512 x i8]* %17, i64 0, i64 0
  %155 = getelementptr inbounds [512 x i8], [512 x i8]* %16, i64 0, i64 0
  %156 = call i32 (i8*, i8*, ...) @sprintf(i8* %153, i8* %154, i8* %155) #6
  store i32 0, i32* %6, align 4
  br label %157

157:                                              ; preds = %144, %118
  %158 = load i32, i32* %6, align 4
  ret i32 %158
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @strncmpic(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %9, align 8
  br label %12

12:                                               ; preds = %76, %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i8*, i8** %9, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %15, %12
  %21 = phi i1 [ false, %12 ], [ %19, %15 ]
  br i1 %21, label %22, label %79

22:                                               ; preds = %20
  %23 = call i16** @__ctype_b_loc() #8
  %24 = load i16*, i16** %23, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i16, i16* %24, i64 %28
  %30 = load i16, i16* %29, align 2
  %31 = zext i16 %30 to i32
  %32 = and i32 %31, 256
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %22
  %35 = load i8*, i8** %8, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = sub nsw i32 %37, 65
  %39 = add nsw i32 %38, 97
  br label %44

40:                                               ; preds = %22
  %41 = load i8*, i8** %8, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  br label %44

44:                                               ; preds = %40, %34
  %45 = phi i32 [ %39, %34 ], [ %43, %40 ]
  %46 = call i16** @__ctype_b_loc() #8
  %47 = load i16*, i16** %46, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i16, i16* %47, i64 %51
  %53 = load i16, i16* %52, align 2
  %54 = zext i16 %53 to i32
  %55 = and i32 %54, 256
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %44
  %58 = load i8*, i8** %9, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = sub nsw i32 %60, 65
  %62 = add nsw i32 %61, 97
  br label %67

63:                                               ; preds = %44
  %64 = load i8*, i8** %9, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  br label %67

67:                                               ; preds = %63, %57
  %68 = phi i32 [ %62, %57 ], [ %66, %63 ]
  %69 = icmp eq i32 %45, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i8*, i8** %9, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %9, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %8, align 8
  br label %76

75:                                               ; preds = %67
  br label %79

76:                                               ; preds = %70
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %7, align 4
  br label %12

79:                                               ; preds = %75, %20
  %80 = load i32, i32* %7, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %130

82:                                               ; preds = %79
  %83 = call i16** @__ctype_b_loc() #8
  %84 = load i16*, i16** %83, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i16, i16* %84, i64 %88
  %90 = load i16, i16* %89, align 2
  %91 = zext i16 %90 to i32
  %92 = and i32 %91, 256
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %82
  %95 = load i8*, i8** %8, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = sub nsw i32 %97, 65
  %99 = add nsw i32 %98, 97
  br label %104

100:                                              ; preds = %82
  %101 = load i8*, i8** %8, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  br label %104

104:                                              ; preds = %100, %94
  %105 = phi i32 [ %99, %94 ], [ %103, %100 ]
  %106 = call i16** @__ctype_b_loc() #8
  %107 = load i16*, i16** %106, align 8
  %108 = load i8*, i8** %9, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i16, i16* %107, i64 %111
  %113 = load i16, i16* %112, align 2
  %114 = zext i16 %113 to i32
  %115 = and i32 %114, 256
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %104
  %118 = load i8*, i8** %9, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = sub nsw i32 %120, 65
  %122 = add nsw i32 %121, 97
  br label %127

123:                                              ; preds = %104
  %124 = load i8*, i8** %9, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  br label %127

127:                                              ; preds = %123, %117
  %128 = phi i32 [ %122, %117 ], [ %126, %123 ]
  %129 = sub nsw i32 %105, %128
  store i32 %129, i32* %4, align 4
  br label %131

130:                                              ; preds = %79
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %130, %127
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @strcmpic(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  store i8* %8, i8** %6, align 8
  br label %9

9:                                                ; preds = %68, %2
  %10 = load i8*, i8** %6, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %69

14:                                               ; preds = %9
  %15 = call i16** @__ctype_b_loc() #8
  %16 = load i16*, i16** %15, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i16, i16* %16, i64 %20
  %22 = load i16, i16* %21, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %23, 256
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %14
  %27 = load i8*, i8** %5, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = sub nsw i32 %29, 65
  %31 = add nsw i32 %30, 97
  br label %36

32:                                               ; preds = %14
  %33 = load i8*, i8** %5, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  br label %36

36:                                               ; preds = %32, %26
  %37 = phi i32 [ %31, %26 ], [ %35, %32 ]
  %38 = call i16** @__ctype_b_loc() #8
  %39 = load i16*, i16** %38, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i16, i16* %39, i64 %43
  %45 = load i16, i16* %44, align 2
  %46 = zext i16 %45 to i32
  %47 = and i32 %46, 256
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %36
  %50 = load i8*, i8** %6, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = sub nsw i32 %52, 65
  %54 = add nsw i32 %53, 97
  br label %59

55:                                               ; preds = %36
  %56 = load i8*, i8** %6, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  br label %59

59:                                               ; preds = %55, %49
  %60 = phi i32 [ %54, %49 ], [ %58, %55 ]
  %61 = icmp eq i32 %37, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %6, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %5, align 8
  br label %68

67:                                               ; preds = %59
  br label %69

68:                                               ; preds = %62
  br label %9

69:                                               ; preds = %67, %9
  %70 = call i16** @__ctype_b_loc() #8
  %71 = load i16*, i16** %70, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i16, i16* %71, i64 %75
  %77 = load i16, i16* %76, align 2
  %78 = zext i16 %77 to i32
  %79 = and i32 %78, 256
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %69
  %82 = load i8*, i8** %5, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = sub nsw i32 %84, 65
  %86 = add nsw i32 %85, 97
  br label %91

87:                                               ; preds = %69
  %88 = load i8*, i8** %5, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  br label %91

91:                                               ; preds = %87, %81
  %92 = phi i32 [ %86, %81 ], [ %90, %87 ]
  %93 = call i16** @__ctype_b_loc() #8
  %94 = load i16*, i16** %93, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i16, i16* %94, i64 %98
  %100 = load i16, i16* %99, align 2
  %101 = zext i16 %100 to i32
  %102 = and i32 %101, 256
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %91
  %105 = load i8*, i8** %6, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = sub nsw i32 %107, 65
  %109 = add nsw i32 %108, 97
  br label %114

110:                                              ; preds = %91
  %111 = load i8*, i8** %6, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  br label %114

114:                                              ; preds = %110, %104
  %115 = phi i32 [ %109, %104 ], [ %113, %110 ]
  %116 = sub nsw i32 %92, %115
  ret i32 %116
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind readnone }
attributes #9 = { noreturn }
attributes #10 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
