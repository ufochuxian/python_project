.class public final Lorg/xbill/DNS/ar;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:J = 0x7fffffffL


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)J
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 83
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/xbill/DNS/ar;->a(Ljava/lang/String;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Ljava/lang/String;Z)J
    .locals 12
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "clamp"    # Z

    .prologue
    .line 38
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_1

    .line 39
    :cond_0
    new-instance v8, Ljava/lang/NumberFormatException;

    invoke-direct {v8}, Ljava/lang/NumberFormatException;-><init>()V

    throw v8

    .line 40
    :cond_1
    const-wide/16 v6, 0x0

    .line 41
    .local v6, "value":J
    const-wide/16 v4, 0x0

    .line 42
    .local v4, "ttl":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v1, v8, :cond_4

    .line 43
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 44
    .local v0, "c":C
    move-wide v2, v6

    .line 45
    .local v2, "oldvalue":J
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 46
    const-wide/16 v8, 0xa

    mul-long/2addr v8, v6

    invoke-static {v0}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v10

    int-to-long v10, v10

    add-long v6, v8, v10

    .line 47
    cmp-long v8, v6, v2

    if-gez v8, :cond_3

    .line 48
    new-instance v8, Ljava/lang/NumberFormatException;

    invoke-direct {v8}, Ljava/lang/NumberFormatException;-><init>()V

    throw v8

    .line 50
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 56
    new-instance v8, Ljava/lang/NumberFormatException;

    invoke-direct {v8}, Ljava/lang/NumberFormatException;-><init>()V

    throw v8

    .line 51
    :sswitch_0
    const-wide/16 v8, 0x7

    mul-long/2addr v6, v8

    .line 52
    :sswitch_1
    const-wide/16 v8, 0x18

    mul-long/2addr v6, v8

    .line 53
    :sswitch_2
    const-wide/16 v8, 0x3c

    mul-long/2addr v6, v8

    .line 54
    :sswitch_3
    const-wide/16 v8, 0x3c

    mul-long/2addr v6, v8

    .line 58
    :sswitch_4
    add-long/2addr v4, v6

    .line 59
    const-wide/16 v6, 0x0

    .line 60
    const-wide v8, 0xffffffffL

    cmp-long v8, v4, v8

    if-lez v8, :cond_3

    .line 61
    new-instance v8, Ljava/lang/NumberFormatException;

    invoke-direct {v8}, Ljava/lang/NumberFormatException;-><init>()V

    throw v8

    .line 42
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    .end local v0    # "c":C
    .end local v2    # "oldvalue":J
    :cond_4
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_5

    .line 65
    move-wide v4, v6

    .line 67
    :cond_5
    const-wide v8, 0xffffffffL

    cmp-long v8, v4, v8

    if-lez v8, :cond_6

    .line 68
    new-instance v8, Ljava/lang/NumberFormatException;

    invoke-direct {v8}, Ljava/lang/NumberFormatException;-><init>()V

    throw v8

    .line 69
    :cond_6
    const-wide/32 v8, 0x7fffffff

    cmp-long v8, v4, v8

    if-lez v8, :cond_7

    if-eqz p1, :cond_7

    .line 70
    const-wide/32 v4, 0x7fffffff

    .line 71
    :cond_7
    return-wide v4

    .line 50
    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_1
        0x48 -> :sswitch_2
        0x4d -> :sswitch_3
        0x53 -> :sswitch_4
        0x57 -> :sswitch_0
    .end sparse-switch
.end method

.method static a(J)V
    .locals 2
    .param p0, "i"    # J

    .prologue
    .line 22
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_1

    .line 23
    :cond_0
    new-instance v0, Lorg/xbill/DNS/InvalidTTLException;

    invoke-direct {v0, p0, p1}, Lorg/xbill/DNS/InvalidTTLException;-><init>(J)V

    throw v0

    .line 24
    :cond_1
    return-void
.end method

.method public static b(J)Ljava/lang/String;
    .locals 14
    .param p0, "ttl"    # J

    .prologue
    .line 88
    invoke-static {p0, p1}, Lorg/xbill/DNS/ar;->a(J)V

    .line 89
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 91
    .local v6, "sb":Ljava/lang/StringBuffer;
    const-wide/16 v12, 0x3c

    rem-long v8, p0, v12

    .line 92
    .local v8, "secs":J
    const-wide/16 v12, 0x3c

    div-long/2addr p0, v12

    .line 93
    const-wide/16 v12, 0x3c

    rem-long v4, p0, v12

    .line 94
    .local v4, "mins":J
    const-wide/16 v12, 0x3c

    div-long/2addr p0, v12

    .line 95
    const-wide/16 v12, 0x18

    rem-long v2, p0, v12

    .line 96
    .local v2, "hours":J
    const-wide/16 v12, 0x18

    div-long/2addr p0, v12

    .line 97
    const-wide/16 v12, 0x7

    rem-long v0, p0, v12

    .line 98
    .local v0, "days":J
    const-wide/16 v12, 0x7

    div-long/2addr p0, v12

    .line 99
    move-wide v10, p0

    .line 100
    .local v10, "weeks":J
    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-lez v7, :cond_0

    .line 101
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v12, "W"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    :cond_0
    const-wide/16 v12, 0x0

    cmp-long v7, v0, v12

    if-lez v7, :cond_1

    .line 103
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v12, "D"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    :cond_1
    const-wide/16 v12, 0x0

    cmp-long v7, v2, v12

    if-lez v7, :cond_2

    .line 105
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v12, "H"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    :cond_2
    const-wide/16 v12, 0x0

    cmp-long v7, v4, v12

    if-lez v7, :cond_3

    .line 107
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v12, "M"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    :cond_3
    const-wide/16 v12, 0x0

    cmp-long v7, v8, v12

    if-gtz v7, :cond_4

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-nez v7, :cond_5

    const-wide/16 v12, 0x0

    cmp-long v7, v0, v12

    if-nez v7, :cond_5

    const-wide/16 v12, 0x0

    cmp-long v7, v2, v12

    if-nez v7, :cond_5

    const-wide/16 v12, 0x0

    cmp-long v7, v4, v12

    if-nez v7, :cond_5

    .line 109
    :cond_4
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v12, "S"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
