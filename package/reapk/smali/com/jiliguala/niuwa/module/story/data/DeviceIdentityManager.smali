.class public Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager$a;
    }
.end annotation


# static fields
.field private static final INSTALLATION:Ljava/lang/String; = "INSTALLATION"

.field private static sApplication:Lcom/jiliguala/niuwa/MyApplication;

.field private static sID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager;->sID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDeviceId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 32
    const-class v3, Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager;->sID:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 33
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager;->sApplication:Lcom/jiliguala/niuwa/MyApplication;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/MyApplication;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v4, "INSTALLATION"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .local v1, "installation":Ljava/io/File;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 36
    invoke-static {v1}, Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager;->writeInstallationFile(Ljava/io/File;)V

    .line 38
    :cond_0
    invoke-static {v1}, Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager;->readInstallationFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager;->sID:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :try_start_2
    invoke-static {}, Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager;->isExternalStorageWritable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager;->getInstallationTokenStorageFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 41
    sget-object v2, Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager;->sID:Ljava/lang/String;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager;->writeExternalInstallationFile(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager$a; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    :cond_1
    :goto_0
    :try_start_3
    sget-object v2, Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager;->sID:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    return-object v2

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 32
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 43
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public static getInstallationTokenStorageFile()Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager$a;
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "intuary"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    new-instance v1, Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager$a;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager$a;-><init>()V

    throw v1

    .line 125
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager;->getInstallationTokenStorageFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private static getInstallationTokenStorageFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    const-string v0, "iid.dat"

    return-object v0
.end method

.method public static initialize(Lcom/jiliguala/niuwa/MyApplication;)V
    .locals 0
    .param p0, "application"    # Lcom/jiliguala/niuwa/MyApplication;

    .prologue
    .line 28
    sput-object p0, Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager;->sApplication:Lcom/jiliguala/niuwa/MyApplication;

    .line 29
    return-void
.end method

.method public static isExternalStorageWritable()Z
    .locals 2

    .prologue
    .line 116
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private static readInstallationFile(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p0, "installation"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    .local v1, "f":Ljava/io/RandomAccessFile;
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v0, v2, [B

    .line 57
    .local v0, "bytes":[B
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 58
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 59
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method private static writeExternalInstallationFile(Ljava/lang/String;)V
    .locals 4
    .param p0, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager;->getInstallationTokenStorageFile()Ljava/io/File;
    :try_end_0
    .catch Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager$a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 110
    .local v2, "tokenFile":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 111
    .local v1, "extOut":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 112
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 113
    .end local v1    # "extOut":Ljava/io/FileOutputStream;
    .end local v2    # "tokenFile":Ljava/io/File;
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager$a;
    goto :goto_0
.end method

.method private static writeInstallationFile(Ljava/io/File;)V
    .locals 6
    .param p0, "installation"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    const/4 v2, 0x0

    .line 66
    .local v2, "token":Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager;->isExternalStorageWritable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 67
    const/4 v3, 0x0

    .line 70
    .local v3, "tokenFile":Ljava/io/File;
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager;->getInstallationTokenStorageFile()Ljava/io/File;
    :try_end_0
    .catch Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager$a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 75
    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 76
    invoke-static {v3}, Lcom/jiliguala/niuwa/module/story/helpers/FileHelper;->readString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "restoredToken":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x24

    if-ne v4, v5, :cond_0

    .line 79
    move-object v2, v1

    .line 85
    .end local v1    # "restoredToken":Ljava/lang/String;
    .end local v3    # "tokenFile":Ljava/io/File;
    :cond_0
    if-nez v2, :cond_1

    .line 86
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 89
    :cond_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 90
    .local v0, "out":Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 91
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 93
    invoke-static {}, Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager;->isExternalStorageWritable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 94
    invoke-static {v2}, Lcom/jiliguala/niuwa/module/story/data/DeviceIdentityManager;->writeExternalInstallationFile(Ljava/lang/String;)V

    .line 96
    :cond_2
    return-void

    .line 71
    .end local v0    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "tokenFile":Ljava/io/File;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
