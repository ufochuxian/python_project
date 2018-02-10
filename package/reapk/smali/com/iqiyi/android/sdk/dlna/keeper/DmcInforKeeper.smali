.class public Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;

.field private static logFileName:Ljava/lang/String;


# instance fields
.field private dmcInforListMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/iqiyi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/dlna/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 35
    const-string v1, "dmckeeper.log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->logFileName:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->instance:Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->dmcInforListMap:Ljava/util/Map;

    .line 44
    return-void
.end method

.method public static getInstance()Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->instance:Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;

    invoke-direct {v0}, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;-><init>()V

    sput-object v0, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->instance:Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;

    .line 65
    :cond_0
    sget-object v0, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->instance:Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;

    return-object v0
.end method

.method private readAll()V
    .locals 5

    .prologue
    .line 96
    const/4 v1, 0x0

    .line 98
    .local v1, "ois":Ljava/io/ObjectInputStream;
    iget-object v3, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 103
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    sget-object v4, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->logFileName:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .local v2, "ois":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    iput-object v3, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->dmcInforListMap:Ljava/util/Map;
    :try_end_1
    .catch Ljava/io/StreamCorruptedException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 127
    if-eqz v2, :cond_0

    .line 131
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    .line 139
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v1, v2

    .line 141
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    :goto_1
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/StreamCorruptedException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/StreamCorruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    if-eqz v1, :cond_1

    .line 131
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 139
    .end local v0    # "e":Ljava/io/StreamCorruptedException;
    :cond_1
    :goto_3
    iget-object v3, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 132
    .restart local v0    # "e":Ljava/io/StreamCorruptedException;
    :catch_1
    move-exception v0

    .line 135
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 110
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 127
    :goto_4
    if-eqz v1, :cond_2

    .line 131
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 139
    :cond_2
    :goto_5
    iget-object v3, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 132
    :catch_3
    move-exception v0

    .line 135
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 114
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 127
    :goto_6
    if-eqz v1, :cond_3

    .line 131
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 139
    :cond_3
    :goto_7
    iget-object v3, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 132
    :catch_5
    move-exception v0

    .line 135
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 118
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 127
    :goto_8
    if-eqz v1, :cond_4

    .line 131
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 139
    :cond_4
    :goto_9
    iget-object v3, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 132
    :catch_7
    move-exception v0

    .line 135
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 122
    .end local v0    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    :goto_a
    const/4 v3, 0x0

    :try_start_8
    iput-object v3, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->dmcInforListMap:Ljava/util/Map;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 127
    if-eqz v1, :cond_5

    .line 131
    :try_start_9
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    .line 139
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_b
    iget-object v3, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 132
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v0

    .line 135
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 126
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 127
    :goto_c
    if-eqz v1, :cond_6

    .line 131
    :try_start_a
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a

    .line 139
    :cond_6
    :goto_d
    iget-object v4, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 140
    throw v3

    .line 132
    :catch_a
    move-exception v0

    .line 135
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 132
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    :catch_b
    move-exception v0

    .line 135
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 126
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_c

    .line 122
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    :catch_c
    move-exception v0

    move-object v1, v2

    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_a

    .line 118
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    :catch_d
    move-exception v3

    move-object v1, v2

    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_8

    .line 114
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    :catch_e
    move-exception v3

    move-object v1, v2

    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_6

    .line 110
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    :catch_f
    move-exception v3

    move-object v1, v2

    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_4

    .line 106
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    :catch_10
    move-exception v0

    move-object v1, v2

    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    goto/16 :goto_2
.end method

.method private saveAll()V
    .locals 7

    .prologue
    .line 146
    iget-object v5, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->dmcInforListMap:Ljava/util/Map;

    if-nez v5, :cond_0

    .line 148
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->dmcInforListMap:Ljava/util/Map;

    .line 205
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v5, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 155
    new-instance v1, Ljava/io/File;

    sget-object v5, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->logFileName:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 159
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 160
    .local v4, "parent":Ljava/io/File;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 162
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 166
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v4    # "parent":Ljava/io/File;
    :cond_2
    :goto_1
    const/4 v2, 0x0

    .line 176
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/ObjectOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    sget-object v6, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->logFileName:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    :try_start_2
    iget-object v5, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->dmcInforListMap:Ljava/util/Map;

    invoke-virtual {v3, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 192
    if-eqz v3, :cond_3

    .line 196
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    .line 203
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v2, v3

    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_0

    .line 167
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "parent":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 179
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "parent":Ljava/io/File;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v0

    .line 182
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 192
    if-eqz v2, :cond_4

    .line 196
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 203
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_4
    :goto_4
    iget-object v5, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 197
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 200
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 183
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 186
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 192
    if-eqz v2, :cond_5

    .line 196
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 203
    :cond_5
    :goto_6
    iget-object v5, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 197
    :catch_4
    move-exception v0

    .line 200
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 187
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    :goto_7
    const/4 v5, 0x0

    :try_start_8
    iput-object v5, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->dmcInforListMap:Ljava/util/Map;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 192
    if-eqz v2, :cond_6

    .line 196
    :try_start_9
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 203
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_8
    iget-object v5, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 197
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v0

    .line 200
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 191
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 192
    :goto_9
    if-eqz v2, :cond_7

    .line 196
    :try_start_a
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 203
    :cond_7
    :goto_a
    iget-object v6, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 204
    throw v5

    .line 197
    :catch_7
    move-exception v0

    .line 200
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 197
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catch_8
    move-exception v0

    .line 200
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 191
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_9

    .line 187
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_7

    .line 183
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catch_a
    move-exception v0

    move-object v2, v3

    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_5

    .line 179
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catch_b
    move-exception v0

    move-object v2, v3

    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_3
.end method


# virtual methods
.method public SaveDmrInfor(Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;)V
    .locals 2
    .param p1, "infor"    # Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->dmcInforListMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->dmcInforListMap:Ljava/util/Map;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->dmcInforListMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-direct {p0}, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->saveAll()V

    .line 78
    return-void
.end method

.method public getDmrInfor(Ljava/lang/String;)Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;
    .locals 2
    .param p1, "udn"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->readAll()V

    .line 83
    iget-object v1, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->dmcInforListMap:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-object v0

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->dmcInforListMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->dmcInforListMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/sdk/dlna/keeper/DmrInfor;

    goto :goto_0
.end method

.method public setExternalFilesDir(Ljava/lang/String;)V
    .locals 2
    .param p1, "ExternalFilesDir"    # Ljava/lang/String;

    .prologue
    .line 49
    if-eqz p1, :cond_0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/dlna/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dmckeeper.log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->logFileName:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DmcInforKeeper changelogFile logFileName:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/iqiyi/android/sdk/dlna/keeper/DmcInforKeeper;->logFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    const-string v0, "DmcInforKeeper changelogFile path error!!!!!!"

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto :goto_0
.end method
