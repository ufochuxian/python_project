.class public Landroid/support/v7/widget/Toolbar$d;
.super Landroid/support/v4/view/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v7/widget/Toolbar$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field b:I

.field c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2279
    new-instance v0, Landroid/support/v7/widget/Toolbar$d$1;

    invoke-direct {v0}, Landroid/support/v7/widget/Toolbar$d$1;-><init>()V

    invoke-static {v0}, Landroid/support/v4/os/i;->a(Landroid/support/v4/os/j;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/Toolbar$d;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 2259
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/Toolbar$d;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 2260
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 2263
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/a;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 2264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/Toolbar$d;->b:I

    .line 2265
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/Toolbar$d;->c:Z

    .line 2266
    return-void

    .line 2265
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 2269
    invoke-direct {p0, p1}, Landroid/support/v4/view/a;-><init>(Landroid/os/Parcelable;)V

    .line 2270
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 2274
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2275
    iget v0, p0, Landroid/support/v7/widget/Toolbar$d;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2276
    iget-boolean v0, p0, Landroid/support/v7/widget/Toolbar$d;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2277
    return-void

    .line 2276
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
