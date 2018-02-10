.class public Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;

.field private static logFileName:Ljava/lang/String;


# instance fields
.field private controlPointUUID:Ljava/lang/String;

.field private final lock:Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
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

    .line 32
    const-string v1, "controlpointkeeper.log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;->logFileName:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;->instance:Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;->controlPointUUID:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static getInstance()Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;->instance:Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;

    invoke-direct {v0}, Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;-><init>()V

    sput-object v0, Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;->instance:Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;

    .line 65
    :cond_0
    sget-object v0, Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;->instance:Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;

    return-object v0
.end method

.method private readAll()V
    .locals 5

    .prologue
    .line 83
    const/4 v1, 0x0

    .line 85
    .local v1, "ois":Ljava/io/ObjectInputStream;
    iget-object v3, p0, Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 89
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    sget-object v4, Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;->logFileName:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .local v2, "ois":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;->controlPointUUID:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/StreamCorruptedException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    if-eqz v2, :cond_0

    .line 114
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9

    .line 122
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v1, v2

    .line 124
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    :goto_1
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/io/StreamCorruptedException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/StreamCorruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 110
    if-eqz v1, :cond_1

    .line 114
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 122
    .end local v0    # "e":Ljava/io/StreamCorruptedException;
    :cond_1
    :goto_3
    iget-object v3, p0, Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 115
    .restart local v0    # "e":Ljava/io/StreamCorruptedException;
    :catch_1
    move-exception v0

    .line 118
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 96
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 110
    :goto_4
    if-eqz v1, :cond_2

    .line 114
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 122
    :cond_2
    :goto_5
    iget-object v3, p0, Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 115
    :catch_3
    move-exception v0

    .line 118
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 100
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 110
    :goto_6
    if-eqz v1, :cond_3

    .line 114
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 122
    :cond_3
    :goto_7
    iget-object v3, p0, Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 115
    :catch_5
    move-exception v0

    .line 118
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 104
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    .line 110
    :goto_8
    if-eqz v1, :cond_4

    .line 114
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 122
    :cond_4
    :goto_9
    iget-object v3, p0, Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 115
    :catch_7
    move-exception v0

    .line 118
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 109
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 110
    :goto_a
    if-eqz v1, :cond_5

    .line 114
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    .line 122
    :cond_5
    :goto_b
    iget-object v4, p0, Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 123
    throw v3

    .line 115
    :catch_8
    move-exception v0

    .line 118
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 115
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    :catch_9
    move-exception v0

    .line 118
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 109
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_a

    .line 104
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    :catch_a
    move-exception v3

    move-object v1, v2

    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_8

    .line 100
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    :catch_b
    move-exception v3

    move-object v1, v2

    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_6

    .line 96
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    :catch_c
    move-exception v3

    move-object v1, v2

    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_4

    .line 92
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    :catch_d
    move-exception v0

    move-object v1, v2

    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_2
.end method

.method private saveAll()V
    .locals 7

    .prologue
    .line 129
    iget-object v5, p0, Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;->controlPointUUID:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 184
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v5, p0, Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 137
    new-instance v1, Ljava/io/File;

    sget-object v5, Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;->logFileName:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 141
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 142
    .local v4, "parent":Ljava/io/File;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 144
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 148
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v4    # "parent":Ljava/io/File;
    :cond_2
    :goto_1
    const/4 v2, 0x0

    .line 158
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/ObjectOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    sget-object v6, Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;->logFileName:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    :try_start_2
    iget-object v5, p0, Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;->controlPointUUID:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 171
    if-eqz v3, :cond_3

    .line 175
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 182
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v2, v3

    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_0

    .line 149
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "parent":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 161
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "parent":Ljava/io/File;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v0

    .line 164
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 171
    if-eqz v2, :cond_4

    .line 175
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 182
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_4
    :goto_4
    iget-object v5, p0, Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 176
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 179
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 165
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 168
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 171
    if-eqz v2, :cond_5

    .line 175
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 182
    :cond_5
    :goto_6
    iget-object v5, p0, Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 176
    :catch_4
    move-exception v0

    .line 179
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 170
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 171
    :goto_7
    if-eqz v2, :cond_6

    .line 175
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 182
    :cond_6
    :goto_8
    iget-object v6, p0, Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 183
    throw v5

    .line 176
    :catch_5
    move-exception v0

    .line 179
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 176
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catch_6
    move-exception v0

    .line 179
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 170
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_7

    .line 165
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_5

    .line 161
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_3
.end method


# virtual methods
.method public Save(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;->controlPointUUID:Ljava/lang/String;

    .line 71
    invoke-direct {p0}, Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;->saveAll()V

    .line 72
    return-void
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;->readAll()V

    .line 77
    iget-object v0, p0, Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;->controlPointUUID:Ljava/lang/String;

    return-object v0
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

    const-string v1, "controlpointkeeper.log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;->logFileName:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ControlPointKeeper changelogFile logFileName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/iqiyi/android/sdk/dlna/keeper/ControlPointKeeper;->logFileName:Ljava/lang/String;

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
    const-string v0, "ControlPointKeeper changelogFile path error!!!!!!"

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    goto :goto_0
.end method
