.class public final Lorg/cybergarage/util/StringUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final findFirstNotOf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "chars"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 99
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v5, v2

    invoke-static/range {v0 .. v5}, Lorg/cybergarage/util/StringUtil;->findOf(Ljava/lang/String;Ljava/lang/String;IIIZ)I

    move-result v0

    return v0
.end method

.method public static final findFirstOf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "chars"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 94
    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-static/range {v0 .. v5}, Lorg/cybergarage/util/StringUtil;->findOf(Ljava/lang/String;Ljava/lang/String;IIIZ)I

    move-result v0

    return v0
.end method

.method public static final findLastNotOf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "chars"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 109
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move v5, v3

    invoke-static/range {v0 .. v5}, Lorg/cybergarage/util/StringUtil;->findOf(Ljava/lang/String;Ljava/lang/String;IIIZ)I

    move-result v0

    return v0
.end method

.method public static final findLastOf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "chars"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lorg/cybergarage/util/StringUtil;->findOf(Ljava/lang/String;Ljava/lang/String;IIIZ)I

    move-result v0

    return v0
.end method

.method public static final findOf(Ljava/lang/String;Ljava/lang/String;IIIZ)I
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "chars"    # Ljava/lang/String;
    .param p2, "startIdx"    # I
    .param p3, "endIdx"    # I
    .param p4, "offset"    # I
    .param p5, "isEqual"    # Z

    .prologue
    const/4 v6, -0x1

    .line 55
    if-nez p4, :cond_1

    move v2, v6

    .line 89
    :cond_0
    :goto_0
    return v2

    .line 57
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 58
    .local v0, "charCnt":I
    move v2, p2

    .line 61
    .local v2, "idx":I
    :goto_1
    if-lez p4, :cond_3

    .line 63
    if-ge p3, v2, :cond_4

    :cond_2
    move v2, v6

    .line 89
    goto :goto_0

    .line 67
    :cond_3
    if-lt v2, p3, :cond_2

    .line 70
    :cond_4
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 71
    .local v5, "strc":C
    const/4 v4, 0x0

    .line 72
    .local v4, "noEqualCnt":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_2
    if-lt v3, v0, :cond_5

    .line 87
    add-int/2addr v2, p4

    .line 59
    goto :goto_1

    .line 74
    :cond_5
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 75
    .local v1, "charc":C
    if-eqz p5, :cond_7

    .line 77
    if-eq v5, v1, :cond_0

    .line 72
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 81
    :cond_7
    if-eq v5, v1, :cond_8

    .line 82
    add-int/lit8 v4, v4, 0x1

    .line 83
    :cond_8
    if-ne v4, v0, :cond_6

    goto :goto_0
.end method

.method public static final hasData(Ljava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 22
    if-nez p0, :cond_1

    .line 26
    :cond_0
    :goto_0
    return v0

    .line 24
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 26
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final toInteger(Ljava/lang/String;)I
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 33
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 38
    :goto_0
    return v1

    .line 34
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 38
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final toLong(Ljava/lang/String;)J
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 45
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 50
    :goto_0
    return-wide v2

    .line 46
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .line 50
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public static final trim(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "trimStr"    # Ljava/lang/String;
    .param p1, "trimChars"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-static {p0, p1}, Lorg/cybergarage/util/StringUtil;->findFirstNotOf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 115
    .local v1, "spIdx":I
    if-gez v1, :cond_0

    .line 117
    move-object v0, p0

    .line 128
    .local v0, "buf":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 120
    .end local v0    # "buf":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "trimStr2":Ljava/lang/String;
    invoke-static {v2, p1}, Lorg/cybergarage/util/StringUtil;->findLastNotOf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 122
    if-gez v1, :cond_1

    .line 124
    move-object v0, v2

    .line 125
    .restart local v0    # "buf":Ljava/lang/String;
    goto :goto_0

    .line 127
    .end local v0    # "buf":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 128
    .restart local v0    # "buf":Ljava/lang/String;
    goto :goto_0
.end method
