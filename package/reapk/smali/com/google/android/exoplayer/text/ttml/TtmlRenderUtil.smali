.class final Lcom/google/android/exoplayer/text/ttml/TtmlRenderUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static applyStylesToSpan(Landroid/text/SpannableStringBuilder;IILcom/google/android/exoplayer/text/ttml/TtmlStyle;)V
    .locals 4
    .param p0, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "style"    # Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    .prologue
    const/4 v2, -0x1

    const/16 v3, 0x21

    .line 71
    invoke-virtual {p3}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->getStyle()S

    move-result v0

    if-eq v0, v2, :cond_0

    .line 72
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-virtual {p3}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->getStyle()S

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 74
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->isLinethrough()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 77
    :cond_1
    invoke-virtual {p3}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->isUnderline()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 80
    :cond_2
    invoke-virtual {p3}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->hasColorSpecified()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p3}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->getColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 83
    :cond_3
    invoke-virtual {p3}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->hasBackgroundColorSpecified()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 84
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {p3}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->getBackgroundColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 86
    :cond_4
    invoke-virtual {p3}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->getFontFamily()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 87
    new-instance v0, Landroid/text/style/TypefaceSpan;

    invoke-virtual {p3}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->getFontFamily()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 89
    :cond_5
    invoke-virtual {p3}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->getTextAlign()Landroid/text/Layout$Alignment;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 90
    new-instance v0, Landroid/text/style/AlignmentSpan$Standard;

    invoke-virtual {p3}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->getTextAlign()Landroid/text/Layout$Alignment;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 92
    :cond_6
    invoke-virtual {p3}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->getFontSizeUnit()S

    move-result v0

    if-eq v0, v2, :cond_7

    .line 93
    invoke-virtual {p3}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->getFontSizeUnit()S

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 105
    :cond_7
    :goto_0
    return-void

    .line 95
    :pswitch_0
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p3}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->getFontSize()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 98
    :pswitch_1
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {p3}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->getFontSize()F

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 101
    :pswitch_2
    new-instance v0, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {p3}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->getFontSize()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-direct {v0, v1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, v0, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static applyTextElementSpacePolicy(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    .line 131
    const-string v1, "\r\n"

    const-string v2, "\n"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "out":Ljava/lang/String;
    const-string v1, " *\n *"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    const-string v1, "\n"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    const-string v1, "[ \t\\x0B\u000c\r]+"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    return-object v0
.end method

.method static endParagraph(Landroid/text/SpannableStringBuilder;)V
    .locals 4
    .param p0, "builder"    # Landroid/text/SpannableStringBuilder;

    .prologue
    const/16 v3, 0xa

    .line 114
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 115
    .local v0, "position":I
    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 116
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 118
    :cond_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_1

    .line 119
    invoke-virtual {p0, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 121
    :cond_1
    return-void
.end method

.method public static resolveStyle(Lcom/google/android/exoplayer/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .locals 5
    .param p0, "style"    # Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .param p1, "styleIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer/text/ttml/TtmlStyle;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer/text/ttml/TtmlStyle;",
            ">;)",
            "Lcom/google/android/exoplayer/text/ttml/TtmlStyle;"
        }
    .end annotation

    .prologue
    .local p2, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer/text/ttml/TtmlStyle;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 42
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 44
    const/4 p0, 0x0

    .line 66
    .end local p0    # "style":Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    :cond_0
    :goto_0
    return-object p0

    .line 45
    .restart local p0    # "style":Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    :cond_1
    if-nez p0, :cond_2

    array-length v2, p1

    if-ne v2, v3, :cond_2

    .line 47
    aget-object v2, p1, v4

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-object p0, v2

    goto :goto_0

    .line 48
    :cond_2
    if-nez p0, :cond_4

    array-length v2, p1

    if-le v2, v3, :cond_4

    .line 50
    new-instance v0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    invoke-direct {v0}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;-><init>()V

    .line 51
    .local v0, "chainedStyle":Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 52
    aget-object v2, p1, v1

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->chain(Lcom/google/android/exoplayer/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move-object p0, v0

    .line 54
    goto :goto_0

    .line 55
    .end local v0    # "chainedStyle":Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .end local v1    # "i":I
    :cond_4
    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    array-length v2, p1

    if-ne v2, v3, :cond_5

    .line 57
    aget-object v2, p1, v4

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->chain(Lcom/google/android/exoplayer/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-result-object p0

    goto :goto_0

    .line 58
    :cond_5
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v2, p1

    if-le v2, v3, :cond_0

    .line 60
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 61
    aget-object v2, p1, v1

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->chain(Lcom/google/android/exoplayer/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
