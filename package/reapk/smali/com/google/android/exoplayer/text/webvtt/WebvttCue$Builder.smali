.class public final Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/text/webvtt/WebvttCue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WebvttCueBuilder"


# instance fields
.field private endTime:J

.field private line:F

.field private lineAnchor:I

.field private lineType:I

.field private position:F

.field private positionAnchor:I

.field private startTime:J

.field private text:Ljava/lang/CharSequence;

.field private textAlignment:Landroid/text/Layout$Alignment;

.field private width:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p0}, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->reset()V

    .line 78
    return-void
.end method

.method private derivePositionAnchorFromAlignment()Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 153
    iget-object v0, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_0

    .line 154
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    .line 172
    :goto_0
    return-object p0

    .line 156
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$1;->$SwitchMap$android$text$Layout$Alignment:[I

    iget-object v1, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 167
    const-string v0, "WebvttCueBuilder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized alignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iput v3, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    goto :goto_0

    .line 158
    :pswitch_0
    iput v3, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    goto :goto_0

    .line 161
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    goto :goto_0

    .line 164
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer/text/webvtt/WebvttCue;
    .locals 14

    .prologue
    .line 96
    iget v0, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->position:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->derivePositionAnchorFromAlignment()Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;

    .line 99
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer/text/webvtt/WebvttCue;

    iget-wide v2, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->startTime:J

    iget-wide v4, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->endTime:J

    iget-object v6, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->text:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    iget v8, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->line:F

    iget v9, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->lineType:I

    iget v10, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->lineAnchor:I

    iget v11, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->position:F

    iget v12, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    iget v13, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->width:F

    invoke-direct/range {v1 .. v13}, Lcom/google/android/exoplayer/text/webvtt/WebvttCue;-><init>(JJLjava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    return-object v1
.end method

.method public reset()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/high16 v1, -0x80000000

    const/4 v0, 0x1

    .line 81
    iput-wide v4, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->startTime:J

    .line 82
    iput-wide v4, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->endTime:J

    .line 83
    iput-object v2, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->text:Ljava/lang/CharSequence;

    .line 84
    iput-object v2, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    .line 85
    iput v0, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->line:F

    .line 86
    iput v1, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->lineType:I

    .line 87
    iput v1, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->lineAnchor:I

    .line 88
    iput v0, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->position:F

    .line 89
    iput v1, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    .line 90
    iput v0, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->width:F

    .line 91
    return-void
.end method

.method public setEndTime(J)Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 108
    iput-wide p1, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->endTime:J

    .line 109
    return-object p0
.end method

.method public setLine(F)Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;
    .locals 0
    .param p1, "line"    # F

    .prologue
    .line 123
    iput p1, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->line:F

    .line 124
    return-object p0
.end method

.method public setLineAnchor(I)Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;
    .locals 0
    .param p1, "lineAnchor"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->lineAnchor:I

    .line 134
    return-object p0
.end method

.method public setLineType(I)Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;
    .locals 0
    .param p1, "lineType"    # I

    .prologue
    .line 128
    iput p1, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->lineType:I

    .line 129
    return-object p0
.end method

.method public setPosition(F)Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;
    .locals 0
    .param p1, "position"    # F

    .prologue
    .line 138
    iput p1, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->position:F

    .line 139
    return-object p0
.end method

.method public setPositionAnchor(I)Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;
    .locals 0
    .param p1, "positionAnchor"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->positionAnchor:I

    .line 144
    return-object p0
.end method

.method public setStartTime(J)Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 103
    iput-wide p1, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->startTime:J

    .line 104
    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;
    .locals 0
    .param p1, "aText"    # Ljava/lang/CharSequence;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->text:Ljava/lang/CharSequence;

    .line 114
    return-object p0
.end method

.method public setTextAlignment(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;
    .locals 0
    .param p1, "textAlignment"    # Landroid/text/Layout$Alignment;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->textAlignment:Landroid/text/Layout$Alignment;

    .line 119
    return-object p0
.end method

.method public setWidth(F)Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;
    .locals 0
    .param p1, "width"    # F

    .prologue
    .line 148
    iput p1, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->width:F

    .line 149
    return-object p0
.end method
