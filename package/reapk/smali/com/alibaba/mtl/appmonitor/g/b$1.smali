.class final Lcom/alibaba/mtl/appmonitor/g/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/alibaba/mtl/appmonitor/g/b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/g/b;
    .locals 1

    .prologue
    .line 96
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/g/b;->a(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/g/b;

    move-result-object v0

    return-object v0
.end method

.method public a(I)[Lcom/alibaba/mtl/appmonitor/g/b;
    .locals 1

    .prologue
    .line 101
    new-array v0, p1, [Lcom/alibaba/mtl/appmonitor/g/b;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/alibaba/mtl/appmonitor/g/b$1;->a(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/g/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/alibaba/mtl/appmonitor/g/b$1;->a(I)[Lcom/alibaba/mtl/appmonitor/g/b;

    move-result-object v0

    return-object v0
.end method
