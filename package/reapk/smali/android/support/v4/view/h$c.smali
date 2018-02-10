.class Landroid/support/v4/view/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)I
    .locals 1
    .param p1, "gravity"    # I
    .param p2, "layoutDirection"    # I

    .prologue
    .line 65
    invoke-static {p1, p2}, Landroid/support/v4/view/i;->a(II)I

    move-result v0

    return v0
.end method

.method public a(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;I)V
    .locals 0
    .param p1, "gravity"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "container"    # Landroid/graphics/Rect;
    .param p5, "xAdj"    # I
    .param p6, "yAdj"    # I
    .param p7, "outRect"    # Landroid/graphics/Rect;
    .param p8, "layoutDirection"    # I

    .prologue
    .line 77
    invoke-static/range {p1 .. p8}, Landroid/support/v4/view/i;->a(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;I)V

    .line 79
    return-void
.end method

.method public a(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 0
    .param p1, "gravity"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "container"    # Landroid/graphics/Rect;
    .param p5, "outRect"    # Landroid/graphics/Rect;
    .param p6, "layoutDirection"    # I

    .prologue
    .line 71
    invoke-static/range {p1 .. p6}, Landroid/support/v4/view/i;->a(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 72
    return-void
.end method

.method public a(ILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 0
    .param p1, "gravity"    # I
    .param p2, "display"    # Landroid/graphics/Rect;
    .param p3, "inoutObj"    # Landroid/graphics/Rect;
    .param p4, "layoutDirection"    # I

    .prologue
    .line 83
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/view/i;->a(ILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 84
    return-void
.end method
