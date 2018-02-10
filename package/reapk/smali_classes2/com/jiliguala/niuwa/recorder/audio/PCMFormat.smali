.class public final enum Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;

.field public static final enum PCM_16BIT:Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;

.field public static final enum PCM_8BIT:Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;


# instance fields
.field private audioFormat:I

.field private bytesPerFrame:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 6
    new-instance v0, Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;

    const-string v1, "PCM_8BIT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v5, v3, v2}, Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;->PCM_8BIT:Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;

    new-instance v0, Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;

    const-string v1, "PCM_16BIT"

    invoke-direct {v0, v1, v3, v4, v4}, Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;->PCM_16BIT:Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;

    .line 5
    new-array v0, v4, [Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;

    sget-object v1, Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;->PCM_8BIT:Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;->PCM_16BIT:Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;

    aput-object v1, v0, v3

    sput-object v0, Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;->$VALUES:[Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "bytesPerFrame"    # I
    .param p4, "audioFormat"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;->bytesPerFrame:I

    .line 13
    iput p4, p0, Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;->audioFormat:I

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;

    return-object v0
.end method

.method public static values()[Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;->$VALUES:[Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;

    invoke-virtual {v0}, [Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;

    return-object v0
.end method


# virtual methods
.method public getAudioFormat()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;->audioFormat:I

    return v0
.end method

.method public getBytesPerFrame()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/jiliguala/niuwa/recorder/audio/PCMFormat;->bytesPerFrame:I

    return v0
.end method
