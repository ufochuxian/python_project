.class public final enum Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final AudioType:Ljava/lang/String; = "object.item.audioItem.musicTrack"

.field private static final synthetic ENUM$VALUES:[Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;

.field public static final enum IMAGE:Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;

.field private static final ImageType:Ljava/lang/String; = "object.item.imageItem.photo"

.field public static final enum MUSIC:Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;

.field public static final enum VIDEO:Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;

.field private static final videoType:Ljava/lang/String; = "object.item.videoItem.movie"


# instance fields
.field private typeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    new-instance v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;

    const-string v1, "VIDEO"

    const-string v2, "object.item.videoItem.movie"

    invoke-direct {v0, v1, v3, v2}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;->VIDEO:Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;

    new-instance v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;

    const-string v1, "MUSIC"

    const-string v2, "object.item.audioItem.musicTrack"

    invoke-direct {v0, v1, v4, v2}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;->MUSIC:Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;

    new-instance v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;

    const-string v1, "IMAGE"

    const-string v2, "object.item.imageItem.photo"

    invoke-direct {v0, v1, v5, v2}, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;->IMAGE:Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;->VIDEO:Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;->MUSIC:Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;->IMAGE:Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;->ENUM$VALUES:[Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;

    .line 21
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "typeName"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput-object p3, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;->typeName:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;

    return-object v0
.end method

.method public static values()[Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;->ENUM$VALUES:[Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;

    array-length v1, v0

    new-array v2, v1, [Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;->typeName:Ljava/lang/String;

    return-object v0
.end method
