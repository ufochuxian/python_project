.class public final Lorg/xbill/DNS/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:J = 0xffffffffL


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static a(JJ)I
    .locals 10
    .param p0, "serial1"    # J
    .param p2, "serial2"    # J

    .prologue
    const-wide v8, 0x100000000L

    const-wide/16 v6, 0x0

    const-wide v4, 0xffffffffL

    .line 32
    cmp-long v2, p0, v6

    if-ltz v2, :cond_0

    cmp-long v2, p0, v4

    if-lez v2, :cond_1

    .line 33
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " out of range"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 34
    :cond_1
    cmp-long v2, p2, v6

    if-ltz v2, :cond_2

    cmp-long v2, p2, v4

    if-lez v2, :cond_3

    .line 35
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " out of range"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 36
    :cond_3
    sub-long v0, p0, p2

    .line 37
    .local v0, "diff":J
    cmp-long v2, v0, v4

    if-ltz v2, :cond_5

    .line 38
    sub-long/2addr v0, v8

    .line 41
    :cond_4
    :goto_0
    long-to-int v2, v0

    return v2

    .line 39
    :cond_5
    const-wide v2, -0xffffffffL

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    .line 40
    add-long/2addr v0, v8

    goto :goto_0
.end method

.method public static a(J)J
    .locals 6
    .param p0, "serial"    # J

    .prologue
    const-wide v4, 0xffffffffL

    const-wide/16 v0, 0x0

    .line 54
    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    cmp-long v2, p0, v4

    if-lez v2, :cond_1

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    cmp-long v2, p0, v4

    if-nez v2, :cond_2

    .line 58
    :goto_0
    return-wide v0

    :cond_2
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    goto :goto_0
.end method
