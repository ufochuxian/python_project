.class public Lcom/alibaba/mtl/appmonitor/g;
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
            "Lcom/alibaba/mtl/appmonitor/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Ljava/lang/Integer;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Lcom/alibaba/mtl/appmonitor/g/d;

.field protected e:Ljava/lang/String;

.field private f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lcom/alibaba/mtl/appmonitor/g$1;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/g$1;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/g/d;)V
    .locals 1
    .param p1, "eventId"    # Ljava/lang/Integer;
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "monitorPoint"    # Ljava/lang/String;
    .param p4, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/g/d;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/g;->a:Ljava/lang/Integer;

    .line 29
    iput-object p2, p0, Lcom/alibaba/mtl/appmonitor/g;->b:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/alibaba/mtl/appmonitor/g;->c:Ljava/lang/String;

    .line 31
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/g;->e:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/alibaba/mtl/appmonitor/g;->d:Lcom/alibaba/mtl/appmonitor/g/d;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/g;->f:Ljava/lang/Object;

    .line 34
    return-void
.end method

.method static a(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/g;
    .locals 2

    .prologue
    .line 117
    new-instance v1, Lcom/alibaba/mtl/appmonitor/g;

    invoke-direct {v1}, Lcom/alibaba/mtl/appmonitor/g;-><init>()V

    .line 119
    :try_start_0
    const-class v0, Lcom/alibaba/mtl/appmonitor/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/g/d;

    iput-object v0, v1, Lcom/alibaba/mtl/appmonitor/g;->d:Lcom/alibaba/mtl/appmonitor/g/d;

    .line 120
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/mtl/appmonitor/g;->a:Ljava/lang/Integer;

    .line 121
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/mtl/appmonitor/g;->b:Ljava/lang/String;

    .line 122
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/mtl/appmonitor/g;->c:Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/mtl/appmonitor/g;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-object v1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/alibaba/mtl/appmonitor/g/d;)V
    .locals 2
    .param p1, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/g/d;

    .prologue
    .line 82
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/g;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g;->d:Lcom/alibaba/mtl/appmonitor/g/d;

    if-nez v0, :cond_0

    .line 84
    iput-object p1, p0, Lcom/alibaba/mtl/appmonitor/g;->d:Lcom/alibaba/mtl/appmonitor/g/d;

    .line 88
    :goto_0
    monitor-exit v1

    .line 89
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g;->d:Lcom/alibaba/mtl/appmonitor/g/d;

    invoke-virtual {v0, p1}, Lcom/alibaba/mtl/appmonitor/g/d;->a(Lcom/alibaba/mtl/appmonitor/g/d;)Lcom/alibaba/mtl/appmonitor/g/d;

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .param p1, "measureName"    # Ljava/lang/String;

    .prologue
    .line 47
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a;->b:Lcom/alibaba/mtl/appmonitor/d;

    if-nez v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 51
    :cond_0
    :try_start_0
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a;->b:Lcom/alibaba/mtl/appmonitor/d;

    invoke-interface {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/d;->a(Lcom/alibaba/mtl/appmonitor/g;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "dimensionName"    # Ljava/lang/String;
    .param p2, "dimensionValue"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/g;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g;->d:Lcom/alibaba/mtl/appmonitor/g/d;

    if-nez v0, :cond_0

    .line 94
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/c/a;->a()Lcom/alibaba/mtl/appmonitor/c/a;

    move-result-object v0

    const-class v2, Lcom/alibaba/mtl/appmonitor/g/d;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/mtl/appmonitor/c/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/alibaba/mtl/appmonitor/c/b;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/g/d;

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/g;->d:Lcom/alibaba/mtl/appmonitor/g/d;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g;->d:Lcom/alibaba/mtl/appmonitor/g/d;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/mtl/appmonitor/g/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/g/d;

    .line 97
    monitor-exit v1

    .line 98
    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .param p1, "measureName"    # Ljava/lang/String;

    .prologue
    .line 65
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a;->b:Lcom/alibaba/mtl/appmonitor/d;

    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 69
    :cond_0
    :try_start_0
    sget-object v0, Lcom/alibaba/mtl/appmonitor/a;->b:Lcom/alibaba/mtl/appmonitor/d;

    invoke-interface {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/d;->b(Lcom/alibaba/mtl/appmonitor/g;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g;->d:Lcom/alibaba/mtl/appmonitor/g/d;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 110
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    return-void
.end method
