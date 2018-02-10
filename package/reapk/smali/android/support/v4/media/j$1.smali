.class final Landroid/support/v4/media/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/j;
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
        "Landroid/support/v4/media/j;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroid/support/v4/media/j;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 381
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 382
    new-instance v0, Landroid/support/v4/media/j;

    invoke-direct {v0, p1}, Landroid/support/v4/media/j;-><init>(Landroid/os/Parcel;)V

    .line 384
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/support/v4/media/k;->a(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/j;->a(Ljava/lang/Object;)Landroid/support/v4/media/j;

    move-result-object v0

    goto :goto_0
.end method

.method public a(I)[Landroid/support/v4/media/j;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 390
    new-array v0, p1, [Landroid/support/v4/media/j;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 378
    invoke-virtual {p0, p1}, Landroid/support/v4/media/j$1;->a(Landroid/os/Parcel;)Landroid/support/v4/media/j;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 378
    invoke-virtual {p0, p1}, Landroid/support/v4/media/j$1;->a(I)[Landroid/support/v4/media/j;

    move-result-object v0

    return-object v0
.end method
