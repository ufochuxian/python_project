.class final Lcom/alibaba/mtl/appmonitor/g/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/appmonitor/g/h;
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
        "Lcom/alibaba/mtl/appmonitor/g/h;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/g/h;
    .locals 1

    .prologue
    .line 189
    invoke-static {p1}, Lcom/alibaba/mtl/appmonitor/g/h;->a(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/g/h;

    move-result-object v0

    return-object v0
.end method

.method public a(I)[Lcom/alibaba/mtl/appmonitor/g/h;
    .locals 1

    .prologue
    .line 194
    new-array v0, p1, [Lcom/alibaba/mtl/appmonitor/g/h;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/alibaba/mtl/appmonitor/g/h$1;->a(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/g/h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/alibaba/mtl/appmonitor/g/h$1;->a(I)[Lcom/alibaba/mtl/appmonitor/g/h;

    move-result-object v0

    return-object v0
.end method
