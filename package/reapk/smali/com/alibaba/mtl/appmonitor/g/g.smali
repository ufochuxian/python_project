.class public Lcom/alibaba/mtl/appmonitor/g/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/alibaba/mtl/appmonitor/c/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Lcom/alibaba/mtl/appmonitor/c/b;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/mtl/appmonitor/g/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Z

.field private b:Ljava/lang/Double;

.field private c:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    new-instance v0, Lcom/alibaba/mtl/appmonitor/g/g$1;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/g/g$1;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/g/g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "value"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p1, p0, Lcom/alibaba/mtl/appmonitor/g/g;->c:D

    .line 36
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1
    .param p1, "value"    # D
    .param p3, "offset"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/g;->b:Ljava/lang/Double;

    .line 44
    iput-wide p1, p0, Lcom/alibaba/mtl/appmonitor/g/g;->c:D

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/mtl/appmonitor/g/g;->a:Z

    .line 46
    return-void
.end method

.method public static a()Lcom/alibaba/mtl/appmonitor/g/g;
    .locals 3

    .prologue
    .line 49
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v0

    const-class v1, Lcom/alibaba/mtl/appmonitor/g/g;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/g/g;

    return-object v0
.end method

.method public static a(D)Lcom/alibaba/mtl/appmonitor/g/g;
    .locals 6
    .param p0, "value"    # D

    .prologue
    .line 53
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v0

    const-class v1, Lcom/alibaba/mtl/appmonitor/g/g;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/g/g;

    return-object v0
.end method

.method public static a(DD)Lcom/alibaba/mtl/appmonitor/g/g;
    .locals 6
    .param p0, "value"    # D
    .param p2, "offset"    # D

    .prologue
    .line 57
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v0

    const-class v1, Lcom/alibaba/mtl/appmonitor/g/g;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/g/g;

    return-object v0
.end method

.method static a(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/g/g;
    .locals 7

    .prologue
    .line 139
    const/4 v1, 0x0

    .line 141
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move v2, v0

    .line 142
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 143
    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .line 144
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/g/g;->a()Lcom/alibaba/mtl/appmonitor/g/g;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 145
    :try_start_1
    iput-boolean v2, v0, Lcom/alibaba/mtl/appmonitor/g/g;->a:Z

    .line 146
    iput-object v3, v0, Lcom/alibaba/mtl/appmonitor/g/g;->b:Ljava/lang/Double;

    .line 147
    iput-wide v4, v0, Lcom/alibaba/mtl/appmonitor/g/g;->c:D
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 151
    :goto_1
    return-object v0

    .line 141
    :cond_0
    const/4 v0, 0x1

    move v2, v0

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 149
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 148
    :catch_1
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized a(Lcom/alibaba/mtl/appmonitor/g/g;)V
    .locals 4
    .param p1, "t"    # Lcom/alibaba/mtl/appmonitor/g/g;

    .prologue
    .line 87
    monitor-enter p0

    if-nez p1, :cond_1

    .line 99
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 90
    :cond_1
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/mtl/appmonitor/g/g;->c:D

    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/g/g;->e()D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/mtl/appmonitor/g/g;->c:D

    .line 91
    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/g/g;->b()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/g;->b:Ljava/lang/Double;

    if-nez v0, :cond_2

    .line 93
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/g;->b:Ljava/lang/Double;

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/g;->b:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/g/g;->b()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/g;->b:Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 14
    check-cast p1, Lcom/alibaba/mtl/appmonitor/g/g;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/alibaba/mtl/appmonitor/g/g;->a(Lcom/alibaba/mtl/appmonitor/g/g;)V

    return-void
.end method

.method public a(Z)V
    .locals 0
    .param p1, "finish"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/alibaba/mtl/appmonitor/g/g;->a:Z

    .line 70
    return-void
.end method

.method public varargs declared-synchronized a([Ljava/lang/Object;)V
    .locals 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 110
    monitor-enter p0

    if-nez p1, :cond_1

    .line 120
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 113
    :cond_1
    :try_start_0
    array-length v0, p1

    if-lez v0, :cond_2

    .line 114
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/mtl/appmonitor/g/g;->c:D

    .line 116
    :cond_2
    array-length v0, p1

    if-le v0, v2, :cond_0

    .line 117
    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/g;->b:Ljava/lang/Double;

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/mtl/appmonitor/g/g;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/g;->b:Ljava/lang/Double;

    return-object v0
.end method

.method public b(D)V
    .locals 1
    .param p1, "offset"    # D

    .prologue
    .line 73
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/g;->b:Ljava/lang/Double;

    .line 74
    return-void
.end method

.method public c(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/alibaba/mtl/appmonitor/g/g;->c:D

    .line 82
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/alibaba/mtl/appmonitor/g/g;->a:Z

    return v0
.end method

.method public declared-synchronized d()V
    .locals 2

    .prologue
    .line 103
    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/alibaba/mtl/appmonitor/g/g;->c:D

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/g;->b:Ljava/lang/Double;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/mtl/appmonitor/g/g;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public e()D
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/alibaba/mtl/appmonitor/g/g;->c:D

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 131
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/mtl/appmonitor/g/g;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/g;->b:Ljava/lang/Double;

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 133
    iget-wide v0, p0, Lcom/alibaba/mtl/appmonitor/g/g;->c:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 137
    :goto_2
    return-void

    .line 131
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/g;->b:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_1

    .line 134
    :catch_0
    move-exception v0

    goto :goto_2
.end method
