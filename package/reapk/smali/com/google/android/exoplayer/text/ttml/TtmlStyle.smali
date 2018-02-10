.class final Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FONT_SIZE_UNIT_EM:S = 0x2s

.field public static final FONT_SIZE_UNIT_PERCENT:S = 0x3s

.field public static final FONT_SIZE_UNIT_PIXEL:S = 0x1s

.field private static final OFF:S = 0x0s

.field private static final ON:S = 0x1s

.field public static final STYLE_BOLD:S = 0x1s

.field public static final STYLE_BOLD_ITALIC:S = 0x3s

.field public static final STYLE_ITALIC:S = 0x2s

.field public static final STYLE_NORMAL:S = 0x0s

.field public static final UNSPECIFIED:S = -0x1s


# instance fields
.field private backgroundColor:I

.field private backgroundColorSpecified:Z

.field private bold:S

.field private color:I

.field private colorSpecified:Z

.field private fontFamily:Ljava/lang/String;

.field private fontSize:F

.field private fontSizeUnit:S

.field private id:Ljava/lang/String;

.field private inheritableStyle:Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

.field private italic:S

.field private linethrough:S

.field private textAlign:Landroid/text/Layout$Alignment;

.field private underline:S


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-short v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->linethrough:S

    .line 48
    iput-short v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->underline:S

    .line 49
    iput-short v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->bold:S

    .line 50
    iput-short v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->italic:S

    .line 51
    iput-short v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->fontSizeUnit:S

    return-void
.end method

.method private inherit(Lcom/google/android/exoplayer/text/ttml/TtmlStyle;Z)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .locals 2
    .param p1, "ancestor"    # Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .param p2, "chaining"    # Z

    .prologue
    const/4 v1, -0x1

    .line 169
    if-eqz p1, :cond_8

    .line 170
    iget-boolean v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->colorSpecified:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->colorSpecified:Z

    if-eqz v0, :cond_0

    .line 171
    iget v0, p1, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->color:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->setColor(I)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    .line 173
    :cond_0
    iget-short v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->bold:S

    if-ne v0, v1, :cond_1

    .line 174
    iget-short v0, p1, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->bold:S

    iput-short v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->bold:S

    .line 176
    :cond_1
    iget-short v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->italic:S

    if-ne v0, v1, :cond_2

    .line 177
    iget-short v0, p1, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->italic:S

    iput-short v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->italic:S

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->fontFamily:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 180
    iget-object v0, p1, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->fontFamily:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->fontFamily:Ljava/lang/String;

    .line 182
    :cond_3
    iget-short v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->linethrough:S

    if-ne v0, v1, :cond_4

    .line 183
    iget-short v0, p1, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->linethrough:S

    iput-short v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->linethrough:S

    .line 185
    :cond_4
    iget-short v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->underline:S

    if-ne v0, v1, :cond_5

    .line 186
    iget-short v0, p1, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->underline:S

    iput-short v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->underline:S

    .line 188
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->textAlign:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_6

    .line 189
    iget-object v0, p1, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->textAlign:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->textAlign:Landroid/text/Layout$Alignment;

    .line 191
    :cond_6
    iget-short v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->fontSizeUnit:S

    if-ne v0, v1, :cond_7

    .line 192
    iget-short v0, p1, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->fontSizeUnit:S

    iput-short v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->fontSizeUnit:S

    .line 193
    iget v0, p1, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->fontSize:F

    iput v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->fontSize:F

    .line 196
    :cond_7
    if-eqz p2, :cond_8

    iget-boolean v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->backgroundColorSpecified:Z

    if-nez v0, :cond_8

    iget-boolean v0, p1, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->backgroundColorSpecified:Z

    if-eqz v0, :cond_8

    .line 197
    iget v0, p1, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->backgroundColor:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->setBackgroundColor(I)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    .line 200
    :cond_8
    return-object p0
.end method


# virtual methods
.method public chain(Lcom/google/android/exoplayer/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .locals 1
    .param p1, "ancestor"    # Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    .prologue
    .line 165
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->inherit(Lcom/google/android/exoplayer/text/ttml/TtmlStyle;Z)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->backgroundColor:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->color:I

    return v0
.end method

.method public getFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->fontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getFontSize()F
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->fontSize:F

    return v0
.end method

.method public getFontSizeUnit()S
    .locals 1

    .prologue
    .line 222
    iget-short v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->fontSizeUnit:S

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()S
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 62
    iget-short v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->bold:S

    if-ne v2, v1, :cond_1

    iget-short v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->italic:S

    if-ne v2, v1, :cond_1

    move v0, v1

    .line 73
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    const/4 v0, 0x0

    .line 67
    .local v0, "style":S
    iget-short v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->bold:S

    if-eq v2, v1, :cond_2

    .line 68
    iget-short v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->bold:S

    add-int/2addr v2, v0

    int-to-short v0, v2

    .line 70
    :cond_2
    iget-short v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->italic:S

    if-eq v2, v1, :cond_0

    .line 71
    iget-short v1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->italic:S

    add-int/2addr v1, v0

    int-to-short v0, v1

    goto :goto_0
.end method

.method public getTextAlign()Landroid/text/Layout$Alignment;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->textAlign:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public hasBackgroundColorSpecified()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->backgroundColorSpecified:Z

    return v0
.end method

.method public hasColorSpecified()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->colorSpecified:Z

    return v0
.end method

.method public inherit(Lcom/google/android/exoplayer/text/ttml/TtmlStyle;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .locals 1
    .param p1, "ancestor"    # Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->inherit(Lcom/google/android/exoplayer/text/ttml/TtmlStyle;Z)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-result-object v0

    return-object v0
.end method

.method public isLinethrough()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 77
    iget-short v1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->linethrough:S

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnderline()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 87
    iget-short v1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->underline:S

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackgroundColor(I)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .locals 1
    .param p1, "backgroundColor"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->backgroundColor:I

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->backgroundColorSpecified:Z

    .line 128
    return-object p0
.end method

.method public setBold(Z)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .locals 3
    .param p1, "isBold"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 136
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->inheritableStyle:Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 137
    if-eqz p1, :cond_1

    :goto_1
    iput-short v1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->bold:S

    .line 138
    return-object p0

    :cond_0
    move v0, v2

    .line 136
    goto :goto_0

    :cond_1
    move v1, v2

    .line 137
    goto :goto_1
.end method

.method public setColor(I)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .locals 2
    .param p1, "color"    # I

    .prologue
    const/4 v1, 0x1

    .line 111
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->inheritableStyle:Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 112
    iput p1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->color:I

    .line 113
    iput-boolean v1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->colorSpecified:Z

    .line 114
    return-object p0

    .line 111
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFontFamily(Ljava/lang/String;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .locals 1
    .param p1, "fontFamily"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->inheritableStyle:Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 102
    iput-object p1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->fontFamily:Ljava/lang/String;

    .line 103
    return-object p0

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFontSize(F)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .locals 0
    .param p1, "fontSize"    # F

    .prologue
    .line 235
    iput p1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->fontSize:F

    .line 236
    return-object p0
.end method

.method public setFontSizeUnit(S)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .locals 0
    .param p1, "unit"    # S

    .prologue
    .line 226
    iput-short p1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->fontSizeUnit:S

    .line 227
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->id:Ljava/lang/String;

    .line 209
    return-object p0
.end method

.method public setItalic(Z)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .locals 2
    .param p1, "isItalic"    # Z

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->inheritableStyle:Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 143
    if-eqz p1, :cond_0

    const/4 v1, 0x2

    :cond_0
    iput-short v1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->italic:S

    .line 144
    return-object p0

    :cond_1
    move v0, v1

    .line 142
    goto :goto_0
.end method

.method public setLinethrough(Z)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .locals 3
    .param p1, "linethrough"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->inheritableStyle:Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 82
    if-eqz p1, :cond_1

    :goto_1
    iput-short v1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->linethrough:S

    .line 83
    return-object p0

    :cond_0
    move v0, v2

    .line 81
    goto :goto_0

    :cond_1
    move v1, v2

    .line 82
    goto :goto_1
.end method

.method public setTextAlign(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .locals 0
    .param p1, "textAlign"    # Landroid/text/Layout$Alignment;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->textAlign:Landroid/text/Layout$Alignment;

    .line 218
    return-object p0
.end method

.method public setUnderline(Z)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .locals 3
    .param p1, "underline"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 91
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->inheritableStyle:Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer/util/Assertions;->checkState(Z)V

    .line 92
    if-eqz p1, :cond_1

    :goto_1
    iput-short v1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlStyle;->underline:S

    .line 93
    return-object p0

    :cond_0
    move v0, v2

    .line 91
    goto :goto_0

    :cond_1
    move v1, v2

    .line 92
    goto :goto_1
.end method
