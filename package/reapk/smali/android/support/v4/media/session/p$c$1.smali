.class final Landroid/support/v4/media/session/p$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/p$c;
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
        "Landroid/support/v4/media/session/p$c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 881
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroid/support/v4/media/session/p$c;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 885
    new-instance v0, Landroid/support/v4/media/session/p$c;

    invoke-direct {v0, p1}, Landroid/support/v4/media/session/p$c;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Landroid/support/v4/media/session/p$c;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 890
    new-array v0, p1, [Landroid/support/v4/media/session/p$c;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 881
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/p$c$1;->a(Landroid/os/Parcel;)Landroid/support/v4/media/session/p$c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 881
    invoke-virtual {p0, p1}, Landroid/support/v4/media/session/p$c$1;->a(I)[Landroid/support/v4/media/session/p$c;

    move-result-object v0

    return-object v0
.end method