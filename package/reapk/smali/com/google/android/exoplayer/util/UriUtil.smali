.class public final Lcom/google/android/exoplayer/util/UriUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FRAGMENT:I = 0x3

.field private static final INDEX_COUNT:I = 0x4

.field private static final PATH:I = 0x1

.field private static final QUERY:I = 0x2

.field private static final SCHEME_COLON:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method private static getUriIndices(Ljava/lang/String;)[I
    .locals 13
    .param p0, "uriString"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v12, 0x2f

    const/4 v11, -0x1

    .line 209
    const/4 v10, 0x4

    new-array v2, v10, [I

    .line 210
    .local v2, "indices":[I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 211
    aput v11, v2, v9

    .line 256
    :goto_0
    return-object v2

    .line 217
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 218
    .local v3, "length":I
    const/16 v10, 0x23

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 219
    .local v0, "fragmentIndex":I
    if-ne v0, v11, :cond_1

    .line 220
    move v0, v3

    .line 222
    :cond_1
    const/16 v10, 0x3f

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 223
    .local v5, "queryIndex":I
    if-eq v5, v11, :cond_2

    if-le v5, v0, :cond_3

    .line 225
    :cond_2
    move v5, v0

    .line 229
    :cond_3
    invoke-virtual {p0, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 230
    .local v7, "schemeIndexLimit":I
    if-eq v7, v11, :cond_4

    if-le v7, v5, :cond_5

    .line 231
    :cond_4
    move v7, v5

    .line 233
    :cond_5
    const/16 v10, 0x3a

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 234
    .local v6, "schemeIndex":I
    if-le v6, v7, :cond_6

    .line 236
    const/4 v6, -0x1

    .line 241
    :cond_6
    add-int/lit8 v10, v6, 0x2

    if-ge v10, v5, :cond_9

    add-int/lit8 v10, v6, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v12, :cond_9

    add-int/lit8 v10, v6, 0x2

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v12, :cond_9

    move v1, v8

    .line 243
    .local v1, "hasAuthority":Z
    :goto_1
    if-eqz v1, :cond_a

    .line 244
    add-int/lit8 v10, v6, 0x3

    invoke-virtual {p0, v12, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 245
    .local v4, "pathIndex":I
    if-eq v4, v11, :cond_7

    if-le v4, v5, :cond_8

    .line 246
    :cond_7
    move v4, v5

    .line 252
    :cond_8
    :goto_2
    aput v6, v2, v9

    .line 253
    aput v4, v2, v8

    .line 254
    const/4 v8, 0x2

    aput v5, v2, v8

    .line 255
    const/4 v8, 0x3

    aput v0, v2, v8

    goto :goto_0

    .end local v1    # "hasAuthority":Z
    .end local v4    # "pathIndex":I
    :cond_9
    move v1, v9

    .line 241
    goto :goto_1

    .line 249
    .restart local v1    # "hasAuthority":Z
    :cond_a
    add-int/lit8 v4, v6, 0x1

    .restart local v4    # "pathIndex":I
    goto :goto_2
.end method

.method private static removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;
    .locals 9
    .param p0, "uri"    # Ljava/lang/StringBuilder;
    .param p1, "offset"    # I
    .param p2, "limit"    # I

    .prologue
    const/16 v8, 0x2f

    const/16 v7, 0x2e

    .line 158
    if-lt p1, p2, :cond_0

    .line 160
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 199
    :goto_0
    return-object v5

    .line 162
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_1

    .line 164
    add-int/lit8 p1, p1, 0x1

    .line 167
    :cond_1
    move v4, p1

    .line 168
    .local v4, "segmentStart":I
    move v0, p1

    .line 169
    .local v0, "i":I
    :goto_1
    if-gt v0, p2, :cond_7

    .line 170
    const/4 v1, -0x1

    .line 171
    .local v1, "nextSegmentStart":I
    if-ne v0, p2, :cond_2

    .line 172
    move v1, v0

    .line 181
    :goto_2
    add-int/lit8 v5, v4, 0x1

    if-ne v0, v5, :cond_4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_4

    .line 183
    invoke-virtual {p0, v4, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 184
    sub-int v5, v1, v4

    sub-int/2addr p2, v5

    .line 185
    move v0, v4

    goto :goto_1

    .line 173
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_3

    .line 174
    add-int/lit8 v1, v0, 0x1

    goto :goto_2

    .line 176
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 177
    goto :goto_1

    .line 186
    :cond_4
    add-int/lit8 v5, v4, 0x2

    if-ne v0, v5, :cond_6

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_6

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_6

    .line 188
    const-string v5, "/"

    add-int/lit8 v6, v4, -0x2

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 189
    .local v2, "prevSegmentStart":I
    if-le v2, p1, :cond_5

    move v3, v2

    .line 190
    .local v3, "removeFrom":I
    :goto_3
    invoke-virtual {p0, v3, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 191
    sub-int v5, v1, v3

    sub-int/2addr p2, v5

    .line 192
    move v4, v2

    .line 193
    move v0, v2

    .line 194
    goto :goto_1

    .end local v3    # "removeFrom":I
    :cond_5
    move v3, p1

    .line 189
    goto :goto_3

    .line 195
    .end local v2    # "prevSegmentStart":I
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 196
    move v4, v0

    goto :goto_1

    .line 199
    .end local v1    # "nextSegmentStart":I
    :cond_7
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "baseUri"    # Ljava/lang/String;
    .param p1, "referenceUri"    # Ljava/lang/String;

    .prologue
    const/4 v11, -0x1

    const/16 v10, 0x2f

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .local v4, "uri":Ljava/lang/StringBuilder;
    if-nez p0, :cond_0

    const-string p0, ""

    .line 92
    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 94
    :cond_1
    invoke-static {p1}, Lcom/google/android/exoplayer/util/UriUtil;->getUriIndices(Ljava/lang/String;)[I

    move-result-object v3

    .line 95
    .local v3, "refIndices":[I
    aget v5, v3, v9

    if-eq v5, v11, :cond_2

    .line 97
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    aget v5, v3, v7

    aget v6, v3, v8

    invoke-static {v4, v5, v6}, Lcom/google/android/exoplayer/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    .line 99
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 144
    :goto_0
    return-object v5

    .line 102
    :cond_2
    invoke-static {p0}, Lcom/google/android/exoplayer/util/UriUtil;->getUriIndices(Ljava/lang/String;)[I

    move-result-object v0

    .line 103
    .local v0, "baseIndices":[I
    const/4 v5, 0x3

    aget v5, v3, v5

    if-nez v5, :cond_3

    .line 106
    const/4 v5, 0x3

    aget v5, v0, v5

    invoke-virtual {v4, p0, v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 109
    :cond_3
    aget v5, v3, v8

    if-nez v5, :cond_4

    .line 112
    aget v5, v0, v8

    invoke-virtual {v4, p0, v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 115
    :cond_4
    aget v5, v3, v7

    if-eqz v5, :cond_5

    .line 117
    aget v5, v0, v9

    add-int/lit8 v1, v5, 0x1

    .line 118
    .local v1, "baseLimit":I
    invoke-virtual {v4, p0, v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    aget v5, v3, v7

    add-int/2addr v5, v1

    aget v6, v3, v8

    add-int/2addr v6, v1

    invoke-static {v4, v5, v6}, Lcom/google/android/exoplayer/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 122
    .end local v1    # "baseLimit":I
    :cond_5
    aget v5, v3, v7

    aget v6, v3, v8

    if-eq v5, v6, :cond_6

    aget v5, v3, v7

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v10, :cond_6

    .line 125
    aget v5, v0, v7

    invoke-virtual {v4, p0, v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    aget v5, v0, v7

    aget v6, v0, v7

    aget v7, v3, v8

    add-int/2addr v6, v7

    invoke-static {v4, v5, v6}, Lcom/google/android/exoplayer/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 131
    :cond_6
    aget v5, v0, v9

    add-int/lit8 v5, v5, 0x2

    aget v6, v0, v7

    if-ge v5, v6, :cond_7

    aget v5, v0, v7

    aget v6, v0, v8

    if-ne v5, v6, :cond_7

    .line 134
    aget v5, v0, v7

    invoke-virtual {v4, p0, v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    aget v5, v0, v7

    aget v6, v0, v7

    aget v7, v3, v8

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/google/android/exoplayer/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 141
    :cond_7
    aget v5, v0, v8

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v10, v5}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    .line 142
    .local v2, "lastSlashIndex":I
    if-ne v2, v11, :cond_8

    aget v1, v0, v7

    .line 143
    .restart local v1    # "baseLimit":I
    :goto_1
    invoke-virtual {v4, p0, v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    aget v5, v0, v7

    aget v6, v3, v8

    add-int/2addr v6, v1

    invoke-static {v4, v5, v6}, Lcom/google/android/exoplayer/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 142
    .end local v1    # "baseLimit":I
    :cond_8
    add-int/lit8 v1, v2, 0x1

    goto :goto_1
.end method

.method public static resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "baseUri"    # Ljava/lang/String;
    .param p1, "referenceUri"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {p0, p1}, Lcom/google/android/exoplayer/util/UriUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
