.class public Lcom/jiliguala/niuwa/common/util/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0xc

.field public static final b:Ljava/lang/String; = "yyyy-MM-dd"

.field public static final c:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

.field public static d:Ljava/text/SimpleDateFormat; = null

.field public static e:Ljava/text/SimpleDateFormat; = null

.field private static final f:Ljava/lang/String;

.field private static final g:I = 0x3e8

.field private static final h:I = 0x3c

.field private static final i:I = 0x18

.field private static final j:I = 0x1e

.field private static final k:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field private static final l:Ljava/lang/String; = "yyyy"

.field private static final m:Ljava/lang/String; = "MM"

.field private static final n:Ljava/lang/String; = "yyyy-M-d"

.field private static final o:Ljava/lang/String; = "yyyyMM"

.field private static final p:Ljava/lang/String; = "yyyyMMdd"

.field private static final q:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSSZZZZZ"

.field private static final r:Ljava/lang/String; = "yyyy/M"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const-class v0, Lcom/jiliguala/niuwa/common/util/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/util/f;->f:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/jiliguala/niuwa/common/util/f;->d:Ljava/text/SimpleDateFormat;

    .line 54
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/jiliguala/niuwa/common/util/f;->e:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()J
    .locals 6

    .prologue
    .line 194
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/f;->b()Ljava/util/TimeZone;

    move-result-object v2

    .line 195
    .local v2, "timeZone":Ljava/util/TimeZone;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    int-to-long v0, v3

    .line 196
    .local v0, "interval":J
    return-wide v0
.end method

.method public static a(I)J
    .locals 7
    .param p0, "monthOffset"    # I

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 212
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/f;->e()Ljava/util/Calendar;

    move-result-object v0

    .line 213
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v4

    invoke-virtual {v0, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 214
    const/4 v4, 0x2

    invoke-virtual {v0, v4, p0}, Ljava/util/Calendar;->add(II)V

    .line 215
    const/16 v4, 0xb

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 216
    const/16 v4, 0xc

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 217
    const/16 v4, 0xd

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 218
    const/16 v4, 0xe

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 219
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 220
    .local v1, "newDate":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 221
    .local v2, "lastDayOfMonth":J
    return-wide v2
.end method

.method public static final a(J)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # J

    .prologue
    .line 166
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 167
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 168
    .local v1, "readDate":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 169
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 170
    .local v2, "result":Ljava/lang/String;
    return-object v2
.end method

.method public static a(JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "unixTime"    # J
    .param p2, "format"    # Ljava/lang/String;

    .prologue
    .line 319
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 320
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "babyBD"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/f;->d(Ljava/lang/String;)J

    move-result-wide v2

    .line 67
    .local v2, "dateTime":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 68
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    const-wide/32 v8, 0x5265c00

    div-long/2addr v6, v8

    const-wide/16 v8, 0x1

    add-long v4, v6, v8

    .line 71
    .local v4, "day":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_0

    .line 72
    const-string v6, "<0"

    .line 92
    :goto_0
    return-object v6

    .line 74
    :cond_0
    long-to-int v6, v4

    div-int/lit16 v1, v6, 0x16d

    .line 75
    .local v1, "day_int":I
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v1}, Ljava/io/PrintStream;->println(I)V

    .line 76
    packed-switch v1, :pswitch_data_0

    .line 92
    const-string v6, ""

    goto :goto_0

    .line 78
    :pswitch_0
    const-string v6, "0-1"

    goto :goto_0

    .line 80
    :pswitch_1
    const-string v6, "1-2"

    goto :goto_0

    .line 82
    :pswitch_2
    const-string v6, "2-3"

    goto :goto_0

    .line 84
    :pswitch_3
    const-string v6, "3-4"

    goto :goto_0

    .line 86
    :pswitch_4
    const-string v6, "4-5"

    goto :goto_0

    .line 88
    :pswitch_5
    const-string v6, "5-6"

    goto :goto_0

    .line 90
    :pswitch_6
    const-string v6, "6+"

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "babyBD"    # Ljava/lang/String;
    .param p1, "format_str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/f;->d(Ljava/lang/String;)J

    move-result-wide v4

    .line 59
    .local v4, "time":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 60
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 61
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "str":Ljava/lang/String;
    return-object v2
.end method

.method public static a(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 284
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {p0, v0}, Lcom/jiliguala/niuwa/common/util/f;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 296
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 297
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static a(Ljava/util/Date;Ljava/util/TimeZone;Ljava/util/TimeZone;)Ljava/util/Date;
    .locals 6
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "oldZone"    # Ljava/util/TimeZone;
    .param p2, "newZone"    # Ljava/util/TimeZone;

    .prologue
    .line 421
    const/4 v0, 0x0

    .line 422
    .local v0, "dateTmp":Ljava/util/Date;
    if-eqz p0, :cond_0

    .line 423
    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    invoke-virtual {p2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    sub-int v1, v2, v3

    .line 424
    .local v1, "timeOffset":I
    new-instance v0, Ljava/util/Date;

    .end local v0    # "dateTmp":Ljava/util/Date;
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    int-to-long v4, v1

    sub-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 426
    .end local v1    # "timeOffset":I
    .restart local v0    # "dateTmp":Ljava/util/Date;
    :cond_0
    return-object v0
.end method

.method public static final a(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 6
    .param p0, "date1"    # Ljava/util/Date;
    .param p1, "date2"    # Ljava/util/Date;

    .prologue
    .line 608
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 609
    .local v0, "between":J
    const-wide/32 v2, 0x5265c00

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 610
    const/4 v2, 0x1

    .line 613
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static b(I)J
    .locals 7
    .param p0, "monthOffset"    # I

    .prologue
    const/4 v6, 0x5

    .line 230
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-M-d"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 231
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    const-string v5, "UTC"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 232
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/f;->e()Ljava/util/Calendar;

    move-result-object v0

    .line 233
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    invoke-virtual {v0, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 234
    const/4 v5, 0x2

    invoke-virtual {v0, v5, p0}, Ljava/util/Calendar;->add(II)V

    .line 235
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 236
    .local v4, "newDate":Ljava/util/Date;
    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/jiliguala/niuwa/common/util/f;->d(Ljava/lang/String;)J

    move-result-wide v2

    .line 237
    .local v2, "lastDayOfMonth":J
    return-wide v2
.end method

.method public static final b(J)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # J

    .prologue
    .line 174
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 175
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMM"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 176
    .local v1, "readDate":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 177
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "result":Ljava/lang/String;
    return-object v2
.end method

.method public static b(JLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "gmtUnixTime"    # J
    .param p2, "format"    # Ljava/lang/String;

    .prologue
    .line 342
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 343
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    int-to-long v2, v1

    add-long/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/f;->c(Ljava/lang/String;)J

    move-result-wide v4

    .line 98
    .local v4, "timeStr":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 99
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy/M"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 100
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "result":Ljava/lang/String;
    return-object v2
.end method

.method public static b(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 545
    :try_start_0
    sget-object v1, Lcom/jiliguala/niuwa/common/util/f;->d:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 547
    :goto_0
    return-object v1

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p0, "date"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 266
    const/4 v1, 0x0

    .line 267
    .local v1, "dt":Ljava/util/Date;
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 269
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 274
    :goto_0
    return-object v1

    .line 270
    :catch_0
    move-exception v2

    .line 271
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static b()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 244
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public static c()J
    .locals 8

    .prologue
    .line 391
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 393
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 395
    .local v2, "unixTime":J
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    int-to-long v6, v1

    sub-long v4, v2, v6

    .line 396
    .local v4, "unixTimeGMT":J
    return-wide v4
.end method

.method public static final c(Ljava/lang/String;)J
    .locals 9
    .param p0, "xgcStr"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, -0x1

    .line 110
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 128
    :goto_0
    return-wide v6

    .line 113
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZZZZZ"

    invoke-direct {v0, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v8, "UTC"

    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 117
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 118
    .local v5, "xgcDate":Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 119
    .local v6, "time":J
    goto :goto_0

    .line 120
    .end local v5    # "xgcDate":Ljava/util/Date;
    .end local v6    # "time":J
    :catch_0
    move-exception v2

    .line 121
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    .line 123
    :try_start_1
    invoke-static {}, Lorg/joda/time/b/h;->o()Lorg/joda/time/b/b;

    move-result-object v4

    .line 124
    .local v4, "fmt":Lorg/joda/time/b/b;
    invoke-virtual {v4, p0}, Lorg/joda/time/b/b;->e(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v1

    .line 125
    .local v1, "dt":Lorg/joda/time/DateTime;
    invoke-virtual {v1}, Lorg/joda/time/DateTime;->getMillis()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v6

    goto :goto_0

    .line 126
    .end local v1    # "dt":Lorg/joda/time/DateTime;
    .end local v4    # "fmt":Lorg/joda/time/b/b;
    :catch_1
    move-exception v3

    .line 127
    .local v3, "e1":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static final c(J)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # J

    .prologue
    .line 182
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 183
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-M-d"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 184
    .local v1, "readDate":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 185
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "result":Ljava/lang/String;
    return-object v2
.end method

.method public static d()J
    .locals 4

    .prologue
    .line 404
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 406
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 407
    .local v2, "unixTime":J
    return-wide v2
.end method

.method public static final d(Ljava/lang/String;)J
    .locals 5
    .param p0, "simpleStr"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, -0x1

    .line 150
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 162
    :goto_0
    return-wide v2

    .line 153
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-M-d"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 154
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string v4, "UTC"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 156
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 157
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 158
    .local v2, "time":J
    goto :goto_0

    .line 159
    .end local v0    # "date":Ljava/util/Date;
    .end local v2    # "time":J
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static d(J)Ljava/lang/String;
    .locals 2
    .param p0, "unixTime"    # J

    .prologue
    .line 307
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {p0, p1, v0}, Lcom/jiliguala/niuwa/common/util/f;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(J)Ljava/lang/String;
    .locals 2
    .param p0, "gmtUnixTime"    # J

    .prologue
    .line 330
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {p0, p1, v0}, Lcom/jiliguala/niuwa/common/util/f;->b(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static e()Ljava/util/Calendar;
    .locals 4

    .prologue
    .line 200
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 201
    .local v1, "timeZone":Ljava/util/TimeZone;
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 202
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 203
    return-object v0
.end method

.method public static e(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    .line 254
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {p0, v0}, Lcom/jiliguala/niuwa/common/util/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static f(J)Ljava/util/Date;
    .locals 2
    .param p0, "unixTime"    # J

    .prologue
    .line 353
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public static f(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p0, "dateStr"    # Ljava/lang/String;

    .prologue
    .line 529
    :try_start_0
    sget-object v1, Lcom/jiliguala/niuwa/common/util/f;->e:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 531
    :goto_0
    return-object v1

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    goto :goto_0
.end method

.method public static g(J)Ljava/util/Date;
    .locals 4
    .param p0, "gmtUnixTime"    # J

    .prologue
    .line 363
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    int-to-long v2, v1

    add-long/2addr v2, p0

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public static g(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p0, "dateStr"    # Ljava/lang/String;

    .prologue
    .line 537
    :try_start_0
    sget-object v1, Lcom/jiliguala/niuwa/common/util/f;->d:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 539
    :goto_0
    return-object v1

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    goto :goto_0
.end method

.method public static final h(Ljava/lang/String;)I
    .locals 10
    .param p0, "babyBD"    # Ljava/lang/String;

    .prologue
    .line 552
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/f;->d(Ljava/lang/String;)J

    move-result-wide v2

    .line 553
    .local v2, "dateTime":J
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 554
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    const-wide/32 v8, 0x5265c00

    div-long/2addr v6, v8

    const-wide/16 v8, 0x1

    add-long v4, v6, v8

    .line 557
    .local v4, "day":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_0

    .line 558
    const/4 v0, 0x0

    .line 562
    :goto_0
    return v0

    .line 560
    :cond_0
    long-to-int v6, v4

    div-int/lit16 v0, v6, 0x16d

    .line 562
    .local v0, "age":I
    goto :goto_0
.end method

.method public static h(J)J
    .locals 2
    .param p0, "unixTime"    # J

    .prologue
    .line 373
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    int-to-long v0, v0

    sub-long v0, p0, v0

    return-wide v0
.end method

.method public static i(J)J
    .locals 2
    .param p0, "gmtUnixTime"    # J

    .prologue
    .line 383
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "birthdayStr"    # Ljava/lang/String;

    .prologue
    .line 568
    :try_start_0
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/f;->h(Ljava/lang/String;)I

    move-result v0

    .line 569
    .local v0, "age":I
    const/4 v2, 0x6

    if-gt v0, v2, :cond_0

    .line 570
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/f;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 576
    .end local v0    # "age":I
    :goto_0
    return-object v2

    .line 572
    .restart local v0    # "age":I
    :cond_0
    const-string v2, "6+"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 574
    .end local v0    # "age":I
    :catch_0
    move-exception v1

    .line 576
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "birthdayStr"    # Ljava/lang/String;

    .prologue
    .line 582
    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-M-d"

    invoke-direct {v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 583
    .local v3, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 584
    .local v0, "birthday":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 585
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 587
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 589
    .local v5, "year":I
    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v4, v6, 0x1

    .line 591
    .local v4, "month":I
    const/16 v6, 0xa

    if-ge v4, v6, :cond_0

    .line 592
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 599
    .end local v0    # "birthday":Ljava/util/Date;
    .end local v1    # "calendar":Ljava/util/Calendar;
    .end local v3    # "format":Ljava/text/SimpleDateFormat;
    .end local v4    # "month":I
    .end local v5    # "year":I
    :goto_0
    return-object v6

    .line 594
    .restart local v0    # "birthday":Ljava/util/Date;
    .restart local v1    # "calendar":Ljava/util/Calendar;
    .restart local v3    # "format":Ljava/text/SimpleDateFormat;
    .restart local v4    # "month":I
    .restart local v5    # "year":I
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 597
    .end local v0    # "birthday":Ljava/util/Date;
    .end local v1    # "calendar":Ljava/util/Calendar;
    .end local v3    # "format":Ljava/text/SimpleDateFormat;
    .end local v4    # "month":I
    .end local v5    # "year":I
    :catch_0
    move-exception v2

    .line 599
    .local v2, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static j(J)[J
    .locals 12
    .param p0, "seconds"    # J

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v10, 0x3c

    .line 430
    const/4 v5, 0x3

    new-array v4, v5, [J

    .line 432
    .local v4, "result":[J
    const/4 v5, 0x0

    div-long v8, p0, v10

    div-long v0, v8, v10

    aput-wide v0, v4, v5

    .line 433
    .local v0, "hh":J
    const/4 v5, 0x1

    mul-long v8, v0, v10

    mul-long/2addr v8, v10

    sub-long v8, p0, v8

    cmp-long v8, v8, v2

    if-lez v8, :cond_0

    mul-long v8, v0, v10

    mul-long/2addr v8, v10

    sub-long v8, p0, v8

    div-long v2, v8, v10

    :cond_0
    aput-wide v2, v4, v5

    .line 434
    .local v2, "mm":J
    const/4 v5, 0x2

    cmp-long v8, p0, v10

    if-gez v8, :cond_1

    move-wide v6, p0

    :goto_0
    aput-wide v6, v4, v5

    .line 435
    .local v6, "ss":J
    return-object v4

    .line 434
    .end local v6    # "ss":J
    :cond_1
    rem-long v6, p0, v10

    goto :goto_0
.end method

.method public static k(J)Ljava/lang/String;
    .locals 14
    .param p0, "seconds"    # J

    .prologue
    const-wide/16 v12, 0xa

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x3c

    .line 445
    div-long v6, p0, v10

    div-long v0, v6, v10

    .line 446
    .local v0, "hh":J
    mul-long v6, v0, v10

    mul-long/2addr v6, v10

    sub-long v6, p0, v6

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    mul-long v6, v0, v10

    mul-long/2addr v6, v10

    sub-long v6, p0, v6

    div-long v2, v6, v10

    .line 447
    .local v2, "mm":J
    :goto_0
    cmp-long v6, p0, v10

    if-gez v6, :cond_1

    move-wide v4, p0

    .line 448
    .local v4, "ss":J
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    cmp-long v6, v0, v8

    if-nez v6, :cond_2

    const-string v6, ""

    :goto_2
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    cmp-long v6, v2, v8

    if-nez v6, :cond_4

    const-string v6, ""

    :goto_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    cmp-long v6, v4, v8

    if-nez v6, :cond_6

    const-string v6, ""

    .line 449
    :goto_4
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 448
    return-object v6

    .end local v2    # "mm":J
    .end local v4    # "ss":J
    :cond_0
    move-wide v2, v8

    .line 446
    goto :goto_0

    .line 447
    .restart local v2    # "mm":J
    :cond_1
    rem-long v4, p0, v10

    goto :goto_1

    .line 448
    .restart local v4    # "ss":J
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    cmp-long v6, v0, v12

    if-gez v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_5
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "\u5c0f\u65f6"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_5

    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    cmp-long v6, v2, v12

    if-gez v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_6
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "\u5206"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_5
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_6

    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    cmp-long v6, v4, v12

    if-gez v6, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 449
    :goto_7
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\u79d2"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_4

    :cond_7
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto :goto_7
.end method

.method public static l(J)Ljava/lang/String;
    .locals 24
    .param p0, "date"    # J

    .prologue
    .line 465
    invoke-static/range {p0 .. p1}, Lcom/jiliguala/niuwa/common/util/f;->c(J)Ljava/lang/String;

    move-result-object v13

    .line 466
    .local v13, "strTime":Ljava/lang/String;
    new-instance v19, Ljava/util/Date;

    invoke-direct/range {v19 .. v19}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    sub-long v20, v20, p0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(J)J

    move-result-wide v16

    .line 468
    .local v16, "time":J
    const-wide/32 v20, 0xea60

    cmp-long v19, v16, v20

    if-gez v19, :cond_1

    .line 469
    const-wide/16 v20, 0x3e8

    div-long v20, v16, v20

    move-wide/from16 v0, v20

    long-to-int v10, v0

    .line 471
    .local v10, "num":I
    const-string v13, "\u521a\u521a"

    .end local v10    # "num":I
    :cond_0
    :goto_0
    move-object v14, v13

    .line 523
    .end local v13    # "strTime":Ljava/lang/String;
    .local v14, "strTime":Ljava/lang/String;
    :goto_1
    return-object v14

    .line 473
    .end local v14    # "strTime":Ljava/lang/String;
    .restart local v13    # "strTime":Ljava/lang/String;
    :cond_1
    const-wide/16 v20, 0x3e8

    div-long v20, v16, v20

    const-wide/16 v22, 0x3c

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v8, v0

    .line 474
    .local v8, "min":I
    const/16 v19, 0x3c

    move/from16 v0, v19

    if-ge v8, v0, :cond_3

    .line 475
    const/16 v19, 0x3b

    move/from16 v0, v19

    if-gt v8, v0, :cond_2

    .line 476
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\u5206\u949f\u524d"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    .line 478
    :cond_2
    const-string v13, "1\u5c0f\u65f6\u524d"

    goto :goto_0

    .line 481
    :cond_3
    div-int/lit8 v5, v8, 0x3c

    .line 482
    .local v5, "hh":I
    const/16 v19, 0x18

    move/from16 v0, v19

    if-ge v5, v0, :cond_4

    .line 483
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\u5c0f\u65f6\u524d"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_0

    .line 486
    :cond_4
    new-instance v2, Ljava/util/Date;

    new-instance v19, Ljava/util/Date;

    invoke-direct/range {v19 .. v19}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 487
    .local v2, "date_new_obj":Ljava/util/Date;
    new-instance v12, Ljava/text/SimpleDateFormat;

    const-string v19, "H:mm:ss"

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 488
    .local v12, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v12, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 489
    .local v11, "result":Ljava/lang/String;
    const-string v19, ":"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 490
    .local v15, "timeArray":[Ljava/lang/String;
    array-length v0, v15

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 491
    const/16 v19, 0x0

    aget-object v7, v15, v19

    .line 493
    .local v7, "hourStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 494
    .local v6, "hour":I
    add-int/lit8 v19, v6, 0x18

    move/from16 v0, v19

    if-ge v5, v0, :cond_5

    .line 495
    const-string v13, "\u6628\u5929"

    goto/16 :goto_0

    .line 497
    :cond_5
    sub-int v19, v5, v6

    div-int/lit8 v19, v19, 0x18

    add-int/lit8 v3, v19, 0x1

    .line 498
    .local v3, "days":I
    const/16 v19, 0x1e

    move/from16 v0, v19

    if-ge v3, v0, :cond_7

    .line 499
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v3, v0, :cond_6

    .line 500
    const-string v13, "\u4eca\u5929"

    goto/16 :goto_0

    .line 502
    :cond_6
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\u5929\u524d"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 505
    :cond_7
    div-int/lit8 v9, v3, 0x1e

    .line 506
    .local v9, "month":I
    const/16 v19, 0xc

    move/from16 v0, v19

    if-ge v9, v0, :cond_8

    .line 507
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\u4e2a\u6708\u524d"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 509
    :cond_8
    div-int/lit8 v18, v9, 0xc

    .line 510
    .local v18, "year":I
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\u5e74\u524d"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    goto/16 :goto_0

    .line 514
    .end local v3    # "days":I
    .end local v6    # "hour":I
    .end local v9    # "month":I
    .end local v18    # "year":I
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    move-object v14, v13

    .line 516
    .end local v13    # "strTime":Ljava/lang/String;
    .restart local v14    # "strTime":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public static m(J)Ljava/lang/String;
    .locals 12
    .param p0, "seconds"    # J

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x3c

    .line 617
    div-long v6, p0, v10

    div-long v0, v6, v10

    .line 618
    .local v0, "hh":J
    mul-long v6, v0, v10

    mul-long/2addr v6, v10

    sub-long v6, p0, v6

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    mul-long v6, v0, v10

    mul-long/2addr v6, v10

    sub-long v6, p0, v6

    div-long v2, v6, v10

    .line 619
    .local v2, "mm":J
    :goto_0
    cmp-long v6, p0, v10

    if-gez v6, :cond_1

    move-wide v4, p0

    .line 620
    .local v4, "ss":J
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    cmp-long v6, v0, v8

    if-nez v6, :cond_2

    const-string v6, ""

    :goto_2
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    cmp-long v6, v2, v8

    if-nez v6, :cond_3

    const-string v6, ""

    :goto_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    cmp-long v6, v4, v8

    if-nez v6, :cond_4

    const-string v6, ""

    :goto_4
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .end local v2    # "mm":J
    .end local v4    # "ss":J
    :cond_0
    move-wide v2, v8

    .line 618
    goto :goto_0

    .line 619
    .restart local v2    # "mm":J
    :cond_1
    rem-long v4, p0, v10

    goto :goto_1

    .line 620
    .restart local v4    # "ss":J
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "\u5c0f\u65f6"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "\u5206"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\u79d2"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4
.end method

.method private static final n(J)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # J

    .prologue
    .line 138
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 139
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZZZZZ"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 140
    .local v1, "readDate":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "result":Ljava/lang/String;
    return-object v2
.end method
