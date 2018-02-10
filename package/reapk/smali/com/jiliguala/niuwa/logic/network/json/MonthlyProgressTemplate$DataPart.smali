.class public Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DataPart;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataPart"
.end annotation


# instance fields
.field public audios_target:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "audios-target"
    .end annotation
.end field

.field public end:J

.field public month:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DailyModel;",
            ">;"
        }
    .end annotation
.end field

.field public start:J

.field public totaudio:I

.field public totcourse:I

.field public totvideo:I

.field public totword:I

.field public videos_target:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "videos-target"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/MonthlyProgressTemplate$DataPart;->month:Ljava/util/ArrayList;

    return-void
.end method
