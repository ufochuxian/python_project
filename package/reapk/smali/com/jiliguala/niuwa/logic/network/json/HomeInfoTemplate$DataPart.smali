.class public Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$DataPart;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataPart"
.end annotation


# instance fields
.field public audios:I

.field public audios_target:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "audios-target"
    .end annotation
.end field

.field public banner:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$BannerData;",
            ">;"
        }
    .end annotation
.end field

.field public course:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

.field public learn:Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$LearnPart;

.field public learn2:Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$LearnPart2;

.field public tgt:Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$TgtPart;

.field public trigger:Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$TriggerData;

.field public videos:I

.field public videos_target:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "videos-target"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/HomeInfoTemplate$DataPart;->banner:Ljava/util/ArrayList;

    return-void
.end method
