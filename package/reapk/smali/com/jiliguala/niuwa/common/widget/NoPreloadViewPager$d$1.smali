.class final Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/os/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$d;
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
        "Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 743
    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$d$1;->b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 743
    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$d$1;->b(I)[Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$d;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$d;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 746
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$d;

    invoke-direct {v0, p1, p2}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$d;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public b(I)[Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$d;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 751
    new-array v0, p1, [Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$d;

    return-object v0
.end method
