.class final Landroid/support/v4/media/a$k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/a$k;
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
        "Landroid/support/v4/media/a$k;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroid/support/v4/media/a$k;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 472
    new-instance v0, Landroid/support/v4/media/a$k;

    invoke-direct {v0, p1}, Landroid/support/v4/media/a$k;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Landroid/support/v4/media/a$k;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 477
    new-array v0, p1, [Landroid/support/v4/media/a$k;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 469
    invoke-virtual {p0, p1}, Landroid/support/v4/media/a$k$1;->a(Landroid/os/Parcel;)Landroid/support/v4/media/a$k;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 469
    invoke-virtual {p0, p1}, Landroid/support/v4/media/a$k$1;->a(I)[Landroid/support/v4/media/a$k;

    move-result-object v0

    return-object v0
.end method
