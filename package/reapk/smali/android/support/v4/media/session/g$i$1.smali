.class final Landroid/support/v4/media/session/g$i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/g$i;
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
        "Landroid/support/v4/media/session/g$i;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroid/support/v4/media/session/g$i;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1195
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 1196
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1200
    :goto_0
    new-instance v1, Landroid/support/v4/media/session/g$i;

    invoke-direct {v1, v0}, Landroid/support/v4/media/session/g$i;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 1198
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .local v0, "inner":Landroid/os/IBinder;
    goto :goto_0
.end method

.method public a(I)[Landroid/support/v4/media/session/g$i;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1205
    new-array v0, p1, [Landroid/support/v4/media/session/g$i;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1191
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/g$i$1;->a(Landroid/os/Parcel;)Landroid/support/v4/media/session/g$i;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1191
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/g$i$1;->a(I)[Landroid/support/v4/media/session/g$i;

    move-result-object v0

    return-object v0
.end method
