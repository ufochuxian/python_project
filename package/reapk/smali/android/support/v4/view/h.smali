.class public final Landroid/support/v4/view/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/h$c;,
        Landroid/support/v4/view/h$b;,
        Landroid/support/v4/view/h$a;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/view/h$a;

.field public static final b:I = 0x800000

.field public static final c:I = 0x800003

.field public static final d:I = 0x800005

.field public static final e:I = 0x800007


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 90
    .local v0, "version":I
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 91
    new-instance v1, Landroid/support/v4/view/h$c;

    invoke-direct {v1}, Landroid/support/v4/view/h$c;-><init>()V

    sput-object v1, Landroid/support/v4/view/h;->a:Landroid/support/v4/view/h$a;

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v1, Landroid/support/v4/view/h$b;

    invoke-direct {v1}, Landroid/support/v4/view/h$b;-><init>()V

    sput-object v1, Landroid/support/v4/view/h;->a:Landroid/support/v4/view/h$a;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(II)I
    .locals 1
    .param p0, "gravity"    # I
    .param p1, "layoutDirection"    # I

    .prologue
    .line 201
    sget-object v0, Landroid/support/v4/view/h;->a:Landroid/support/v4/view/h$a;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/h$a;->a(II)I

    move-result v0

    return v0
.end method

.method public static a(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;I)V
    .locals 9
    .param p0, "gravity"    # I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "container"    # Landroid/graphics/Rect;
    .param p4, "xAdj"    # I
    .param p5, "yAdj"    # I
    .param p6, "outRect"    # Landroid/graphics/Rect;
    .param p7, "layoutDirection"    # I

    .prologue
    .line 162
    sget-object v0, Landroid/support/v4/view/h;->a:Landroid/support/v4/view/h$a;

    move v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Landroid/support/v4/view/h$a;->a(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;I)V

    .line 163
    return-void
.end method

.method public static a(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 7
    .param p0, "gravity"    # I
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "container"    # Landroid/graphics/Rect;
    .param p4, "outRect"    # Landroid/graphics/Rect;
    .param p5, "layoutDirection"    # I

    .prologue
    .line 132
    sget-object v0, Landroid/support/v4/view/h;->a:Landroid/support/v4/view/h$a;

    move v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/support/v4/view/h$a;->a(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 133
    return-void
.end method

.method public static a(ILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 1
    .param p0, "gravity"    # I
    .param p1, "display"    # Landroid/graphics/Rect;
    .param p2, "inoutObj"    # Landroid/graphics/Rect;
    .param p3, "layoutDirection"    # I

    .prologue
    .line 186
    sget-object v0, Landroid/support/v4/view/h;->a:Landroid/support/v4/view/h$a;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/support/v4/view/h$a;->a(ILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 187
    return-void
.end method
