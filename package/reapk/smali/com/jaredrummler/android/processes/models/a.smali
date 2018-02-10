.class public Lcom/jaredrummler/android/processes/models/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/jaredrummler/android/processes/models/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 616
    new-instance v0, Lcom/jaredrummler/android/processes/models/a$1;

    invoke-direct {v0}, Lcom/jaredrummler/android/processes/models/a$1;-><init>()V

    sput-object v0, Lcom/jaredrummler/android/processes/models/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Lcom/jaredrummler/android/processes/models/a;->d:I

    .line 65
    invoke-static {p1}, Lcom/jaredrummler/android/processes/models/a;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaredrummler/android/processes/models/a;->c:Ljava/lang/String;

    .line 66
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 612
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jaredrummler/android/processes/models/a;->c:Ljava/lang/String;

    .line 613
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jaredrummler/android/processes/models/a;->d:I

    .line 614
    return-void
.end method

.method static a(I)Ljava/lang/String;
    .locals 5
    .param p0, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 38
    .local v0, "cmdline":Ljava/lang/String;
    :try_start_0
    const-string v1, "/proc/%d/cmdline"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/jaredrummler/android/processes/models/ProcFile;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 41
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-static {p0}, Lcom/jaredrummler/android/processes/models/Stat;->get(I)Lcom/jaredrummler/android/processes/models/Stat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jaredrummler/android/processes/models/Stat;->getComm()Ljava/lang/String;

    move-result-object v0

    .line 44
    .end local v0    # "cmdline":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 39
    .restart local v0    # "cmdline":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    const-string v0, "/proc/%d/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/jaredrummler/android/processes/models/a;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jaredrummler/android/processes/models/ProcFile;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    const-string v0, "attr/current"

    invoke-virtual {p0, v0}, Lcom/jaredrummler/android/processes/models/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    const-string v0, "cmdline"

    invoke-virtual {p0, v0}, Lcom/jaredrummler/android/processes/models/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/jaredrummler/android/processes/models/Cgroup;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    iget v0, p0, Lcom/jaredrummler/android/processes/models/a;->d:I

    invoke-static {v0}, Lcom/jaredrummler/android/processes/models/Cgroup;->get(I)Lcom/jaredrummler/android/processes/models/Cgroup;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 602
    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    const-string v0, "oom_score"

    invoke-virtual {p0, v0}, Lcom/jaredrummler/android/processes/models/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    const-string v0, "oom_adj"

    invoke-virtual {p0, v0}, Lcom/jaredrummler/android/processes/models/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    const-string v0, "oom_score_adj"

    invoke-virtual {p0, v0}, Lcom/jaredrummler/android/processes/models/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public h()Lcom/jaredrummler/android/processes/models/Stat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 444
    iget v0, p0, Lcom/jaredrummler/android/processes/models/a;->d:I

    invoke-static {v0}, Lcom/jaredrummler/android/processes/models/Stat;->get(I)Lcom/jaredrummler/android/processes/models/Stat;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/jaredrummler/android/processes/models/Statm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 466
    iget v0, p0, Lcom/jaredrummler/android/processes/models/a;->d:I

    invoke-static {v0}, Lcom/jaredrummler/android/processes/models/Statm;->get(I)Lcom/jaredrummler/android/processes/models/Statm;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/jaredrummler/android/processes/models/Status;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 587
    iget v0, p0, Lcom/jaredrummler/android/processes/models/a;->d:I

    invoke-static {v0}, Lcom/jaredrummler/android/processes/models/Status;->get(I)Lcom/jaredrummler/android/processes/models/Status;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 597
    const-string v0, "wchan"

    invoke-virtual {p0, v0}, Lcom/jaredrummler/android/processes/models/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 607
    iget-object v0, p0, Lcom/jaredrummler/android/processes/models/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 608
    iget v0, p0, Lcom/jaredrummler/android/processes/models/a;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 609
    return-void
.end method
