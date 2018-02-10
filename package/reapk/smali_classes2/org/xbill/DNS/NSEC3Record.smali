.class public Lorg/xbill/DNS/NSEC3Record;
.super Lorg/xbill/DNS/Record;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/NSEC3Record$a;,
        Lorg/xbill/DNS/NSEC3Record$b;
    }
.end annotation


# static fields
.field public static final SHA1_DIGEST_ID:I = 0x1

.field private static final b32:Lorg/xbill/DNS/b/c;

.field private static final serialVersionUID:J = -0x62dbc5b976c6cbf7L


# instance fields
.field private flags:I

.field private hashAlg:I

.field private iterations:I

.field private next:[B

.field private salt:[B

.field private types:Lorg/xbill/DNS/av;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    new-instance v0, Lorg/xbill/DNS/b/c;

    const-string v1, "0123456789ABCDEFGHIJKLMNOPQRSTUV="

    invoke-direct {v0, v1, v2, v2}, Lorg/xbill/DNS/b/c;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lorg/xbill/DNS/NSEC3Record;->b32:Lorg/xbill/DNS/b/c;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJIII[B[B[I)V
    .locals 9
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "hashAlg"    # I
    .param p6, "flags"    # I
    .param p7, "iterations"    # I
    .param p8, "salt"    # [B
    .param p9, "next"    # [B
    .param p10, "types"    # [I

    .prologue
    .line 81
    const/16 v4, 0x32

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 82
    const-string v2, "hashAlg"

    invoke-static {v2, p5}, Lorg/xbill/DNS/NSEC3Record;->checkU8(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/xbill/DNS/NSEC3Record;->hashAlg:I

    .line 83
    const-string v2, "flags"

    invoke-static {v2, p6}, Lorg/xbill/DNS/NSEC3Record;->checkU8(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/xbill/DNS/NSEC3Record;->flags:I

    .line 84
    const-string v2, "iterations"

    move/from16 v0, p7

    invoke-static {v2, v0}, Lorg/xbill/DNS/NSEC3Record;->checkU16(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/xbill/DNS/NSEC3Record;->iterations:I

    .line 86
    if-eqz p8, :cond_1

    .line 87
    move-object/from16 v0, p8

    array-length v2, v0

    const/16 v3, 0xff

    if-le v2, v3, :cond_0

    .line 88
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid salt"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 89
    :cond_0
    move-object/from16 v0, p8

    array-length v2, v0

    if-lez v2, :cond_1

    .line 90
    move-object/from16 v0, p8

    array-length v2, v0

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    .line 91
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    const/4 v4, 0x0

    move-object/from16 v0, p8

    array-length v5, v0

    move-object/from16 v0, p8

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    :cond_1
    move-object/from16 v0, p9

    array-length v2, v0

    const/16 v3, 0xff

    if-le v2, v3, :cond_2

    .line 96
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid next hash"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    :cond_2
    move-object/from16 v0, p9

    array-length v2, v0

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/xbill/DNS/NSEC3Record;->next:[B

    .line 99
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/xbill/DNS/NSEC3Record;->next:[B

    const/4 v4, 0x0

    move-object/from16 v0, p9

    array-length v5, v0

    move-object/from16 v0, p9

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    new-instance v2, Lorg/xbill/DNS/av;

    move-object/from16 v0, p10

    invoke-direct {v2, v0}, Lorg/xbill/DNS/av;-><init>([I)V

    iput-object v2, p0, Lorg/xbill/DNS/NSEC3Record;->types:Lorg/xbill/DNS/av;

    .line 101
    return-void
.end method

.method static hashName(Lorg/xbill/DNS/Name;II[B)[B
    .locals 6
    .param p0, "name"    # Lorg/xbill/DNS/Name;
    .param p1, "hashAlg"    # I
    .param p2, "iterations"    # I
    .param p3, "salt"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 231
    packed-switch p1, :pswitch_data_0

    .line 236
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Unknown NSEC3 algorithmidentifier: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 233
    :pswitch_0
    const-string v3, "sha-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 240
    .local v0, "digest":Ljava/security/MessageDigest;
    const/4 v1, 0x0

    .line 241
    .local v1, "hash":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-gt v2, p2, :cond_2

    .line 242
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 243
    if-nez v2, :cond_1

    .line 244
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->toWireCanonical()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 247
    :goto_1
    if-eqz p3, :cond_0

    .line 248
    invoke-virtual {v0, p3}, Ljava/security/MessageDigest;->update([B)V

    .line 249
    :cond_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 241
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_1

    .line 251
    :cond_2
    return-object v1

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getFlags()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lorg/xbill/DNS/NSEC3Record;->flags:I

    return v0
.end method

.method public getHashAlgorithm()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lorg/xbill/DNS/NSEC3Record;->hashAlg:I

    return v0
.end method

.method public getIterations()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lorg/xbill/DNS/NSEC3Record;->iterations:I

    return v0
.end method

.method public getNext()[B
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->next:[B

    return-object v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lorg/xbill/DNS/NSEC3Record;

    invoke-direct {v0}, Lorg/xbill/DNS/NSEC3Record;-><init>()V

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    return-object v0
.end method

.method public getTypes()[I
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->types:Lorg/xbill/DNS/av;

    invoke-virtual {v0}, Lorg/xbill/DNS/av;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method public hasType(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 223
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->types:Lorg/xbill/DNS/av;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/av;->contains(I)Z

    move-result v0

    return v0
.end method

.method public hashName(Lorg/xbill/DNS/Name;)[B
    .locals 3
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 263
    iget v0, p0, Lorg/xbill/DNS/NSEC3Record;->hashAlg:I

    iget v1, p0, Lorg/xbill/DNS/NSEC3Record;->iterations:I

    iget-object v2, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    invoke-static {p1, v0, v1, v2}, Lorg/xbill/DNS/NSEC3Record;->hashName(Lorg/xbill/DNS/Name;II[B)[B

    move-result-object v0

    return-object v0
.end method

.method rdataFromString(Lorg/xbill/DNS/at;Lorg/xbill/DNS/Name;)V
    .locals 3
    .param p1, "st"    # Lorg/xbill/DNS/at;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->h()I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/NSEC3Record;->hashAlg:I

    .line 140
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->h()I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/NSEC3Record;->flags:I

    .line 141
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->g()I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/NSEC3Record;->iterations:I

    .line 143
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->c()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "s":Ljava/lang/String;
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    .line 153
    :cond_0
    sget-object v1, Lorg/xbill/DNS/NSEC3Record;->b32:Lorg/xbill/DNS/b/c;

    invoke-virtual {p1, v1}, Lorg/xbill/DNS/at;->a(Lorg/xbill/DNS/b/c;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/NSEC3Record;->next:[B

    .line 154
    new-instance v1, Lorg/xbill/DNS/av;

    invoke-direct {v1, p1}, Lorg/xbill/DNS/av;-><init>(Lorg/xbill/DNS/at;)V

    iput-object v1, p0, Lorg/xbill/DNS/NSEC3Record;->types:Lorg/xbill/DNS/av;

    .line 155
    return-void

    .line 147
    :cond_1
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->b()V

    .line 148
    invoke-virtual {p1}, Lorg/xbill/DNS/at;->n()[B

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    .line 149
    iget-object v1, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    array-length v1, v1

    const/16 v2, 0xff

    if-le v1, v2, :cond_0

    .line 150
    const-string v1, "salt value too long"

    invoke-virtual {p1, v1}, Lorg/xbill/DNS/at;->a(Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1
.end method

.method rrFromWire(Lorg/xbill/DNS/h;)V
    .locals 3
    .param p1, "in"    # Lorg/xbill/DNS/h;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->g()I

    move-result v2

    iput v2, p0, Lorg/xbill/DNS/NSEC3Record;->hashAlg:I

    .line 106
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->g()I

    move-result v2

    iput v2, p0, Lorg/xbill/DNS/NSEC3Record;->flags:I

    .line 107
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->h()I

    move-result v2

    iput v2, p0, Lorg/xbill/DNS/NSEC3Record;->iterations:I

    .line 109
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->g()I

    move-result v1

    .line 110
    .local v1, "salt_length":I
    if-lez v1, :cond_0

    .line 111
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/h;->d(I)[B

    move-result-object v2

    iput-object v2, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    .line 115
    :goto_0
    invoke-virtual {p1}, Lorg/xbill/DNS/h;->g()I

    move-result v0

    .line 116
    .local v0, "next_length":I
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/h;->d(I)[B

    move-result-object v2

    iput-object v2, p0, Lorg/xbill/DNS/NSEC3Record;->next:[B

    .line 117
    new-instance v2, Lorg/xbill/DNS/av;

    invoke-direct {v2, p1}, Lorg/xbill/DNS/av;-><init>(Lorg/xbill/DNS/h;)V

    iput-object v2, p0, Lorg/xbill/DNS/NSEC3Record;->types:Lorg/xbill/DNS/av;

    .line 118
    return-void

    .line 113
    .end local v0    # "next_length":I
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    goto :goto_0
.end method

.method rrToString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 160
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 161
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lorg/xbill/DNS/NSEC3Record;->hashAlg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 162
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 163
    iget v1, p0, Lorg/xbill/DNS/NSEC3Record;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 164
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 165
    iget v1, p0, Lorg/xbill/DNS/NSEC3Record;->iterations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 166
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 167
    iget-object v1, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    if-nez v1, :cond_1

    .line 168
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 171
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 172
    sget-object v1, Lorg/xbill/DNS/NSEC3Record;->b32:Lorg/xbill/DNS/b/c;

    iget-object v2, p0, Lorg/xbill/DNS/NSEC3Record;->next:[B

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/b/c;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    iget-object v1, p0, Lorg/xbill/DNS/NSEC3Record;->types:Lorg/xbill/DNS/av;

    invoke-virtual {v1}, Lorg/xbill/DNS/av;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 176
    iget-object v1, p0, Lorg/xbill/DNS/NSEC3Record;->types:Lorg/xbill/DNS/av;

    invoke-virtual {v1}, Lorg/xbill/DNS/av;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 170
    :cond_1
    iget-object v1, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    invoke-static {v1}, Lorg/xbill/DNS/b/b;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method rrToWire(Lorg/xbill/DNS/i;Lorg/xbill/DNS/e;Z)V
    .locals 1
    .param p1, "out"    # Lorg/xbill/DNS/i;
    .param p2, "c"    # Lorg/xbill/DNS/e;
    .param p3, "canonical"    # Z

    .prologue
    .line 122
    iget v0, p0, Lorg/xbill/DNS/NSEC3Record;->hashAlg:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->b(I)V

    .line 123
    iget v0, p0, Lorg/xbill/DNS/NSEC3Record;->flags:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->b(I)V

    .line 124
    iget v0, p0, Lorg/xbill/DNS/NSEC3Record;->iterations:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->c(I)V

    .line 126
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->b(I)V

    .line 128
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->a([B)V

    .line 132
    :goto_0
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->next:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->b(I)V

    .line 133
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->next:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->a([B)V

    .line 134
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->types:Lorg/xbill/DNS/av;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/av;->toWire(Lorg/xbill/DNS/i;)V

    .line 135
    return-void

    .line 130
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/i;->b(I)V

    goto :goto_0
.end method
