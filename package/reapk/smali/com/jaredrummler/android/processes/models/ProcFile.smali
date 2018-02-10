.class public Lcom/jaredrummler/android/processes/models/ProcFile;
.super Ljava/io/File;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/jaredrummler/android/processes/models/ProcFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final content:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/jaredrummler/android/processes/models/ProcFile$1;

    invoke-direct {v0}, Lcom/jaredrummler/android/processes/models/ProcFile$1;-><init>()V

    sput-object v0, Lcom/jaredrummler/android/processes/models/ProcFile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaredrummler/android/processes/models/ProcFile;->content:Ljava/lang/String;

    .line 64
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-static {p1}, Lcom/jaredrummler/android/processes/models/ProcFile;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaredrummler/android/processes/models/ProcFile;->content:Ljava/lang/String;

    .line 59
    return-void
.end method

.method protected static readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    const/4 v3, 0x0

    .line 40
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .local v2, "output":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    const-string v1, ""

    .local v1, "newLine":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, "\n"

    .line 42
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 48
    if-eqz v4, :cond_1

    .line 49
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 46
    :cond_1
    return-object v5

    .line 48
    .end local v0    # "line":Ljava/lang/String;
    .end local v1    # "newLine":Ljava/lang/String;
    .end local v2    # "output":Ljava/lang/StringBuilder;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v5

    :goto_1
    if-eqz v3, :cond_2

    .line 49
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 51
    :cond_2
    throw v5

    .line 48
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "output":Ljava/lang/StringBuilder;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/jaredrummler/android/processes/models/ProcFile;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/jaredrummler/android/processes/models/ProcFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/jaredrummler/android/processes/models/ProcFile;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    return-void
.end method
