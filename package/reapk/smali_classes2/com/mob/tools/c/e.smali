.class public Lcom/mob/tools/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/c/e$a;
    }
.end annotation


# static fields
.field private static b:Lcom/mob/tools/c/e;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/c/e;->a:Landroid/content/Context;

    .line 73
    return-void
.end method

.method private Y()Ljava/lang/String;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 236
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v8

    .line 237
    .local v8, "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    if-nez v8, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-object v9

    .line 241
    :cond_1
    invoke-static {v8}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v5

    .line 242
    .local v5, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/NetworkInterface;

    .line 243
    .local v6, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    .line 244
    .local v4, "ias":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    if-eqz v4, :cond_2

    .line 248
    invoke-static {v4}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    .line 249
    .local v2, "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 250
    .local v1, "add":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v13

    if-nez v13, :cond_3

    instance-of v13, v1, Ljava/net/Inet4Address;

    if-eqz v13, :cond_3

    .line 251
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v7

    .line 252
    .local v7, "mac":[B
    if-eqz v7, :cond_3

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .local v3, "buf":Ljava/lang/StringBuilder;
    array-length v11, v7

    move v9, v10

    :goto_1
    if-ge v9, v11, :cond_4

    aget-byte v0, v7, v9

    .line 255
    .local v0, "aMac":B
    const-string v12, "%02x:"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v13, v10

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 257
    .end local v0    # "aMac":B
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_5

    .line 258
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 260
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method

.method private Z()[Ljava/lang/String;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 271
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v14

    .line 272
    .local v14, "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    if-nez v14, :cond_1

    .line 273
    const/4 v10, 0x0

    .line 338
    :cond_0
    return-object v10

    .line 276
    :cond_1
    invoke-static {v14}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v7

    .line 277
    .local v7, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 278
    .local v11, "macs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_2
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/NetworkInterface;

    .line 279
    .local v8, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v8}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v9

    .line 280
    .local v9, "mac":[B
    if-eqz v9, :cond_2

    .line 281
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .local v3, "buf":Ljava/lang/StringBuilder;
    array-length v0, v9

    move/from16 v22, v0

    const/16 v20, 0x0

    :goto_1
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    aget-byte v2, v9, v20

    .line 283
    .local v2, "aMac":B
    const-string v23, "%02x:"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 285
    .end local v2    # "aMac":B
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    if-lez v20, :cond_4

    .line 286
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 288
    :cond_4
    invoke-virtual {v8}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 291
    .end local v3    # "buf":Ljava/lang/StringBuilder;
    .end local v8    # "intf":Ljava/net/NetworkInterface;
    .end local v9    # "mac":[B
    :cond_5
    new-instance v13, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 293
    .local v13, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v19, "wlans":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v5, "eths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v17, "rmnets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v4, "dummys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v18, "usbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v16, "rmnetUsbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v15, "others":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_c

    .line 301
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 302
    .local v12, "name":Ljava/lang/String;
    const-string v20, "wlan"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 303
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 304
    :cond_6
    const-string v20, "eth"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 305
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 306
    :cond_7
    const-string v20, "rev_rmnet"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 307
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 308
    :cond_8
    const-string v20, "dummy"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 309
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 310
    :cond_9
    const-string v20, "usbnet"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 311
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 312
    :cond_a
    const-string v20, "rmnet_usb"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 313
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 315
    :cond_b
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 318
    .end local v12    # "name":Ljava/lang/String;
    :cond_c
    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 319
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 320
    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 321
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 322
    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 323
    invoke-static/range {v16 .. v16}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 324
    invoke-static {v15}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 326
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 327
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 328
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 329
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 330
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 331
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 332
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 334
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v10, v0, [Ljava/lang/String;

    .line 335
    .local v10, "macArr":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    array-length v0, v10

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v6, v0, :cond_0

    .line 336
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    aput-object v20, v10, v6

    .line 335
    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/mob/tools/c/e;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 65
    const-class v1, Lcom/mob/tools/c/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mob/tools/c/e;->b:Lcom/mob/tools/c/e;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 66
    new-instance v0, Lcom/mob/tools/c/e;

    invoke-direct {v0, p0}, Lcom/mob/tools/c/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mob/tools/c/e;->b:Lcom/mob/tools/c/e;

    .line 68
    :cond_0
    sget-object v0, Lcom/mob/tools/c/e;->b:Lcom/mob/tools/c/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/content/pm/PackageInfo;)Z
    .locals 5
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1288
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v2, :cond_2

    move v0, v2

    .line 1289
    .local v0, "isSysApp":Z
    :goto_0
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-ne v4, v2, :cond_3

    move v1, v2

    .line 1290
    .local v1, "isSysUpd":Z
    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    return v3

    .end local v0    # "isSysApp":Z
    .end local v1    # "isSysUpd":Z
    :cond_2
    move v0, v3

    .line 1288
    goto :goto_0

    .restart local v0    # "isSysApp":Z
    :cond_3
    move v1, v3

    .line 1289
    goto :goto_1
.end method

.method private aa()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 845
    const-string v4, "phone"

    invoke-direct {p0, v4}, Lcom/mob/tools/c/e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 846
    .local v0, "phone":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 865
    :goto_0
    return v5

    .line 851
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 852
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v4, "ge"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    const-string v4, "tN"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    const-string v4, "et"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    const-string v4, "wo"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    const-string v4, "rk"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    const-string v4, "Ty"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    const-string v4, "pe"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v4, v6}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 860
    .local v3, "type":I
    const/16 v4, 0xd

    if-ne v3, v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v5, v4

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    .line 861
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "type":I
    :catch_0
    move-exception v2

    .line 862
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private ab()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 869
    const-string v4, "phone"

    invoke-direct {p0, v4}, Lcom/mob/tools/c/e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 870
    .local v0, "phone":Ljava/lang/Object;
    if-nez v0, :cond_0

    move v4, v5

    .line 906
    :goto_0
    return v4

    .line 875
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 876
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v4, "ge"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    const-string v4, "tN"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    const-string v4, "et"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    const-string v4, "wo"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    const-string v4, "rk"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    const-string v4, "Ty"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    const-string v4, "pe"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v4, v7}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 884
    .local v3, "type":I
    packed-switch v3, :pswitch_data_0

    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "type":I
    :goto_1
    move v4, v5

    .line 906
    goto :goto_0

    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "type":I
    :pswitch_0
    move v4, v5

    .line 885
    goto :goto_0

    :pswitch_1
    move v4, v5

    .line 886
    goto :goto_0

    :pswitch_2
    move v4, v5

    .line 887
    goto :goto_0

    :pswitch_3
    move v4, v6

    .line 888
    goto :goto_0

    :pswitch_4
    move v4, v6

    .line 889
    goto :goto_0

    :pswitch_5
    move v4, v5

    .line 890
    goto :goto_0

    :pswitch_6
    move v4, v6

    .line 891
    goto :goto_0

    :pswitch_7
    move v4, v6

    .line 892
    goto :goto_0

    :pswitch_8
    move v4, v6

    .line 893
    goto :goto_0

    :pswitch_9
    move v4, v6

    .line 894
    goto :goto_0

    :pswitch_a
    move v4, v6

    .line 895
    goto :goto_0

    :pswitch_b
    move v4, v6

    .line 896
    goto :goto_0

    :pswitch_c
    move v4, v6

    .line 897
    goto :goto_0

    :pswitch_d
    move v4, v5

    .line 898
    goto :goto_0

    :pswitch_e
    move v4, v6

    .line 899
    goto :goto_0

    :pswitch_f
    move v4, v5

    .line 900
    goto :goto_0

    .line 902
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "type":I
    :catch_0
    move-exception v2

    .line 903
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_1

    .line 884
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_5
        :pswitch_2
        :pswitch_9
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_d
        :pswitch_b
        :pswitch_e
        :pswitch_a
        :pswitch_c
    .end packed-switch
.end method

.method private ac()Ljava/lang/String;
    .locals 9

    .prologue
    .line 1012
    const/4 v4, 0x0

    .line 1014
    .local v4, "newKey":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/tools/c/e;->d()Ljava/lang/String;

    move-result-object v2

    .line 1015
    .local v2, "mac":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mob/tools/c/e;->g()Ljava/lang/String;

    move-result-object v6

    .line 1016
    .local v6, "udid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mob/tools/c/e;->e()Ljava/lang/String;

    move-result-object v3

    .line 1017
    .local v3, "model":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1018
    .local v1, "data":Ljava/lang/String;
    invoke-static {v1}, Lcom/mob/tools/c/d;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 1019
    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/mob/tools/c/d;->b([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1024
    .end local v0    # "bytes":[B
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "mac":Ljava/lang/String;
    .end local v3    # "model":Ljava/lang/String;
    .end local v6    # "udid":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 1020
    :catch_0
    move-exception v5

    .line 1021
    .local v5, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    .line 1022
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private ad()Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1107
    invoke-virtual {p0}, Lcom/mob/tools/c/e;->N()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1139
    :cond_0
    :goto_0
    return-object v7

    .line 1111
    :cond_1
    invoke-virtual {p0}, Lcom/mob/tools/c/e;->O()Ljava/lang/String;

    move-result-object v6

    .line 1113
    .local v6, "sdPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v9, "ShareSDK"

    invoke-direct {v1, v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    .local v1, "cacheRoot":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1115
    new-instance v4, Ljava/io/File;

    const-string v9, ".dk"

    invoke-direct {v4, v1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1116
    .local v4, "keyFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1117
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/mob/tools/c/e;->a:Landroid/content/Context;

    invoke-static {v10}, Lcom/mob/tools/c/l;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ".dk"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    .line 1118
    .local v8, "success":Z
    if-eqz v8, :cond_2

    .line 1119
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1124
    .end local v4    # "keyFile":Ljava/io/File;
    .end local v8    # "success":Z
    :cond_2
    new-instance v4, Ljava/io/File;

    iget-object v9, p0, Lcom/mob/tools/c/e;->a:Landroid/content/Context;

    invoke-static {v9}, Lcom/mob/tools/c/l;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ".dk"

    invoke-direct {v4, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    .restart local v4    # "keyFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1129
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1130
    .local v2, "fis":Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1131
    .local v5, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 1132
    .local v3, "key":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 1133
    .local v7, "strKey":Ljava/lang/String;
    if-eqz v3, :cond_3

    instance-of v9, v3, [C

    if-eqz v9, :cond_3

    .line 1134
    check-cast v3, [C

    .end local v3    # "key":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, [C

    .line 1135
    .local v0, "cKey":[C
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    .line 1137
    .end local v0    # "cKey":[C
    :cond_3
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "networkCard"    # Ljava/lang/String;

    .prologue
    .line 343
    const/4 v3, 0x0

    .line 344
    .local v3, "line":Ljava/lang/String;
    const/4 v0, 0x0

    .line 346
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string v7, "ca"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    const-string v7, "t "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    const-string v7, "/s"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    const-string v7, "ys"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    const-string v7, "/c"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    const-string v7, "la"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    const-string v7, "ss"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const-string v7, "/n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    const-string v7, "et"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    const-string v7, "/a"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    const-string v7, "dd"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    const-string v7, "re"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    const-string v7, "ss"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 363
    .local v4, "p":Ljava/lang/Process;
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 364
    .local v2, "isr":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 369
    if-eqz v1, :cond_3

    .line 371
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 376
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .end local v4    # "p":Ljava/lang/Process;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v3, 0x0

    .end local v3    # "line":Ljava/lang/String;
    :cond_1
    return-object v3

    .line 372
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "isr":Ljava/io/InputStreamReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "p":Ljava/lang/Process;
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_0

    .line 366
    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .end local v4    # "p":Ljava/lang/Process;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v6

    .line 367
    .local v6, "t":Ljava/lang/Throwable;
    :goto_1
    :try_start_3
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 369
    if-eqz v0, :cond_0

    .line 371
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 372
    :catch_2
    move-exception v7

    goto :goto_0

    .line 369
    .end local v6    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v0, :cond_2

    .line 371
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 372
    :cond_2
    :goto_3
    throw v7

    :catch_3
    move-exception v8

    goto :goto_3

    .line 369
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "p":Ljava/lang/Process;
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 366
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_3
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 740
    :try_start_0
    iget-object v1, p0, Lcom/mob/tools/c/e;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 744
    :goto_0
    return-object v1

    .line 741
    :catch_0
    move-exception v0

    .line 742
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    .line 744
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "duidFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1054
    const/4 v9, 0x0

    .line 1057
    .local v9, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mob/tools/c/e;->a:Landroid/content/Context;

    invoke-static {v14}, Lcom/mob/tools/c/l;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-direct {v6, v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result v14

    if-eqz v14, :cond_0

    .line 1059
    const/4 v11, 0x0

    .line 1061
    .local v11, "ois":Ljava/io/ObjectInputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1062
    .local v7, "fis":Ljava/io/FileInputStream;
    new-instance v12, Ljava/io/ObjectInputStream;

    invoke-direct {v12, v7}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1063
    .end local v11    # "ois":Ljava/io/ObjectInputStream;
    .local v12, "ois":Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual {v12}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/util/HashMap;

    move-object v9, v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1067
    if-eqz v12, :cond_0

    .line 1069
    :try_start_3
    invoke-virtual {v12}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    .line 1079
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "ois":Ljava/io/ObjectInputStream;
    :cond_0
    :goto_0
    if-nez v9, :cond_2

    .line 1080
    const/4 v5, 0x0

    .line 1103
    :goto_1
    return-object v5

    .line 1064
    .restart local v6    # "file":Ljava/io/File;
    .restart local v11    # "ois":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v13

    .line 1065
    .local v13, "t":Ljava/lang/Throwable;
    :goto_2
    :try_start_4
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1067
    if-eqz v11, :cond_0

    .line 1069
    :try_start_5
    invoke-virtual {v11}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 1070
    :catch_1
    move-exception v14

    goto :goto_0

    .line 1067
    .end local v13    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v14

    :goto_3
    if-eqz v11, :cond_1

    .line 1069
    :try_start_6
    invoke-virtual {v11}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    .line 1071
    :cond_1
    :goto_4
    :try_start_7
    throw v14
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    .line 1075
    .end local v6    # "file":Ljava/io/File;
    .end local v11    # "ois":Ljava/io/ObjectInputStream;
    :catch_2
    move-exception v13

    .line 1076
    .restart local v13    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1083
    .end local v13    # "t":Ljava/lang/Throwable;
    :cond_2
    const-string v14, "deviceInfo"

    invoke-virtual {v9, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 1084
    .local v4, "deviceInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v4, :cond_3

    .line 1085
    const/4 v5, 0x0

    goto :goto_1

    .line 1088
    :cond_3
    const-string v5, ""

    .line 1090
    .local v5, "deviceKey":Ljava/lang/String;
    :try_start_8
    const-string v14, "mac"

    invoke-virtual {v4, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1091
    .local v8, "mac":Ljava/lang/String;
    const-string v14, "imei"

    invoke-virtual {v4, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1092
    .local v3, "deviceId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x9

    if-lt v14, v15, :cond_4

    .line 1093
    const-string v14, "serialno"

    invoke-virtual {v4, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "deviceId":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1095
    .restart local v3    # "deviceId":Ljava/lang/String;
    :cond_4
    const-string v14, "model"

    invoke-virtual {v4, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1096
    .local v10, "model":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1097
    .local v2, "data":Ljava/lang/String;
    invoke-static {v2}, Lcom/mob/tools/c/d;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 1098
    .local v1, "bytes":[B
    invoke-static {v1}, Lcom/mob/tools/c/d;->b([B)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    move-result-object v5

    goto/16 :goto_1

    .line 1099
    .end local v1    # "bytes":[B
    .end local v2    # "data":Ljava/lang/String;
    .end local v3    # "deviceId":Ljava/lang/String;
    .end local v8    # "mac":Ljava/lang/String;
    .end local v10    # "model":Ljava/lang/String;
    :catch_3
    move-exception v13

    .line 1100
    .restart local v13    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    .line 1101
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1070
    .end local v4    # "deviceInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "deviceKey":Ljava/lang/String;
    .end local v13    # "t":Ljava/lang/Throwable;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "ois":Ljava/io/ObjectInputStream;
    :catch_4
    move-exception v14

    goto/16 :goto_0

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "ois":Ljava/io/ObjectInputStream;
    .restart local v11    # "ois":Ljava/io/ObjectInputStream;
    :catch_5
    move-exception v15

    goto :goto_4

    .line 1067
    .end local v11    # "ois":Ljava/io/ObjectInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "ois":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v14

    move-object v11, v12

    .end local v12    # "ois":Ljava/io/ObjectInputStream;
    .restart local v11    # "ois":Ljava/io/ObjectInputStream;
    goto/16 :goto_3

    .line 1064
    .end local v11    # "ois":Ljava/io/ObjectInputStream;
    .restart local v12    # "ois":Ljava/io/ObjectInputStream;
    :catch_6
    move-exception v13

    move-object v11, v12

    .end local v12    # "ois":Ljava/io/ObjectInputStream;
    .restart local v11    # "ois":Ljava/io/ObjectInputStream;
    goto/16 :goto_2
.end method

.method private e(Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1143
    invoke-virtual {p0}, Lcom/mob/tools/c/e;->N()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1158
    :goto_0
    return-void

    .line 1147
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/mob/tools/c/e;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/mob/tools/c/l;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ".dk"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    .local v2, "keyFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1149
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1152
    :cond_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1153
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1154
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1155
    .local v0, "cKey":[C
    invoke-virtual {v3, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1156
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    .line 1157
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 2

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/mob/tools/c/e;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 799
    .local v0, "networkType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 800
    :cond_0
    const-string v1, "none"

    .line 812
    :goto_0
    return-object v1

    .line 803
    :cond_1
    const-string v1, "4g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "2g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 804
    :cond_2
    const-string v1, "cell"

    goto :goto_0

    .line 807
    :cond_3
    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 808
    const-string v1, "wifi"

    goto :goto_0

    .line 812
    :cond_4
    const-string v1, "other"

    goto :goto_0
.end method

.method public B()Ljava/lang/String;
    .locals 2

    .prologue
    .line 819
    invoke-virtual {p0}, Lcom/mob/tools/c/e;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 820
    .local v0, "networkType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 821
    :cond_0
    const-string v0, "none"

    .line 836
    .end local v0    # "networkType":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    .line 824
    .restart local v0    # "networkType":Ljava/lang/String;
    :cond_2
    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 825
    const-string v0, "wifi"

    goto :goto_0

    .line 826
    :cond_3
    const-string v1, "4g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 827
    const-string v0, "4g"

    goto :goto_0

    .line 828
    :cond_4
    const-string v1, "3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 829
    const-string v0, "3g"

    goto :goto_0

    .line 830
    :cond_5
    const-string v1, "2g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 831
    const-string v0, "2g"

    goto :goto_0

    .line 832
    :cond_6
    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 833
    const-string v0, "bluetooth"

    goto :goto_0
.end method

.method public C()I
    .locals 1

    .prologue
    .line 841
    const/4 v0, 0x1

    return v0
.end method

.method public D()Lorg/json/JSONArray;
    .locals 9

    .prologue
    .line 910
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 912
    .local v2, "appNmes":Lorg/json/JSONArray;
    const-string v7, "activity"

    invoke-direct {p0, v7}, Lcom/mob/tools/c/e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 913
    .local v0, "am":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 949
    :cond_0
    :goto_0
    return-object v2

    .line 918
    :cond_1
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 919
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v7, "ge"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    const-string v7, "tR"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    const-string v7, "un"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    const-string v7, "ni"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    const-string v7, "ng"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    const-string v7, "Ap"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    const-string v7, "pP"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    const-string v7, "ro"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    const-string v7, "ce"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    const-string v7, "ss"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    const-string v7, "es"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0, v7, v8}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 931
    .local v3, "apps":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz v3, :cond_0

    .line 935
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 936
    .local v1, "app":Ljava/lang/Object;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 937
    .local v5, "sb1":Ljava/lang/StringBuilder;
    const-string v8, "pr"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    const-string v8, "oc"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    const-string v8, "es"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    const-string v8, "sN"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    const-string v8, "am"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    const-string v8, "e"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 945
    .end local v1    # "app":Ljava/lang/Object;
    .end local v3    # "apps":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "sb1":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v6

    .line 946
    .local v6, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public E()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 953
    invoke-virtual {p0}, Lcom/mob/tools/c/e;->D()Lorg/json/JSONArray;

    move-result-object v0

    .line 954
    .local v0, "apps":Lorg/json/JSONArray;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 955
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 956
    if-lez v1, :cond_0

    .line 957
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 959
    :cond_0
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 961
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public F()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x28

    .line 966
    const/4 v0, 0x0

    .line 969
    .local v0, "deviceKey":Ljava/lang/String;
    :try_start_0
    const-string v2, "comm/dbs/.duid"

    invoke-direct {p0, v2}, Lcom/mob/tools/c/e;->d(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 973
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_1

    .line 975
    :cond_0
    invoke-direct {p0}, Lcom/mob/tools/c/e;->ac()Ljava/lang/String;

    move-result-object v0

    .line 977
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_2

    .line 978
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1006
    :goto_1
    return-object v2

    .line 970
    :catch_0
    move-exception v1

    .line 971
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 983
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/mob/tools/c/e;->ad()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 988
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_3

    .line 989
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 984
    :catch_1
    move-exception v1

    .line 985
    .restart local v1    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    .line 986
    const/4 v0, 0x0

    goto :goto_2

    .line 992
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_5

    .line 994
    :cond_4
    invoke-virtual {p0, v3}, Lcom/mob/tools/c/e;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 998
    :cond_5
    if-eqz v0, :cond_6

    .line 1000
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1001
    invoke-direct {p0, v0}, Lcom/mob/tools/c/e;->e(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_6
    :goto_3
    move-object v2, v0

    .line 1006
    goto :goto_1

    .line 1002
    :catch_2
    move-exception v1

    .line 1003
    .restart local v1    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public G()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/mob/tools/c/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public H()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1167
    iget-object v3, p0, Lcom/mob/tools/c/e;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 1168
    .local v1, "appName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1169
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x19

    if-lt v3, v4, :cond_1

    const-string v3, ".*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1171
    :try_start_0
    invoke-static {v1}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1173
    const/4 v1, 0x0

    .line 1180
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/mob/tools/c/e;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 1181
    .local v0, "appLbl":I
    if-lez v0, :cond_2

    .line 1182
    iget-object v3, p0, Lcom/mob/tools/c/e;->a:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v2, v1

    .line 1187
    .end local v0    # "appLbl":I
    .end local v1    # "appName":Ljava/lang/String;
    .local v2, "appName":Ljava/lang/String;
    :goto_2
    return-object v2

    .end local v2    # "appName":Ljava/lang/String;
    .restart local v1    # "appName":Ljava/lang/String;
    :cond_1
    move-object v2, v1

    .line 1176
    .end local v1    # "appName":Ljava/lang/String;
    .restart local v2    # "appName":Ljava/lang/String;
    goto :goto_2

    .line 1184
    .end local v2    # "appName":Ljava/lang/String;
    .restart local v0    # "appLbl":I
    .restart local v1    # "appName":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/mob/tools/c/e;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1174
    .end local v0    # "appLbl":I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public I()I
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1193
    :try_start_0
    iget-object v4, p0, Lcom/mob/tools/c/e;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1194
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/mob/tools/c/e;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1195
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1199
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    .line 1196
    :catch_0
    move-exception v2

    .line 1197
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public J()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1205
    :try_start_0
    iget-object v3, p0, Lcom/mob/tools/c/e;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1206
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/mob/tools/c/e;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1207
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1211
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 1208
    :catch_0
    move-exception v2

    .line 1209
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    .line 1211
    const-string v3, "1.0"

    goto :goto_0
.end method

.method public K()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1294
    const-string v3, "phone"

    invoke-direct {p0, v3}, Lcom/mob/tools/c/e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1295
    .local v2, "tm":Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 1314
    :goto_0
    return-object v3

    .line 1300
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1301
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v3, "ge"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1302
    const-string v3, "tN"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1303
    const-string v3, "et"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1304
    const-string v3, "wo"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1305
    const-string v3, "rk"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1306
    const-string v3, "Op"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1307
    const-string v3, "er"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
    const-string v3, "at"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1309
    const-string v3, "or"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1310
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1311
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 1312
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 1314
    goto :goto_0
.end method

.method public L()Ljava/lang/String;
    .locals 15

    .prologue
    const/4 v11, 0x0

    .line 1361
    const/4 v1, 0x0

    .line 1363
    .local v1, "hasPer":Z
    :try_start_0
    const-string v10, "android.permission.GET_TASKS"

    invoke-virtual {p0, v10}, Lcom/mob/tools/c/e;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1369
    :goto_0
    if-eqz v1, :cond_2

    .line 1371
    :try_start_1
    const-string v10, "activity"

    invoke-direct {p0, v10}, Lcom/mob/tools/c/e;->c(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1372
    .local v0, "am":Ljava/lang/Object;
    if-nez v0, :cond_0

    move-object v10, v11

    .line 1433
    .end local v0    # "am":Ljava/lang/Object;
    :goto_1
    return-object v10

    .line 1364
    :catch_0
    move-exception v7

    .line 1365
    .local v7, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    .line 1366
    const/4 v1, 0x0

    goto :goto_0

    .line 1376
    .end local v7    # "t":Ljava/lang/Throwable;
    .restart local v0    # "am":Ljava/lang/Object;
    :cond_0
    :try_start_2
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x14

    if-gt v10, v12, :cond_1

    .line 1378
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1379
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v10, "ge"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1380
    const-string v10, "tR"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1381
    const-string v10, "un"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1382
    const-string v10, "ni"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    const-string v10, "ng"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1384
    const-string v10, "Ta"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1385
    const-string v10, "sk"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1386
    const-string v10, "s"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1387
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v0, v10, v12}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1388
    .local v8, "tasks":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1389
    .local v5, "sb1":Ljava/lang/StringBuilder;
    const-string v10, "to"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1390
    const-string v10, "pA"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1391
    const-string v10, "ct"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1392
    const-string v10, "iv"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1393
    const-string v10, "it"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1394
    const-string v10, "y"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1395
    const/4 v10, 0x0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 1396
    .local v9, "topActivity":Ljava/lang/Object;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1397
    .local v6, "sb2":Ljava/lang/StringBuilder;
    const-string v10, "ge"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1398
    const-string v10, "tP"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1399
    const-string v10, "ac"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1400
    const-string v10, "ka"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1401
    const-string v10, "ge"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1402
    const-string v10, "Na"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1403
    const-string v10, "me"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1404
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v9, v10, v12}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    goto/16 :goto_1

    .line 1406
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "sb1":Ljava/lang/StringBuilder;
    .end local v6    # "sb2":Ljava/lang/StringBuilder;
    .end local v8    # "tasks":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v9    # "topActivity":Ljava/lang/Object;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1407
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    const-string v10, "ge"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1408
    const-string v10, "tR"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1409
    const-string v10, "un"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1410
    const-string v10, "ni"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1411
    const-string v10, "ng"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1412
    const-string v10, "Ap"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1413
    const-string v10, "pP"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1414
    const-string v10, "ro"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1415
    const-string v10, "ce"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1416
    const-string v10, "ss"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1417
    const-string v10, "es"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1418
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v0, v10, v12}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1419
    .local v2, "processInfos":Ljava/util/List;, "Ljava/util/List<*>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1420
    .restart local v5    # "sb1":Ljava/lang/StringBuilder;
    const-string v10, "pr"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1421
    const-string v10, "oc"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1422
    const-string v10, "es"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1423
    const-string v10, "sN"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1424
    const-string v10, "am"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1425
    const-string v10, "e"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1426
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1427
    .local v3, "processName":Ljava/lang/String;
    const-string v10, ":"

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    aget-object v10, v10, v12
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 1429
    .end local v0    # "am":Ljava/lang/Object;
    .end local v2    # "processInfos":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v3    # "processName":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "sb1":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v7

    .line 1430
    .restart local v7    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_2
    move-object v10, v11

    .line 1433
    goto/16 :goto_1
.end method

.method public M()Z
    .locals 9

    .prologue
    .line 1438
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/tools/c/e;->X()Ljava/lang/Object;

    move-result-object v6

    .line 1439
    .local v6, "thread":Ljava/lang/Object;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1440
    .local v2, "sb2":Ljava/lang/StringBuilder;
    const-string v7, "mA"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1441
    const-string v7, "ct"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1442
    const-string v7, "iv"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1443
    const-string v7, "it"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1444
    const-string v7, "ie"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1445
    const-string v7, "s"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1446
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1447
    .local v0, "activities":Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1448
    .local v1, "activity":Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1449
    .local v3, "sb3":Ljava/lang/StringBuilder;
    const-string v8, "st"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1450
    const-string v8, "op"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1451
    const-string v8, "pe"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1452
    const-string v8, "d"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1453
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 1454
    .local v4, "stopped":Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_0

    .line 1455
    const/4 v7, 0x1

    .line 1461
    .end local v0    # "activities":Ljava/util/Map;
    .end local v1    # "activity":Ljava/lang/Object;
    .end local v2    # "sb2":Ljava/lang/StringBuilder;
    .end local v3    # "sb3":Ljava/lang/StringBuilder;
    .end local v4    # "stopped":Ljava/lang/Boolean;
    .end local v6    # "thread":Ljava/lang/Object;
    :goto_0
    return v7

    .line 1458
    :catch_0
    move-exception v5

    .line 1459
    .local v5, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    .line 1461
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public N()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1467
    :try_start_0
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v2}, Lcom/mob/tools/c/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "mounted"

    .line 1468
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 1472
    :cond_0
    :goto_0
    return v1

    .line 1469
    :catch_0
    move-exception v0

    .line 1470
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public O()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1477
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public P()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1482
    iget-object v1, p0, Lcom/mob/tools/c/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1483
    .local v0, "androidId":Ljava/lang/String;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAndroidID === "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 1484
    return-object v0
.end method

.method public Q()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1489
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    if-ne v8, v9, :cond_0

    .line 1490
    new-instance v8, Ljava/lang/Throwable;

    const-string v9, "Do not call this function from the main thread !"

    invoke-direct {v8, v9}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1493
    :cond_0
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1494
    .local v5, "intent":Landroid/content/Intent;
    const-string v8, "com.google.android.gms"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1495
    new-instance v3, Lcom/mob/tools/c/e$a;

    const/4 v8, 0x0

    invoke-direct {v3, p0, v8}, Lcom/mob/tools/c/e$a;-><init>(Lcom/mob/tools/c/e;Lcom/mob/tools/c/e$1;)V

    .line 1496
    .local v3, "gsc":Lcom/mob/tools/c/e$a;
    const/4 v0, 0x0

    .line 1498
    .local v0, "adsid":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/mob/tools/c/e;->a:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-virtual {v8, v5, v3, v9}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1499
    invoke-virtual {v3}, Lcom/mob/tools/c/e$a;->a()Landroid/os/IBinder;

    move-result-object v2

    .line 1500
    .local v2, "binder":Landroid/os/IBinder;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 1501
    .local v4, "input":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 1502
    .local v6, "output":Landroid/os/Parcel;
    const-string v8, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {v4, v8}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1503
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {v2, v8, v4, v6, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1504
    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V

    .line 1505
    invoke-virtual {v6}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1507
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 1508
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1514
    iget-object v8, p0, Lcom/mob/tools/c/e;->a:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    move-object v1, v0

    .line 1512
    .end local v0    # "adsid":Ljava/lang/String;
    .end local v2    # "binder":Landroid/os/IBinder;
    .end local v4    # "input":Landroid/os/Parcel;
    .end local v6    # "output":Landroid/os/Parcel;
    .local v1, "adsid":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1510
    .end local v1    # "adsid":Ljava/lang/String;
    .restart local v0    # "adsid":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1511
    .local v7, "t":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1514
    iget-object v8, p0, Lcom/mob/tools/c/e;->a:Landroid/content/Context;

    invoke-virtual {v8, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    move-object v1, v0

    .line 1512
    .end local v0    # "adsid":Ljava/lang/String;
    .restart local v1    # "adsid":Ljava/lang/String;
    goto :goto_0

    .line 1514
    .end local v1    # "adsid":Ljava/lang/String;
    .end local v7    # "t":Ljava/lang/Throwable;
    .restart local v0    # "adsid":Ljava/lang/String;
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/mob/tools/c/e;->a:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v8
.end method

.method public R()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1588
    const-string v5, "phone"

    invoke-direct {p0, v5}, Lcom/mob/tools/c/e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1589
    .local v2, "phone":Ljava/lang/Object;
    if-nez v2, :cond_1

    move-object v1, v6

    .line 1615
    :cond_0
    :goto_0
    return-object v1

    .line 1593
    :cond_1
    const/4 v1, 0x0

    .line 1595
    .local v1, "imsi":Ljava/lang/String;
    :try_start_0
    const-string v5, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v5}, Lcom/mob/tools/c/e;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1596
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1597
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v5, "ge"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1598
    const-string v5, "tS"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1599
    const-string v5, "ub"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1600
    const-string v5, "sc"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1601
    const-string v5, "ri"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1602
    const-string v5, "be"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1603
    const-string v5, "rI"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1604
    const-string v5, "d"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1605
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v5, v7}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1611
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v1, v6

    .line 1612
    goto :goto_0

    .line 1607
    :catch_0
    move-exception v4

    .line 1608
    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public S()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1620
    :try_start_0
    const-string v5, "android.permission.INTERNET"

    invoke-virtual {p0, v5}, Lcom/mob/tools/c/e;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1621
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 1622
    .local v1, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1623
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 1624
    .local v4, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 1625
    .local v2, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1626
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 1627
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_1

    instance-of v5, v3, Ljava/net/Inet4Address;

    if-eqz v5, :cond_1

    .line 1628
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1636
    .end local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v2    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    :goto_0
    return-object v5

    .line 1633
    :catch_0
    move-exception v0

    .line 1634
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    .line 1636
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    const-string v5, "0.0.0.0"

    goto :goto_0
.end method

.method public T()I
    .locals 8

    .prologue
    const/4 v6, -0x1

    .line 1719
    :try_start_0
    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v5}, Lcom/mob/tools/c/e;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1720
    const-string v5, "phone"

    invoke-direct {p0, v5}, Lcom/mob/tools/c/e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1721
    .local v4, "tm":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 1722
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1723
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v5, "ge"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1724
    const-string v5, "tC"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1725
    const-string v5, "el"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1726
    const-string v5, "lL"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1727
    const-string v5, "oc"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1728
    const-string v5, "at"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1729
    const-string v5, "io"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1730
    const-string v5, "n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1731
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v7}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1732
    .local v0, "loc":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1733
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1734
    .local v2, "sb1":Ljava/lang/StringBuilder;
    const-string v5, "ge"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1735
    const-string v5, "tC"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1736
    const-string v5, "id"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1737
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v5, v7}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mob/tools/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 1744
    .end local v0    # "loc":Ljava/lang/Object;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "sb1":Ljava/lang/StringBuilder;
    .end local v4    # "tm":Ljava/lang/Object;
    :goto_0
    return v5

    .line 1741
    :catch_0
    move-exception v3

    .line 1742
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_0
    move v5, v6

    .line 1744
    goto :goto_0
.end method

.method public U()I
    .locals 8

    .prologue
    const/4 v6, -0x1

    .line 1750
    :try_start_0
    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v5}, Lcom/mob/tools/c/e;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1751
    const-string v5, "phone"

    invoke-direct {p0, v5}, Lcom/mob/tools/c/e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1752
    .local v4, "tm":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 1753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1754
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v5, "ge"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1755
    const-string v5, "tC"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1756
    const-string v5, "el"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1757
    const-string v5, "lL"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1758
    const-string v5, "oc"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1759
    const-string v5, "at"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1760
    const-string v5, "io"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1761
    const-string v5, "n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1762
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v7}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1763
    .local v0, "loc":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1764
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1765
    .local v2, "sb1":Ljava/lang/StringBuilder;
    const-string v5, "ge"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1766
    const-string v5, "tL"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1767
    const-string v5, "ac"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1768
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v5, v7}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mob/tools/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 1775
    .end local v0    # "loc":Ljava/lang/Object;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "sb1":Ljava/lang/StringBuilder;
    .end local v4    # "tm":Ljava/lang/Object;
    :goto_0
    return v5

    .line 1772
    :catch_0
    move-exception v3

    .line 1773
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_0
    move v5, v6

    .line 1775
    goto :goto_0
.end method

.method public V()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1780
    const-string v2, "uimode"

    invoke-direct {p0, v2}, Lcom/mob/tools/c/e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    .line 1781
    .local v1, "um":Landroid/app/UiModeManager;
    if-eqz v1, :cond_0

    .line 1782
    invoke-virtual {v1}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    .line 1783
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 1792
    .end local v0    # "type":I
    :cond_0
    const-string v2, "UNDEFINED"

    :goto_0
    return-object v2

    .line 1784
    .restart local v0    # "type":I
    :pswitch_0
    const-string v2, "NO_UI"

    goto :goto_0

    .line 1785
    :pswitch_1
    const-string v2, "DESK"

    goto :goto_0

    .line 1786
    :pswitch_2
    const-string v2, "CAR"

    goto :goto_0

    .line 1787
    :pswitch_3
    const-string v2, "TELEVISION"

    goto :goto_0

    .line 1788
    :pswitch_4
    const-string v2, "APPLIANCE"

    goto :goto_0

    .line 1789
    :pswitch_5
    const-string v2, "WATCH"

    goto :goto_0

    .line 1783
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public W()Landroid/app/Activity;
    .locals 10

    .prologue
    .line 1798
    :try_start_0
    invoke-virtual {p0}, Lcom/mob/tools/c/e;->X()Ljava/lang/Object;

    move-result-object v7

    .line 1799
    .local v7, "thread":Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1800
    .local v3, "sb2":Ljava/lang/StringBuilder;
    const-string v8, "mA"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1801
    const-string v8, "ct"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1802
    const-string v8, "iv"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1803
    const-string v8, "it"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1804
    const-string v8, "ie"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1805
    const-string v8, "s"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1806
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1807
    .local v0, "activities":Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1808
    .local v1, "activity":Ljava/lang/Object;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1809
    .local v4, "sb3":Ljava/lang/StringBuilder;
    const-string v9, "pa"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1810
    const-string v9, "us"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1811
    const-string v9, "ed"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1812
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 1813
    .local v2, "paused":Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1814
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1815
    .local v5, "sb4":Ljava/lang/StringBuilder;
    const-string v8, "ac"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1816
    const-string v8, "ti"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1817
    const-string v8, "vi"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1818
    const-string v8, "ty"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1819
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;

    .line 1840
    .end local v0    # "activities":Ljava/util/Map;
    .end local v1    # "activity":Ljava/lang/Object;
    .end local v2    # "paused":Ljava/lang/Boolean;
    .end local v3    # "sb2":Ljava/lang/StringBuilder;
    .end local v4    # "sb3":Ljava/lang/StringBuilder;
    .end local v5    # "sb4":Ljava/lang/StringBuilder;
    .end local v7    # "thread":Ljava/lang/Object;
    :goto_0
    return-object v8

    .line 1823
    .restart local v0    # "activities":Ljava/util/Map;
    .restart local v3    # "sb2":Ljava/lang/StringBuilder;
    .restart local v7    # "thread":Ljava/lang/Object;
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1824
    .restart local v1    # "activity":Ljava/lang/Object;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1825
    .restart local v4    # "sb3":Ljava/lang/StringBuilder;
    const-string v9, "st"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1826
    const-string v9, "op"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1827
    const-string v9, "pe"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1828
    const-string v9, "d"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1829
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    .line 1830
    .local v6, "stopped":Ljava/lang/Boolean;
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_2

    .line 1831
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1832
    .restart local v5    # "sb4":Ljava/lang/StringBuilder;
    const-string v8, "ac"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1833
    const-string v8, "ti"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1834
    const-string v8, "vi"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1835
    const-string v8, "ty"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1836
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1839
    .end local v0    # "activities":Ljava/util/Map;
    .end local v1    # "activity":Ljava/lang/Object;
    .end local v3    # "sb2":Ljava/lang/StringBuilder;
    .end local v4    # "sb3":Ljava/lang/StringBuilder;
    .end local v5    # "sb4":Ljava/lang/StringBuilder;
    .end local v6    # "stopped":Ljava/lang/Boolean;
    .end local v7    # "thread":Ljava/lang/Object;
    :catch_0
    move-exception v8

    .line 1840
    :cond_3
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public X()Ljava/lang/Object;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1845
    new-instance v1, Lcom/mob/tools/c/e$1;

    invoke-direct {v1, p0}, Lcom/mob/tools/c/e$1;-><init>(Lcom/mob/tools/c/e;)V

    .line 1882
    .local v1, "mainThreadAct":Lcom/mob/tools/c/k$a;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 1883
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Lcom/mob/tools/c/k$a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1907
    :goto_0
    return-object v4

    .line 1885
    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1886
    .local v0, "lock":Ljava/lang/Object;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/Object;

    .line 1887
    .local v2, "output":[Ljava/lang/Object;
    monitor-enter v0

    .line 1888
    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Lcom/mob/tools/c/e$2;

    invoke-direct {v5, p0, v0, v2, v1}, Lcom/mob/tools/c/e$2;-><init>(Lcom/mob/tools/c/e;Ljava/lang/Object;[Ljava/lang/Object;Lcom/mob/tools/c/k$a;)V

    invoke-static {v4, v5}, Lcom/mob/tools/c/o;->a(ILandroid/os/Handler$Callback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1902
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1906
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1907
    aget-object v4, v2, v8

    goto :goto_0

    .line 1903
    :catch_0
    move-exception v3

    .line 1904
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_3
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1906
    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method public a(IIZ)Landroid/location/Location;
    .locals 3
    .param p1, "GPSTimeout"    # I
    .param p2, "networkTimeout"    # I
    .param p3, "useLastKnown"    # Z

    .prologue
    .line 1642
    :try_start_0
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v2}, Lcom/mob/tools/c/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1643
    new-instance v0, Lcom/mob/tools/c/h;

    invoke-direct {v0}, Lcom/mob/tools/c/h;-><init>()V

    .line 1644
    .local v0, "helper":Lcom/mob/tools/c/h;
    iget-object v2, p0, Lcom/mob/tools/c/e;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/mob/tools/c/h;->a(Landroid/content/Context;IIZ)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1649
    .end local v0    # "helper":Lcom/mob/tools/c/h;
    :goto_0
    return-object v2

    .line 1646
    :catch_0
    move-exception v1

    .line 1647
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    .line 1649
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public a(I)Ljava/lang/String;
    .locals 14
    .param p1, "length"    # I

    .prologue
    .line 1030
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1031
    .local v2, "currentTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1032
    .local v4, "elapseTime":J
    xor-long v8, v2, v4

    .line 1033
    .local v8, "realTime":J
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 1034
    .local v10, "stringBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1036
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    .line 1037
    .local v7, "random":Ljava/util/Random;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, p1, :cond_2

    .line 1038
    const/4 v11, 0x2

    invoke-virtual {v7, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    rem-int/lit8 v11, v11, 0x2

    if-nez v11, :cond_0

    const-string v0, "char"

    .line 1039
    .local v0, "charOrNum":Ljava/lang/String;
    :goto_1
    const-string v11, "char"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1041
    const/16 v11, 0x1a

    invoke-virtual {v7, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    add-int/lit8 v11, v11, 0x61

    int-to-char v1, v11

    .line 1042
    .local v1, "charValue":C
    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v10, v11, v1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 1037
    .end local v1    # "charValue":C
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1038
    .end local v0    # "charOrNum":Ljava/lang/String;
    :cond_0
    const-string v0, "num"

    goto :goto_1

    .line 1045
    .restart local v0    # "charOrNum":Ljava/lang/String;
    :cond_1
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    const/16 v12, 0xa

    invoke-virtual {v7, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuffer;->insert(II)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1048
    .end local v0    # "charOrNum":Ljava/lang/String;
    :cond_2
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/16 v13, 0x28

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    return-object v11
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 495
    const/4 v1, 0x0

    .line 497
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {p2, p1}, Lcom/mob/tools/c/d;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 499
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 500
    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 505
    :cond_0
    :goto_0
    return-object v1

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Z)Ljava/util/ArrayList;
    .locals 20
    .param p1, "includeSystemApp"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1216
    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1218
    .local v11, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1219
    .local v15, "sb":Ljava/lang/StringBuilder;
    const-string v17, "pm"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1220
    const-string v17, " l"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    const-string v17, "is"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1222
    const-string v17, "t "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    const-string v17, "pa"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1224
    const-string v17, "ck"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    const-string v17, "ag"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1226
    const-string v17, "es"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v17

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v10

    .line 1228
    .local v10, "p":Ljava/lang/Process;
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v10}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v17

    const-string v18, "utf-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v7, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1229
    .local v7, "isr":Ljava/io/InputStreamReader;
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1230
    .local v6, "br":Ljava/io/BufferedReader;
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 1231
    .local v9, "line":Ljava/lang/String;
    :goto_0
    if-eqz v9, :cond_1

    .line 1232
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 1233
    const-string v17, "package:"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1234
    const-string v17, "package:"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 1235
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1237
    :cond_0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 1239
    :cond_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 1240
    invoke-virtual {v10}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1245
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .end local v9    # "line":Ljava/lang/String;
    .end local v10    # "p":Ljava/lang/Process;
    .end local v15    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    :try_start_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1246
    .local v5, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mob/tools/c/e;->a:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 1247
    .local v14, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_2
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 1248
    .local v13, "pkg":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1250
    .local v12, "pi":Landroid/content/pm/PackageInfo;
    const/16 v18, 0x0

    :try_start_3
    move/from16 v0, v18

    invoke-virtual {v14, v13, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v12

    .line 1254
    :goto_3
    if-eqz v12, :cond_2

    .line 1255
    if-nez p1, :cond_3

    :try_start_4
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/mob/tools/c/e;->a(Landroid/content/pm/PackageInfo;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 1259
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1260
    .local v2, "app":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v18, "pkg"

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 1262
    .local v4, "appName":Ljava/lang/String;
    if-nez v4, :cond_5

    .line 1263
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 1264
    .local v3, "appLbl":I
    if-lez v3, :cond_4

    .line 1265
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v3, v1}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1266
    .local v8, "label":Ljava/lang/CharSequence;
    if-eqz v8, :cond_4

    .line 1267
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1270
    .end local v8    # "label":Ljava/lang/CharSequence;
    :cond_4
    if-nez v4, :cond_5

    .line 1271
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1274
    .end local v3    # "appLbl":I
    :cond_5
    const-string v18, "name"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    const-string v18, "version"

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 1281
    .end local v2    # "app":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "appName":Ljava/lang/String;
    .end local v5    # "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v11    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "pi":Landroid/content/pm/PackageInfo;
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v14    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v16

    .line 1282
    .local v16, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    .line 1283
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .end local v16    # "t":Ljava/lang/Throwable;
    :cond_6
    return-object v5

    .line 1241
    .restart local v11    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1
    move-exception v16

    .line 1242
    .restart local v16    # "t":Ljava/lang/Throwable;
    :try_start_5
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1251
    .end local v16    # "t":Ljava/lang/Throwable;
    .restart local v5    # "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v12    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v13    # "pkg":Ljava/lang/String;
    .restart local v14    # "pm":Landroid/content/pm/PackageManager;
    :catch_2
    move-exception v16

    .line 1252
    .restart local v16    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_3
.end method

.method public a(Ljava/lang/String;II)Ljava/util/HashMap;
    .locals 21
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "packetsize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1653
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1655
    .local v16, "sucRes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    :try_start_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ping -c "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " -s "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1656
    .local v5, "cmd":Ljava/lang/String;
    add-int/lit8 v4, p3, 0x8

    .line 1657
    .local v4, "bytes":I
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v14

    .line 1658
    .local v14, "p":Ljava/lang/Process;
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v14}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1659
    .local v8, "isr":Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1660
    .local v3, "br":Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 1661
    .local v10, "line":Ljava/lang/String;
    :goto_0
    if-eqz v10, :cond_5

    .line 1662
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " bytes from"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1663
    const-string v18, "ms"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1664
    const/16 v18, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 1668
    :cond_0
    :goto_1
    const-string v18, "time="

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 1669
    .local v7, "i":I
    if-lez v7, :cond_1

    .line 1670
    add-int/lit8 v18, v7, 0x5

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 1672
    :try_start_1
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1678
    .end local v7    # "i":I
    :cond_1
    :goto_2
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 1665
    :cond_2
    const-string v18, "s"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1666
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "000"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 1673
    .restart local v7    # "i":I
    :catch_0
    move-exception v17

    .line 1674
    .local v17, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1681
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v4    # "bytes":I
    .end local v5    # "cmd":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .end local v10    # "line":Ljava/lang/String;
    .end local v14    # "p":Ljava/lang/Process;
    .end local v17    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v17

    .line 1682
    .restart local v17    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    .line 1685
    .end local v17    # "t":Ljava/lang/Throwable;
    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 1686
    .local v15, "sucCount":I
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v18

    sub-int v6, p2, v18

    .line 1687
    .local v6, "fldCount":I
    const/4 v13, 0x0

    .line 1688
    .local v13, "min":F
    const/4 v12, 0x0

    .line 1689
    .local v12, "max":F
    const/4 v2, 0x0

    .line 1690
    .local v2, "average":F
    if-lez v15, :cond_7

    .line 1691
    const v13, 0x7f7fffff    # Float.MAX_VALUE

    .line 1692
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    if-ge v7, v15, :cond_6

    .line 1693
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Float;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 1694
    .local v9, "item":F
    cmpg-float v18, v9, v13

    if-gez v18, :cond_3

    .line 1695
    move v13, v9

    .line 1697
    :cond_3
    cmpl-float v18, v9, v12

    if-lez v18, :cond_4

    .line 1698
    move v12, v9

    .line 1700
    :cond_4
    add-float/2addr v2, v9

    .line 1692
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1680
    .end local v2    # "average":F
    .end local v6    # "fldCount":I
    .end local v7    # "i":I
    .end local v9    # "item":F
    .end local v12    # "max":F
    .end local v13    # "min":F
    .end local v15    # "sucCount":I
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "bytes":I
    .restart local v5    # "cmd":Ljava/lang/String;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v10    # "line":Ljava/lang/String;
    .restart local v14    # "p":Ljava/lang/Process;
    :cond_5
    :try_start_3
    invoke-virtual {v14}, Ljava/lang/Process;->waitFor()I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 1702
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v4    # "bytes":I
    .end local v5    # "cmd":Ljava/lang/String;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .end local v10    # "line":Ljava/lang/String;
    .end local v14    # "p":Ljava/lang/Process;
    .restart local v2    # "average":F
    .restart local v6    # "fldCount":I
    .restart local v7    # "i":I
    .restart local v12    # "max":F
    .restart local v13    # "min":F
    .restart local v15    # "sucCount":I
    :cond_6
    int-to-float v0, v15

    move/from16 v18, v0

    div-float v2, v2, v18

    .line 1705
    .end local v7    # "i":I
    :cond_7
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 1706
    .local v11, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v18, "address"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1707
    const-string v18, "transmitted"

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1708
    const-string v18, "received"

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1709
    const-string v18, "loss"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1710
    const-string v18, "min"

    invoke-static {v13}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1711
    const-string v18, "max"

    invoke-static {v12}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1712
    const-string v18, "avg"

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1713
    return-object v11
.end method

.method public a(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1520
    const-string v2, "input_method"

    invoke-direct {p0, v2}, Lcom/mob/tools/c/e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1521
    .local v1, "service":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1527
    :goto_0
    return-void

    :cond_0
    move-object v0, v1

    .line 1525
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1526
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 11
    .param p1, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1319
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x17

    if-lt v7, v8, :cond_1

    .line 1321
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1322
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v7, "an"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1323
    const-string v7, "dr"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1324
    const-string v7, "oi"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    const-string v7, "d."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    const-string v7, "co"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    const-string v7, "nt"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1328
    const-string v7, "en"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1329
    const-string v7, "t."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1330
    const-string v7, "Co"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1331
    const-string v7, "nt"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1332
    const-string v7, "ex"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1333
    const-string v7, "t"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1334
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 1335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1336
    .local v3, "sb1":Ljava/lang/StringBuilder;
    const-string v7, "ch"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1337
    const-string v7, "ec"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1338
    const-string v7, "kS"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1339
    const-string v7, "el"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1340
    const-string v7, "fP"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1341
    const-string v7, "er"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1342
    const-string v7, "mi"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1343
    const-string v7, "ss"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    const-string v7, "io"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1345
    const-string v7, "n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1346
    iget-object v7, p0, Lcom/mob/tools/c/e;->a:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {v7, v8, v9}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1347
    .local v1, "ret":Ljava/lang/Integer;
    if-nez v1, :cond_0

    const/4 v0, -0x1

    .line 1356
    .end local v1    # "ret":Ljava/lang/Integer;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "sb1":Ljava/lang/StringBuilder;
    .local v0, "res":I
    :goto_0
    if-nez v0, :cond_2

    :goto_1
    return v5

    .line 1347
    .end local v0    # "res":I
    .restart local v1    # "ret":Ljava/lang/Integer;
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    .restart local v3    # "sb1":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1348
    .end local v1    # "ret":Ljava/lang/Integer;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "sb1":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v4

    .line 1349
    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    .line 1350
    const/4 v0, -0x1

    .line 1351
    .restart local v0    # "res":I
    goto :goto_0

    .line 1353
    .end local v0    # "res":I
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_1
    iget-object v7, p0, Lcom/mob/tools/c/e;->a:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    invoke-virtual {v7, p1, v8, v9}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 1354
    iget-object v7, p0, Lcom/mob/tools/c/e;->a:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/mob/tools/c/e;->G()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "res":I
    goto :goto_0

    :cond_2
    move v5, v6

    .line 1356
    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 95
    :try_start_0
    const-string v7, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0, v7}, Lcom/mob/tools/c/e;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 96
    const-string v7, "wifi"

    invoke-direct {p0, v7}, Lcom/mob/tools/c/e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 97
    .local v5, "wifi":Ljava/lang/Object;
    if-nez v5, :cond_1

    .line 125
    .end local v5    # "wifi":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v6

    .line 101
    .restart local v5    # "wifi":Ljava/lang/Object;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v7, "ge"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v7, "tC"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string v7, "on"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v7, "ne"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v7, "ct"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v7, "io"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v7, "nI"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v7, "nf"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v7, "o"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v7, v8}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 112
    .local v0, "info":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .local v2, "sb1":Ljava/lang/StringBuilder;
    const-string v7, "ge"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v7, "tS"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v7, "SI"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v7, "D"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0, v7, v8}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 119
    .local v3, "ssid":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v7, "\""

    const-string v8, ""

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 122
    .end local v0    # "info":Ljava/lang/Object;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "sb1":Ljava/lang/StringBuilder;
    .end local v3    # "ssid":Ljava/lang/String;
    .end local v5    # "wifi":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 123
    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public b(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1531
    const-string v2, "input_method"

    invoke-direct {p0, v2}, Lcom/mob/tools/c/e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1532
    .local v1, "service":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1538
    :goto_0
    return-void

    :cond_0
    move-object v0, v1

    .line 1536
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1537
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInputFromWindow(Landroid/os/IBinder;II)V

    goto :goto_0
.end method

.method public b(I)Z
    .locals 13
    .param p1, "pid"    # I

    .prologue
    const/4 v11, 0x0

    .line 1543
    :try_start_0
    const-string v10, "activity"

    invoke-direct {p0, v10}, Lcom/mob/tools/c/e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1544
    .local v0, "am":Ljava/lang/Object;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1545
    .local v6, "sb":Ljava/lang/StringBuilder;
    const-string v10, "ge"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1546
    const-string v10, "tR"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1547
    const-string v10, "un"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1548
    const-string v10, "ni"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1549
    const-string v10, "ng"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1550
    const-string v10, "Ap"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1551
    const-string v10, "pP"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1552
    const-string v10, "ro"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1553
    const-string v10, "ce"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1554
    const-string v10, "ss"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1555
    const-string v10, "es"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1556
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v0, v10, v12}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1557
    .local v5, "rps":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez v5, :cond_1

    .line 1558
    if-gtz p1, :cond_0

    const/4 v10, 0x1

    .line 1584
    .end local v0    # "am":Ljava/lang/Object;
    .end local v5    # "rps":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :goto_0
    return v10

    .restart local v0    # "am":Ljava/lang/Object;
    .restart local v5    # "rps":Ljava/util/List;, "Ljava/util/List<*>;"
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    move v10, v11

    .line 1558
    goto :goto_0

    .line 1561
    :cond_1
    const/4 v3, 0x0

    .line 1562
    .local v3, "application":Ljava/lang/String;
    if-gtz p1, :cond_4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 1563
    .local v4, "myPid":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1564
    .local v2, "appProcess":Ljava/lang/Object;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1565
    .local v7, "sb1":Ljava/lang/StringBuilder;
    const-string v10, "pi"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1566
    const-string v10, "d"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1567
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1568
    .local v1, "apid":I
    if-ne v1, v4, :cond_2

    .line 1569
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1570
    .local v8, "sb2":Ljava/lang/StringBuilder;
    const-string v10, "pr"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1571
    const-string v10, "oc"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1572
    const-string v10, "es"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1573
    const-string v10, "sN"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1574
    const-string v10, "am"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1575
    const-string v10, "e"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1576
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "application":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1580
    .end local v1    # "apid":I
    .end local v2    # "appProcess":Ljava/lang/Object;
    .end local v7    # "sb1":Ljava/lang/StringBuilder;
    .end local v8    # "sb2":Ljava/lang/StringBuilder;
    .restart local v3    # "application":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/mob/tools/c/e;->G()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    goto :goto_0

    .end local v4    # "myPid":I
    :cond_4
    move v4, p1

    .line 1562
    goto :goto_1

    .line 1581
    .end local v0    # "am":Ljava/lang/Object;
    .end local v3    # "application":Ljava/lang/String;
    .end local v5    # "rps":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v9

    .line 1582
    .local v9, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    move v10, v11

    .line 1584
    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 130
    :try_start_0
    const-string v7, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0, v7}, Lcom/mob/tools/c/e;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 131
    const-string v7, "wifi"

    invoke-direct {p0, v7}, Lcom/mob/tools/c/e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 132
    .local v5, "wifi":Ljava/lang/Object;
    if-nez v5, :cond_1

    .line 160
    .end local v5    # "wifi":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v6

    .line 136
    .restart local v5    # "wifi":Ljava/lang/Object;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v7, "ge"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v7, "tC"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v7, "on"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v7, "ne"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v7, "ct"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v7, "io"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string v7, "nI"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string v7, "nf"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string v7, "o"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v7, v8}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 147
    .local v1, "info":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .local v3, "sb1":Ljava/lang/StringBuilder;
    const-string v7, "ge"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v7, "tB"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v7, "SS"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v7, "ID"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1, v7, v8}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .local v0, "bssid":Ljava/lang/String;
    if-nez v0, :cond_2

    move-object v0, v6

    .end local v0    # "bssid":Ljava/lang/String;
    :cond_2
    move-object v6, v0

    goto :goto_0

    .line 157
    .end local v1    # "info":Ljava/lang/Object;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "sb1":Ljava/lang/StringBuilder;
    .end local v5    # "wifi":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 158
    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 164
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v9, v10, :cond_3

    .line 165
    const/4 v0, 0x0

    .line 167
    .local v0, "hd":Ljava/lang/String;
    :try_start_0
    const-string v9, "wlan0"

    invoke-direct {p0, v9}, Lcom/mob/tools/c/e;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 173
    :goto_0
    if-nez v0, :cond_0

    .line 175
    :try_start_1
    invoke-direct {p0}, Lcom/mob/tools/c/e;->Y()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 182
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    .line 184
    :try_start_2
    invoke-direct {p0}, Lcom/mob/tools/c/e;->Z()[Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "hds":[Ljava/lang/String;
    array-length v9, v1

    if-lez v9, :cond_1

    .line 186
    const/4 v9, 0x0

    aget-object v0, v1, v9
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 194
    .end local v1    # "hds":[Ljava/lang/String;
    :cond_1
    :goto_2
    if-eqz v0, :cond_3

    move-object v8, v0

    .line 231
    .end local v0    # "hd":Ljava/lang/String;
    :cond_2
    :goto_3
    return-object v8

    .line 168
    .restart local v0    # "hd":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 169
    .local v6, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    .line 170
    const/4 v0, 0x0

    goto :goto_0

    .line 176
    .end local v6    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v6

    .line 177
    .restart local v6    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    .line 178
    const/4 v0, 0x0

    goto :goto_1

    .line 188
    .end local v6    # "t":Ljava/lang/Throwable;
    :catch_2
    move-exception v6

    .line 189
    .restart local v6    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    .line 190
    const/4 v0, 0x0

    goto :goto_2

    .line 200
    .end local v0    # "hd":Ljava/lang/String;
    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_3
    :try_start_3
    const-string v9, "wifi"

    invoke-direct {p0, v9}, Lcom/mob/tools/c/e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 201
    .local v7, "wifi":Ljava/lang/Object;
    if-eqz v7, :cond_2

    .line 205
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v9, "ge"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const-string v9, "tC"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const-string v9, "on"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string v9, "ne"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const-string v9, "ct"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const-string v9, "io"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const-string v9, "nI"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const-string v9, "nf"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const-string v9, "o"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v9, v10}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 216
    .local v2, "info":Ljava/lang/Object;
    if-eqz v2, :cond_2

    .line 217
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .local v5, "sb1":Ljava/lang/StringBuilder;
    const-string v9, "ge"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const-string v9, "tM"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string v9, "ac"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const-string v9, "Ad"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string v9, "dr"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v9, "es"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string v9, "s"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v2, v9, v10}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 226
    .local v3, "mac":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v8

    goto/16 :goto_3

    .line 228
    .end local v2    # "info":Ljava/lang/Object;
    .end local v3    # "mac":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "sb1":Ljava/lang/StringBuilder;
    .end local v7    # "wifi":Ljava/lang/Object;
    :catch_3
    move-exception v6

    .line 229
    .restart local v6    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto/16 :goto_3
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 381
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 382
    .local v0, "model":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 383
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 385
    :cond_0
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/mob/tools/c/e;->h()Ljava/lang/String;

    move-result-object v0

    .line 402
    .local v0, "deviceId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 403
    invoke-virtual {p0}, Lcom/mob/tools/c/e;->i()Ljava/lang/String;

    move-result-object v0

    .line 405
    .end local v0    # "deviceId":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 410
    const-string v5, "phone"

    invoke-direct {p0, v5}, Lcom/mob/tools/c/e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 411
    .local v2, "phone":Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v5, v6

    .line 435
    :goto_0
    return-object v5

    .line 415
    :cond_0
    const/4 v1, 0x0

    .line 417
    .local v1, "deviceId":Ljava/lang/String;
    :try_start_0
    const-string v5, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v5}, Lcom/mob/tools/c/e;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 418
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v5, "ge"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    const-string v5, "tD"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    const-string v5, "ev"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    const-string v5, "ic"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    const-string v5, "eI"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    const-string v5, "d"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v5, v7}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v6

    .line 432
    goto :goto_0

    .line 427
    :catch_0
    move-exception v4

    .line 428
    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_1

    .line 435
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 9

    .prologue
    .line 440
    const/4 v2, 0x0

    .line 441
    .local v2, "serialno":Ljava/lang/String;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-lt v4, v5, :cond_0

    .line 443
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 444
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v4, "an"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    const-string v4, "dr"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    const-string v4, "oi"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    const-string v4, "d."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    const-string v4, "os"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    const-string v4, ".S"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    const-string v4, "ys"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    const-string v4, "te"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    const-string v4, "mP"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    const-string v4, "ro"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    const-string v4, "pe"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    const-string v4, "rt"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    const-string v4, "ie"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    const-string v4, "s"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .local v1, "sb1":Ljava/lang/StringBuilder;
    const-string v4, "ge"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    const-string v4, "t"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    const-string v4, "SystemProperties"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "ro.serialno"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "unknown"

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "serialno":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "sb1":Ljava/lang/StringBuilder;
    .restart local v2    # "serialno":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 469
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 471
    :cond_1
    return-object v2

    .line 463
    .end local v2    # "serialno":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 464
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    .line 465
    const/4 v2, 0x0

    .restart local v2    # "serialno":Ljava/lang/String;
    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 4

    .prologue
    .line 476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mob/tools/c/e;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mob/tools/c/e;->l()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 477
    invoke-virtual {p0}, Lcom/mob/tools/c/e;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mob/tools/c/e;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mob/tools/c/e;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mob/tools/c/e;->F()Ljava/lang/String;

    move-result-object v1

    .line 479
    .local v1, "deviString":Ljava/lang/String;
    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/mob/tools/c/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mob/tools/c/e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mob/tools/c/e;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 485
    invoke-virtual {p0}, Lcom/mob/tools/c/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mob/tools/c/e;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mob/tools/c/e;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 484
    return-object v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 510
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 515
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 520
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/mob/tools/c/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 530
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 535
    iget-object v1, p0, Lcom/mob/tools/c/e;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mob/tools/c/l;->a(Landroid/content/Context;)[I

    move-result-object v0

    .line 537
    .local v0, "size":[I
    iget-object v1, p0, Lcom/mob/tools/c/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_0

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 542
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public r()Ljava/lang/String;
    .locals 6

    .prologue
    .line 549
    :try_start_0
    const-string v4, "phone"

    invoke-direct {p0, v4}, Lcom/mob/tools/c/e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 550
    .local v3, "tm":Ljava/lang/Object;
    if-nez v3, :cond_1

    .line 551
    const-string v0, "-1"

    .line 570
    .end local v3    # "tm":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 554
    .restart local v3    # "tm":Ljava/lang/Object;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 555
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v4, "ge"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    const-string v4, "tS"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    const-string v4, "im"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    const-string v4, "Op"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    const-string v4, "er"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    const-string v4, "at"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    const-string v4, "or"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 563
    .local v0, "operator":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 564
    const-string v0, "-1"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 567
    .end local v0    # "operator":Ljava/lang/String;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "tm":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 568
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    .line 570
    const-string v0, "-1"

    goto :goto_0
.end method

.method public s()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 574
    const-string v5, "phone"

    invoke-direct {p0, v5}, Lcom/mob/tools/c/e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 575
    .local v3, "tm":Ljava/lang/Object;
    if-nez v3, :cond_1

    move-object v0, v4

    .line 601
    :cond_0
    :goto_0
    return-object v0

    .line 580
    :cond_1
    :try_start_0
    const-string v5, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v5}, Lcom/mob/tools/c/e;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 582
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v5, "ge"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    const-string v5, "tS"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    const-string v5, "im"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    const-string v5, "Op"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    const-string v5, "er"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    const-string v5, "at"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    const-string v5, "or"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    const-string v5, "Na"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    const-string v5, "me"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 592
    .local v0, "operator":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 593
    const/4 v0, 0x0

    goto :goto_0

    .line 597
    .end local v0    # "operator":Ljava/lang/String;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 598
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_2
    move-object v0, v4

    .line 601
    goto :goto_0
.end method

.method public t()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 605
    invoke-virtual {p0}, Lcom/mob/tools/c/e;->R()Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, "imsi":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 607
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 609
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public u()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 613
    invoke-virtual {p0}, Lcom/mob/tools/c/e;->R()Ljava/lang/String;

    move-result-object v0

    .line 614
    .local v0, "imsi":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_0

    .line 615
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 617
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public v()Ljava/lang/String;
    .locals 5

    .prologue
    .line 623
    :try_start_0
    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v3}, Lcom/mob/tools/c/e;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 624
    const-string v3, "phone"

    invoke-direct {p0, v3}, Lcom/mob/tools/c/e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 625
    .local v2, "tm":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 626
    const-string v3, "-1"

    .line 644
    .end local v2    # "tm":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 629
    .restart local v2    # "tm":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 630
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v3, "ge"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    const-string v3, "tS"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    const-string v3, "im"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    const-string v3, "Se"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    const-string v3, "ri"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    const-string v3, "al"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    const-string v3, "Nu"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    const-string v3, "mb"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    const-string v3, "er"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 641
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "tm":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 642
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    .line 644
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_1
    const-string v3, "-1"

    goto :goto_0
.end method

.method public w()Ljava/lang/String;
    .locals 5

    .prologue
    .line 650
    :try_start_0
    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v3}, Lcom/mob/tools/c/e;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 651
    const-string v3, "phone"

    invoke-direct {p0, v3}, Lcom/mob/tools/c/e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 652
    .local v2, "tm":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 653
    const-string v3, "-1"

    .line 669
    .end local v2    # "tm":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 656
    .restart local v2    # "tm":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 657
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v3, "ge"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    const-string v3, "tL"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    const-string v3, "in"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    const-string v3, "e1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    const-string v3, "Nu"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    const-string v3, "mb"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    const-string v3, "er"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 666
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "tm":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 667
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    .line 669
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_1
    const-string v3, "-1"

    goto :goto_0
.end method

.method public x()Ljava/lang/String;
    .locals 8

    .prologue
    .line 675
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 676
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v5, "an"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    const-string v5, "dr"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    const-string v5, "oi"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    const-string v5, "d."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    const-string v5, "bl"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    const-string v5, "ue"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    const-string v5, "to"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    const-string v5, "ot"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    const-string v5, "h."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    const-string v5, "Bl"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    const-string v5, "ue"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    const-string v5, "to"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    const-string v5, "ot"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    const-string v5, "hA"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    const-string v5, "da"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    const-string v5, "pt"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    const-string v5, "er"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 694
    const-string v5, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v5}, Lcom/mob/tools/c/e;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 695
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 696
    .local v3, "sb1":Ljava/lang/StringBuilder;
    const-string v5, "ge"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    const-string v5, "tD"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    const-string v5, "ef"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    const-string v5, "au"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    const-string v5, "lt"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    const-string v5, "Ad"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    const-string v5, "ap"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    const-string v5, "te"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    const-string v5, "r"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    const-string v5, "BluetoothAdapter"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/mob/tools/c/k;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 706
    .local v1, "myDevice":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 707
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 708
    .local v4, "sb2":Ljava/lang/StringBuilder;
    const-string v5, "ge"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    const-string v5, "tN"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    const-string v5, "am"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    const-string v5, "e"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1, v5, v6}, Lcom/mob/tools/c/k;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    .end local v1    # "myDevice":Ljava/lang/Object;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "sb1":Ljava/lang/StringBuilder;
    .end local v4    # "sb2":Ljava/lang/StringBuilder;
    :goto_0
    return-object v5

    .line 715
    :catch_0
    move-exception v0

    .line 716
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/mob/tools/log/d;->d(Ljava/lang/Throwable;)I

    .line 718
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public y()Ljava/lang/String;
    .locals 6

    .prologue
    .line 724
    :try_start_0
    iget-object v3, p0, Lcom/mob/tools/c/e;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 725
    invoke-virtual {p0}, Lcom/mob/tools/c/e;->G()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x40

    .line 724
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 726
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 727
    .local v2, "signs":[Landroid/content/pm/Signature;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/mob/tools/c/d;->c([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 731
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "signs":[Landroid/content/pm/Signature;
    :goto_0
    return-object v3

    .line 728
    :catch_0
    move-exception v0

    .line 729
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    .line 731
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public z()Ljava/lang/String;
    .locals 5

    .prologue
    .line 749
    const-string v4, "connectivity"

    invoke-direct {p0, v4}, Lcom/mob/tools/c/e;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 750
    .local v0, "conn":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 751
    const-string v4, "none"

    .line 793
    :goto_0
    return-object v4

    .line 755
    :cond_0
    :try_start_0
    const-string v4, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v4}, Lcom/mob/tools/c/e;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 756
    const-string v4, "none"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 758
    :catch_0
    move-exception v2

    .line 759
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    .line 760
    const-string v4, "none"

    goto :goto_0

    .line 763
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 764
    .local v1, "network":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_3

    .line 765
    :cond_2
    const-string v4, "none"

    goto :goto_0

    .line 768
    :cond_3
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 769
    .local v3, "type":I
    packed-switch v3, :pswitch_data_0

    .line 793
    :pswitch_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 771
    :pswitch_1
    const-string v4, "wifi"

    goto :goto_0

    .line 774
    :pswitch_2
    invoke-direct {p0}, Lcom/mob/tools/c/e;->aa()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 775
    const-string v4, "4G"

    goto :goto_0

    .line 777
    :cond_4
    invoke-direct {p0}, Lcom/mob/tools/c/e;->ab()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "3G"

    goto :goto_0

    :cond_5
    const-string v4, "2G"

    goto :goto_0

    .line 780
    :pswitch_3
    const-string v4, "bluetooth"

    goto :goto_0

    .line 783
    :pswitch_4
    const-string v4, "dummy"

    goto :goto_0

    .line 786
    :pswitch_5
    const-string v4, "ethernet"

    goto :goto_0

    .line 789
    :pswitch_6
    const-string v4, "wimax"

    goto :goto_0

    .line 769
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
