.class public Lcom/mob/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static a:Lcom/mob/a/f;


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Lcom/mob/tools/c/m$a;

.field private d:Lcom/mob/tools/c/g;

.field private e:Ljava/util/Random;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/mob/tools/c/g;

    invoke-direct {v0}, Lcom/mob/tools/c/g;-><init>()V

    iput-object v0, p0, Lcom/mob/a/f;->d:Lcom/mob/tools/c/g;

    .line 61
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/mob/a/f;->e:Ljava/util/Random;

    .line 63
    new-instance v0, Lcom/mob/tools/b;

    invoke-direct {v0}, Lcom/mob/tools/b;-><init>()V

    .line 64
    invoke-virtual {v0}, Lcom/mob/tools/b;->start()V

    .line 65
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/mob/tools/b;->b()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/mob/a/f;->b:Landroid/os/Handler;

    .line 67
    const-string v0, "comm/dbs/.dh"

    invoke-static {v0}, Lcom/mob/a/h;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataHeap_1"

    invoke-static {v0, v1}, Lcom/mob/tools/c/m;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mob/tools/c/m$a;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/a/f;->c:Lcom/mob/tools/c/m$a;

    .line 69
    iget-object v0, p0, Lcom/mob/a/f;->c:Lcom/mob/tools/c/m$a;

    const-string v1, "time"

    const-string v2, "text"

    invoke-virtual {v0, v1, v2, v3}, Lcom/mob/tools/c/m$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 70
    iget-object v0, p0, Lcom/mob/a/f;->c:Lcom/mob/tools/c/m$a;

    const-string v1, "data"

    const-string v2, "text"

    invoke-virtual {v0, v1, v2, v3}, Lcom/mob/tools/c/m$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 72
    iget-object v0, p0, Lcom/mob/a/f;->b:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 73
    return-void
.end method

.method public static declared-synchronized a()Lcom/mob/a/f;
    .locals 2

    .prologue
    .line 53
    const-class v1, Lcom/mob/a/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mob/a/f;->a:Lcom/mob/a/f;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/mob/a/f;

    invoke-direct {v0}, Lcom/mob/a/f;-><init>()V

    sput-object v0, Lcom/mob/a/f;->a:Lcom/mob/a/f;

    .line 56
    :cond_0
    sget-object v0, Lcom/mob/a/f;->a:Lcom/mob/a/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/mob/a/f;)Lcom/mob/tools/c/g;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mob/a/f;->d:Lcom/mob/tools/c/g;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    .line 232
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 233
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 234
    iget-object v2, p0, Lcom/mob/a/f;->e:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 235
    iget-object v2, p0, Lcom/mob/a/f;->e:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 236
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 237
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 238
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 241
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 242
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 243
    const-string v3, "utf-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 244
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 245
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 246
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 249
    invoke-static {v0, v1}, Lcom/mob/tools/c/d;->a([B[B)[B

    move-result-object v1

    .line 252
    new-instance v2, Lcom/mob/tools/c/j;

    const/16 v3, 0x400

    invoke-direct {v2, v3}, Lcom/mob/tools/c/j;-><init>(I)V

    .line 253
    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "ceeef5035212dfe7c6a0acdc0ef35ce5b118aab916477037d7381f85c6b6176fcf57b1d1c3296af0bb1c483fe5e1eb0ce9eb2953b44e494ca60777a1b033cc07"

    invoke-direct {v3, v4, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 256
    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "191737288d17e660c4b61440d5d14228a0bf9854499f9d68d8274db55d6d954489371ecf314f26bec236e58fac7fffa9b27bcf923e1229c4080d49f7758739e5bd6014383ed2a75ce1be9b0ab22f283c5c5e11216c5658ba444212b6270d629f2d615b8dfdec8545fb7d4f935b0cc10b6948ab4fc1cb1dd496a8f94b51e888dd"

    invoke-direct {v4, v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 261
    invoke-virtual {v2, v0, v3, v4}, Lcom/mob/tools/c/j;->a([BLjava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object v0

    .line 264
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 265
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 266
    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 267
    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 268
    array-length v0, v1

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 269
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 270
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 271
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 272
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/mob/a/f;Ljava/util/ArrayList;)Z
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/mob/a/f;->a(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/util/ArrayList;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 170
    :try_start_0
    new-instance v0, Lcom/mob/tools/a/n;

    invoke-direct {v0}, Lcom/mob/tools/a/n;-><init>()V

    .line 171
    invoke-static {}, Lcom/mob/a/c;->b()Ljava/util/ArrayList;

    move-result-object v3

    .line 172
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v6

    .line 226
    :cond_0
    :goto_0
    return v0

    .line 177
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 178
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/c/e;->a(Landroid/content/Context;)Lcom/mob/tools/c/e;

    move-result-object v1

    .line 179
    const-string v2, "plat"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->C()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v2, "device"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->F()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v2, "mac"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v2, "model"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v2, "duid"

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/mob/a/a/a;->a(Lcom/mob/a/b;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v2, "imei"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v2, "serialno"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v2, "networktype"

    invoke-virtual {v1}, Lcom/mob/tools/c/e;->B()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 188
    invoke-virtual {v1}, Lcom/mob/tools/c/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/c/d;->c(Ljava/lang/String;)[B

    move-result-object v5

    .line 189
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    const/4 v8, 0x1

    :try_start_1
    aget-object v1, v1, v8

    const/4 v8, 0x2

    invoke-static {v1, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 192
    invoke-static {v5, v1}, Lcom/mob/tools/c/d;->b([B[B)[B

    move-result-object v1

    .line 193
    new-instance v8, Ljava/lang/String;

    const-string v9, "utf-8"

    invoke-direct {v8, v1, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 194
    iget-object v8, p0, Lcom/mob/a/f;->d:Lcom/mob/tools/c/g;

    invoke-virtual {v8, v1}, Lcom/mob/tools/c/g;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 195
    :catch_0
    move-exception v1

    .line 196
    :try_start_2
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 222
    :catch_1
    move-exception v0

    .line 223
    invoke-static {v10}, Lcom/mob/a/i;->e(Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    move v0, v6

    .line 226
    goto/16 :goto_0

    .line 199
    :cond_2
    :try_start_3
    const-string v1, "datas"

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 203
    new-instance v1, Lcom/mob/tools/a/k;

    const-string v5, "appkey"

    invoke-static {}, Lcom/mob/a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v5, v7}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v1, Lcom/mob/tools/a/k;

    const-string v5, "m"

    iget-object v7, p0, Lcom/mob/a/f;->d:Lcom/mob/tools/c/g;

    invoke-virtual {v7, v4}, Lcom/mob/tools/c/g;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mob/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v5, v4}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 208
    new-instance v1, Lcom/mob/tools/a/k;

    const-string v5, "User-Identity"

    invoke-static {v3}, Lcom/mob/a/c;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v5, v3}, Lcom/mob/tools/a/k;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    new-instance v5, Lcom/mob/tools/a/n$a;

    invoke-direct {v5}, Lcom/mob/tools/a/n$a;-><init>()V

    .line 212
    const/16 v1, 0x7530

    iput v1, v5, Lcom/mob/tools/a/n$a;->a:I

    .line 213
    const/16 v1, 0x7530

    iput v1, v5, Lcom/mob/tools/a/n$a;->b:I

    .line 215
    invoke-static {}, Lcom/mob/a/f;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/a/n;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/k;Ljava/util/ArrayList;Lcom/mob/tools/a/n$a;)Ljava/lang/String;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/mob/a/f;->d:Lcom/mob/tools/c/g;

    invoke-virtual {v1, v0}, Lcom/mob/tools/c/g;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 217
    const-string v1, "200"

    const-string v2, "status"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 218
    if-nez v0, :cond_0

    .line 219
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/mob/a/i;->e(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/mob/a/f;)Lcom/mob/tools/c/m$a;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mob/a/f;->c:Lcom/mob/tools/c/m$a;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 123
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/c/e;->a(Landroid/content/Context;)Lcom/mob/tools/c/e;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcom/mob/tools/c/e;->z()Ljava/lang/String;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    const-string v0, "comm/locks/.dhlock"

    invoke-static {v0}, Lcom/mob/a/h;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 130
    new-instance v1, Lcom/mob/a/f$2;

    invoke-direct {v1, p0}, Lcom/mob/a/f$2;-><init>(Lcom/mob/a/f;)V

    invoke-static {v0, v1}, Lcom/mob/a/h;->a(Ljava/io/File;Lcom/mob/a/a;)V

    goto :goto_0
.end method

.method private b(JLjava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    const-string v0, "comm/locks/.dhlock"

    invoke-static {v0}, Lcom/mob/a/h;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 103
    new-instance v1, Lcom/mob/a/f$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mob/a/f$1;-><init>(Lcom/mob/a/f;JLjava/util/HashMap;)V

    invoke-static {v0, v1}, Lcom/mob/a/h;->a(Ljava/io/File;Lcom/mob/a/a;)V

    .line 120
    return-void
.end method

.method static synthetic b(Lcom/mob/a/f;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/mob/a/f;->b(Ljava/util/ArrayList;)V

    return-void
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 279
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 280
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_0
    const/16 v3, 0x27

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    .line 288
    :goto_1
    return-void

    .line 284
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mob/a/f;->c:Lcom/mob/tools/c/m$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "time in ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mob/tools/c/m;->a(Lcom/mob/tools/c/m$a;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private c()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 144
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "time"

    aput-object v3, v0, v1

    const/4 v1, 0x1

    const-string v3, "data"

    aput-object v3, v0, v1

    .line 145
    iget-object v1, p0, Lcom/mob/a/f;->c:Lcom/mob/tools/c/m$a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v0, v3, v4, v5}, Lcom/mob/tools/c/m;->a(Lcom/mob/tools/c/m$a;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 146
    if-eqz v3, :cond_3

    .line 147
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    invoke-static {}, Lcom/mob/a/e;->a()J

    move-result-wide v4

    .line 150
    :cond_0
    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    const-wide/16 v0, -0x1

    .line 153
    const/4 v7, 0x0

    :try_start_1
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    .line 155
    :goto_0
    cmp-long v0, v0, v4

    if-gtz v0, :cond_1

    .line 156
    :try_start_2
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 165
    :cond_3
    :goto_1
    return-object v2

    .line 162
    :catch_0
    move-exception v0

    .line 163
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_1

    .line 154
    :catch_1
    move-exception v7

    goto :goto_0
.end method

.method static synthetic c(Lcom/mob/a/f;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/mob/a/f;->c()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 291
    const/4 v0, 0x0

    .line 293
    :try_start_0
    invoke-static {}, Lcom/mob/a/i;->f()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 298
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "http://c.data.mob.com/v2/cdata"

    :cond_0
    return-object v0

    .line 294
    :catch_0
    move-exception v1

    .line 295
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(JLjava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 77
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 78
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 79
    iget-object v1, p0, Lcom/mob/a/f;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 83
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 98
    :cond_0
    :goto_0
    return v6

    .line 85
    :pswitch_0
    invoke-direct {p0}, Lcom/mob/a/f;->b()V

    .line 86
    iget-object v0, p0, Lcom/mob/a/f;->b:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 89
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 90
    aget-object v1, v0, v6

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mob/tools/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 91
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 93
    aget-object v0, v0, v7

    check-cast v0, Ljava/util/HashMap;

    .line 94
    invoke-direct {p0, v2, v3, v0}, Lcom/mob/a/f;->b(JLjava/util/HashMap;)V

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
