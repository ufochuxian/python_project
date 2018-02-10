.class Lcom/jiliguala/niuwa/recorder/audio/a$c;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/recorder/audio/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/jiliguala/niuwa/recorder/audio/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/recorder/audio/a;Ljava/io/File;)V
    .locals 1
    .param p1, "ref"    # Lcom/jiliguala/niuwa/recorder/audio/a;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 343
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 344
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/recorder/audio/a$c;->a:Ljava/lang/ref/WeakReference;

    .line 345
    iput-object p2, p0, Lcom/jiliguala/niuwa/recorder/audio/a$c;->b:Ljava/io/File;

    .line 346
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 350
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 352
    iget-object v5, p0, Lcom/jiliguala/niuwa/recorder/audio/a$c;->a:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/jiliguala/niuwa/recorder/audio/a$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    const/4 v2, 0x0

    .line 357
    .local v2, "output":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/jiliguala/niuwa/recorder/audio/a$c;->b:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 358
    .end local v2    # "output":Ljava/io/DataOutputStream;
    .local v3, "output":Ljava/io/DataOutputStream;
    const/4 v4, 0x0

    .line 359
    .local v4, "readSize":I
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/recorder/audio/a$c;->a:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/jiliguala/niuwa/recorder/audio/a$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/jiliguala/niuwa/recorder/audio/a$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-static {v5}, Lcom/jiliguala/niuwa/recorder/audio/a;->a(Lcom/jiliguala/niuwa/recorder/audio/a;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/jiliguala/niuwa/recorder/audio/a$c;->a:Ljava/lang/ref/WeakReference;

    .line 360
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-static {v5}, Lcom/jiliguala/niuwa/recorder/audio/a;->c(Lcom/jiliguala/niuwa/recorder/audio/a;)Landroid/media/AudioRecord;

    move-result-object v6

    iget-object v5, p0, Lcom/jiliguala/niuwa/recorder/audio/a$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-static {v5}, Lcom/jiliguala/niuwa/recorder/audio/a;->b(Lcom/jiliguala/niuwa/recorder/audio/a;)[S

    move-result-object v7

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/jiliguala/niuwa/recorder/audio/a$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-static {v5}, Lcom/jiliguala/niuwa/recorder/audio/a;->b(Lcom/jiliguala/niuwa/recorder/audio/a;)[S

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v6, v7, v8, v5}, Landroid/media/AudioRecord;->read([SII)I

    move-result v4

    if-lez v4, :cond_3

    .line 362
    iget-object v5, p0, Lcom/jiliguala/niuwa/recorder/audio/a$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-static {v5}, Lcom/jiliguala/niuwa/recorder/audio/a;->d(Lcom/jiliguala/niuwa/recorder/audio/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-result v5

    if-eqz v5, :cond_4

    .line 365
    const-wide/16 v6, 0xbb8

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 380
    :cond_3
    :goto_1
    if-eqz v3, :cond_6

    .line 382
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 387
    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_2
    move-object v2, v3

    .line 390
    .end local v3    # "output":Ljava/io/DataOutputStream;
    .restart local v2    # "output":Ljava/io/DataOutputStream;
    goto :goto_0

    .line 366
    .end local v2    # "output":Ljava/io/DataOutputStream;
    .restart local v3    # "output":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_1

    .line 377
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v5

    move-object v2, v3

    .line 380
    .end local v3    # "output":Ljava/io/DataOutputStream;
    .end local v4    # "readSize":I
    .restart local v2    # "output":Ljava/io/DataOutputStream;
    :goto_3
    if-eqz v2, :cond_0

    .line 382
    :try_start_6
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 387
    :try_start_7
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 388
    :catch_2
    move-exception v0

    .line 389
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 373
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "output":Ljava/io/DataOutputStream;
    .restart local v3    # "output":Ljava/io/DataOutputStream;
    .restart local v4    # "readSize":I
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v4, :cond_2

    .line 374
    :try_start_8
    iget-object v5, p0, Lcom/jiliguala/niuwa/recorder/audio/a$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/recorder/audio/a;

    invoke-static {v5}, Lcom/jiliguala/niuwa/recorder/audio/a;->b(Lcom/jiliguala/niuwa/recorder/audio/a;)[S

    move-result-object v5

    aget-short v5, v5, v1

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeShort(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 388
    .end local v1    # "i":I
    :catch_3
    move-exception v0

    .line 389
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 383
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 384
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 387
    :try_start_a
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_2

    .line 388
    :catch_5
    move-exception v0

    .line 389
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 386
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 387
    :try_start_b
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 390
    :goto_5
    throw v5

    .line 388
    :catch_6
    move-exception v0

    .line 389
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 383
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "output":Ljava/io/DataOutputStream;
    .end local v4    # "readSize":I
    .restart local v2    # "output":Ljava/io/DataOutputStream;
    :catch_7
    move-exception v0

    .line 384
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 387
    :try_start_d
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    goto/16 :goto_0

    .line 388
    :catch_8
    move-exception v0

    .line 389
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 386
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    .line 387
    :try_start_e
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 390
    :goto_6
    throw v5

    .line 388
    :catch_9
    move-exception v0

    .line 389
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 380
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v5

    :goto_7
    if-eqz v2, :cond_5

    .line 382
    :try_start_f
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 387
    :try_start_10
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    .line 390
    :cond_5
    :goto_8
    throw v5

    .line 388
    :catch_a
    move-exception v0

    .line 389
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 383
    .end local v0    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v0

    .line 384
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_11
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 387
    :try_start_12
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    goto :goto_8

    .line 388
    :catch_c
    move-exception v0

    .line 389
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 386
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v5

    .line 387
    :try_start_13
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_d

    .line 390
    :goto_9
    throw v5

    .line 388
    :catch_d
    move-exception v0

    .line 389
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 380
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "output":Ljava/io/DataOutputStream;
    .restart local v3    # "output":Ljava/io/DataOutputStream;
    .restart local v4    # "readSize":I
    :catchall_4
    move-exception v5

    move-object v2, v3

    .end local v3    # "output":Ljava/io/DataOutputStream;
    .restart local v2    # "output":Ljava/io/DataOutputStream;
    goto :goto_7

    .line 377
    .end local v4    # "readSize":I
    :catch_e
    move-exception v5

    goto/16 :goto_3

    .end local v2    # "output":Ljava/io/DataOutputStream;
    .restart local v3    # "output":Ljava/io/DataOutputStream;
    .restart local v4    # "readSize":I
    :cond_6
    move-object v2, v3

    .end local v3    # "output":Ljava/io/DataOutputStream;
    .restart local v2    # "output":Ljava/io/DataOutputStream;
    goto/16 :goto_0
.end method
