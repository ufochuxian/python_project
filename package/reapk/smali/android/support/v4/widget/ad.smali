.class Landroid/support/v4/widget/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/ae;
    a = 0xe
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)F
    .locals 1
    .param p0, "scroller"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p0, Landroid/widget/OverScroller;

    .end local p0    # "scroller":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v0

    return v0
.end method
