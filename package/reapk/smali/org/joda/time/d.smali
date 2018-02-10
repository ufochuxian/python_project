.class public Lorg/joda/time/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/d$c;,
        Lorg/joda/time/d$a;,
        Lorg/joda/time/d$d;,
        Lorg/joda/time/d$b;
    }
.end annotation


# static fields
.field private static final a:Lorg/joda/time/d$d;

.field private static volatile b:Lorg/joda/time/d$b;

.field private static volatile c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/joda/time/DateTimeZone;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lorg/joda/time/d$d;

    invoke-direct {v0}, Lorg/joda/time/d$d;-><init>()V

    sput-object v0, Lorg/joda/time/d;->a:Lorg/joda/time/d$d;

    .line 41
    sget-object v0, Lorg/joda/time/d;->a:Lorg/joda/time/d$d;

    sput-object v0, Lorg/joda/time/d;->b:Lorg/joda/time/d$b;

    .line 47
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 48
    const-string v1, "UT"

    sget-object v2, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v1, "UTC"

    sget-object v2, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v1, "GMT"

    sget-object v2, Lorg/joda/time/DateTimeZone;->UTC:Lorg/joda/time/DateTimeZone;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "EST"

    const-string v2, "America/New_York"

    invoke-static {v0, v1, v2}, Lorg/joda/time/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v1, "EDT"

    const-string v2, "America/New_York"

    invoke-static {v0, v1, v2}, Lorg/joda/time/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v1, "CST"

    const-string v2, "America/Chicago"

    invoke-static {v0, v1, v2}, Lorg/joda/time/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v1, "CDT"

    const-string v2, "America/Chicago"

    invoke-static {v0, v1, v2}, Lorg/joda/time/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v1, "MST"

    const-string v2, "America/Denver"

    invoke-static {v0, v1, v2}, Lorg/joda/time/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v1, "MDT"

    const-string v2, "America/Denver"

    invoke-static {v0, v1, v2}, Lorg/joda/time/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v1, "PST"

    const-string v2, "America/Los_Angeles"

    invoke-static {v0, v1, v2}, Lorg/joda/time/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "PDT"

    const-string v2, "America/Los_Angeles"

    invoke-static {v0, v1, v2}, Lorg/joda/time/d;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/joda/time/d;->c:Ljava/util/Map;

    .line 60
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public static final a()J
    .locals 2

    .prologue
    .line 86
    sget-object v0, Lorg/joda/time/d;->b:Lorg/joda/time/d$b;

    invoke-interface {v0}, Lorg/joda/time/d$b;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final a(D)J
    .locals 4

    .prologue
    .line 499
    const-wide v0, 0x41429ec5c0000000L    # 2440587.5

    sub-double v0, p0, v0

    .line 500
    const-wide v2, 0x4194997000000000L    # 8.64E7

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public static final a(Lorg/joda/time/k;)J
    .locals 2

    .prologue
    .line 333
    if-nez p0, :cond_0

    .line 334
    const-wide/16 v0, 0x0

    .line 336
    :goto_0
    return-wide v0

    :cond_0
    invoke-interface {p0}, Lorg/joda/time/k;->getMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static final a(Lorg/joda/time/l;)J
    .locals 2

    .prologue
    .line 176
    if-nez p0, :cond_0

    .line 177
    invoke-static {}, Lorg/joda/time/d;->a()J

    move-result-wide v0

    .line 179
    :goto_0
    return-wide v0

    :cond_0
    invoke-interface {p0}, Lorg/joda/time/l;->getMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static final a(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;
    .locals 5

    .prologue
    .line 395
    :try_start_0
    const-class v0, Ljava/text/DateFormatSymbols;

    const-string v1, "getInstance"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/util/Locale;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 396
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :goto_0
    return-object v0

    .line 397
    :catch_0
    move-exception v0

    .line 398
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0, p0}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    goto :goto_0
.end method

.method public static final a(Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;
    .locals 0

    .prologue
    .line 299
    if-nez p0, :cond_0

    .line 300
    invoke-static {}, Lorg/joda/time/DateTimeZone;->getDefault()Lorg/joda/time/DateTimeZone;

    move-result-object p0

    .line 302
    :cond_0
    return-object p0
.end method

.method public static final a(Lorg/joda/time/PeriodType;)Lorg/joda/time/PeriodType;
    .locals 0

    .prologue
    .line 316
    if-nez p0, :cond_0

    .line 317
    invoke-static {}, Lorg/joda/time/PeriodType;->standard()Lorg/joda/time/PeriodType;

    move-result-object p0

    .line 319
    :cond_0
    return-object p0
.end method

.method public static final a(Lorg/joda/time/a;)Lorg/joda/time/a;
    .locals 0

    .prologue
    .line 282
    if-nez p0, :cond_0

    .line 283
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object p0

    .line 285
    :cond_0
    return-object p0
.end method

.method public static final a(Lorg/joda/time/l;Lorg/joda/time/l;)Lorg/joda/time/a;
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    .line 218
    if-eqz p0, :cond_2

    .line 219
    invoke-interface {p0}, Lorg/joda/time/l;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    .line 223
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 224
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    .line 226
    :cond_1
    return-object v0

    .line 220
    :cond_2
    if-eqz p1, :cond_0

    .line 221
    invoke-interface {p1}, Lorg/joda/time/l;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    goto :goto_0
.end method

.method public static final a(Lorg/joda/time/m;)Lorg/joda/time/a;
    .locals 1

    .prologue
    .line 241
    if-nez p0, :cond_1

    .line 242
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    .line 248
    :cond_0
    :goto_0
    return-object v0

    .line 244
    :cond_1
    invoke-interface {p0}, Lorg/joda/time/m;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    .line 245
    if-nez v0, :cond_0

    .line 246
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    goto :goto_0
.end method

.method public static final a(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {}, Lorg/joda/time/d;->d()V

    .line 113
    new-instance v0, Lorg/joda/time/d$a;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/d$a;-><init>(J)V

    sput-object v0, Lorg/joda/time/d;->b:Lorg/joda/time/d$b;

    .line 114
    return-void
.end method

.method public static final a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/joda/time/DateTimeZone;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 439
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/joda/time/d;->c:Ljava/util/Map;

    .line 440
    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/joda/time/DateTimeZone;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 63
    :try_start_0
    invoke-static {p2}, Lorg/joda/time/DateTimeZone;->forID(Ljava/lang/String;)Lorg/joda/time/DateTimeZone;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final a(Lorg/joda/time/d$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 146
    if-nez p0, :cond_0

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The MillisProvider must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    invoke-static {}, Lorg/joda/time/d;->d()V

    .line 150
    sput-object p0, Lorg/joda/time/d;->b:Lorg/joda/time/d$b;

    .line 151
    return-void
.end method

.method public static final a(Lorg/joda/time/n;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 364
    if-nez p0, :cond_0

    .line 365
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Partial must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_0
    const/4 v0, 0x0

    move-object v2, v0

    move v0, v1

    .line 368
    :goto_0
    invoke-interface {p0}, Lorg/joda/time/n;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 369
    invoke-interface {p0, v0}, Lorg/joda/time/n;->getField(I)Lorg/joda/time/c;

    move-result-object v3

    .line 370
    if-lez v0, :cond_1

    .line 371
    invoke-virtual {v3}, Lorg/joda/time/c;->getRangeDurationField()Lorg/joda/time/e;

    move-result-object v4

    invoke-virtual {v4}, Lorg/joda/time/e;->getType()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    if-eq v4, v2, :cond_1

    .line 377
    :goto_1
    return v1

    .line 375
    :cond_1
    invoke-virtual {v3}, Lorg/joda/time/c;->getDurationField()Lorg/joda/time/e;

    move-result-object v2

    invoke-virtual {v2}, Lorg/joda/time/e;->getType()Lorg/joda/time/DurationFieldType;

    move-result-object v2

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 377
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static final b(Lorg/joda/time/l;)Lorg/joda/time/a;
    .locals 1

    .prologue
    .line 194
    if-nez p0, :cond_1

    .line 195
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    .line 201
    :cond_0
    :goto_0
    return-object v0

    .line 197
    :cond_1
    invoke-interface {p0}, Lorg/joda/time/l;->getChronology()Lorg/joda/time/a;

    move-result-object v0

    .line 198
    if-nez v0, :cond_0

    .line 199
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstance()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    goto :goto_0
.end method

.method public static final b(Lorg/joda/time/m;)Lorg/joda/time/m;
    .locals 2

    .prologue
    .line 264
    if-nez p0, :cond_0

    .line 265
    invoke-static {}, Lorg/joda/time/d;->a()J

    move-result-wide v0

    .line 266
    new-instance p0, Lorg/joda/time/Interval;

    invoke-direct {p0, v0, v1, v0, v1}, Lorg/joda/time/Interval;-><init>(JJ)V

    .line 268
    :cond_0
    return-object p0
.end method

.method public static final b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-static {}, Lorg/joda/time/d;->d()V

    .line 99
    sget-object v0, Lorg/joda/time/d;->a:Lorg/joda/time/d$d;

    sput-object v0, Lorg/joda/time/d;->b:Lorg/joda/time/d$b;

    .line 100
    return-void
.end method

.method public static final b(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {}, Lorg/joda/time/d;->d()V

    .line 128
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 129
    sget-object v0, Lorg/joda/time/d;->a:Lorg/joda/time/d$d;

    sput-object v0, Lorg/joda/time/d;->b:Lorg/joda/time/d$b;

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    new-instance v0, Lorg/joda/time/d$c;

    invoke-direct {v0, p0, p1}, Lorg/joda/time/d$c;-><init>(J)V

    sput-object v0, Lorg/joda/time/d;->b:Lorg/joda/time/d$b;

    goto :goto_0
.end method

.method public static final c(J)D
    .locals 4

    .prologue
    .line 466
    long-to-double v0, p0

    const-wide v2, 0x4194997000000000L    # 8.64E7

    div-double/2addr v0, v2

    .line 467
    const-wide v2, 0x41429ec5c0000000L    # 2440587.5

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static final c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/joda/time/DateTimeZone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 427
    sget-object v0, Lorg/joda/time/d;->c:Ljava/util/Map;

    return-object v0
.end method

.method public static final d(J)J
    .locals 4

    .prologue
    .line 486
    invoke-static {p0, p1}, Lorg/joda/time/d;->c(J)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method private static d()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_0

    .line 161
    new-instance v1, Lorg/joda/time/JodaTimePermission;

    const-string v2, "CurrentTime.setProvider"

    invoke-direct {v1, v2}, Lorg/joda/time/JodaTimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 163
    :cond_0
    return-void
.end method
