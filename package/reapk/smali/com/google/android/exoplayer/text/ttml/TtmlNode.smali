.class final Lcom/google/android/exoplayer/text/ttml/TtmlNode;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ATTR_ID:Ljava/lang/String; = "id"

.field public static final ATTR_TTS_BACKGROUND_COLOR:Ljava/lang/String; = "backgroundColor"

.field public static final ATTR_TTS_COLOR:Ljava/lang/String; = "color"

.field public static final ATTR_TTS_FONT_FAMILY:Ljava/lang/String; = "fontFamily"

.field public static final ATTR_TTS_FONT_SIZE:Ljava/lang/String; = "fontSize"

.field public static final ATTR_TTS_FONT_STYLE:Ljava/lang/String; = "fontStyle"

.field public static final ATTR_TTS_FONT_WEIGHT:Ljava/lang/String; = "fontWeight"

.field public static final ATTR_TTS_TEXT_ALIGN:Ljava/lang/String; = "textAlign"

.field public static final ATTR_TTS_TEXT_DECORATION:Ljava/lang/String; = "textDecoration"

.field public static final BOLD:Ljava/lang/String; = "bold"

.field public static final CENTER:Ljava/lang/String; = "center"

.field public static final END:Ljava/lang/String; = "end"

.field public static final ITALIC:Ljava/lang/String; = "italic"

.field public static final LEFT:Ljava/lang/String; = "left"

.field public static final LINETHROUGH:Ljava/lang/String; = "linethrough"

.field public static final NO_LINETHROUGH:Ljava/lang/String; = "nolinethrough"

.field public static final NO_UNDERLINE:Ljava/lang/String; = "nounderline"

.field public static final RIGHT:Ljava/lang/String; = "right"

.field public static final START:Ljava/lang/String; = "start"

.field public static final TAG_BODY:Ljava/lang/String; = "body"

.field public static final TAG_BR:Ljava/lang/String; = "br"

.field public static final TAG_DIV:Ljava/lang/String; = "div"

.field public static final TAG_HEAD:Ljava/lang/String; = "head"

.field public static final TAG_LAYOUT:Ljava/lang/String; = "layout"

.field public static final TAG_METADATA:Ljava/lang/String; = "metadata"

.field public static final TAG_P:Ljava/lang/String; = "p"

.field public static final TAG_REGION:Ljava/lang/String; = "region"

.field public static final TAG_SMPTE_DATA:Ljava/lang/String; = "smpte:data"

.field public static final TAG_SMPTE_IMAGE:Ljava/lang/String; = "smpte:image"

.field public static final TAG_SMPTE_INFORMATION:Ljava/lang/String; = "smpte:information"

.field public static final TAG_SPAN:Ljava/lang/String; = "span"

.field public static final TAG_STYLE:Ljava/lang/String; = "style"

.field public static final TAG_STYLING:Ljava/lang/String; = "styling"

.field public static final TAG_TT:Ljava/lang/String; = "tt"

.field public static final UNDEFINED_TIME:J = -0x1L

.field public static final UNDERLINE:Ljava/lang/String; = "underline"


# instance fields
.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/text/ttml/TtmlNode;",
            ">;"
        }
    .end annotation
.end field

.field private end:I

.field public final endTimeUs:J

.field public final isTextNode:Z

.field private start:I

.field public final startTimeUs:J

.field public final style:Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

.field private styleIds:[Ljava/lang/String;

.field public final tag:Ljava/lang/String;

.field public final text:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/exoplayer/text/ttml/TtmlStyle;[Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "startTimeUs"    # J
    .param p5, "endTimeUs"    # J
    .param p7, "style"    # Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .param p8, "styleIds"    # [Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->tag:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->text:Ljava/lang/String;

    .line 86
    iput-object p7, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->style:Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    .line 87
    iput-object p8, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->styleIds:[Ljava/lang/String;

    .line 88
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->isTextNode:Z

    .line 89
    iput-wide p3, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->startTimeUs:J

    .line 90
    iput-wide p5, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->endTimeUs:J

    .line 91
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static buildNode(Ljava/lang/String;JJLcom/google/android/exoplayer/text/ttml/TtmlStyle;[Ljava/lang/String;)Lcom/google/android/exoplayer/text/ttml/TtmlNode;
    .locals 11
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "startTimeUs"    # J
    .param p3, "endTimeUs"    # J
    .param p5, "style"    # Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    .param p6, "styleIds"    # [Ljava/lang/String;

    .prologue
    .line 98
    new-instance v1, Lcom/google/android/exoplayer/text/ttml/TtmlNode;

    const/4 v3, 0x0

    move-object v2, p0

    move-wide v4, p1

    move-wide v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/exoplayer/text/ttml/TtmlStyle;[Ljava/lang/String;)V

    return-object v1
.end method

.method public static buildTextNode(Ljava/lang/String;)Lcom/google/android/exoplayer/text/ttml/TtmlNode;
    .locals 10
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    .line 94
    new-instance v1, Lcom/google/android/exoplayer/text/ttml/TtmlNode;

    invoke-static {p0}, Lcom/google/android/exoplayer/text/ttml/TtmlRenderUtil;->applyTextElementSpacePolicy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-wide v6, v4

    move-object v8, v2

    move-object v9, v2

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/exoplayer/text/ttml/TtmlStyle;[Ljava/lang/String;)V

    return-object v1
.end method

.method private getEventTimes(Ljava/util/TreeSet;Z)V
    .locals 6
    .param p2, "descendsPNode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "out":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Long;>;"
    const-wide/16 v4, -0x1

    .line 138
    const-string v2, "p"

    iget-object v3, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 139
    .local v1, "isPNode":Z
    if-nez p2, :cond_0

    if-eqz v1, :cond_2

    .line 140
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->startTimeUs:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 141
    iget-wide v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->startTimeUs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_1
    iget-wide v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->endTimeUs:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 144
    iget-wide v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->endTimeUs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->children:Ljava/util/List;

    if-nez v2, :cond_4

    .line 153
    :cond_3
    return-void

    .line 150
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 151
    iget-object v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->children:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer/text/ttml/TtmlNode;

    if-nez p2, :cond_5

    if-eqz v1, :cond_6

    :cond_5
    const/4 v3, 0x1

    :goto_1
    invoke-direct {v2, p1, v3}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->getEventTimes(Ljava/util/TreeSet;Z)V

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_6
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private traverseForStyle(Landroid/text/SpannableStringBuilder;Ljava/util/Map;)V
    .locals 4
    .param p1, "builder"    # Landroid/text/SpannableStringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer/text/ttml/TtmlStyle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p2, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer/text/ttml/TtmlStyle;>;"
    iget v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->start:I

    iget v3, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->end:I

    if-eq v2, v3, :cond_1

    .line 234
    iget-object v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->style:Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    iget-object v3, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->styleIds:[Ljava/lang/String;

    invoke-static {v2, v3, p2}, Lcom/google/android/exoplayer/text/ttml/TtmlRenderUtil;->resolveStyle(Lcom/google/android/exoplayer/text/ttml/TtmlStyle;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/exoplayer/text/ttml/TtmlStyle;

    move-result-object v1

    .line 235
    .local v1, "resolvedStyle":Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    if-eqz v1, :cond_0

    .line 236
    iget v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->start:I

    iget v3, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->end:I

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/exoplayer/text/ttml/TtmlRenderUtil;->applyStylesToSpan(Landroid/text/SpannableStringBuilder;IILcom/google/android/exoplayer/text/ttml/TtmlStyle;)V

    .line 238
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 239
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->getChild(I)Lcom/google/android/exoplayer/text/ttml/TtmlNode;

    move-result-object v2

    invoke-direct {v2, p1, p2}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->traverseForStyle(Landroid/text/SpannableStringBuilder;Ljava/util/Map;)V

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    .end local v0    # "i":I
    .end local v1    # "resolvedStyle":Lcom/google/android/exoplayer/text/ttml/TtmlStyle;
    :cond_1
    return-void
.end method

.method private traverseForText(JLandroid/text/SpannableStringBuilder;Z)Landroid/text/SpannableStringBuilder;
    .locals 5
    .param p1, "timeUs"    # J
    .param p3, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p4, "descendsPNode"    # Z

    .prologue
    .line 211
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->start:I

    .line 212
    iget v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->start:I

    iput v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->end:I

    .line 213
    iget-boolean v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->isTextNode:Z

    if-eqz v2, :cond_1

    if-eqz p4, :cond_1

    .line 214
    iget-object v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->text:Ljava/lang/String;

    invoke-virtual {p3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 229
    :cond_0
    :goto_0
    return-object p3

    .line 215
    :cond_1
    const-string v2, "br"

    iget-object v3, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p4, :cond_2

    .line 216
    const/16 v2, 0xa

    invoke-virtual {p3, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 217
    :cond_2
    const-string v2, "metadata"

    iget-object v3, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 219
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->isActive(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    const-string v2, "p"

    iget-object v3, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 221
    .local v1, "isPNode":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 222
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->getChild(I)Lcom/google/android/exoplayer/text/ttml/TtmlNode;

    move-result-object v3

    if-nez p4, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    const/4 v2, 0x1

    :goto_2
    invoke-direct {v3, p1, p2, p3, v2}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->traverseForText(JLandroid/text/SpannableStringBuilder;Z)Landroid/text/SpannableStringBuilder;

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 222
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 224
    :cond_5
    if-eqz v1, :cond_6

    .line 225
    invoke-static {p3}, Lcom/google/android/exoplayer/text/ttml/TtmlRenderUtil;->endParagraph(Landroid/text/SpannableStringBuilder;)V

    .line 227
    :cond_6
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->end:I

    goto :goto_0
.end method


# virtual methods
.method public addChild(Lcom/google/android/exoplayer/text/ttml/TtmlNode;)V
    .locals 1
    .param p1, "child"    # Lcom/google/android/exoplayer/text/ttml/TtmlNode;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->children:Ljava/util/List;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->children:Ljava/util/List;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method public getChild(I)Lcom/google/android/exoplayer/text/ttml/TtmlNode;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->children:Ljava/util/List;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->children:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getEventTimesUs()[J
    .locals 8

    .prologue
    .line 125
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 126
    .local v1, "eventTimeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Long;>;"
    const/4 v7, 0x0

    invoke-direct {p0, v1, v7}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->getEventTimes(Ljava/util/TreeSet;Z)V

    .line 127
    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v7

    new-array v4, v7, [J

    .line 128
    .local v4, "eventTimes":[J
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 129
    .local v0, "eventTimeIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    const/4 v5, 0x0

    .line 130
    .local v5, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 131
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 132
    .local v2, "eventTimeUs":J
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    aput-wide v2, v4, v5

    move v5, v6

    .line 133
    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto :goto_0

    .line 134
    .end local v2    # "eventTimeUs":J
    :cond_0
    return-object v4
.end method

.method public getStyleIds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->styleIds:[Ljava/lang/String;

    return-object v0
.end method

.method public getText(JLjava/util/Map;)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "timeUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer/text/ttml/TtmlStyle;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .local p3, "globalStyles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/exoplayer/text/ttml/TtmlStyle;>;"
    const/16 v8, 0xa

    const/4 v6, 0x0

    const/16 v7, 0x20

    .line 160
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 161
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-direct {p0, p1, p2, v0, v6}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->traverseForText(JLandroid/text/SpannableStringBuilder;Z)Landroid/text/SpannableStringBuilder;

    .line 162
    invoke-direct {p0, v0, p3}, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->traverseForStyle(Landroid/text/SpannableStringBuilder;Ljava/util/Map;)V

    .line 165
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 166
    .local v1, "builderLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 167
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_1

    .line 168
    add-int/lit8 v3, v2, 0x1

    .line 169
    .local v3, "j":I
    :goto_1
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-ge v3, v5, :cond_0

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_0

    .line 170
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 172
    :cond_0
    add-int/lit8 v5, v2, 0x1

    sub-int v4, v3, v5

    .line 173
    .local v4, "spacesToDelete":I
    if-lez v4, :cond_1

    .line 174
    add-int v5, v2, v4

    invoke-virtual {v0, v2, v5}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 175
    sub-int/2addr v1, v4

    .line 166
    .end local v3    # "j":I
    .end local v4    # "spacesToDelete":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    :cond_2
    if-lez v1, :cond_3

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_3

    .line 181
    const/4 v5, 0x1

    invoke-virtual {v0, v6, v5}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 182
    add-int/lit8 v1, v1, -0x1

    .line 184
    :cond_3
    const/4 v2, 0x0

    :goto_2
    add-int/lit8 v5, v1, -0x1

    if-ge v2, v5, :cond_5

    .line 185
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_4

    .line 186
    add-int/lit8 v5, v2, 0x1

    add-int/lit8 v6, v2, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 187
    add-int/lit8 v1, v1, -0x1

    .line 184
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 191
    :cond_5
    if-lez v1, :cond_6

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_6

    .line 192
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v0, v5, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 193
    add-int/lit8 v1, v1, -0x1

    .line 195
    :cond_6
    const/4 v2, 0x0

    :goto_3
    add-int/lit8 v5, v1, -0x1

    if-ge v2, v5, :cond_8

    .line 196
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_7

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_7

    .line 197
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0, v2, v5}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 198
    add-int/lit8 v1, v1, -0x1

    .line 195
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 202
    :cond_8
    if-lez v1, :cond_9

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v8, :cond_9

    .line 203
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v0, v5, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 207
    :cond_9
    return-object v0
.end method

.method public isActive(J)Z
    .locals 5
    .param p1, "timeUs"    # J

    .prologue
    const-wide/16 v2, -0x1

    .line 102
    iget-wide v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->startTimeUs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->endTimeUs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->startTimeUs:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->endTimeUs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->startTimeUs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->endTimeUs:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    :cond_2
    iget-wide v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->startTimeUs:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_4

    iget-wide v0, p0, Lcom/google/android/exoplayer/text/ttml/TtmlNode;->endTimeUs:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
