.class final Lcom/alibaba/mtl/appmonitor/g/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/g/c;
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
        "Lcom/alibaba/mtl/appmonitor/g/c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/g/c;
    .locals 1

    .prologue
    .line 200
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/g/c;->a(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/g/c;

    move-result-object v0

    return-object v0
.end method

.method public a(I)[Lcom/alibaba/mtl/appmonitor/g/c;
    .locals 1

    .prologue
    .line 205
    new-array v0, p1, [Lcom/alibaba/mtl/appmonitor/g/c;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Lcom/alibaba/mtl/appmonitor/g/c$1;->a(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/g/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Lcom/alibaba/mtl/appmonitor/g/c$1;->a(I)[Lcom/alibaba/mtl/appmonitor/g/c;

    move-result-object v0

    return-object v0
.end method
