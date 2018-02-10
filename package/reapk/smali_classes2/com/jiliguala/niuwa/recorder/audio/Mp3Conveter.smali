.class public Lcom/jiliguala/niuwa/recorder/audio/Mp3Conveter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x3e80

.field public static final c:I = 0x8

.field public static final d:I = 0x1

.field public static final e:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "mp3lame"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>(III)V
    .locals 6
    .param p1, "sampleRate"    # I
    .param p2, "bitRate"    # I
    .param p3, "quality"    # I

    .prologue
    const/4 v1, 0x1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, v1

    move v5, p3

    .line 25
    invoke-virtual/range {v0 .. v5}, Lcom/jiliguala/niuwa/recorder/audio/Mp3Conveter;->initEncoder(IIIII)V

    .line 27
    return-void
.end method


# virtual methods
.method public native destroyEncoder()V
.end method

.method public native encodeFile(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native initEncoder(IIIII)V
.end method
