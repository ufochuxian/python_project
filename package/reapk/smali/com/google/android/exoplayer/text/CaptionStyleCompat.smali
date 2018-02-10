.class public final Lcom/google/android/exoplayer/text/CaptionStyleCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Lcom/google/android/exoplayer/text/CaptionStyleCompat;

.field public static final EDGE_TYPE_DEPRESSED:I = 0x4

.field public static final EDGE_TYPE_DROP_SHADOW:I = 0x2

.field public static final EDGE_TYPE_NONE:I = 0x0

.field public static final EDGE_TYPE_OUTLINE:I = 0x1

.field public static final EDGE_TYPE_RAISED:I = 0x3

.field public static final USE_TRACK_COLOR_SETTINGS:I = 0x1


# instance fields
.field public final backgroundColor:I

.field public final edgeColor:I

.field public final edgeType:I

.field public final foregroundColor:I

.field public final typeface:Landroid/graphics/Typeface;

.field public final windowColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 64
    new-instance v0, Lcom/google/android/exoplayer/text/CaptionStyleCompat;

    const/high16 v2, -0x1000000

    const/4 v6, 0x0

    move v4, v3

    move v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/text/CaptionStyleCompat;-><init>(IIIIILandroid/graphics/Typeface;)V

    sput-object v0, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer/text/CaptionStyleCompat;

    return-void
.end method

.method public constructor <init>(IIIIILandroid/graphics/Typeface;)V
    .locals 0
    .param p1, "foregroundColor"    # I
    .param p2, "backgroundColor"    # I
    .param p3, "windowColor"    # I
    .param p4, "edgeType"    # I
    .param p5, "edgeColor"    # I
    .param p6, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput p1, p0, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->foregroundColor:I

    .line 115
    iput p2, p0, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->backgroundColor:I

    .line 116
    iput p3, p0, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->windowColor:I

    .line 117
    iput p4, p0, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->edgeType:I

    .line 118
    iput p5, p0, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->edgeColor:I

    .line 119
    iput-object p6, p0, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->typeface:Landroid/graphics/Typeface;

    .line 120
    return-void
.end method

.method public static createFromCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/android/exoplayer/text/CaptionStyleCompat;
    .locals 2
    .param p0, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 130
    sget v0, Lcom/google/android/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 131
    invoke-static {p0}, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->createFromCaptionStyleV21(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/android/exoplayer/text/CaptionStyleCompat;

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->createFromCaptionStyleV19(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/android/exoplayer/text/CaptionStyleCompat;

    move-result-object v0

    goto :goto_0
.end method

.method private static createFromCaptionStyleV19(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/android/exoplayer/text/CaptionStyleCompat;
    .locals 7
    .param p0, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 141
    new-instance v0, Lcom/google/android/exoplayer/text/CaptionStyleCompat;

    iget v1, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    iget v2, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    const/4 v3, 0x0

    iget v4, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    iget v5, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    .line 142
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/text/CaptionStyleCompat;-><init>(IIIIILandroid/graphics/Typeface;)V

    .line 141
    return-object v0
.end method

.method private static createFromCaptionStyleV21(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Lcom/google/android/exoplayer/text/CaptionStyleCompat;
    .locals 7
    .param p0, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 147
    new-instance v0, Lcom/google/android/exoplayer/text/CaptionStyleCompat;

    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    .line 148
    :goto_0
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    .line 149
    :goto_1
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasWindowColor()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    :goto_2
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeType()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    .line 150
    :goto_3
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeColor()Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, p0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    :goto_4
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer/text/CaptionStyleCompat;-><init>(IIIIILandroid/graphics/Typeface;)V

    .line 147
    return-object v0

    :cond_0
    sget-object v1, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer/text/CaptionStyleCompat;

    iget v1, v1, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->foregroundColor:I

    goto :goto_0

    .line 148
    :cond_1
    sget-object v2, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer/text/CaptionStyleCompat;

    iget v2, v2, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->backgroundColor:I

    goto :goto_1

    .line 149
    :cond_2
    sget-object v3, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer/text/CaptionStyleCompat;

    iget v3, v3, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->windowColor:I

    goto :goto_2

    :cond_3
    sget-object v4, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer/text/CaptionStyleCompat;

    iget v4, v4, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->edgeType:I

    goto :goto_3

    .line 150
    :cond_4
    sget-object v5, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->DEFAULT:Lcom/google/android/exoplayer/text/CaptionStyleCompat;

    iget v5, v5, Lcom/google/android/exoplayer/text/CaptionStyleCompat;->edgeColor:I

    goto :goto_4
.end method
