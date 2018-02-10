.class public Lcom/jaredrummler/android/processes/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaredrummler/android/processes/b$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "no instances"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static a()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/jaredrummler/android/processes/models/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v4, "processes":Ljava/util/List;, "Ljava/util/List<Lcom/jaredrummler/android/processes/models/a;>;"
    new-instance v5, Ljava/io/File;

    const-string v6, "/proc"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 52
    .local v2, "files":[Ljava/io/File;
    array-length v6, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v2, v5

    .line 53
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 56
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 61
    .local v3, "pid":I
    :try_start_1
    new-instance v7, Lcom/jaredrummler/android/processes/models/a;

    invoke-direct {v7, v3}, Lcom/jaredrummler/android/processes/models/a;-><init>(I)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 52
    .end local v3    # "pid":I
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 70
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    return-object v4

    .line 62
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "pid":I
    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/jaredrummler/android/processes/models/AndroidAppProcess;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v6, "processes":Ljava/util/List;, "Ljava/util/List<Lcom/jaredrummler/android/processes/models/AndroidAppProcess;>;"
    new-instance v7, Ljava/io/File;

    const-string v8, "/proc"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 110
    .local v2, "files":[Ljava/io/File;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 111
    .local v4, "pm":Landroid/content/pm/PackageManager;
    array-length v8, v2

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_3

    aget-object v1, v2, v7

    .line 112
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 115
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 120
    .local v3, "pid":I
    :try_start_1
    new-instance v5, Lcom/jaredrummler/android/processes/models/AndroidAppProcess;

    invoke-direct {v5, v3}, Lcom/jaredrummler/android/processes/models/AndroidAppProcess;-><init>(I)V

    .line 121
    .local v5, "process":Lcom/jaredrummler/android/processes/models/AndroidAppProcess;
    iget-boolean v9, v5, Lcom/jaredrummler/android/processes/models/AndroidAppProcess;->a:Z

    if-nez v9, :cond_1

    .line 111
    .end local v3    # "pid":I
    .end local v5    # "process":Lcom/jaredrummler/android/processes/models/AndroidAppProcess;
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 124
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "pid":I
    .restart local v5    # "process":Lcom/jaredrummler/android/processes/models/AndroidAppProcess;
    :cond_1
    iget v9, v5, Lcom/jaredrummler/android/processes/models/AndroidAppProcess;->b:I

    const/16 v10, 0x3e8

    if-lt v9, v10, :cond_2

    iget v9, v5, Lcom/jaredrummler/android/processes/models/AndroidAppProcess;->b:I

    const/16 v10, 0x270f

    if-le v9, v10, :cond_0

    .line 127
    :cond_2
    iget-object v9, v5, Lcom/jaredrummler/android/processes/models/AndroidAppProcess;->c:Ljava/lang/String;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 130
    invoke-virtual {v5}, Lcom/jaredrummler/android/processes/models/AndroidAppProcess;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 135
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/jaredrummler/android/processes/models/AndroidAppProcess$NotAndroidAppProcessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 136
    .end local v5    # "process":Lcom/jaredrummler/android/processes/models/AndroidAppProcess;
    :catch_1
    move-exception v9

    goto :goto_1

    .line 145
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "pid":I
    :cond_3
    return-object v6

    .line 137
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "pid":I
    :catch_2
    move-exception v9

    goto :goto_1
.end method

.method public static b()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/jaredrummler/android/processes/models/AndroidAppProcess;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v4, "processes":Ljava/util/List;, "Ljava/util/List<Lcom/jaredrummler/android/processes/models/AndroidAppProcess;>;"
    new-instance v5, Ljava/io/File;

    const-string v6, "/proc"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 79
    .local v2, "files":[Ljava/io/File;
    array-length v6, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v2, v5

    .line 80
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 83
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 88
    .local v3, "pid":I
    :try_start_1
    new-instance v7, Lcom/jaredrummler/android/processes/models/AndroidAppProcess;

    invoke-direct {v7, v3}, Lcom/jaredrummler/android/processes/models/AndroidAppProcess;-><init>(I)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/jaredrummler/android/processes/models/AndroidAppProcess$NotAndroidAppProcessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    .end local v3    # "pid":I
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 98
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    return-object v4

    .line 90
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "pid":I
    :catch_1
    move-exception v7

    goto :goto_1

    .line 89
    :catch_2
    move-exception v7

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x16

    if-lt v5, v6, :cond_0

    .line 182
    invoke-static {}, Lcom/jaredrummler/android/processes/b;->b()Ljava/util/List;

    move-result-object v4

    .line 183
    .local v4, "runningAppProcesses":Ljava/util/List;, "Ljava/util/List<Lcom/jaredrummler/android/processes/models/AndroidAppProcess;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v1, "appProcessInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jaredrummler/android/processes/models/AndroidAppProcess;

    .line 185
    .local v3, "process":Lcom/jaredrummler/android/processes/models/AndroidAppProcess;
    new-instance v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v6, v3, Lcom/jaredrummler/android/processes/models/AndroidAppProcess;->c:Ljava/lang/String;

    iget v7, v3, Lcom/jaredrummler/android/processes/models/AndroidAppProcess;->d:I

    const/4 v8, 0x0

    invoke-direct {v2, v6, v7, v8}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 188
    .local v2, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v3, Lcom/jaredrummler/android/processes/models/AndroidAppProcess;->b:I

    iput v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 190
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    .end local v1    # "appProcessInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v2    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3    # "process":Lcom/jaredrummler/android/processes/models/AndroidAppProcess;
    .end local v4    # "runningAppProcesses":Ljava/util/List;, "Ljava/util/List<Lcom/jaredrummler/android/processes/models/AndroidAppProcess;>;"
    :cond_0
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 195
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .end local v0    # "am":Landroid/app/ActivityManager;
    :cond_1
    return-object v1
.end method

.method public static c()Z
    .locals 5

    .prologue
    .line 152
    invoke-static {}, Lcom/jaredrummler/android/processes/b;->b()Ljava/util/List;

    move-result-object v2

    .line 153
    .local v2, "processes":Ljava/util/List;, "Ljava/util/List<Lcom/jaredrummler/android/processes/models/AndroidAppProcess;>;"
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 154
    .local v0, "myPid":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jaredrummler/android/processes/models/AndroidAppProcess;

    .line 155
    .local v1, "process":Lcom/jaredrummler/android/processes/models/AndroidAppProcess;
    iget v4, v1, Lcom/jaredrummler/android/processes/models/AndroidAppProcess;->d:I

    if-ne v4, v0, :cond_0

    iget-boolean v4, v1, Lcom/jaredrummler/android/processes/models/AndroidAppProcess;->a:Z

    if-eqz v4, :cond_0

    .line 156
    const/4 v3, 0x1

    .line 159
    .end local v1    # "process":Lcom/jaredrummler/android/processes/models/AndroidAppProcess;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
