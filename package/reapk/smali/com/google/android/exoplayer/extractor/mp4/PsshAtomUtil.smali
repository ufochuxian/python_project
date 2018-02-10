.class public final Lcom/google/android/exoplayer/extractor/mp4/PsshAtomUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "PsshAtomUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static buildPsshAtom(Ljava/util/UUID;[B)[B
    .locals 4
    .param p0, "uuid"    # Ljava/util/UUID;
    .param p1, "data"    # [B

    .prologue
    .line 45
    array-length v2, p1

    add-int/lit8 v1, v2, 0x20

    .line 46
    .local v1, "psshBoxLength":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 47
    .local v0, "psshBox":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 48
    sget v2, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_pssh:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 49
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 50
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 51
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 52
    array-length v2, p1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 53
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 54
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method private static parsePsshAtom([B)Landroid/util/Pair;
    .locals 12
    .param p0, "atom"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Lcom/google/android/exoplayer/util/ParsableByteArray;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;-><init>([B)V

    .line 108
    .local v0, "atomData":Lcom/google/android/exoplayer/util/ParsableByteArray;
    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->limit()I

    move-result v8

    const/16 v9, 0x20

    if-ge v8, v9, :cond_0

    .line 110
    const/4 v8, 0x0

    .line 140
    :goto_0
    return-object v8

    .line 112
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->setPosition(I)V

    .line 113
    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 114
    .local v1, "atomSize":I
    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    add-int/lit8 v8, v8, 0x4

    if-eq v1, v8, :cond_1

    .line 116
    const/4 v8, 0x0

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 119
    .local v2, "atomType":I
    sget v8, Lcom/google/android/exoplayer/extractor/mp4/Atom;->TYPE_pssh:I

    if-eq v2, v8, :cond_2

    .line 121
    const/4 v8, 0x0

    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v8

    invoke-static {v8}, Lcom/google/android/exoplayer/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v3

    .line 124
    .local v3, "atomVersion":I
    const/4 v8, 0x1

    if-le v3, v8, :cond_3

    .line 125
    const-string v8, "PsshAtomUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported pssh version: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v8, 0x0

    goto :goto_0

    .line 128
    :cond_3
    new-instance v7, Ljava/util/UUID;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLong()J

    move-result-wide v8

    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLong()J

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Ljava/util/UUID;-><init>(JJ)V

    .line 129
    .local v7, "uuid":Ljava/util/UUID;
    const/4 v8, 0x1

    if-ne v3, v8, :cond_4

    .line 130
    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    .line 131
    .local v6, "keyIdCount":I
    mul-int/lit8 v8, v6, 0x10

    invoke-virtual {v0, v8}, Lcom/google/android/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 133
    .end local v6    # "keyIdCount":I
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    .line 134
    .local v5, "dataSize":I
    invoke-virtual {v0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->bytesLeft()I

    move-result v8

    if-eq v5, v8, :cond_5

    .line 136
    const/4 v8, 0x0

    goto :goto_0

    .line 138
    :cond_5
    new-array v4, v5, [B

    .line 139
    .local v4, "data":[B
    const/4 v8, 0x0

    invoke-virtual {v0, v4, v8, v5}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readBytes([BII)V

    .line 140
    invoke-static {v7, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    goto :goto_0
.end method

.method public static parseSchemeSpecificData([BLjava/util/UUID;)[B
    .locals 5
    .param p0, "atom"    # [B
    .param p1, "uuid"    # Ljava/util/UUID;

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-static {p0}, Lcom/google/android/exoplayer/extractor/mp4/PsshAtomUtil;->parsePsshAtom([B)Landroid/util/Pair;

    move-result-object v0

    .line 88
    .local v0, "parsedAtom":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/UUID;[B>;"
    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-object v1

    .line 91
    :cond_0
    if-eqz p1, :cond_1

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 92
    const-string v2, "PsshAtomUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UUID mismatch. Expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", got: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    :cond_1
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [B

    goto :goto_0
.end method

.method public static parseUuid([B)Ljava/util/UUID;
    .locals 2
    .param p0, "atom"    # [B

    .prologue
    .line 67
    invoke-static {p0}, Lcom/google/android/exoplayer/extractor/mp4/PsshAtomUtil;->parsePsshAtom([B)Landroid/util/Pair;

    move-result-object v0

    .line 68
    .local v0, "parsedAtom":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/UUID;[B>;"
    if-nez v0, :cond_0

    .line 69
    const/4 v1, 0x0

    .line 71
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/UUID;

    goto :goto_0
.end method
