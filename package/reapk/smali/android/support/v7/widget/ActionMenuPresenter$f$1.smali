.class final Landroid/support/v7/widget/ActionMenuPresenter$f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionMenuPresenter$f;
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
        "Landroid/support/v7/widget/ActionMenuPresenter$f;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroid/support/v7/widget/ActionMenuPresenter$f;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 629
    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter$f;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/ActionMenuPresenter$f;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Landroid/support/v7/widget/ActionMenuPresenter$f;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 633
    new-array v0, p1, [Landroid/support/v7/widget/ActionMenuPresenter$f;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 627
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuPresenter$f$1;->a(Landroid/os/Parcel;)Landroid/support/v7/widget/ActionMenuPresenter$f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 627
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuPresenter$f$1;->a(I)[Landroid/support/v7/widget/ActionMenuPresenter$f;

    move-result-object v0

    return-object v0
.end method
