.class public final Ljavax/jmdns/impl/b;
.super Ljavax/jmdns/impl/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/b$a;
    }
.end annotation


# static fields
.field public static a:Z

.field private static i:Ljava/util/logging/Logger;

.field private static final n:[C


# instance fields
.field private final j:Ljava/net/DatagramPacket;

.field private final k:J

.field private final l:Ljavax/jmdns/impl/b$a;

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Ljavax/jmdns/impl/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/b;->i:Ljava/util/logging/Logger;

    .line 33
    const/4 v0, 0x1

    sput-boolean v0, Ljavax/jmdns/impl/b;->a:Z

    .line 583
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Ljavax/jmdns/impl/b;->n:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor <init>(IIZLjava/net/DatagramPacket;J)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "id"    # I
    .param p3, "multicast"    # Z
    .param p4, "packet"    # Ljava/net/DatagramPacket;
    .param p5, "receivedTime"    # J

    .prologue
    .line 268
    invoke-direct {p0, p1, p2, p3}, Ljavax/jmdns/impl/d;-><init>(IIZ)V

    .line 269
    iput-object p4, p0, Ljavax/jmdns/impl/b;->j:Ljava/net/DatagramPacket;

    .line 270
    new-instance v0, Ljavax/jmdns/impl/b$a;

    invoke-virtual {p4}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    invoke-virtual {p4}, Ljava/net/DatagramPacket;->getLength()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljavax/jmdns/impl/b$a;-><init>([BI)V

    iput-object v0, p0, Ljavax/jmdns/impl/b;->l:Ljavax/jmdns/impl/b$a;

    .line 271
    iput-wide p5, p0, Ljavax/jmdns/impl/b;->k:J

    .line 272
    return-void
.end method

.method public constructor <init>(Ljava/net/DatagramPacket;)V
    .locals 14
    .param p1, "packet"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 188
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v9

    sget v12, Ljavax/jmdns/impl/constants/a;->c:I

    if-ne v9, v12, :cond_0

    move v9, v10

    :goto_0
    invoke-direct {p0, v11, v11, v9}, Ljavax/jmdns/impl/d;-><init>(IIZ)V

    .line 189
    iput-object p1, p0, Ljavax/jmdns/impl/b;->j:Ljava/net/DatagramPacket;

    .line 190
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    .line 191
    .local v8, "source":Ljava/net/InetAddress;
    new-instance v9, Ljavax/jmdns/impl/b$a;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v11

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v12

    invoke-direct {v9, v11, v12}, Ljavax/jmdns/impl/b$a;-><init>([BI)V

    iput-object v9, p0, Ljavax/jmdns/impl/b;->l:Ljavax/jmdns/impl/b$a;

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-wide v12, p0, Ljavax/jmdns/impl/b;->k:J

    .line 193
    const/16 v9, 0x5b4

    iput v9, p0, Ljavax/jmdns/impl/b;->m:I

    .line 196
    :try_start_0
    iget-object v9, p0, Ljavax/jmdns/impl/b;->l:Ljavax/jmdns/impl/b$a;

    invoke-virtual {v9}, Ljavax/jmdns/impl/b$a;->c()I

    move-result v9

    invoke-virtual {p0, v9}, Ljavax/jmdns/impl/b;->a(I)V

    .line 197
    iget-object v9, p0, Ljavax/jmdns/impl/b;->l:Ljavax/jmdns/impl/b$a;

    invoke-virtual {v9}, Ljavax/jmdns/impl/b$a;->c()I

    move-result v9

    invoke-virtual {p0, v9}, Ljavax/jmdns/impl/b;->b(I)V

    .line 198
    invoke-virtual {p0}, Ljavax/jmdns/impl/b;->q()I

    move-result v9

    if-lez v9, :cond_1

    .line 199
    new-instance v9, Ljava/io/IOException;

    const-string v11, "Received a message with a non standard operation code. Currently unsupported in the specification."

    invoke-direct {v9, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    sget-object v9, Ljavax/jmdns/impl/b;->i:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DNSIncoming() dump "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0, v10}, Ljavax/jmdns/impl/b;->a(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "\n exception "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v11, v10, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 261
    new-instance v2, Ljava/io/IOException;

    const-string v9, "DNSIncoming corrupted message"

    invoke-direct {v2, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 262
    .local v2, "ioe":Ljava/io/IOException;
    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 263
    throw v2

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v8    # "source":Ljava/net/InetAddress;
    :cond_0
    move v9, v11

    .line 188
    goto :goto_0

    .line 201
    .restart local v8    # "source":Ljava/net/InetAddress;
    :cond_1
    :try_start_1
    iget-object v9, p0, Ljavax/jmdns/impl/b;->l:Ljavax/jmdns/impl/b$a;

    invoke-virtual {v9}, Ljavax/jmdns/impl/b$a;->c()I

    move-result v6

    .line 202
    .local v6, "numQuestions":I
    iget-object v9, p0, Ljavax/jmdns/impl/b;->l:Ljavax/jmdns/impl/b$a;

    invoke-virtual {v9}, Ljavax/jmdns/impl/b$a;->c()I

    move-result v4

    .line 203
    .local v4, "numAnswers":I
    iget-object v9, p0, Ljavax/jmdns/impl/b;->l:Ljavax/jmdns/impl/b$a;

    invoke-virtual {v9}, Ljavax/jmdns/impl/b$a;->c()I

    move-result v5

    .line 204
    .local v5, "numAuthorities":I
    iget-object v9, p0, Ljavax/jmdns/impl/b;->l:Ljavax/jmdns/impl/b$a;

    invoke-virtual {v9}, Ljavax/jmdns/impl/b$a;->c()I

    move-result v3

    .line 206
    .local v3, "numAdditionals":I
    sget-object v9, Ljavax/jmdns/impl/b;->i:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v9, v11}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 207
    sget-object v9, Ljavax/jmdns/impl/b;->i:Ljava/util/logging/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DNSIncoming() questions:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " answers:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " authorities:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " additionals:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 213
    :cond_2
    mul-int/lit8 v9, v6, 0x5

    add-int v11, v4, v5

    add-int/2addr v11, v3

    mul-int/lit8 v11, v11, 0xb

    add-int/2addr v9, v11

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v11

    if-le v9, v11, :cond_3

    .line 214
    new-instance v9, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "questions:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " answers:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " authorities:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " additionals:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 218
    :cond_3
    if-lez v6, :cond_4

    .line 219
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_4

    .line 220
    iget-object v9, p0, Ljavax/jmdns/impl/b;->e:Ljava/util/List;

    invoke-direct {p0}, Ljavax/jmdns/impl/b;->x()Ljavax/jmdns/impl/f;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 225
    .end local v1    # "i":I
    :cond_4
    if-lez v4, :cond_6

    .line 226
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v4, :cond_6

    .line 227
    invoke-direct {p0, v8}, Ljavax/jmdns/impl/b;->a(Ljava/net/InetAddress;)Ljavax/jmdns/impl/g;

    move-result-object v7

    .line 228
    .local v7, "rec":Ljavax/jmdns/impl/g;
    if-eqz v7, :cond_5

    .line 230
    iget-object v9, p0, Ljavax/jmdns/impl/b;->f:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 235
    .end local v1    # "i":I
    .end local v7    # "rec":Ljavax/jmdns/impl/g;
    :cond_6
    if-lez v5, :cond_8

    .line 236
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v5, :cond_8

    .line 237
    invoke-direct {p0, v8}, Ljavax/jmdns/impl/b;->a(Ljava/net/InetAddress;)Ljavax/jmdns/impl/g;

    move-result-object v7

    .line 238
    .restart local v7    # "rec":Ljavax/jmdns/impl/g;
    if-eqz v7, :cond_7

    .line 240
    iget-object v9, p0, Ljavax/jmdns/impl/b;->g:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 245
    .end local v1    # "i":I
    .end local v7    # "rec":Ljavax/jmdns/impl/g;
    :cond_8
    if-lez v3, :cond_a

    .line 246
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v3, :cond_a

    .line 247
    invoke-direct {p0, v8}, Ljavax/jmdns/impl/b;->a(Ljava/net/InetAddress;)Ljavax/jmdns/impl/g;

    move-result-object v7

    .line 248
    .restart local v7    # "rec":Ljavax/jmdns/impl/g;
    if-eqz v7, :cond_9

    .line 250
    iget-object v9, p0, Ljavax/jmdns/impl/b;->h:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 255
    .end local v1    # "i":I
    .end local v7    # "rec":Ljavax/jmdns/impl/g;
    :cond_a
    iget-object v9, p0, Ljavax/jmdns/impl/b;->l:Ljavax/jmdns/impl/b$a;

    invoke-virtual {v9}, Ljavax/jmdns/impl/b$a;->available()I

    move-result v9

    if-lez v9, :cond_b

    .line 256
    new-instance v9, Ljava/io/IOException;

    const-string v11, "Received a message with the wrong length."

    invoke-direct {v9, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 265
    :cond_b
    return-void
.end method

.method private a(Ljava/net/InetAddress;)Ljavax/jmdns/impl/g;
    .locals 44
    .param p1, "source"    # Ljava/net/InetAddress;

    .prologue
    .line 302
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/b;->l:Ljavax/jmdns/impl/b$a;

    invoke-virtual {v8}, Ljavax/jmdns/impl/b$a;->f()Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, "domain":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/b;->l:Ljavax/jmdns/impl/b$a;

    invoke-virtual {v8}, Ljavax/jmdns/impl/b$a;->c()I

    move-result v8

    invoke-static {v8}, Ljavax/jmdns/impl/constants/DNSRecordType;->typeForIndex(I)Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v42

    .line 304
    .local v42, "type":Ljavax/jmdns/impl/constants/DNSRecordType;
    sget-object v8, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_IGNORE:Ljavax/jmdns/impl/constants/DNSRecordType;

    move-object/from16 v0, v42

    if-ne v0, v8, :cond_0

    .line 305
    sget-object v8, Ljavax/jmdns/impl/b;->i:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not find record type. domain: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljavax/jmdns/impl/b;->a(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 307
    :cond_0
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/b;->l:Ljavax/jmdns/impl/b$a;

    invoke-virtual {v8}, Ljavax/jmdns/impl/b$a;->c()I

    move-result v41

    .line 308
    .local v41, "recordClassIndex":I
    sget-object v8, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_OPT:Ljavax/jmdns/impl/constants/DNSRecordType;

    move-object/from16 v0, v42

    if-ne v0, v8, :cond_5

    sget-object v4, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_UNKNOWN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    .line 309
    .local v4, "recordClass":Ljavax/jmdns/impl/constants/DNSRecordClass;
    :goto_0
    sget-object v8, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_UNKNOWN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    if-ne v4, v8, :cond_1

    sget-object v8, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_OPT:Ljavax/jmdns/impl/constants/DNSRecordType;

    move-object/from16 v0, v42

    if-eq v0, v8, :cond_1

    .line 310
    sget-object v8, Ljavax/jmdns/impl/b;->i:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not find record class. domain: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v42

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljavax/jmdns/impl/b;->a(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 312
    :cond_1
    move/from16 v0, v41

    invoke-virtual {v4, v0}, Ljavax/jmdns/impl/constants/DNSRecordClass;->isUnique(I)Z

    move-result v5

    .line 313
    .local v5, "unique":Z
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/b;->l:Ljavax/jmdns/impl/b$a;

    invoke-virtual {v8}, Ljavax/jmdns/impl/b$a;->d()I

    move-result v6

    .line 314
    .local v6, "ttl":I
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/b;->l:Ljavax/jmdns/impl/b$a;

    invoke-virtual {v8}, Ljavax/jmdns/impl/b$a;->c()I

    move-result v28

    .line 315
    .local v28, "len":I
    const/4 v2, 0x0

    .line 317
    .local v2, "rec":Ljavax/jmdns/impl/g;
    sget-object v8, Ljavax/jmdns/impl/b$1;->c:[I

    invoke-virtual/range {v42 .. v42}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 453
    sget-object v8, Ljavax/jmdns/impl/b;->i:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 454
    sget-object v8, Ljavax/jmdns/impl/b;->i:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DNSIncoming() unknown type:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v42

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 456
    :cond_2
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/b;->l:Ljavax/jmdns/impl/b$a;

    move/from16 v0, v28

    int-to-long v10, v0

    invoke-virtual {v8, v10, v11}, Ljavax/jmdns/impl/b$a;->skip(J)J

    .line 459
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 460
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljavax/jmdns/impl/g;->a(Ljava/net/InetAddress;)V

    .line 462
    :cond_4
    return-object v2

    .line 308
    .end local v2    # "rec":Ljavax/jmdns/impl/g;
    .end local v4    # "recordClass":Ljavax/jmdns/impl/constants/DNSRecordClass;
    .end local v5    # "unique":Z
    .end local v6    # "ttl":I
    .end local v28    # "len":I
    :cond_5
    invoke-static/range {v41 .. v41}, Ljavax/jmdns/impl/constants/DNSRecordClass;->classForIndex(I)Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v4

    goto/16 :goto_0

    .line 319
    .restart local v2    # "rec":Ljavax/jmdns/impl/g;
    .restart local v4    # "recordClass":Ljavax/jmdns/impl/constants/DNSRecordClass;
    .restart local v5    # "unique":Z
    .restart local v6    # "ttl":I
    .restart local v28    # "len":I
    :pswitch_0
    new-instance v2, Ljavax/jmdns/impl/g$c;

    .end local v2    # "rec":Ljavax/jmdns/impl/g;
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/b;->l:Ljavax/jmdns/impl/b$a;

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Ljavax/jmdns/impl/b$a;->a(I)[B

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Ljavax/jmdns/impl/g$c;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V

    .line 320
    .restart local v2    # "rec":Ljavax/jmdns/impl/g;
    goto :goto_1

    .line 322
    :pswitch_1
    new-instance v2, Ljavax/jmdns/impl/g$d;

    .end local v2    # "rec":Ljavax/jmdns/impl/g;
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/b;->l:Ljavax/jmdns/impl/b$a;

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Ljavax/jmdns/impl/b$a;->a(I)[B

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Ljavax/jmdns/impl/g$d;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V

    .line 323
    .restart local v2    # "rec":Ljavax/jmdns/impl/g;
    goto :goto_1

    .line 326
    :pswitch_2
    const-string v7, ""

    .line 327
    .local v7, "service":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/b;->l:Ljavax/jmdns/impl/b$a;

    invoke-virtual {v8}, Ljavax/jmdns/impl/b$a;->f()Ljava/lang/String;

    move-result-object v7

    .line 328
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6

    .line 329
    new-instance v2, Ljavax/jmdns/impl/g$e;

    .end local v2    # "rec":Ljavax/jmdns/impl/g;
    invoke-direct/range {v2 .. v7}, Ljavax/jmdns/impl/g$e;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V

    .restart local v2    # "rec":Ljavax/jmdns/impl/g;
    goto :goto_1

    .line 331
    :cond_6
    sget-object v8, Ljavax/jmdns/impl/b;->i:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PTR record of class: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", there was a problem reading the service name of the answer for domain:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    .line 335
    .end local v7    # "service":Ljava/lang/String;
    :pswitch_3
    new-instance v2, Ljavax/jmdns/impl/g$g;

    .end local v2    # "rec":Ljavax/jmdns/impl/g;
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/b;->l:Ljavax/jmdns/impl/b$a;

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Ljavax/jmdns/impl/b$a;->a(I)[B

    move-result-object v13

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move v11, v5

    move v12, v6

    invoke-direct/range {v8 .. v13}, Ljavax/jmdns/impl/g$g;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V

    .line 336
    .restart local v2    # "rec":Ljavax/jmdns/impl/g;
    goto :goto_1

    .line 338
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/b;->l:Ljavax/jmdns/impl/b$a;

    invoke-virtual {v8}, Ljavax/jmdns/impl/b$a;->c()I

    move-result v13

    .line 339
    .local v13, "priority":I
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/b;->l:Ljavax/jmdns/impl/b$a;

    invoke-virtual {v8}, Ljavax/jmdns/impl/b$a;->c()I

    move-result v14

    .line 340
    .local v14, "weight":I
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/b;->l:Ljavax/jmdns/impl/b$a;

    invoke-virtual {v8}, Ljavax/jmdns/impl/b$a;->c()I

    move-result v15

    .line 341
    .local v15, "port":I
    const-string v16, ""

    .line 344
    .local v16, "target":Ljava/lang/String;
    sget-boolean v8, Ljavax/jmdns/impl/b;->a:Z

    if-eqz v8, :cond_7

    .line 345
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/b;->l:Ljavax/jmdns/impl/b$a;

    invoke-virtual {v8}, Ljavax/jmdns/impl/b$a;->f()Ljava/lang/String;

    move-result-object v16

    .line 350
    :goto_2
    new-instance v2, Ljavax/jmdns/impl/g$f;

    .end local v2    # "rec":Ljavax/jmdns/impl/g;
    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move v11, v5

    move v12, v6

    invoke-direct/range {v8 .. v16}, Ljavax/jmdns/impl/g$f;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZIIIILjava/lang/String;)V

    .line 351
    .restart local v2    # "rec":Ljavax/jmdns/impl/g;
    goto/16 :goto_1

    .line 348
    :cond_7
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/b;->l:Ljavax/jmdns/impl/b$a;

    invoke-virtual {v8}, Ljavax/jmdns/impl/b$a;->g()Ljava/lang/String;

    move-result-object v16

    goto :goto_2

    .line 353
    .end local v13    # "priority":I
    .end local v14    # "weight":I
    .end local v15    # "port":I
    .end local v16    # "target":Ljava/lang/String;
    :pswitch_5
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .local v24, "buf":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/b;->l:Ljavax/jmdns/impl/b$a;

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Ljavax/jmdns/impl/b$a;->b(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    const-string v8, " "

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v27

    .line 356
    .local v27, "index":I
    if-lez v27, :cond_8

    const/4 v8, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v8, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v8

    :goto_3
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    .line 357
    .local v22, "cpu":Ljava/lang/String;
    if-lez v27, :cond_9

    add-int/lit8 v8, v27, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v8

    :goto_4
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    .line 358
    .local v23, "os":Ljava/lang/String;
    new-instance v2, Ljavax/jmdns/impl/g$b;

    .end local v2    # "rec":Ljavax/jmdns/impl/g;
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    invoke-direct/range {v17 .. v23}, Ljavax/jmdns/impl/g$b;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;Ljava/lang/String;)V

    .line 359
    .restart local v2    # "rec":Ljavax/jmdns/impl/g;
    goto/16 :goto_1

    .line 356
    .end local v22    # "cpu":Ljava/lang/String;
    .end local v23    # "os":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 357
    .restart local v22    # "cpu":Ljava/lang/String;
    :cond_9
    const-string v8, ""

    goto :goto_4

    .line 361
    .end local v22    # "cpu":Ljava/lang/String;
    .end local v24    # "buf":Ljava/lang/StringBuilder;
    .end local v27    # "index":I
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/b;->e()I

    move-result v8

    invoke-static {v8, v6}, Ljavax/jmdns/impl/constants/DNSResultCode;->resultCodeForFlags(II)Ljavax/jmdns/impl/constants/DNSResultCode;

    move-result-object v26

    .line 362
    .local v26, "extendedResultCode":Ljavax/jmdns/impl/constants/DNSResultCode;
    const/high16 v8, 0xff0000

    and-int/2addr v8, v6

    shr-int/lit8 v43, v8, 0x10

    .line 363
    .local v43, "version":I
    if-nez v43, :cond_12

    .line 364
    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Ljavax/jmdns/impl/b;->m:I

    .line 365
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/b;->l:Ljavax/jmdns/impl/b$a;

    invoke-virtual {v8}, Ljavax/jmdns/impl/b$a;->available()I

    move-result v8

    if-lez v8, :cond_3

    .line 367
    const/16 v30, 0x0

    .line 368
    .local v30, "optionCodeInt":I
    const/16 v29, 0x0

    .line 369
    .local v29, "optionCode":Ljavax/jmdns/impl/constants/DNSOptionCode;
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/b;->l:Ljavax/jmdns/impl/b$a;

    invoke-virtual {v8}, Ljavax/jmdns/impl/b$a;->available()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_d

    .line 370
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/b;->l:Ljavax/jmdns/impl/b$a;

    invoke-virtual {v8}, Ljavax/jmdns/impl/b$a;->c()I

    move-result v30

    .line 371
    invoke-static/range {v30 .. v30}, Ljavax/jmdns/impl/constants/DNSOptionCode;->resultCodeForFlags(I)Ljavax/jmdns/impl/constants/DNSOptionCode;

    move-result-object v29

    .line 376
    const/16 v31, 0x0

    .line 377
    .local v31, "optionLength":I
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/b;->l:Ljavax/jmdns/impl/b$a;

    invoke-virtual {v8}, Ljavax/jmdns/impl/b$a;->available()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_e

    .line 378
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/b;->l:Ljavax/jmdns/impl/b$a;

    invoke-virtual {v8}, Ljavax/jmdns/impl/b$a;->c()I

    move-result v31

    .line 383
    const/4 v8, 0x0

    new-array v0, v8, [B

    move-object/from16 v32, v0

    .line 384
    .local v32, "optiondata":[B
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/b;->l:Ljavax/jmdns/impl/b$a;

    invoke-virtual {v8}, Ljavax/jmdns/impl/b$a;->available()I

    move-result v8

    move/from16 v0, v31

    if-lt v8, v0, :cond_b

    .line 385
    move-object/from16 v0, p0

    iget-object v8, v0, Ljavax/jmdns/impl/b;->l:Ljavax/jmdns/impl/b$a;

    move/from16 v0, v31

    invoke-virtual {v8, v0}, Ljavax/jmdns/impl/b$a;->a(I)[B

    move-result-object v32

    .line 389
    :cond_b
    sget-object v8, Ljavax/jmdns/impl/b$1;->b:[I

    invoke-virtual/range {v29 .. v29}, Ljavax/jmdns/impl/constants/DNSOptionCode;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    goto :goto_5

    .line 396
    :pswitch_7
    const/16 v38, 0x0

    .line 397
    .local v38, "ownerVersion":I
    const/16 v37, 0x0

    .line 398
    .local v37, "ownerSequence":I
    const/16 v35, 0x0

    .line 399
    .local v35, "ownerPrimaryMacAddress":[B
    const/16 v39, 0x0

    .line 400
    .local v39, "ownerWakeupMacAddress":[B
    const/16 v33, 0x0

    .line 402
    .local v33, "ownerPassword":[B
    const/4 v8, 0x0

    :try_start_0
    aget-byte v38, v32, v8

    .line 403
    const/4 v8, 0x1

    aget-byte v37, v32, v8

    .line 404
    const/4 v8, 0x6

    new-array v0, v8, [B

    move-object/from16 v36, v0

    const/4 v8, 0x0

    const/4 v9, 0x2

    aget-byte v9, v32, v9

    aput-byte v9, v36, v8

    const/4 v8, 0x1

    const/4 v9, 0x3

    aget-byte v9, v32, v9

    aput-byte v9, v36, v8

    const/4 v8, 0x2

    const/4 v9, 0x4

    aget-byte v9, v32, v9

    aput-byte v9, v36, v8

    const/4 v8, 0x3

    const/4 v9, 0x5

    aget-byte v9, v32, v9

    aput-byte v9, v36, v8

    const/4 v8, 0x4

    const/4 v9, 0x6

    aget-byte v9, v32, v9

    aput-byte v9, v36, v8

    const/4 v8, 0x5

    const/4 v9, 0x7

    aget-byte v9, v32, v9

    aput-byte v9, v36, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    .end local v35    # "ownerPrimaryMacAddress":[B
    .local v36, "ownerPrimaryMacAddress":[B
    move-object/from16 v39, v36

    .line 406
    :try_start_1
    move-object/from16 v0, v32

    array-length v8, v0

    const/16 v9, 0x8

    if-le v8, v9, :cond_c

    .line 408
    const/4 v8, 0x6

    new-array v0, v8, [B

    move-object/from16 v40, v0

    const/4 v8, 0x0

    const/16 v9, 0x8

    aget-byte v9, v32, v9

    aput-byte v9, v40, v8

    const/4 v8, 0x1

    const/16 v9, 0x9

    aget-byte v9, v32, v9

    aput-byte v9, v40, v8

    const/4 v8, 0x2

    const/16 v9, 0xa

    aget-byte v9, v32, v9

    aput-byte v9, v40, v8

    const/4 v8, 0x3

    const/16 v9, 0xb

    aget-byte v9, v32, v9

    aput-byte v9, v40, v8

    const/4 v8, 0x4

    const/16 v9, 0xc

    aget-byte v9, v32, v9

    aput-byte v9, v40, v8

    const/4 v8, 0x5

    const/16 v9, 0xd

    aget-byte v9, v32, v9

    aput-byte v9, v40, v8

    .end local v39    # "ownerWakeupMacAddress":[B
    .local v40, "ownerWakeupMacAddress":[B
    move-object/from16 v39, v40

    .line 410
    .end local v40    # "ownerWakeupMacAddress":[B
    .restart local v39    # "ownerWakeupMacAddress":[B
    :cond_c
    move-object/from16 v0, v32

    array-length v8, v0

    const/16 v9, 0x12

    if-ne v8, v9, :cond_14

    .line 412
    const/4 v8, 0x4

    new-array v0, v8, [B

    move-object/from16 v34, v0

    const/4 v8, 0x0

    const/16 v9, 0xe

    aget-byte v9, v32, v9

    aput-byte v9, v34, v8

    const/4 v8, 0x1

    const/16 v9, 0xf

    aget-byte v9, v32, v9

    aput-byte v9, v34, v8

    const/4 v8, 0x2

    const/16 v9, 0x10

    aget-byte v9, v32, v9

    aput-byte v9, v34, v8

    const/4 v8, 0x3

    const/16 v9, 0x11

    aget-byte v9, v32, v9

    aput-byte v9, v34, v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 414
    .end local v33    # "ownerPassword":[B
    .local v34, "ownerPassword":[B
    :goto_6
    :try_start_2
    move-object/from16 v0, v32

    array-length v8, v0

    const/16 v9, 0x16

    if-ne v8, v9, :cond_13

    .line 416
    const/16 v8, 0x8

    new-array v0, v8, [B

    move-object/from16 v33, v0

    const/4 v8, 0x0

    const/16 v9, 0xe

    aget-byte v9, v32, v9

    aput-byte v9, v33, v8

    const/4 v8, 0x1

    const/16 v9, 0xf

    aget-byte v9, v32, v9

    aput-byte v9, v33, v8

    const/4 v8, 0x2

    const/16 v9, 0x10

    aget-byte v9, v32, v9

    aput-byte v9, v33, v8

    const/4 v8, 0x3

    const/16 v9, 0x11

    aget-byte v9, v32, v9

    aput-byte v9, v33, v8

    const/4 v8, 0x4

    const/16 v9, 0x12

    aget-byte v9, v32, v9

    aput-byte v9, v33, v8

    const/4 v8, 0x5

    const/16 v9, 0x13

    aget-byte v9, v32, v9

    aput-byte v9, v33, v8

    const/4 v8, 0x6

    const/16 v9, 0x14

    aget-byte v9, v32, v9

    aput-byte v9, v33, v8

    const/4 v8, 0x7

    const/16 v9, 0x15

    aget-byte v9, v32, v9

    aput-byte v9, v33, v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .end local v34    # "ownerPassword":[B
    .restart local v33    # "ownerPassword":[B
    :goto_7
    move-object/from16 v35, v36

    .line 421
    .end local v36    # "ownerPrimaryMacAddress":[B
    .restart local v35    # "ownerPrimaryMacAddress":[B
    :goto_8
    sget-object v8, Ljavax/jmdns/impl/b;->i:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 422
    sget-object v9, Ljavax/jmdns/impl/b;->i:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unhandled Owner OPT version: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v38

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " sequence: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v37

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " MAC address: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/b;->b([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v39

    move-object/from16 v1, v35

    if-eq v0, v1, :cond_f

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " wakeup MAC address: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 423
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/b;->b([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_9
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v33, :cond_10

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " password: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/b;->b([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_a
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 422
    invoke-virtual {v9, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 373
    .end local v31    # "optionLength":I
    .end local v32    # "optiondata":[B
    .end local v33    # "ownerPassword":[B
    .end local v35    # "ownerPrimaryMacAddress":[B
    .end local v37    # "ownerSequence":I
    .end local v38    # "ownerVersion":I
    .end local v39    # "ownerWakeupMacAddress":[B
    :cond_d
    sget-object v8, Ljavax/jmdns/impl/b;->i:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v10, "There was a problem reading the OPT record. Ignoring."

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 380
    .restart local v31    # "optionLength":I
    :cond_e
    sget-object v8, Ljavax/jmdns/impl/b;->i:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v10, "There was a problem reading the OPT record. Ignoring."

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 418
    .restart local v32    # "optiondata":[B
    .restart local v33    # "ownerPassword":[B
    .restart local v35    # "ownerPrimaryMacAddress":[B
    .restart local v37    # "ownerSequence":I
    .restart local v38    # "ownerVersion":I
    .restart local v39    # "ownerWakeupMacAddress":[B
    :catch_0
    move-exception v25

    .line 419
    .local v25, "exception":Ljava/lang/Exception;
    :goto_b
    sget-object v8, Ljavax/jmdns/impl/b;->i:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Malformed OPT answer. Option code: Owner data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/b;->b([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 423
    .end local v25    # "exception":Ljava/lang/Exception;
    :cond_f
    const-string v8, ""

    goto :goto_9

    :cond_10
    const-string v8, ""

    goto :goto_a

    .line 429
    .end local v33    # "ownerPassword":[B
    .end local v35    # "ownerPrimaryMacAddress":[B
    .end local v37    # "ownerSequence":I
    .end local v38    # "ownerVersion":I
    .end local v39    # "ownerWakeupMacAddress":[B
    :pswitch_8
    sget-object v8, Ljavax/jmdns/impl/b;->i:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 430
    sget-object v8, Ljavax/jmdns/impl/b;->i:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "There was an OPT answer. Option code: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " data: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/b;->b([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 434
    :pswitch_9
    const v8, 0xfde9

    move/from16 v0, v30

    if-lt v0, v8, :cond_11

    const v8, 0xfffe

    move/from16 v0, v30

    if-gt v0, v8, :cond_11

    .line 436
    sget-object v8, Ljavax/jmdns/impl/b;->i:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 437
    sget-object v8, Ljavax/jmdns/impl/b;->i:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "There was an OPT answer using an experimental/local option code: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " data: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/b;->b([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 440
    :cond_11
    sget-object v8, Ljavax/jmdns/impl/b;->i:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "There was an OPT answer. Not currently handled. Option code: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " data: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/b;->b([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 449
    .end local v29    # "optionCode":Ljavax/jmdns/impl/constants/DNSOptionCode;
    .end local v30    # "optionCodeInt":I
    .end local v31    # "optionLength":I
    .end local v32    # "optiondata":[B
    :cond_12
    sget-object v8, Ljavax/jmdns/impl/b;->i:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "There was an OPT answer. Wrong version number: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v43

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " result code: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 418
    .restart local v29    # "optionCode":Ljavax/jmdns/impl/constants/DNSOptionCode;
    .restart local v30    # "optionCodeInt":I
    .restart local v31    # "optionLength":I
    .restart local v32    # "optiondata":[B
    .restart local v33    # "ownerPassword":[B
    .restart local v36    # "ownerPrimaryMacAddress":[B
    .restart local v37    # "ownerSequence":I
    .restart local v38    # "ownerVersion":I
    .restart local v39    # "ownerWakeupMacAddress":[B
    :catch_1
    move-exception v25

    move-object/from16 v35, v36

    .end local v36    # "ownerPrimaryMacAddress":[B
    .restart local v35    # "ownerPrimaryMacAddress":[B
    goto/16 :goto_b

    .end local v33    # "ownerPassword":[B
    .end local v35    # "ownerPrimaryMacAddress":[B
    .restart local v34    # "ownerPassword":[B
    .restart local v36    # "ownerPrimaryMacAddress":[B
    :catch_2
    move-exception v25

    move-object/from16 v33, v34

    .end local v34    # "ownerPassword":[B
    .restart local v33    # "ownerPassword":[B
    move-object/from16 v35, v36

    .end local v36    # "ownerPrimaryMacAddress":[B
    .restart local v35    # "ownerPrimaryMacAddress":[B
    goto/16 :goto_b

    .end local v33    # "ownerPassword":[B
    .end local v35    # "ownerPrimaryMacAddress":[B
    .restart local v34    # "ownerPassword":[B
    .restart local v36    # "ownerPrimaryMacAddress":[B
    :cond_13
    move-object/from16 v33, v34

    .end local v34    # "ownerPassword":[B
    .restart local v33    # "ownerPassword":[B
    goto/16 :goto_7

    :cond_14
    move-object/from16 v34, v33

    .end local v33    # "ownerPassword":[B
    .restart local v34    # "ownerPassword":[B
    goto/16 :goto_6

    .line 317
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 389
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private b([B)Ljava/lang/String;
    .locals 5
    .param p1, "bytes"    # [B

    .prologue
    .line 593
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 595
    .local v2, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 596
    aget-byte v3, p1, v1

    and-int/lit16 v0, v3, 0xff

    .line 597
    .local v0, "b":I
    sget-object v3, Ljavax/jmdns/impl/b;->n:[C

    div-int/lit8 v4, v0, 0x10

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 598
    sget-object v3, Ljavax/jmdns/impl/b;->n:[C

    rem-int/lit8 v4, v0, 0x10

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 595
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 601
    .end local v0    # "b":I
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private x()Ljavax/jmdns/impl/f;
    .locals 9

    .prologue
    .line 290
    iget-object v5, p0, Ljavax/jmdns/impl/b;->l:Ljavax/jmdns/impl/b$a;

    invoke-virtual {v5}, Ljavax/jmdns/impl/b$a;->f()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "domain":Ljava/lang/String;
    iget-object v5, p0, Ljavax/jmdns/impl/b;->l:Ljavax/jmdns/impl/b$a;

    invoke-virtual {v5}, Ljavax/jmdns/impl/b$a;->c()I

    move-result v5

    invoke-static {v5}, Ljavax/jmdns/impl/constants/DNSRecordType;->typeForIndex(I)Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v3

    .line 292
    .local v3, "type":Ljavax/jmdns/impl/constants/DNSRecordType;
    sget-object v5, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_IGNORE:Ljavax/jmdns/impl/constants/DNSRecordType;

    if-ne v3, v5, :cond_0

    .line 293
    sget-object v5, Ljavax/jmdns/impl/b;->i:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not find record type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Ljavax/jmdns/impl/b;->a(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 295
    :cond_0
    iget-object v5, p0, Ljavax/jmdns/impl/b;->l:Ljavax/jmdns/impl/b$a;

    invoke-virtual {v5}, Ljavax/jmdns/impl/b$a;->c()I

    move-result v2

    .line 296
    .local v2, "recordClassIndex":I
    invoke-static {v2}, Ljavax/jmdns/impl/constants/DNSRecordClass;->classForIndex(I)Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v1

    .line 297
    .local v1, "recordClass":Ljavax/jmdns/impl/constants/DNSRecordClass;
    invoke-virtual {v1, v2}, Ljavax/jmdns/impl/constants/DNSRecordClass;->isUnique(I)Z

    move-result v4

    .line 298
    .local v4, "unique":Z
    invoke-static {v0, v3, v1, v4}, Ljavax/jmdns/impl/f;->a(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;Z)Ljavax/jmdns/impl/f;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method a(Z)Ljava/lang/String;
    .locals 5
    .param p1, "dump"    # Z

    .prologue
    const/4 v4, 0x0

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 470
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljavax/jmdns/impl/b;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    if-eqz p1, :cond_0

    .line 472
    iget-object v2, p0, Ljavax/jmdns/impl/b;->j:Ljava/net/DatagramPacket;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v2

    new-array v1, v2, [B

    .line 473
    .local v1, "data":[B
    iget-object v2, p0, Ljavax/jmdns/impl/b;->j:Ljava/net/DatagramPacket;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    array-length v3, v1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 474
    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/b;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .end local v1    # "data":[B
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public a()Ljavax/jmdns/impl/b;
    .locals 8

    .prologue
    .line 280
    new-instance v1, Ljavax/jmdns/impl/b;

    invoke-virtual {p0}, Ljavax/jmdns/impl/b;->e()I

    move-result v2

    invoke-virtual {p0}, Ljavax/jmdns/impl/b;->d()I

    move-result v3

    invoke-virtual {p0}, Ljavax/jmdns/impl/b;->f()Z

    move-result v4

    iget-object v5, p0, Ljavax/jmdns/impl/b;->j:Ljava/net/DatagramPacket;

    iget-wide v6, p0, Ljavax/jmdns/impl/b;->k:J

    invoke-direct/range {v1 .. v7}, Ljavax/jmdns/impl/b;-><init>(IIZLjava/net/DatagramPacket;J)V

    .line 281
    .local v1, "in":Ljavax/jmdns/impl/b;
    iget v0, p0, Ljavax/jmdns/impl/b;->m:I

    iput v0, v1, Ljavax/jmdns/impl/b;->m:I

    .line 282
    iget-object v0, v1, Ljavax/jmdns/impl/b;->e:Ljava/util/List;

    iget-object v2, p0, Ljavax/jmdns/impl/b;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 283
    iget-object v0, v1, Ljavax/jmdns/impl/b;->f:Ljava/util/List;

    iget-object v2, p0, Ljavax/jmdns/impl/b;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 284
    iget-object v0, v1, Ljavax/jmdns/impl/b;->g:Ljava/util/List;

    iget-object v2, p0, Ljavax/jmdns/impl/b;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 285
    iget-object v0, v1, Ljavax/jmdns/impl/b;->h:Ljava/util/List;

    iget-object v2, p0, Ljavax/jmdns/impl/b;->h:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 286
    return-object v1
.end method

.method a(Ljavax/jmdns/impl/b;)V
    .locals 2
    .param p1, "that"    # Ljavax/jmdns/impl/b;

    .prologue
    .line 560
    invoke-virtual {p0}, Ljavax/jmdns/impl/b;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/b;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljavax/jmdns/impl/b;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Ljavax/jmdns/impl/b;->e:Ljava/util/List;

    invoke-virtual {p1}, Ljavax/jmdns/impl/b;->g()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 562
    iget-object v0, p0, Ljavax/jmdns/impl/b;->f:Ljava/util/List;

    invoke-virtual {p1}, Ljavax/jmdns/impl/b;->j()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 563
    iget-object v0, p0, Ljavax/jmdns/impl/b;->g:Ljava/util/List;

    invoke-virtual {p1}, Ljavax/jmdns/impl/b;->l()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 564
    iget-object v0, p0, Ljavax/jmdns/impl/b;->h:Ljava/util/List;

    invoke-virtual {p1}, Ljavax/jmdns/impl/b;->n()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 568
    return-void

    .line 566
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public b()I
    .locals 4

    .prologue
    .line 571
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ljavax/jmdns/impl/b;->k:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 580
    iget v0, p0, Ljavax/jmdns/impl/b;->m:I

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0}, Ljavax/jmdns/impl/b;->a()Ljavax/jmdns/impl/b;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljavax/jmdns/impl/b;->t()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "dns[query,"

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    iget-object v3, p0, Ljavax/jmdns/impl/b;->j:Ljava/net/DatagramPacket;

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 484
    iget-object v3, p0, Ljavax/jmdns/impl/b;->j:Ljava/net/DatagramPacket;

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    :cond_0
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 487
    iget-object v3, p0, Ljavax/jmdns/impl/b;->j:Ljava/net/DatagramPacket;

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getPort()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 488
    const-string v3, ", length="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    iget-object v3, p0, Ljavax/jmdns/impl/b;->j:Ljava/net/DatagramPacket;

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 490
    const-string v3, ", id=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {p0}, Ljavax/jmdns/impl/b;->d()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {p0}, Ljavax/jmdns/impl/b;->e()I

    move-result v3

    if-eqz v3, :cond_3

    .line 493
    const-string v3, ", flags=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {p0}, Ljavax/jmdns/impl/b;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {p0}, Ljavax/jmdns/impl/b;->e()I

    move-result v3

    const v4, 0x8000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 496
    const-string v3, ":r"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    :cond_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/b;->e()I

    move-result v3

    and-int/lit16 v3, v3, 0x400

    if-eqz v3, :cond_2

    .line 499
    const-string v3, ":aa"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    :cond_2
    invoke-virtual {p0}, Ljavax/jmdns/impl/b;->e()I

    move-result v3

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_3

    .line 502
    const-string v3, ":tc"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    :cond_3
    invoke-virtual {p0}, Ljavax/jmdns/impl/b;->h()I

    move-result v3

    if-lez v3, :cond_4

    .line 506
    const-string v3, ", questions="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {p0}, Ljavax/jmdns/impl/b;->h()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 509
    :cond_4
    invoke-virtual {p0}, Ljavax/jmdns/impl/b;->k()I

    move-result v3

    if-lez v3, :cond_5

    .line 510
    const-string v3, ", answers="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual {p0}, Ljavax/jmdns/impl/b;->k()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 513
    :cond_5
    invoke-virtual {p0}, Ljavax/jmdns/impl/b;->m()I

    move-result v3

    if-lez v3, :cond_6

    .line 514
    const-string v3, ", authorities="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual {p0}, Ljavax/jmdns/impl/b;->m()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 517
    :cond_6
    invoke-virtual {p0}, Ljavax/jmdns/impl/b;->o()I

    move-result v3

    if-lez v3, :cond_7

    .line 518
    const-string v3, ", additionals="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {p0}, Ljavax/jmdns/impl/b;->o()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 521
    :cond_7
    invoke-virtual {p0}, Ljavax/jmdns/impl/b;->h()I

    move-result v3

    if-lez v3, :cond_9

    .line 522
    const-string v3, "\nquestions:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    iget-object v3, p0, Ljavax/jmdns/impl/b;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/impl/f;

    .line 524
    .local v1, "question":Ljavax/jmdns/impl/f;
    const-string v4, "\n\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 482
    .end local v1    # "question":Ljavax/jmdns/impl/f;
    :cond_8
    const-string v3, "dns[response,"

    goto/16 :goto_0

    .line 528
    :cond_9
    invoke-virtual {p0}, Ljavax/jmdns/impl/b;->k()I

    move-result v3

    if-lez v3, :cond_a

    .line 529
    const-string v3, "\nanswers:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    iget-object v3, p0, Ljavax/jmdns/impl/b;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/g;

    .line 531
    .local v2, "record":Ljavax/jmdns/impl/g;
    const-string v4, "\n\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 535
    .end local v2    # "record":Ljavax/jmdns/impl/g;
    :cond_a
    invoke-virtual {p0}, Ljavax/jmdns/impl/b;->m()I

    move-result v3

    if-lez v3, :cond_b

    .line 536
    const-string v3, "\nauthorities:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    iget-object v3, p0, Ljavax/jmdns/impl/b;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/g;

    .line 538
    .restart local v2    # "record":Ljavax/jmdns/impl/g;
    const-string v4, "\n\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 542
    .end local v2    # "record":Ljavax/jmdns/impl/g;
    :cond_b
    invoke-virtual {p0}, Ljavax/jmdns/impl/b;->o()I

    move-result v3

    if-lez v3, :cond_c

    .line 543
    const-string v3, "\nadditionals:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    iget-object v3, p0, Ljavax/jmdns/impl/b;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/jmdns/impl/g;

    .line 545
    .restart local v2    # "record":Ljavax/jmdns/impl/g;
    const-string v4, "\n\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 549
    .end local v2    # "record":Ljavax/jmdns/impl/g;
    :cond_c
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
