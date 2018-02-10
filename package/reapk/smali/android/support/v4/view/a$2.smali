.class final Landroid/support/v4/view/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/os/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/os/j",
        "<",
        "Landroid/support/v4/view/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/a$2;->b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v4/view/a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/support/v4/view/a$2;->b(I)[Landroid/support/v4/view/a;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v4/view/a;
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 90
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    .line 91
    .local v0, "superState":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 92
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "superState must be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 94
    :cond_0
    sget-object v1, Landroid/support/v4/view/a;->a:Landroid/support/v4/view/a;

    return-object v1
.end method

.method public b(I)[Landroid/support/v4/view/a;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 99
    new-array v0, p1, [Landroid/support/v4/view/a;

    return-object v0
.end method
