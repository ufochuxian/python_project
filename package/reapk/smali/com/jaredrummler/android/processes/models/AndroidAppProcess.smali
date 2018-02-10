.class public Lcom/jaredrummler/android/processes/models/AndroidAppProcess;
.super Lcom/jaredrummler/android/processes/models/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaredrummler/android/processes/models/AndroidAppProcess$NotAndroidAppProcessException;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/jaredrummler/android/processes/models/AndroidAppProcess;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Z


# instance fields
.field public a:Z

.field public b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/cpuctl/tasks"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/jaredrummler/android/processes/models/AndroidAppProcess;->e:Z

    .line 112
    new-instance v0, Lcom/jaredrummler/android/processes/models/AndroidAppProcess$1;

    invoke-direct {v0}, Lcom/jaredrummler/android/processes/models/AndroidAppProcess$1;-><init>()V

    sput-object v0, Lcom/jaredrummler/android/processes/models/AndroidAppProcess;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 11
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/jaredrummler/android/processes/models/AndroidAppProcess$NotAndroidAppProcessException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 44
    invoke-direct {p0, p1}, Lcom/jaredrummler/android/processes/models/a;-><init>(I)V

    .line 45
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_3

    sget-boolean v8, Lcom/jaredrummler/android/processes/models/AndroidAppProcess;->e:Z

    if-eqz v8, :cond_3

    .line 46
    invoke-super {p0}, Lcom/jaredrummler/android/processes/models/a;->d()Lcom/jaredrummler/android/processes/models/Cgroup;

    move-result-object v0

    .line 47
    .local v0, "cgroup":Lcom/jaredrummler/android/processes/models/Cgroup;
    const-string v8, "cpuacct"

    invoke-virtual {v0, v8}, Lcom/jaredrummler/android/processes/models/Cgroup;->getGroup(Ljava/lang/String;)Lcom/jaredrummler/android/processes/models/b;

    move-result-object v2

    .line 48
    .local v2, "cpuacct":Lcom/jaredrummler/android/processes/models/b;
    const-string v8, "cpu"

    invoke-virtual {v0, v8}, Lcom/jaredrummler/android/processes/models/Cgroup;->getGroup(Ljava/lang/String;)Lcom/jaredrummler/android/processes/models/b;

    move-result-object v1

    .line 49
    .local v1, "cpu":Lcom/jaredrummler/android/processes/models/b;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    iget-object v8, v2, Lcom/jaredrummler/android/processes/models/b;->c:Ljava/lang/String;

    const-string v9, "pid_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 50
    :cond_0
    new-instance v6, Lcom/jaredrummler/android/processes/models/AndroidAppProcess$NotAndroidAppProcessException;

    invoke-direct {v6, p1}, Lcom/jaredrummler/android/processes/models/AndroidAppProcess$NotAndroidAppProcessException;-><init>(I)V

    throw v6

    .line 52
    :cond_1
    iget-object v8, v1, Lcom/jaredrummler/android/processes/models/b;->c:Ljava/lang/String;

    const-string v9, "bg_non_interactive"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    :goto_0
    iput-boolean v6, p0, Lcom/jaredrummler/android/processes/models/AndroidAppProcess;->a:Z

    .line 54
    :try_start_0
    iget-object v6, v2, Lcom/jaredrummler/android/processes/models/b;->c:Ljava/lang/String;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const-string v7, "uid_"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/jaredrummler/android/processes/models/AndroidAppProcess;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v0    # "cgroup":Lcom/jaredrummler/android/processes/models/Cgroup;
    .end local v1    # "cpu":Lcom/jaredrummler/android/processes/models/b;
    .end local v2    # "cpuacct":Lcom/jaredrummler/android/processes/models/b;
    :goto_1
    return-void

    .restart local v0    # "cgroup":Lcom/jaredrummler/android/processes/models/Cgroup;
    .restart local v1    # "cpu":Lcom/jaredrummler/android/processes/models/b;
    .restart local v2    # "cpuacct":Lcom/jaredrummler/android/processes/models/b;
    :cond_2
    move v6, v7

    .line 52
    goto :goto_0

    .line 55
    :catch_0
    move-exception v3

    .line 56
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/jaredrummler/android/processes/models/AndroidAppProcess;->j()Lcom/jaredrummler/android/processes/models/Status;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jaredrummler/android/processes/models/Status;->getUid()I

    move-result v6

    iput v6, p0, Lcom/jaredrummler/android/processes/models/AndroidAppProcess;->b:I

    goto :goto_1

    .line 61
    .end local v0    # "cgroup":Lcom/jaredrummler/android/processes/models/Cgroup;
    .end local v1    # "cpu":Lcom/jaredrummler/android/processes/models/b;
    .end local v2    # "cpuacct":Lcom/jaredrummler/android/processes/models/b;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v8, p0, Lcom/jaredrummler/android/processes/models/AndroidAppProcess;->c:Ljava/lang/String;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    new-instance v8, Ljava/io/File;

    const-string v9, "/data/data"

    iget-object v10, p0, Lcom/jaredrummler/android/processes/models/AndroidAppProcess;->c:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_5

    .line 62
    :cond_4
    new-instance v6, Lcom/jaredrummler/android/processes/models/AndroidAppProcess$NotAndroidAppProcessException;

    invoke-direct {v6, p1}, Lcom/jaredrummler/android/processes/models/AndroidAppProcess$NotAndroidAppProcessException;-><init>(I)V

    throw v6

    .line 64
    :cond_5
    invoke-virtual {p0}, Lcom/jaredrummler/android/processes/models/AndroidAppProcess;->h()Lcom/jaredrummler/android/processes/models/Stat;

    move-result-object v4

    .line 65
    .local v4, "stat":Lcom/jaredrummler/android/processes/models/Stat;
    invoke-virtual {p0}, Lcom/jaredrummler/android/processes/models/AndroidAppProcess;->j()Lcom/jaredrummler/android/processes/models/Status;

    move-result-object v5

    .line 67
    .local v5, "status":Lcom/jaredrummler/android/processes/models/Status;
    invoke-virtual {v4}, Lcom/jaredrummler/android/processes/models/Stat;->policy()I

    move-result v8

    if-nez v8, :cond_6

    :goto_2
    iput-boolean v6, p0, Lcom/jaredrummler/android/processes/models/AndroidAppProcess;->a:Z

    .line 68
    invoke-virtual {v5}, Lcom/jaredrummler/android/processes/models/Status;->getUid()I

    move-result v6

    iput v6, p0, Lcom/jaredrummler/android/processes/models/AndroidAppProcess;->b:I

    goto :goto_1

    :cond_6
    move v6, v7

    .line 67
    goto :goto_2
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/jaredrummler/android/processes/models/a;-><init>(Landroid/os/Parcel;)V

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/jaredrummler/android/processes/models/AndroidAppProcess;->a:Z

    .line 110
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;I)Landroid/content/pm/PackageInfo;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jaredrummler/android/processes/models/AndroidAppProcess;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/jaredrummler/android/processes/models/AndroidAppProcess;->c:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Lcom/jaredrummler/android/processes/models/a;->writeToParcel(Landroid/os/Parcel;I)V

    .line 104
    iget-boolean v0, p0, Lcom/jaredrummler/android/processes/models/AndroidAppProcess;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 105
    return-void

    .line 104
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
